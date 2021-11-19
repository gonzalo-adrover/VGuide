import 'package:vguide/domain/model/tip.dart';

class TipsData {
  static const List<Tip> tipsList = [
    Tip(
        name: "Remojar legumbres durante 8 horas mínimo antes de cocinarlos",
        shortName: "Remojar legumbres",
        description:
            """No olvides remojar tus legumbres antes de cocinarlas. Este es un paso fundamental en el proceso de cocción de las mismas. Las razones por las cuales debes remojarlas son varias: Ayuda a disminuir la producción de gases indeseados, se aprovechan más los nutrientes como las proteínas, fibra, vitamina B1 y calcio, ayuda a reducir el ácido fitico (componente que disminuye la absorción de algunos nutrientes críticos), y evita contaminantes que puedan tener las legumbres.""",
        foodList: "Legumbres",
        nutrientList: "Hierro, ácido fólico, proteína, zinc",
        picURL: "assets/img/tips/tip1.jpeg"),
    Tip(
        name: "Condimentá con limón tus legumbres y ensaladas",
        shortName: "Condimentá con limón",
        description:
            """No olvides ponerle limon a tus comidas. Como el limón es alto en vitamina C aumenta la absorción del hierro (nutriente crítico para los vegetarianos). Otros alimentos como el tomate, la naranja y el morrón también son altos en vitamina C, siempre que no estén cocidos.""",
        foodList:
            """Limón, naranja, mandarina, kiwi \nLegumbres \nCereales integrales \nVerduras de hoja verde oscuro""",
        nutrientList: "Hierro",
        picURL: "assets/img/tips/tip2.png"),
    Tip(
        name: "Consulta si debes tomar vitamina B12",
        shortName: "Vitamina B12",
        description:
            """Debes consultar a tu Lic en Nutrición para consumir este suplemento y que sea adecuado para ti. Es importante que tengas una hora fija todos los días para tomar tu vitamina B12. Recuerda que es esencial que consumas este nutriente y solo se encuentra en los alimentos de origen animal y en los suplementos.""",
        foodList: "Agua",
        nutrientList: "",
        picURL: "assets/img/tips/tip3.jpg"),
    Tip(
        name: "Tomar agua",
        shortName: "Tomar agua",
        description:
            """Beber 2 litros (10 vasos) de agua diariamente está recomendado para mantener la salud del organismo.""",
        foodList: "",
        nutrientList: "",
        picURL: "assets/img/tips/tip4.jpg"),
    Tip(
        name:
            "Evita consumir alimentos ricos en calcio junto con aquellos que tengan cafeína o vegetales de color verde (espinaca, acelga) o remolacha",
        shortName: "No mezclar calcio con cafeína o vegetales verdes.",
        description:
            """Consumir alimentos ricos en calcio junto con estos alimentos disminuye su absorción en el organismo. Es importante esperar al menos dos horas luego de comer un alimento alto en calcio para que esto no suceda.""",
        foodList: "",
        nutrientList: "",
        picURL: "assets/img/tips/tip5.jpg"),
    Tip(
        name: "Cuando consumas panificados intenta que contengan levadura",
        shortName: "Preferir panificados con levadura",
        description:
            """En el proceso de elaboración las levaduras disminuyen la cantidad de fitatos en panificados por lo que la absorción de todos los minerales del mismo se ve beneficiada.""",
        foodList: "",
        nutrientList: "",
        picURL: "assets/img/tips/tip6.jpg"),
    Tip(
        name: "Combiná en tu plato legumbres con cereales",
        shortName: "Combiná en tu plato legumbres con cereales",
        description:
            """Para formar proteínas debemos conseguir un aporte adecuado de aminoácidos esenciales. Esto se consigue combinando legumbres (lentejas, garbanzos, porotos, soja) con cereales (arroz, fideos, polenta, avena, cous cous, trigo). Para los adultos puede ser en la misma comida o en el correr del día.""",
        foodList: "",
        nutrientList: "",
        picURL: "assets/img/tips/tip7.jpg"),
    Tip(
        name: "Consumir legumbres o sus derivados diariamente",
        shortName: "Consumir legumbres o sus derivados diariamente",
        description:
            """Para obtener las cantidades de proteínas y minerales necesarios para el correcto funcionamiento del organismo en una dieta vegetariana se deben consumir legumbres todos los días.""",
        foodList:
            "Garbanzos, lentejas, Porotos (negros, mung, adzuki, soja). Derivados de los mismos como proteína de soja, tofu, harinas de legumbres, hummus o patés.",
        nutrientList: "",
        picURL: "assets/img/tips/tip8.jpg"),
    Tip(
        name: "Es importante que agregues a tu dieta alimentos altos en calcio",
        shortName: "Consumir alimentos altos en calcio",
        description:
            """Si no consumes lácteos diariamente debes consumir los alimentos de origen vegetal altos en Calcio para no tener carencias de este mineral.""",
        foodList:
            """Lácteos\nFrutos secos (Almendras, maní, nueces)\nSemillas (sésamo, chía, lino, girasol, amaranto)\nHortalizas de hoja verde (rúcula, perejil, berro, albahaca, etc). Crucíferas (brócoli, coliflor)\nTofu\nBebidas vegetales enriquecidas""",
        nutrientList: "",
        picURL: "assets/img/tips/tip9"),
    Tip(
        name:
            "Los nutrientes de las semillas y frutos secos se absorben mejor si están molidas",
        shortName: "Consumir semillas y frutos secos molidos",
        description:
            """Para beneficiarnos de las propiedades de las semillas y frutos secos más eficientemente deben molerse las mismas y consumirse en forma de paté, mantequillas o formando parte de preparaciones. Esto mejora su digestión y absorción en el organismo.""",
        foodList: "Patés, salsas y untables a base de semillas y frutos secos",
        nutrientList: "",
        picURL: "assets/img/tips/tip10.jpg"),
    Tip(
        name: "Se debe consumir los aceites altos en omega 3 en crudo",
        shortName: "Consumir aceites altos en Omega 3 en crudo",
        description:
            """Los ácidos grasos omega 3 son sensibles al calor, por ende, los aceites de canola y soja deben utilizarse para condimentar y NO para cocinar. De esta forma podemos obtener todos los beneficios de estos nutrientes.""",
        foodList: "Aceites de soja y canola.",
        nutrientList: "",
        picURL: "assets/img/tips/tip11.jpg"),
    Tip(
        name: "Intenta consumir siempre frutas y verduras de estación",
        shortName: "Frutas y verduras de estación",
        description:
            """Las frutas y verduras contienen muchos más nutrientes como vitaminas, minerales, antioxidantes cuando están en estación. Además, de que su precio es menor durante ese período del año su aporte nutriciona les mucho más completo. """,
        foodList: "",
        nutrientList: "",
        picURL: "assets/img/tips/tip12.jpg"),
  ];
}
