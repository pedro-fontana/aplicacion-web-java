-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2020 a las 08:53:19
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libros_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `autor_id` smallint(6) NOT NULL,
  `autor_nombre` varchar(30) NOT NULL,
  `autor_apellido` varchar(30) NOT NULL,
  `autor_nacimieto` date NOT NULL,
  `autor_muerte` date NOT NULL,
  `autor_nacionalidad` varchar(40) NOT NULL,
  `autor_biografia` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`autor_id`, `autor_nombre`, `autor_apellido`, `autor_nacimieto`, `autor_muerte`, `autor_nacionalidad`, `autor_biografia`) VALUES
(1, 'Kurt', 'Vonnegut', '1922-11-11', '2007-04-11', 'Estados Unidos', 'Kurt Vonnegut Jr. fue un escritor estadounidense, cuyas obras, generalmente adscritas al género de la ciencia ficción, participan también de la sátira y la comedia negra. Es autor de catorce novelas, entre las que destacan Las sirenas de Titán (1959), Matadero cinco (1969) y El desayuno de los campeones (1973). Como ciudadano, toda su vida fue seguidor de la Unión Estadounidense por las Libertades Civiles.1​ Era conocido por sus ideas humanistas y fue presidente honorario de la Asociación Humanista Estadounidense.'),
(2, 'Jorge Luis ', 'Borges', '1889-08-24', '1986-06-14', 'Argentina', 'Jorge Francisco Isidoro Luis Borges Acevedo fue un escritor de cuentos, ensayista, poeta y traductor argentino y una figura clave tanto para la literatura en habla hispana como para la literatura universal.'),
(3, 'Claudia', 'Piñiero', '1960-04-10', '0000-00-00', '', 'En 1978, al finalizar sus estudios secundarios, Claudia Piñeiro decide inscribirse en la carrera de Sociología pero la dictadura militar instaurada como corolario del golpe de estado perpetrado el 24 de marzo de 1976 había cerrado el ingreso a las carreras que consideraba \"sospechosas\". Es por ello que rinde el examen de ingreso a la Facultad de Ciencias Económicas y al Profesorado de Matemática. Entra en Ciencias Económicas, en la carrera de Contadora Pública3​. En 1983 se recibe de contadora en la Universidad de Buenos Aires, profesión que ejerce durante diez años antes de dedicarse a la escritura.'),
(4, 'Eduardo', 'Sacheri', '1967-12-13', '0000-00-00', 'Argentina', 'Ha publicado cuentos y novelas.7​ La primera, La pregunta de sus ojos (2005), fue llevada al cine por el director Juan José Campanella con el título El secreto de sus ojos.8​ La película ha recibido numerosos premios, entre ellos el Oscar a la mejor película extranjera en 2009.9​ Sacheri y Campanella también coescribieron el guion de la película animada Metegol, inspirado en el cuento \"Memorias de un wing derecho\", de Roberto Fontanarrosa.10​\r\n\r\nHa participado en campañas de estímulo de la lectura implementadas por el Ministerio de Educación argentino.11​12​ Desde 2011 trabaja para la revista deportiva El Gráfico, donde escribe una columna sobre fútbol. Algunos de estos relatos han sido publicados en antologías: Aviones en el cielo (2011), Las llaves del reino (2015) y El fútbol, de la mano (2017).13​14​15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biblioteca`
--

CREATE TABLE `biblioteca` (
  `biblioteca_usuario_mail` varchar(60) NOT NULL,
  `biblioteca_libro_isbn` varchar(50) NOT NULL,
  `biblioteca_estado` tinyint(1) NOT NULL COMMENT '0 = Quiero leer el libro\r\n1 = Libro leído'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `biblioteca`
--

INSERT INTO `biblioteca` (`biblioteca_usuario_mail`, `biblioteca_libro_isbn`, `biblioteca_estado`) VALUES
('a', '9789500755757', 1),
('a', '9789500755764', 0),
('a', '9789500760973', 1),
('a', '9789500762816', 0),
('a', '9789500763134', 1),
('a', '9789509749290', 1),
('a', '9789870428664', 0),
('a', '9789871739783', 1),
('a', '9789877380477', 1),
('a', '9789877380767', 0),
('a', '9789877383331', 1),
('abc', '9789509749375', 0),
('fontana.pedro93@gmail.com', '9789500755757', 0),
('fontana.pedro93@gmail.com', '9789509749290', 1),
('jbs@buenosaires.com', '9789509749290', 1),
('Mbielsa@yahoo.com', '9789509749290', 1),
('prueba5', '9789509749078', 0),
('prueba5', '9789509749290', 0),
('prueba5', '9789871739783', 0),
('Spippen@hotmail.com', '9789500755757', 1),
('Spippen@hotmail.com', '9789500760973', 1),
('Spippen@hotmail.com', '9789870428664', 1),
('Spippen@hotmail.com', '9789877380446', 0),
('Spippen@hotmail.com', '9789877383331', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `editorial_id` smallint(6) NOT NULL,
  `editorial_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`editorial_id`, `editorial_nombre`) VALUES
(1, 'La bestia equilátera'),
(2, 'Alfaguara'),
(3, 'Anagrama'),
(4, 'Debolsillo'),
(5, 'Sudamericana'),
(6, 'Sexto piso'),
(7, 'Hermida editoriales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `genero_id` tinyint(4) NOT NULL,
  `genero_nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`genero_id`, `genero_nombre`) VALUES
(1, 'Aventura'),
(2, 'Ciencia ficción'),
(3, 'Drama'),
(4, 'Fantásticos'),
(5, 'Humor'),
(6, 'Policiales'),
(7, 'Suspenso'),
(8, 'Terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `libro_isbn` varchar(40) NOT NULL,
  `libro_titulo` varchar(50) NOT NULL,
  `libro_autor_id` smallint(6) NOT NULL,
  `libro_publicacion` smallint(6) DEFAULT NULL,
  `libro_editorial_id` smallint(6) DEFAULT NULL,
  `libro_sinopsis` varchar(750) DEFAULT NULL,
  `libro_paginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`libro_isbn`, `libro_titulo`, `libro_autor_id`, `libro_publicacion`, `libro_editorial_id`, `libro_sinopsis`, `libro_paginas`) VALUES
('9788494741333', 'Barbazul', 1, 1987, 7, 'Rabo Karabekian, integrante del movimiento expresionista jun­to a Pollock y Rothko, inven­ta una nueva técnica pictórica, y tras su fracaso y ya entrado en años decide recluirse en una mansión de Long Island con vistas al mar, en cuyo granero guarda un gran secreto que una inesperada huésped tratará de desvelar.', 304),
('9788496867949', 'Mientras Los Mortales Duermen', 1, 2011, 6, 'En esta antologa de dieciséis piezas inéditas, el reconocido autor de Matadero Cinco vuelve a dejarnos muestras de su carácter incorregible, de su talento incomprendido por buena parte de la crtica de la época.\r\nInteligente, caprichosa y a menudo mordaz, la narrativa de Kurt Vonnegut ha influido a generaciones de escritores y ha creado personajes que oponen sus sueños y temores a un mundo cruel e indiferente, no exento de matices cómicos.\r\nEn Mientras los mortales duermen hay relatos sobre hombres y máquinas, arte y artificio, y sobre cómo los ideales de la fama, la fortuna y el amor toman giros inesperados en la vida ordinaria. Un ambicioso constructor de carreteras, al mando de un ejército de maquinaria pesada, malgasta su tiempo libre co', 256),
('9789500755757', 'Ficciones', 2, 1944, 5, 'Ficciones es un libro de cuentos escrito por Jorge Luis Borges, publicado en 1944 y compuesto de dos partes: El jardín de senderos que se bifurcan y Artificios; posee dos prólogos.\r\n\r\nLa crítica especializada ha aclamado esta obra suya como uno de los libros que ayudaron a definir el rumbo de la literatura universal del siglo XX.1​2​3​4​5​6​ Asimismo, su publicación en 1944 colocó a Borges en un primer plano de la literatura universal.6​7​ Fue incluida en la lista de las 100 mejores novelas en español del siglo XX del periódico español «El Mundo»,8​ así como también en la lista de los 100 libros del siglo XX del diario francés Le Monde y en los 100 mejores libros de todos los tiempos del Club de libros de Noruega.9​', 224),
('9789500755764', 'El Aleph', 2, 1949, 5, 'El Aleph es uno de los libros de cuentos más representativos del escritor argentino Jorge Luis Borges. Publicado en 1949, fue reeditado por el autor en 1974. Sus textos remiten a una infinidad de fuentes y bibliografías en torno a las cuales se articulan mitos y metáforas de la tradición literaria universa', 216),
('9789500760973', 'Nueve Ensayos Dantescos', 2, 1982, 5, '\"He fantaseado una obra mágica, una lámina que también fuera un microcosmo; el poema de Dante es esa lámina de ámbito universal.\" Admirador profundo de Dante, lector atento y original de su obra, Borges debe el descubrimiento de la Divina Comedia a la conjunción de un tranvía y una librería inglesa de la Ciudad de Buenos Aires hacia fines de la década del 30. De ahí en más el poema, causa de \"las emociones estéticas más intensas\" de su vida, se convertirá en referencia que cruzará buena parte de sus ficciones de madurez y en fuente inagotable para la escritura de ensayos y conferencias. Publicados en la prensa entre 1948 y 1951 y reunidos por primera vez en volumen en 1982, en estos Nueve ensayos dantescos Borges traza un recorrido a través', 104),
('9789500762816', 'DISCUSION', 2, 1932, 5, 'Borges reúne en Discusión, publicado en 1932, ensayos que operan y divagan con el pasado (\"Una vindicación del falso Basílides\" o \"Una vindicación de la Cábala\") con otros que declaran su afición incrédula y persistente por las dificultades teológicas (\"La duración del Infierno\" y \"La penúltima versión de la realidad\"). \"El escritor argentino y la tradición\", acaso uno de sus textos más discutidos, y \"Films\", que lo revela crítico espectador de cine, forman parte de este conjunto, pura expresión de Borges y de su universo: Vida y muerte le han faltado a mi vida. De esa indigencia, mi laborioso amor por estas minucias.', 240),
('9789500763134', 'Historia De La Eternidad', 2, 1936, 5, 'El tiempo es un problema para nosotros, un tembloroso y e xigente problema, acaso el más vital de la metafísica; la eternidad, un juego o una fatigada esperanza.» El ensayo qu e da título a este libro, publicado originalmente en 1936, se propone como una historia de esa imagen, esa burda palabr a enriquecida por los desacuerdos humanos: la eternidad, un artificio que nos libra [...] de la opresión de lo sucesivo , tema también de \"La doctrina de los ciclos\" y & quot;El tiempo circular\". La índole de lo metafórico es asunto de \"Las kenningar\" y \"La metáfora& quot;; la de la traducción, lo es de \"Los traductores de \'Las mil y una noches\'\". En \"El acerc amiento a Almotásin\", que completa el volumen junto a \"El arte de injuriar\", Borges, al res', 176),
('9789509749078', 'Madre Noche', 1, 2011, 1, 'Madre noche es un desafo moral por completo provocador, dond e las fronteras entre el bien y el mal, la traicin y la leal tad, la verdad y la mentira aparecen siempre confundidas. Lo s mandatos explcitos o tierna y subrepticiamente encubiertos se despliegan en una dinmica novelesca de eficacia admirabl e', 204),
('9789509749290', 'Desayuno de campeones', 1, 1973, 1, 'Desayuno de campeones. Novela más personal, satírica y disparatada del incomparable escritor estadounidense Kurt Vonnegut, publicada en su primera edición en 1973. Narra en un juego de cajas chinas el encuentro entre un grupo de personajes tan estrafalarios como entrañables con el escritor que los inventó.', 312),
('9789509749375', 'Hocus Pocus', 1, 1990, 1, 'Hocus pocus es una sátira magistral sobre el poder y el dinero, una fulgurante exhibición de talento de un estilista incomparable que nos deslumbra con las virtudes de toda su obra: invención, humor negro y una irreverencia absolutamente espléndida.', 402),
('9789870428664', 'Un Comunista en Calzoncillos ', 3, 2013, 2, 'En el verano del 76 una niña (perspicaz, observadora e intuitiva) está lista para dejar atrás la infancia. Su pequeño mundo familiar y suburbano, atravesado por las tensiones del esfuerzo diario y el resentimiento de las ilusiones perdidas, está dominado por una figura central y referente: su papá. Un padre apuesto, a la vez cómplice y ensimismado, que llegado el momento le exigirá una prueba de lealtad.\r\nUn comunista en calzoncillos es una novela sobre la infancia, pero también el retrato de una época, una clase y un país. La realidad política, que hasta el momento llegaba asordinada a las casas del pueblo y al horizonte infantil, irrumpe en forma de censura, secretos y sospechas. Los grupos se abren en bandos y las familias se parten, la ', 200),
('9789871739783', ' Payasadas', 1, 1995, 1, 'Refugiado en las ruinas del Empire State, Wilbur Rockefeller Swain, médico de profesión, monstruo de nacimiento y el último presidente de los Estados Unidos, repasa la historia de su vida y la de su país como si fueran una sola. Y en ese repaso no puede faltar Eliza, su hermana gemela: “No éramos idiotas… Éramos algo nuevo. Éramos neandertaloides”. Un día, los gemelos descubren que, cuando sus cuerpos se tocan, sus mentes se funden en una única mente genial. Rechazados por sus padres, aislados de la sociedad, inventan una fórmula para terminar con la soledad en el mundo.', 224),
('9789877380446', 'Una Suerte pequeña', 3, 2014, 2, 'Alguien puede llegar a la política por muchos motivos. Unos más legítimos, otros menos. También por error, por desidia. O por no saber decir que no.» Román Sabaté entra al mundo de la política casi por casualidad, pero es allí donde se sella su destino. La permanente tensión entre la necesidad de trabajo de un joven de provincia y las ocultas intenciones del político que lo ha elegido como secretario privado es lo que mueve los hilos de esta novela: dos hombres en conflicto en una historia en la que hasta la paternidad está en juego. Magia, doble discurso o crimen, todo vale. Las maldiciones desnuda la verdad de la llamada \"nueva política\", basada en un pragmatismo absoluto que esconde la inescrupulosidad del engaño y la ambición sin límite', 416),
('9789877380477', 'Esperandolo a Tito', 4, 2000, 2, 'Los cuentos de Eduardo Sacheri se dieron a conocer a través de la radio y enseguida conquistaron a la audiencia con su extraordinaria pintura de sucesos cotidianos que emocionan y entretienen. Ya en forma de libro, encontraron una acogida multiplicada entre los numerosos lectores que tuvieron así el placer de leer y releer estas historias notables.\r\nCon humor, emoción y un gran conocimiento de los sentimientos y reacciones humanas, Sacheri plasma en sus cuentos conflictos vitales de hombres y mujeres de nuestro tiempo enfrentados a diferentes situaciones que transcurren en el barrio, en la calle o en la cancha, a través de las cuales nos habla de la amistad y el amor, la gratitud y la venganza, la lealtad y la traición, las pérdidas y la es', 295),
('9789877380767', 'Las llaves del Reino', 4, 2000, 2, 'Historias sucedidas en la cancha, en el barrio o en las ciudades ms lejanas; opiniones, crnicas o cuentos, estos textos .que aparecieron en la revista El Grfico.\r\nse renen por primera vez en este libro.\r\nCon emocin y humor, Sacheri comparte historias: la de un padre y un hijo que intercambian mensajes de textos ante la probable derrota de su equipo; la de una profesora de piano que pierde a un alumno puesto a elegir entre el teclado y la pelota; o la de un pas que se distrae con festejos mientras manda a sus hijos a morir.\r\nEn este libro Sacheri se acerca al lector y le entrega una vez ms las llaves de un reino donde el ftbol es pasin, aprendizaje, escudo y excusa.', 192),
('9789877383331', 'Las maldiciones', 3, 2016, 2, 'Alguien puede llegar a la política por muchos motivos. Unos más legítimos, otros menos. También por error, por desidia. O por no saber decir que no.» Román Sabaté entra al mundo de la política casi por casualidad, pero es allí donde se sella su destino. La permanente tensión entre la necesidad de trabajo de un joven de provincia y las ocultas intenciones del político que lo ha elegido como secretario privado es lo que mueve los hilos de esta novela: dos hombres en conflicto en una historia en la que hasta la paternidad está en juego. Magia, doble discurso o crimen, todo vale. Las maldiciones desnuda la verdad de la llamada \"nueva política\", basada en un pragmatismo absoluto que esconde la inescrupulosidad del engaño y la ambición sin límite', 320);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_genero`
--

CREATE TABLE `libro_genero` (
  `libro_genero_isbn` varchar(220) NOT NULL,
  `libro_genero_genero_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libro_genero`
--

INSERT INTO `libro_genero` (`libro_genero_isbn`, `libro_genero_genero_id`) VALUES
('9789500755757', 2),
('9789500755757', 7),
('9789509749290', 5),
('9789877380477', 1),
('9789877380477', 3),
('9789877380767', 1),
('9789877380767', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntuacion`
--

CREATE TABLE `puntuacion` (
  `puntuacion_usuario_id` int(11) NOT NULL,
  `puntuacion_libro_isbn` varchar(60) NOT NULL,
  `puntuacion` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` tinyint(11) NOT NULL,
  `usuario_mail` varchar(70) NOT NULL,
  `usuario_contrasena` varchar(50) NOT NULL,
  `usuario_nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_mail`, `usuario_contrasena`, `usuario_nombre`) VALUES
(1, 'fontana.pedro93@gmail.com', 'fontana', 'Pedro'),
(2, 'abc', 'a', 'a'),
(4, 'aranieri@gmail.com', 'celular', 'Agustín Ranieri'),
(7, 'mlcarbino@gmail.com', 'otisxx', 'Marcos Lopez Carbini'),
(8, 'Mbielsa@yahoo.com', 'elloco433', 'Marcelo Bielsa'),
(9, 'Scurry@nba.com', 'triple', 'Stephen Curry'),
(10, 'a', 'a', 'Dennis Rodman'),
(11, 'Spippen@hotmail.com', '33', 'Scottie'),
(13, 'jbs@buenosaires.com', 'mariakodama', 'J. L. Borges'),
(14, 'pf', '123', 'pedro'),
(15, 'Pablo@hotmail.com', '123', 'Pablo '),
(18, '', '', ''),
(19, 'pepe@hotmail.com', 'can', 'AgustÃ­n R'),
(21, 'asdasda', 'asdas', 'asdadas'),
(23, 'asdafdfg', 'asfsgfdfgf', 'asdsds'),
(24, 'pablooooo@hotmail.com', '123', 'AgustÃ­n R'),
(25, 'asdasdasd', '', 'asddas'),
(27, 'asdadsa', 'asdasdas', 'asdasd'),
(28, 'aldoVikingo@gmail.com', '123', 'Aldo'),
(29, 'prueba5', 'asd', 'Natalia');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`autor_id`);

--
-- Indices de la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`biblioteca_usuario_mail`,`biblioteca_libro_isbn`),
  ADD KEY `bliblioteca_libro_isbn` (`biblioteca_libro_isbn`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`editorial_id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`genero_id`),
  ADD UNIQUE KEY `genero_nombre` (`genero_nombre`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`libro_isbn`),
  ADD KEY `libro_autor_id` (`libro_autor_id`),
  ADD KEY `libro_editorial_id` (`libro_editorial_id`);

--
-- Indices de la tabla `libro_genero`
--
ALTER TABLE `libro_genero`
  ADD PRIMARY KEY (`libro_genero_isbn`,`libro_genero_genero_id`),
  ADD KEY `libro_genero_genero_id` (`libro_genero_genero_id`);

--
-- Indices de la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  ADD PRIMARY KEY (`puntuacion_usuario_id`,`puntuacion_libro_isbn`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `usuario_mail` (`usuario_mail`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `autor_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `editorial_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `genero_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD CONSTRAINT `biblioteca_ibfk_1` FOREIGN KEY (`biblioteca_usuario_mail`) REFERENCES `usuario` (`usuario_mail`),
  ADD CONSTRAINT `biblioteca_ibfk_2` FOREIGN KEY (`biblioteca_libro_isbn`) REFERENCES `libro` (`libro_isbn`);

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`libro_editorial_id`) REFERENCES `editorial` (`editorial_id`),
  ADD CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`libro_autor_id`) REFERENCES `autor` (`autor_id`);

--
-- Filtros para la tabla `libro_genero`
--
ALTER TABLE `libro_genero`
  ADD CONSTRAINT `libro_genero_ibfk_1` FOREIGN KEY (`libro_genero_isbn`) REFERENCES `libro` (`libro_isbn`),
  ADD CONSTRAINT `libro_genero_ibfk_2` FOREIGN KEY (`libro_genero_genero_id`) REFERENCES `genero` (`genero_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
