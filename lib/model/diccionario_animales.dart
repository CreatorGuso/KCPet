class Animales {
  String tipo;
  String raza;
  String descripcion;
  String imageURL;

  Animales({
    required this.tipo,
    required this.raza,
    required this.descripcion,
    required this.imageURL,
  });
}

//lista de perros
List<Animales> animalesList = [
  Animales(
      tipo: 'Perros',
      raza: 'Golden retriever',
      descripcion:
          'El golden retriever o cobrador dorado es una raza de perro que se desarrolló alrededor de 1850 en el Reino Unido, es un hábil perro de caza con aptitudes para el rastreo. Posee una disposición amigable y una actitud que lo ha convertido en una de las razas familiares más populares, Son perros activos, y requieren de una cantidad razonable de ejercicio cada día, aunque las necesidades de ejercicio pueden variar dependiendo del perro y su edad.',
      imageURL:
          'https://upload.wikimedia.org/wikipedia/commons/c/c0/Golden_Retriever_with_tennis_ball.jpg'),
  Animales(
      tipo: 'Perros',
      raza: 'Pitbull',
      descripcion:
          'Es una raza de perro, originaria de Estados Unidos, que surgió a partir de la raza de los bull-and-terriers, se utilizaban como perros de pelea hasta que estos eventos fueron prohibidos en 1976; actualmente son criados como mascotas y atletas en deportes legales, es un perro de gran energía que necesita varias caminatas al día para mantenerse en forma físicamente y mentalmente. Puedes aprovechar estos paseos para presentárselo a diferentes personas y ayudarlo a socializarse bien.',
      imageURL:
          'https://www.hogarmania.com/archivos/201510/mascotas-razas-perro-pitbull-4-668x400x80xX.jpg'),
  Animales(
      tipo: 'Perros',
      raza: 'Shar pei',
      descripcion:
          'es una raza de perros originaria del sur de China de la que existen noticias desde aproximadamente el año 206 a. C. Se dice que provee energía, amor y cariño. El principal cuidado es el de no cortarle el pelo y secarlo completamente después de que se humedezca o se moje. No son perros que puedan estar demasiado tiempo al sol. Es necesario cuidar de su alimentación para mantener su pelaje y delicada piel.',
      imageURL:
          'https://www.razasdeperros.com/wp-content/uploads/2013/10/shar-pei.jpg'),
  Animales(
      tipo: 'Perros',
      raza: 'Pug',
      descripcion:
          'Es una raza de perro con origen histórico en China, pero con el patrocinio del Reino Unido. si son bien entrenados y adecuadamente socializados, no son animales agresivos. El pug no es un perro que requiera invertir mucho tiempo en cuidados, pero eso no significa que podamos olvidarnos de sus necesidades. Será necesario, por ejemplo, cepillar su manto de pelo una o dos veces por semana, para mantener su pelaje sano y brillante',
      imageURL:
          'https://www.animalfiel.com/wp-content/uploads/2020/07/tipos-de-pugs.jpg'),
  Animales(
      tipo: 'Perros',
      raza: 'Bull Terrier',
      descripcion:
          'Es una raza de perro originaria de Inglaterra, de la familia de los terriers. Son conocidos por la forma única de su cabeza y sus pequeños ojos en forma triangular. Necesitan hacer bastante ejercicio, sin sobre-ejercitarlo en edad joven, ya que eso puede provocar problemas musculares y no alcanzar la estatura máxima. Además, la raza es conocida por ser muy glotona, por lo que debe dosificarse la comida y el ejercicio. Son excelentes perros guardianes y tienen el oído muy bien afinado.',
      imageURL:
          'https://superpet.pe/blog/wp-content/uploads/2021/11/Bull-Terrier-La-gui%CC%81a-completa-de-esta-raza-de-perro-1-750x450.jpg'),
  Animales(
      tipo: 'Perros',
      raza: 'Labrador Retriever',
      descripcion:
          'Es una raza canina originaria de Terranova, en la actual Canadá. Es una de las razas más populares del mundo por la cantidad de ejemplares registrados, Su excepcional afabilidad, gentileza, inteligencia, nobleza, energía y bondad, hacen que los labradores sean generalmente considerados como buenos compañeros para personas de todas las edades, debe tener un horario para su comida y alimentarlo dos veces al día ya que los labradores tienden a engordar y pueden sufrir de sobrepeso.',
      imageURL:
          'https://i.pinimg.com/736x/2a/3d/3c/2a3d3c57f17a8ad9210c0fe0ac2fbfd2--los-labrador-retriever.jpg'),
  Animales(
      tipo: 'Perros',
      raza: 'Bulldog',
      descripcion:
          'Es una raza de perro originaria del Reino Unido. debido a la deformidad de su hocico, es una raza con predisposición a sufrir golpes de calor por su conformación craneal, la mayoría de los perros de esta raza presentan al menos una de las anomalías del síndrome braquiocefálico, Es necesario brindarle una alimentación balanceada para evitar que sufra de sobrepeso u obesidad. Llevarlo periódicamente a consultas veterinarias para un chequeo general y así descartar posibles complicaciones en la salud',
      imageURL:
          'https://www.bunko.pet/__export/1648695541554/sites/debate/img/2021/05/08/jake-el-perro_crop1620508101462.jpeg_976912859.jpeg'),
  Animales(
      tipo: 'Perros',
      raza: 'San bernardo',
      descripcion:
          'Es una raza de perro originaria de los Alpes suizos y del norte de Italia. Es un perro que necesita cuidado ante todo en la cara, ojos y párpados y con su pelaje, en especial en la variedad de pelo largo. Es conveniente que haga algo de ejercicio (sin excederse debido a su propensión a padecer torsión de estómago) y que disponga de espacio adecuado a su gran tamaño',
      imageURL:
          'https://superpet.pe/blog/wp-content/uploads/2022/02/san-bernardo-750x450.jpg'),
  Animales(
      tipo: 'Perros',
      raza: 'Pastor Alemán',
      descripcion:
          'Es una raza de perro pastor originaria de Alemania. El pastor alemán tiene un gran instinto y una predisposición natural para el trabajo. Se trata de un perro muy valiente que, por su condición de guardián, mantiene una actitud de alerta constante. Es importante que en sus primeras visitas al veterinario se consulte si es necesario mantener alguna medida de higiene específica de sus ojos y oídos.',
      imageURL:
          'https://upload.wikimedia.org/wikipedia/commons/9/94/Cane_da_pastore_tedesco_adulto.jpg'),
];
//Fin lista de perros

