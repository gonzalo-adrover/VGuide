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
        picURL:
            "https://www.lavanguardia.com/uploads/2019/12/16/5e997b3957634.jpeg"),
    Tip(
        name: "Condimentá con limón tus legumbres y ensaladas",
        shortName: "Condimentá con limón",
        description:
            """No olvides ponerle limon a tus comidas. Como el limón es alto en vitamina C aumenta la absorción del hierro (nutriente crítico para los vegetarianos). Otros alimentos como el tomate, la naranja y el morrón también son altos en vitamina C, siempre que no estén cocidos.""",
        foodList:
            """Limón, naranja, mandarina, kiwi \nLegumbres \nCereales integrales \nVerduras de hoja verde oscuro""",
        nutrientList: "Hierro, ácido fólico, proteína, zinc",
        picURL:
            "https://phantom-telva.unidadeditorial.es/ba78a86554ab6ae727fea4a51dfe3e92/crop/73x0/1249x882/resize/1280/f/webp/assets/multimedia/imagenes/2020/04/21/15874784567857.png"),
    Tip(
        name: "Consulta si debes tomar vitamina B12",
        shortName: "Vitamina B12",
        description:
            """Debes consultar a tu Lic en Nutrición para consumir este suplemento y que sea adecuado para ti. Es importante que tengas una hora fija todos los días para tomar tu vitamina B12. Recuerda que es esencial que consumas este nutriente y solo se encuentra en los alimentos de origen animal y en los suplementos.""",
        foodList: "Agua",
        nutrientList: "",
        picURL:
            "https://biowebaruhaz.hu/uploads/shop/biowebaruhaz.hu/fajltar/134589.jpg"),
    Tip(
        name: "Tomar agua",
        shortName: "Tomar agua",
        description:
            """Beber 2 litros (10 vasos) de agua diariamente está recomendado para mantener la salud del organismo.""",
        foodList: "",
        picURL:
            "https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_image__small/public/temas/agua.jpg"),
    Tip(
        name:
            "Evita consumir alimentos ricos en calcio junto con aquellos que tengan cafeína o vegetales de color verde (espinaca, acelga) o remolacha",
        shortName: "No mezclar calcio con cafeína o vegetales verdes.",
        description:
            """Consumir alimentos ricos en calcio junto con estos alimentos disminuye su absorción en el organismo. Es importante esperar al menos dos horas luego de comer un alimento alto en calcio para que esto no suceda.""",
        foodList: "",
        nutrientList: "",
        picURL:
            "https://www.hola.com/imagenes/cocina/noticiaslibros/20190227137327/diferencias-vegano-vegetariano-dietas-saludables/0-647-213/diferencias-dieta-vegetariana-vegana-t.jpg"),
    Tip(
        name: "Cuando consumas panificados intenta que contengan levadura",
        shortName: "Preferir panificados con levadura",
        description:
            """En el proceso de elaboración las levaduras disminuyen la cantidad de fitatos en panificados por lo que la absorción de todos los minerales del mismo se ve beneficiada.""",
        foodList: "",
        nutrientList: "",
        picURL:
            "https://www.vivecondiabetes.com/images/stories/Ago17/30-08-17-pan.jpg"),
    Tip(
        name: "Combiná en tu plato legumbres con cereales",
        shortName: "Combiná en tu plato legumbres con cereales",
        description:
            """Para formar proteínas debemos conseguir un aporte adecuado de aminoácidos esenciales. Esto se consigue combinando legumbres (lentejas, garbanzos, porotos, soja) con cereales (arroz, fideos, polenta, avena, cous cous, trigo). Para los adultos puede ser en la misma comida o en el correr del día.""",
        foodList: "",
        nutrientList: "",
        picURL:
            "https://okdiario.com/img/2018/10/08/lentejas-arroz-espinacas-1-655x368.jpg"),
    Tip(
        name: "Consumir legumbres o sus derivados diariamente",
        shortName: "Consumir legumbres o sus derivados diariamente",
        description:
            """Para obtener las cantidades de proteínas y minerales necesarios para el correcto funcionamiento del organismo en una dieta vegetariana se deben consumir legumbres todos los días.""",
        foodList:
            "Garbanzos, lentejas, Porotos (negros, mung, adzuki, soja). Derivados de los mismos como proteína de soja, tofu, harinas de legumbres, hummus o patés.",
        nutrientList: "",
        picURL:
            "https://placeralplato.com/files/2014/08/legumbres-3opt1-e1407954408650.jpg"),
    Tip(
        name: "Es importante que agregues a tu dieta alimentos altos en calcio",
        shortName: "Consumir alimentos altos en calcio",
        description:
            """Si no consumes lácteos diariamente debes consumir los alimentos de origen vegetal altos en Calcio para no tener carencias de este mineral.""",
        foodList: """
        Lácteos\nFrutos secos (Almendras, maní, nueces)
        \nSemillas (sésamo, chía, lino, girasol, amaranto)
        \nHortalizas de hoja verde (rúcula, perejil, berro, albahaca, etc). Crucíferas (brócoli, coliflor)
        \nTofu\nBebidas vegetales enriquecidas""",
        nutrientList: "",
        picURL:
            "https://www.clikisalud.net/wp-content/uploads/2017/11/importancia-calcio-salud-cuerpo.jpg"),
    Tip(
        name:
            "Los nutrientes de las semillas y frutos secos se absorben mejor si están molidas",
        shortName: "Consumir semillas y frutos secos molidos",
        description:
            """Para beneficiarnos de las propiedades de las semillas y frutos secos más eficientemente deben molerse las mismas y consumirse en forma de paté, mantequillas o formando parte de preparaciones. Esto mejora su digestión y absorción en el organismo.""",
        foodList: "Patés, salsas y untables a base de semillas y frutos secos",
        nutrientList: "",
        picURL:
            "https://www.hola.com/imagenes/estar-bien/20180702126110/semillas-lino-beneficios-gt/0-578-942/portada_semillas_lino-t.jpg"),
    Tip(
        name: "Se debe consumir los aceites altos en omega 3 en crudo",
        shortName: "Consumir aceites altos en Omega 3 en crudo",
        description:
            """Los ácidos grasos omega 3 son sensibles al calor, por ende, los aceites de canola y soja deben utilizarse para condimentar y NO para cocinar. De esta forma podemos obtener todos los beneficios de estos nutrientes.""",
        foodList: "Aceites de soja y canola.",
        picURL:
            "https://www.triatloners.com/wp-content/uploads/2017/01/aceite-oliva-crudo-copia.jpg"),
    Tip(
        name: "Intenta consumir siempre frutas y verduras de estación",
        shortName: "Frutas y verduras de estación",
        description:
            """Las frutas y verduras contienen muchos más nutrientes como vitaminas, minerales, antioxidantes cuando están en estación. Además, de que su precio es menor durante ese período del año su aporte nutriciona les mucho más completo. """,
        foodList: "",
        nutrientList: "",
        picURL:
            "https://elecodigital.com.uy/wp-content/uploads/2018/04/mejor-de-estacion.jpg")
  ];
}
