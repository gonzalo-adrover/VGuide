import 'package:vguide/domain/model/recipe.dart';

import '../domain/model/nutrient.dart';

class NutrientsData {
  static Nutrient getNutrient(NutrientKey key) => getNutrients
      .firstWhere((element) => element.key == key, orElse: () => null);

  static List<Nutrient> getNutrients = [
    Nutrient(
        id: 0,
        key: NutrientKey.proteina,
        name: "Proteinas",
        longDesc:
            """Las proteínas son grandes moléculas que desempeñan el mayor número de funciones en las células de los seres vivos. Forman parte de la estructura de tejidos (músculos, tendones, piel, uñas) durante todos los procesos de crecimiento y desarrollo. Además desempeñan funciones metabólicas (actúan como enzimas, hormonas y anticuerpos.)Una proteína se conforman por varios aminoácidos y existen algunos que los humanos no podemos formar, si nos faltan no podemos generar estas proteínas. Los aminoacidos que no podemos formar son llamados “aminoácidos esenciales”. Debido a esto, debemos obtenerlos de los  alimentos. La deficiencia de este nutriente puede causar desnutrición proteica, fatiga, dermatitis.""",
        foods: [
          "Legumbres y derivados",
          "Cereales",
          "Pseudo cereales",
          "Frutos secos",
          "Semillas",
          "Lacteos, huevos"
        ],
        facilitators:
            """La digestión de las proteínas es más fácil para el cuerpo cuando los alimentos se cocinan. Los alimentos de origen vegetal deben combinarse para alcanzar las cantidades de aminoácidos requeridas por el cuerpo.  Combinando legumbres con cereales y pseudo cereales se logra obtener la proteína completa para cubrir el requerimiento de este nutriente.""",
        inhibitors: "",
        picURL:
            "https://www.prensalibre.com/wp-content/uploads/2019/08/Prote%C3%ADnas-2.jpg?quality=82"),
    Nutrient(
        id: 1,
        key: NutrientKey.omega3,
        name: "Omega 3",
        longDesc:
            """Los ácidos grasos omega 3 son un tipo de grasa saludable y necesaria para el cuerpo. Estos son importantes para el desarrollo y mantenimiento del cerebro, la retina y las membranas de las células. A su vez tienen un impacto favorable en el embarazo y en la prevención de enfermedades cardiovasculares , así como otras enfermedades crónicas. Los ácidos grasos de la serie omega 3 son: El Linolénico, el EPA y el DHA. El ácido graso Linolénico es esencial, por eso debemos consumirlo en la dieta, a su vez, este se transforma en el cuerpo en EPA y DHA que traen beneficios cardiovasculares y del sistema nervioso. La deficiencia de omega 3 puede afectar la memoria, generar dificultades en el aprendizaje, otras alteraciones cognitivas y de la agudeza visual.""",
        foods: [
          "Frutos secos (Principalmente nueces)",
          "Aceite de soja",
          "Aceite de canola",
          "Semillas (Principalmente chia y lino y sus aceites"
        ],
        facilitators:
            """Para obtener sus beneficios, los aceites altos en omega 3 deben consumirse en crudo, en preparaciones frías o cuando el alimento ya se retiró del fuego. En el caso de las semillas deben estar molidas o remojadas para facilitar su absorción a nivel intestinal. 
        """,
        inhibitors:
            """Cocicnar estos aceites disminuye el impacto favorable que tienen para la salud. Además comer las semillas enteras, sin moler hace que sea más dificil su aprovechamiento.""",
        picURL:
            "https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/01/sources-of-omega-3-and-healthy-fats-1024x683.jpg?w=1155&h=1541"),
    Nutrient(
        id: 2,
        key: NutrientKey.calcio,
        name: "Calcio",
        longDesc:
            """El calcio es un mineral necesario para el funcionamiento del cuerpo. Sus funciones se pueden dividir en 3:1. Estructural: Es un compuesto esencial en la estructura de huesos y dientes. 2. Participa en la estabilidad del sistema nervioso, la contracción muscular, movimientos y procesos de división celular. 3. Potencia las funciones de las proteínas en el cuerpo La deficiencia de este mineral puede causar osteoporosis, fatiga, problemas dentales. Puede darse por diferentes razones, por falta de consumo de alimentos que lo contengan o por deficiencia de vitamina D que participa en su absorción.""",
        foods: [
          "Lacteos",
          "Frutos secos (Principalmente almendras, mani, nueces)",
          "Semillas (Principalmente sesamo, chia, lino, girasol, amaranto)",
          "Hortalizas de hoja verde (Principalmente rucula, perejil, berro, albahaca, brocoli, coliflor)",
          "Tofu coagulado con sales de Calcio",
          "Bebidas vegetales enriquecidas con Calcio"
        ],
        facilitators:
            """Si se consumen lácteos la absorción aumenta. En el caso de las semillas, es preferible que se consuman molidas en forma de pasta o paté.""",
        inhibitors:
            """El café, los refrescos con cafeína inhiben la absorción de Calcio. Algunos alimentos como la acelga o la espinaca pueden inhibir su absorción.""",
        picURL:
            "https://cdn.nof.org/wp-content/uploads/2015/12/diary-and-fish.png"),
    Nutrient(
        id: 3,
        key: NutrientKey.hierro,
        name: "Hierro",
        longDesc:
            """El hierro es un mineral cuya función principal es transportar el oxígeno en la sangre. El hierro tiene menor absorción cuando es de origen vegetal (hierro no hemínico), sin embargo, existen estrategias para mejorar su absorción. Su deficiencia puede llevar a anemia ferropénica (cansancio, déficit cognitivo, déficit en el sistema inmunitario)""",
        foods: [
          "Lacteos",
          "Cereales integrales",
          "Leguminosas (Principalmente lengejas, garbanzos, porotos",
          "Verduras de hoja verde (Principalmente espinaca, acelga, berro, brocoli)"
        ],
        facilitators:
            """Para aumentar la absorción del hierro de los vegetales se deben consumir con cítricos como limón, naranja, pomelo y mandarinas, también el tomate. Los vegetales color naranja también aumentan su absorción.
        """,
        inhibitors:
            """Las bebidas con cafeína como café, té, mate, refrescos.""",
        picURL:
            "https://images.hindustantimes.com/rf/image_size_960x540/HT/p2/2018/07/18/Pictures/_54f1141e-8a7c-11e8-b2f4-2ee9fa0c7dec.jpg"),
    Nutrient(
        id: 4,
        key: NutrientKey.zinc,
        name: "Zinc",
        longDesc:
            """Este mineral es importante para el funcionamiento de todos los órganos, tejidos, fluidos y secreciones del cuerpo. Es necesario para el funcionamiento de enzimas y proteínas, tiene funciones que mejoran la inmunidad de las personas y participa en la protección de antioxidantes. La carencia de este mineral puede debilitar el sistema inmunológico, causar lesiones cutáneas, diarrea, pérdida del cabello, pérdida del sentido del gusto, alteraciones del olfato, ceguera nocturna, cicatrización lenta de las heridas, entre otras.""",
        foods: [
          "Semillas de zapallo",
          "Levadura nutricional",
          "Avena",
          "Yema de huevo",
          "Algas",
          "Leguminosas",
          "Frutos secos"
        ],
        facilitators:
            """Los azúcares de la fruta y los lácteos, las proteínas favorecen la absorción de Zinc. Remojar siempre las leguminosas y pseudo cereales mejora la absorción, como también hidratar y moler las semillas y frutos secos consumiéndolos en forma de pasta o paté.""",
        inhibitors:
            """Evitar suplementos de Calcio y Hierro dos horas antes y después de comer alimentos que aportan Zinc.""",
        picURL:
            "https://www.unlockfood.ca/EatRightOntario/media/Website-images-resized/What-you-need-to-know-about-Zinc-resized.jpg"),
    Nutrient(
        id: 5,
        key: NutrientKey.yodo,
        name: "Yodo",
        longDesc:
            """Este mineral es el componente esencial para la formación de las hormonas tiroideas (T3 y T4). La deficiencia de este mineral puede producir una reducción de la formación de T4 disminuyendo el gasto calórico diario y derivar en bocio.""",
        foods: [
          "Frutos secos (Principalmente nueces)",
          "Aceite de soja",
          "Aceite de canola",
          "Semillas (Principalmente chia y lino y sus aceites)"
        ],
        facilitators:
            """En el caso de no padecer hipertensión o enfermedades cardiovasculares consumir sal yodada. De lo contrato se debe consumir algas o alcelga para evitar deficiencias.
        """,
        inhibitors: "",
        picURL:
            "https://2pybk2la9r-flywheel.netdna-ssl.com/wp-content/uploads/2020/01/iStock-1154896831-food-eating-healthy.jpg"),
    Nutrient(
        id: 6,
        key: NutrientKey.vitD,
        name: "Vitamina D",
        longDesc:
            """La vitamina D participa en la fijación del calcio en los huesos y además aumenta la absorción de este mineral. Está presente en poca cantidad en los alimentos, sin embargo, se puede obtener al exponerse al sol por 20 minutos al dìa aproximadamente. Si no hay suficiente exposición al sol, es recomendable consumir alimentos fortificados o suplementos. La deficiencia de esta vitamina puede producir osteopatías como osteoporosis y posteriormente osteomalacia (provoca dolores y dificulta los movimientos).""",
        foods: [
          "Son muy pocos los alimentos naturales que contienen vit. D",
          "Huevo (En pequeña cantidad)",
          "Leche (En pequeña cantidad)"
        ],
        facilitators: "",
        inhibitors: "",
        picURL:
            "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F12%2F2020%2F06%2F25%2Fvitamin-d-AdobeStock_270150827.jpg"),
    Nutrient(
        id: 7,
        key: NutrientKey.vitB12,
        name: "Vitamina B12",
        longDesc:
            """Esta vitamina participa en la formación de glóbulos rojos, proteínas y favorece el buen funcionamiento cerebral. Se encuentra únicamente en alimentos de origen animal, por lo tanto, quienes no consumen estos alimentos (veganos) necesitan suplementación y/o el consumo de alimentos enriquecidos cuando se lleva a cabo este tipo de dieta. Incluso, en la mayoría de los casos las personas vegetarianas (aunque consuman huevo y lácteos) deben suplementarse.Es importante realizar al menos una vez al año exámenes de sangre para verificar que los valores sean los adecuados. Su deficiencia puede provocar anemia megaloblástica y neuropatías.""",
        foods: [
          "Unicamente pertenecen a alimentos de origen animal",
          "Yema de huevo",
          "Lacteos",
          "Alimentos fortificados"
        ],
        facilitators:
            """Para informarte sobre la suplementación de Vitamina B12 adecuada para ti consulta a un Nutricionista. HIPERVICULO A LA PESTAÑA DE CONTACTO DE NUTRICIONISTAS""",
        picURL:
            "https://domf5oio6qrcr.cloudfront.net/medialibrary/4529/b12-foods.jpg"),
  ];
}