//lista de Felinos
List<Animales> animalesListFelinos = [
  Animales(
      tipo: 'Felinos',
      raza: 'Bosque de Noruega',
      descripcion:
          'El gato de bosque de Noruega también se conoce como gato noruego. Se caracteriza por su pelaje semi largo y espeso y es una de las razas de gatos más grandes y pesadas pues los machos pueden llegar a pesar hasta 9,5 kg. Es por eso que son gatos que necesitan mucho espacio, es preferible que estén al aire libre en lugares boscosos. Sin embargo, mantenerlos en el interior es posible.',
      imageURL:
          'https://www.feelcats.com/wp-content/uploads/2019/07/bosque-de-noruega-gato-tamano.jpg'),
  Animales(
      tipo: 'Felinos',
      raza: 'Brazilian Shorthair',
      descripcion:
          'Los gatos brasileños de pelo corto, se consideran como excelentes cazadores, e incluso si vives en un departamento, debes preocuparte por las rejas en las ventanas para que no escape. Les encantan los juegos al aire libre, prefieren correr por la calle en lugar de dormir en casa.',
      imageURL:
          'https://www.hepper.com/wp-content/uploads/2022/04/Brazilian-Shorthair-Cat_Oak-Tree-Studiostock_Shutterstock.jpg'),
  Animales(
      tipo: 'Felinos',
      raza: 'Burmés',
      descripcion:
          'El gato burmés o gato Birmania es un gato grande y territorial que puede imponer, pero no es un gato agresivo. Algunos gatos birmanos incluso se ponen celosos si su dueño no les presta atención debida. Hay que cuidarles mucho su alimentación pues son propensos al sobrepeso por lo que el ejercicio es indispensable en su rutina diaria.',
      imageURL:
          'https://cdn0.soyungato.com/es/razas/4/2/0/gato-burmes_24_0_orig.jpg'),
  Animales(
      tipo: 'Felinos',
      raza: 'Cornish rex',
      descripcion:
          'El gato de raza Cornish Rex es una raza muy apegada a su dueño, por lo que exige atención y tiempo de calidad juntos todos los días. Muchos gatos Cornish Rex pueden incluso aprender a caminar con correa para tener momentos con el humano. Son dóciles y manejables, pero necesitan de un buen espacio para ejercitarse; es un gato ágil que suele brincar, correr e interactuar con el humano. Cuando juega, suele hacerlo por mucho tiempo.',
      imageURL:
          'https://www.feelcats.com/wp-content/uploads/2019/02/cornish-rex.jpg'),
  Animales(
      tipo: 'Felinos',
      raza: 'Cymric',
      descripcion:
          'El gato cymric entre sus curiosidades tiene, que es uno de los gatos que no tiene cola de forma natural. Suele ser amistoso y muy juguetón, pero necesita ser cepillado todos los días, el dueño del Cymric debe cuidar además de su alimentación, pues es una de las razas de gato que tienden más a subir de peso pues tiene un apetito voraz. Los cuidados de su pelaje son básicos pero no deben pasar desapercibido.',
      imageURL:
          'https://planetamascotaperu.com/wp-content/uploads/2021/06/La-raza-de-gato-el-Cymric.jpg'),
  Animales(
      tipo: 'Felinos',
      raza: 'Chartreux',
      descripcion:
          'El gato chartreux o maltés es muy popular en Europa, suelen ser gatitos tranquilos y se les considera sociables y poco agresivos. No debe estar mucho tiempo solo, pero en caso de que pase varios momentos en soledad, el Chartreux debe tener estímulos suficientes para que pueda divertirse y esté mentalmente ocupado.',
      imageURL:
          'https://cdn0.soyungato.com/es/razas/3/2/0/gato-cartujo_23_0_orig.jpg')
];
//Fin lista de Felinos

