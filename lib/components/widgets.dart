// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A simple widget that builds different things on different platforms.
class PlatformWidget extends StatelessWidget {
  const PlatformWidget({
    Key key,
    this.androidBuilder,
    this.iosBuilder,
  }) : super(key: key);

  final WidgetBuilder androidBuilder;
  final WidgetBuilder iosBuilder;

  @override
  Widget build(context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return androidBuilder(context);
      case TargetPlatform.iOS:
        return iosBuilder(context);
      default:
        assert(false, 'Unexpected platform $defaultTargetPlatform');
        return SizedBox.shrink();
    }
  }
}

/// A platform-agnostic card with a high elevation that reacts when tapped.
class PressableCard extends StatefulWidget {
  const PressableCard({
    this.onPressed,
    this.color,
    this.flattenAnimation,
    this.child,
  });

  final VoidCallback onPressed;
  final Color color;
  final Animation<double> flattenAnimation;
  final Widget child;

  @override
  State<StatefulWidget> createState() => _PressableCardState();
}

class _PressableCardState extends State<PressableCard>
    with SingleTickerProviderStateMixin {
  bool pressed = false;
  AnimationController controller;
  Animation<double> elevationAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 40),
    );
    elevationAnimation =
        controller.drive(CurveTween(curve: Curves.easeInOutCubic));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  double get flatten => 1 - widget.flattenAnimation.value;

  @override
  Widget build(context) {
    return Listener(
      onPointerDown: (details) {
        if (widget.onPressed != null) {
          controller.forward();
        }
      },
      onPointerUp: (details) {
        controller.reverse();
      },
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          widget.onPressed?.call();
        },
        // This widget both internally drives an animation when pressed and
        // responds to an external animation to flatten the card when in a
        // hero animation. You likely want to modularize them more in your own
        // app.
        child: AnimatedBuilder(
          animation:
              Listenable.merge([elevationAnimation, widget.flattenAnimation]),
          child: widget.child,
          builder: (context, child) {
            return Transform.scale(
              // This is just a sample. You likely want to keep the math cleaner
              // in your own app.
              scale: 1 - elevationAnimation.value * 0.03,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16) *
                    flatten,
                child: PhysicalModel(
                  elevation:
                      ((1 - elevationAnimation.value) * 10 + 10) * flatten,
                  borderRadius: BorderRadius.circular(12 * flatten),
                  clipBehavior: Clip.antiAlias,
                  color: widget.color,
                  child: child,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

/// A platform-agnostic card representing a Nutrient which can be in a card state,
/// a flat state or anything in between.
///
/// When it's in a card state, it's pressable.
class HeroAnimatingNutrientCard extends StatelessWidget {
  HeroAnimatingNutrientCard({
    this.nutrient,
    this.color,
    this.heroAnimation,
    this.onPressed,
  });

  final String nutrient;
  final Color color;
  final Animation<double> heroAnimation;
  final VoidCallback onPressed;

  @override
  Widget build(context) {
    return AnimatedBuilder(
      animation: heroAnimation,
      builder: (context, child) {
        return PressableCard(
          onPressed: heroAnimation.value == 0 ? onPressed : null,
          color: color,
          flattenAnimation: heroAnimation,
          child: SizedBox(
            height: 240,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // The nutrient title banner slides off in the hero animation.
                Positioned(
                  bottom: -80 * heroAnimation.value,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 80,
                    color: Colors.black12,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      nutrient,
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