//lista de Roedores
List<Animales> animalesListRoedores = [
  Animales(
      tipo: 'Roedores',
      raza: 'Hamster',
      descripcion:
          'El Hámster es un mamífero roedor que tiene un gran parecido al ratón, pero específicamente pertenece a la familia de los Cricetinos (Cricetinae). Su origen proviene mayormente del sureste de Estados Unidos y de oriente medio.',
      imageURL:
          'https://www.petdarling.com/wp-content/uploads/2021/02/hamster.jpg'),
  Animales(
      tipo: 'Roedores',
      raza: 'Chinchillas ',
      descripcion:
          'Las chinchillas son los segundos roedores más comunes que las personas toman como mascotas. Oriundos de la zona andina del continente americano, estos pequeños roedores son populares debido a su tierno aspecto que los hace los compañeros perfectos para todo tipo de familias. Si te interesa tener una mascota como esta, perfecta para hogares pequeños.',
      imageURL:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Chinchilla-Patchouli.jpg/640px-Chinchilla-Patchouli.jpg'),
  Animales(
      tipo: 'Roedores',
      raza: 'Ratones',
      descripcion:
          'Los ratones son sin dudas los especímenes roedores más populares para tener de mascotas, esto se debe a que existen muchos y de diferentes especies alrededor del mundo; incluso se dice que son los segundos mamíferos, después de los humanos, que se encuentran en mayor cantidad sobre la faz de la tierra. Mucho de su atractivo se lo deben a su amistoso tamaño que les da un aire tierno',
      imageURL:
          'https://www.lacobaya.com/wp-content/uploads/2020/05/ratones-habitat.-comportamiento-tipos-y-m%C3%A1s.jpg'),
  Animales(
      tipo: 'Roedores',
      raza: 'Ardilla',
      descripcion:
          'La ardilla es un pequeño roedor que se puede encontrar de forma silvestre en muchos parques abiertos, ya que su presencia no interfiere de forma incomoda con el ambiente de esos lugares. Estos animalitos son muy populares como mascotas, pues resultan ser muy juguetones con sus dueños, cosa que los seres humanos adoran.',
      imageURL:
          'https://static.nationalgeographicla.com/files/styles/image_3200/public/bra_3384-copy1.jpg?w=710&h=474'),
  Animales(
      tipo: 'Roedores',
      raza: 'Conejillo de indias',
      descripcion:
          'Tener un conejillo de indias como mascota puede resultar ser un verdadero reto para aquellas personas que no están dispuestas a prestarles los cuidados necesarios a estos pequeños roedores. Al ser tan diminutos, y estar acostumbrados a la vida hogareña, demandan muchas más atenciones que el resto de los roedores mascotas. Si quieres hacerte con una cobaya mascota debes brindarle la comida que más les beneficia, los cuidados higiénicos que más necesitan y también un lugar apropiado para vivir.',
      imageURL: 'https://animalia.cat/wp-content/uploads/2020/12/cobaya.jpg')
];

//Fin lista de Roedores

//lista de Avez
List<Animales> animalesListAves = [
  Animales(
      tipo: 'Aves',
      raza: 'Gallito de las rocas',
      descripcion:
          'El gallito de las rocas o tunqui (Rupícola peruviana), notable por la increíble belleza de su plumaje, es una especie de ave paseriforme de la familia Cotingidae que habita en la región amazónica del Perú. Es de tamaño mediano, de unos 35 centímetros. El macho es de un hermoso color rojo anaranjado intenso, ojos anaranjados, patas y pico amarillos, con alas y colas negras. La hembra es de color marrón rojizo oscuro.',
      imageURL:
          'https://www.centroestudioscervantinos.es/wp-content/uploads/2019/01/gallito-1.jpg'),
  Animales(
      tipo: 'Aves',
      raza: 'Trochilidae',
      descripcion:
          'También conocidos como picaflores, chuparrosas, tucusitos, pájaros mosca, ermitaños o quindes, son un conjunto de aves apodiformes endémicas de América que cuenta con más de 300 especies. Son unas minúsculas aves americanas que se caracterizan por el colorido de su plumaje, su forma de volar y por los hábitos peculiares de alimentación que poseen. Emiten un zumbido con las alas, que mueven con mayor rapidez que las de cualquier otra ave, hasta el extremo de que no se distinguen cuando vuelan.',
      imageURL:
          'https://i.pinimg.com/736x/d1/1d/77/d11d77dba638c747cf92d08959899a84--hummingbird-wallpaper-flower-pictures.jpg'),
  Animales(
      tipo: 'Aves',
      raza: 'Guacamayo',
      descripcion:
          'Es una especie de ave perteneciente a la familia de los psitácidos y ave nacional de la República de Honduras. Se distingue por su plumaje de colores vivos, que es principalmente rojo escarlata, complementado con algunas plumas azules y amarillas con verde que inician desde las alas hasta su cola. Habita a lo largo de un amplio rango de distribución que abarca desde el sureste de México hasta las selvas pedemontanas del departamento de Cochabamba en el centro de Bolivia',
      imageURL:
          'https://static.nationalgeographic.es/files/styles/image_3200/public/2242.600x450.jpg?w=710&h=533'),
  Animales(
      tipo: 'Aves',
      raza: 'Búho',
      descripcion:
          'Búho es el nombre común de aves de la familia Strigidae, del orden de los estrigiformes o aves rapaces nocturnas. Habitualmente designa especies que, a diferencia de las lechuzas, tienen plumas alzadas que parecen orejas (sus verdaderas orejas se encuentran al costado de la cabeza, a los laterales de los ojos) y presentan una coloración amarilla o naranja en el iris. Debido a que sus ojos carecen de movilidad y solo pueden ver hacia delante, pueden girar la cabeza 270°',
      imageURL:
          'https://t1.ea.ltmcdn.com/es/posts/0/9/7/alimentacion_del_buho_real_21790_600.jpg'),
  Animales(
      tipo: 'Aves',
      raza: 'Águila calva',
      descripcion:
          'Es un ave rapaz accipitriforme de la familia Accipitridae, que habita en América del Norte, del sur de Canadá a Baja California Sur y Sonora en México. Se conocen varias subespecies. Es un águila grande de color marrón oscuro con la cola y la cabeza blancas. Subsiste principalmente de los peces, sobre los que se abalanza y arrebata del agua con sus garras. Esta especie construye nidos más grandes que cualquier otra especie y sus nidos pueden llegar a medir 4 metros de profundidad, 2,5 metros de ancho y pueden llegar a pesar 1 tonelada métrica.',
      imageURL:
          'https://dam.ngenespanol.com/wp-content/uploads/2022/02/a%CC%81guila-calva1.jpg')
];

//Fin lista de Avez

//lista de Reptiles
List<Animales> animalesListReptiles = [
  Animales(
      tipo: 'Reptiles',
      raza: 'Pitones',
      descripcion:
          'son una familia de serpientes constrictoras propias del paleotrópico. Otras fuentes consideran a este grupo una subfamilia de la familia de las boas. Las pitones se pueden distinguir de las boas en que tienen dientes en el premaxilar, un pequeño hueso en la parte frontal de la mandíbula superior. La mayoría de las boas dan a luz crías vivas, mientras que las pitones ponen huevos. Algunas variedades pueden llegar a ser muy largas: hasta ocho metros.',
      imageURL: 'https://www.anipedia.net/imagenes/serpientes-piton.jpg'),
  Animales(
      tipo: 'Reptiles',
      raza: 'Tortuga',
      descripcion:
          'La característica más importante del esqueleto de las tortugas es que una gran parte de su columna vertebral está soldada a la parte dorsal del caparazón. El esqueleto hace que la respiración sea imposible por movimiento de la caja torácica',
      imageURL:
          'https://images.hola.com/imagenes/estar-bien/20180801127958/embarazo-tortugas/0-589-516/tortuga-embarazada-1-t.jpg'),
  Animales(
      tipo: 'Reptiles',
      raza: 'Caiman negro',
      descripcion:
          'Es un reptil carnívoro de la familia Alligatoridae, llamado así por el color oscuro de su piel cuando es adulto. Vive en lagos, ríos de movimiento lento y otros hábitats de agua dulce de América del Sur, principalmente en la cuenca del Amazonas.',
      imageURL:
          'https://2.bp.blogspot.com/-G6r9MMYFAVE/WmjDVYNDYYI/AAAAAAAAg84/CxpSzsyHHmUIAS20NHqR30yF-qZEfvegACLcBGAs/s1600/caiman%2BnegYacare%2Bnegro%2B%2528caiman%2Byacare%2529.jpg'),
  Animales(
      tipo: 'Reptiles',
      raza: 'Dragon de Komodo',
      descripcion:
          'Es el lagarto de mayor tamaño del mundo, con una longitud media de dos a tres metros y un peso de unos 70 kg. A consecuencia de su tamaño, son los superpredadores de los ecosistemas en los que viven.4 A pesar de que estos lagartos se alimentan principalmente de carroña, también cazan y tienden emboscadas a sus presas, que incluyen invertebrados, aves y mamíferos.',
      imageURL:
          'https://www.bioparcfuengirola.es/wp-content/uploads/2017/08/interiores-animal-bioparc-fuengirola-dragon-de-komodo-01.jpg')
];
//Fin lista de Reptiles

//lista de Insectos
List<Animales> animalesListInsectos = [
  Animales(
      tipo: 'Reptiles',
      raza: 'Mariposa',
      descripcion:
          'Los lepidópteros son un orden de insectos holometábolos, casi siempre voladores, conocidos comúnmente como mariposas; las más conocidas son las mariposas diurnas, pero la mayoría de las especies son nocturnas, Sus larvas se conocen como orugas y se alimentan típicamente de materia vegetal, con lo que algunas especies pueden ser plagas muy dañinas para la agricultura. Muchas especies cumplen el papel de polinizadoras de plantas y cultivos.',
      imageURL: 'https://www.anipedia.net/imagenes/vida-mariposas.jpg'),
  Animales(
      tipo: 'Reptiles',
      raza: 'Abejas',
      descripcion:
          'Conocidos comúnmente como abejas, son un clado de insectos himenópteros, sin ubicación en categoría taxonómica, dentro de la superfamilia Apoidea. Se trata de un linaje monofilético con más de 20 000 especies conocidas. Las abejas, al igual que las hormigas, evolucionaron a partir de himenópteros aculeados.',
      imageURL:
          'https://resilientemagazine.com/wp-content/uploads/2021/06/10-cosas-que-no-sabias-de-las-abejas-.jpg'),
];
//Fin lista de Insectos