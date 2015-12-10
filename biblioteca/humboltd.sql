-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2015 a las 02:31:36
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: "humboltd"
--
CREATE DATABASE IF NOT EXISTS "humboltd" DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE humboltd;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "auth_group"
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE "auth_group" (
  "id" int NOT NULL,
  "name" varchar(80) NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "name" ("name")
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "auth_group_permissions"
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE "auth_group_permissions" (
  "id" int NOT NULL,
  "group_id" int NOT NULL,
  "permission_id" int NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "group_id" ("group_id","permission_id"),
  KEY "auth_group_permissions_5f412f9a" ("group_id"),
  KEY "auth_group_permissions_83d7f98b" ("permission_id")
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "auth_permission"
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE "auth_permission" (
  "id" int NOT NULL,
  "name" varchar(50) NOT NULL,
  "content_type_id" int NOT NULL,
  "codename" varchar(100) NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "content_type_id" ("content_type_id","codename"),
  KEY "auth_permission_37ef4eb4" ("content_type_id")
);

--
-- Volcado de datos para la tabla "auth_permission"
--

SET IDENTITY_INSERT "auth_permission" ON ;
INSERT INTO "auth_permission" ("id", "name", "content_type_id", "codename") VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add tipo_ usuario', 8, 'add_tipo_usuario'),
(23, 'Can change tipo_ usuario', 8, 'change_tipo_usuario'),
(24, 'Can delete tipo_ usuario', 8, 'delete_tipo_usuario'),
(25, 'Can add espacio', 9, 'add_espacio'),
(26, 'Can change espacio', 9, 'change_espacio'),
(27, 'Can delete espacio', 9, 'delete_espacio'),
(28, 'Can add usuario', 10, 'add_usuario'),
(29, 'Can change usuario', 10, 'change_usuario'),
(30, 'Can delete usuario', 10, 'delete_usuario'),
(31, 'Can add bibliotecario', 11, 'add_bibliotecario'),
(32, 'Can change bibliotecario', 11, 'change_bibliotecario'),
(33, 'Can delete bibliotecario', 11, 'delete_bibliotecario'),
(34, 'Can add prestamo', 12, 'add_prestamo'),
(35, 'Can change prestamo', 12, 'change_prestamo'),
(36, 'Can delete prestamo', 12, 'delete_prestamo');

SET IDENTITY_INSERT "auth_permission" OFF;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "auth_user"
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE "auth_user" (
  "id" int NOT NULL,
  "password" varchar(128) NOT NULL,
  "last_login" datetime NOT NULL,
  "is_superuser" tinyint NOT NULL,
  "username" varchar(30) NOT NULL,
  "first_name" varchar(30) NOT NULL,
  "last_name" varchar(30) NOT NULL,
  "email" varchar(75) NOT NULL,
  "is_staff" tinyint NOT NULL,
  "is_active" tinyint NOT NULL,
  "date_joined" datetime NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "username" ("username")
);

--
-- Volcado de datos para la tabla "auth_user"
--

SET IDENTITY_INSERT "auth_user" ON ;
INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES
(1, 'pbkdf2_sha256$10000$uHgwYXrHgp9d$EKKrh3fULErTJuSR7s6+x4n5f8RVLAPlLeXH1zFzVLM=', '2015-12-10 00:22:20', 1, 'admin', '', '', 'q@hotmail.com', 1, 1, '2015-12-10 00:22:20');

SET IDENTITY_INSERT "auth_user" OFF;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "auth_user_groups"
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE "auth_user_groups" (
  "id" int NOT NULL,
  "user_id" int NOT NULL,
  "group_id" int NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "user_id" ("user_id","group_id"),
  KEY "auth_user_groups_6340c63c" ("user_id"),
  KEY "auth_user_groups_5f412f9a" ("group_id")
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "auth_user_user_permissions"
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE "auth_user_user_permissions" (
  "id" int NOT NULL,
  "user_id" int NOT NULL,
  "permission_id" int NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "user_id" ("user_id","permission_id"),
  KEY "auth_user_user_permissions_6340c63c" ("user_id"),
  KEY "auth_user_user_permissions_83d7f98b" ("permission_id")
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "django_admin_log"
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE "django_admin_log" (
  "id" int NOT NULL,
  "action_time" datetime NOT NULL,
  "user_id" int NOT NULL,
  "content_type_id" int DEFAULT NULL,
  "object_id" longtext,
  "object_repr" varchar(200) NOT NULL,
  "action_flag" smallint NOT NULL,
  "change_message" longtext NOT NULL,
  PRIMARY KEY ("id"),
  KEY "django_admin_log_6340c63c" ("user_id"),
  KEY "django_admin_log_37ef4eb4" ("content_type_id")
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "django_content_type"
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE "django_content_type" (
  "id" int NOT NULL,
  "name" varchar(100) NOT NULL,
  "app_label" varchar(100) NOT NULL,
  "model" varchar(100) NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "app_label" ("app_label","model")
);

--
-- Volcado de datos para la tabla "django_content_type"
--

SET IDENTITY_INSERT "django_content_type" ON ;
INSERT INTO "django_content_type" ("id", "name", "app_label", "model") VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'log entry', 'admin', 'logentry'),
(8, 'tipo_ usuario', 'libros', 'tipo_usuario'),
(9, 'espacio', 'libros', 'espacio'),
(10, 'usuario', 'libros', 'usuario'),
(11, 'bibliotecario', 'libros', 'bibliotecario'),
(12, 'prestamo', 'libros', 'prestamo');

SET IDENTITY_INSERT "django_content_type" OFF;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "django_session"
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE "django_session" (
  "session_key" varchar(40) NOT NULL,
  "session_data" longtext NOT NULL,
  "expire_date" datetime NOT NULL,
  PRIMARY KEY ("session_key"),
  KEY "django_session_b7b81f0c" ("expire_date")
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "django_site"
--

DROP TABLE IF EXISTS `django_site`;
CREATE TABLE "django_site" (
  "id" int NOT NULL,
  "domain" varchar(100) NOT NULL,
  "name" varchar(50) NOT NULL,
  PRIMARY KEY ("id")
);

--
-- Volcado de datos para la tabla "django_site"
--

SET IDENTITY_INSERT "django_site" ON ;
INSERT INTO "django_site" ("id", "domain", "name") VALUES
(1, 'example.com', 'example.com');

SET IDENTITY_INSERT "django_site" OFF;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "libros_bibliotecario"
--

DROP TABLE IF EXISTS `libros_bibliotecario`;
CREATE TABLE "libros_bibliotecario" (
  "id" int NOT NULL,
  "nombre" varchar(200) NOT NULL,
  "apellidos" varchar(200) NOT NULL,
  "telefono" varchar(200) NOT NULL,
  "direcccion" varchar(200) NOT NULL,
  "correo" varchar(200) NOT NULL,
  "genero" varchar(200) NOT NULL,
  PRIMARY KEY ("id")
);

--
-- Volcado de datos para la tabla "libros_bibliotecario"
--

SET IDENTITY_INSERT "libros_bibliotecario" ON ;
INSERT INTO "libros_bibliotecario" ("id", "nombre", "apellidos", "telefono", "direcccion", "correo", "genero") VALUES
(1, 'guido', 'imbachi', '23456', 'calle3', 'a@hotmail.com', 'masculino');

SET IDENTITY_INSERT "libros_bibliotecario" OFF;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "libros_espacio"
--

DROP TABLE IF EXISTS `libros_espacio`;
CREATE TABLE "libros_espacio" (
  "id" int NOT NULL,
  "nombre_espacio" varchar(200) NOT NULL,
  "imagen" varchar(100) DEFAULT NULL,
  "codigo" varchar(200) NOT NULL,
  "estado" varchar(200) NOT NULL,
  "disponibilidad" tinyint NOT NULL,
  "observacion" longtext,
  "fecha_publicacion" datetime NOT NULL,
  "fecha_adquisicion" datetime NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "codigo" ("codigo")
);

--
-- Volcado de datos para la tabla "libros_espacio"
--

SET IDENTITY_INSERT "libros_espacio" ON ;
INSERT INTO "libros_espacio" ("id", "nombre_espacio", "imagen", "codigo", "estado", "disponibilidad", "observacion", "fecha_publicacion", "fecha_adquisicion") VALUES
(1, 'estadio', NULL, '1', 'bueno', 1, 'vvvvv', '2015-07-12', '2015-11-01');

SET IDENTITY_INSERT "libros_espacio" OFF;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "libros_prestamo"
--

DROP TABLE IF EXISTS `libros_prestamo`;
CREATE TABLE "libros_prestamo" (
  "id" int NOT NULL,
  "fecha_prestamo" datetime NOT NULL,
  "fecha_devolucion" datetime NOT NULL,
  "espacio_id" int NOT NULL,
  "bibliotecario" varchar(100) DEFAULT NULL,
  "usuario_id" int NOT NULL,
  "estado_prestamo" varchar(200) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "libros_prestamo_19e89acf" ("espacio_id"),
  KEY "libros_prestamo_c69e2c81" ("usuario_id")
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "libros_tipo_usuario"
--

DROP TABLE IF EXISTS `libros_tipo_usuario`;
CREATE TABLE "libros_tipo_usuario" (
  "id" int NOT NULL,
  "nombre" varchar(100) NOT NULL,
  PRIMARY KEY ("id")
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla "libros_usuario"
--

DROP TABLE IF EXISTS `libros_usuario`;
CREATE TABLE "libros_usuario" (
  "id" int NOT NULL,
  "nombre" varchar(100) NOT NULL,
  "apellido" varchar(100) NOT NULL,
  "tipo_id" varchar(100) NOT NULL,
  "identificacion" varchar(100) NOT NULL,
  "fecha_nac" datetime NOT NULL,
  "telefono" varchar(100) NOT NULL,
  "direccion" varchar(100) NOT NULL,
  "genero" varchar(200) NOT NULL,
  "tipo_usuario_id" int NOT NULL,
  "user_id" int NOT NULL,
  "photo" varchar(100) DEFAULT NULL,
  "tiene_prestamo" tinyint NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "identificacion" ("identificacion"),
  UNIQUE KEY "user_id" ("user_id"),
  KEY "libros_usuario_b74f55c2" ("tipo_usuario_id")
);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla "auth_group_permissions"
--
ALTER TABLE "auth_group_permissions"
  ADD CONSTRAINT "group_id_refs_id_f4b32aac" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id"),
  ADD CONSTRAINT "permission_id_refs_id_6ba0f519" FOREIGN KEY ("permission_id") REFERENCES "auth_permission" ("id");

--
-- Filtros para la tabla "auth_permission"
--
ALTER TABLE "auth_permission"
  ADD CONSTRAINT "content_type_id_refs_id_d043b34a" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id");

--
-- Filtros para la tabla "auth_user_groups"
--
ALTER TABLE "auth_user_groups"
  ADD CONSTRAINT "user_id_refs_id_40c41112" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
  ADD CONSTRAINT "group_id_refs_id_274b862c" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id");

--
-- Filtros para la tabla "auth_user_user_permissions"
--
ALTER TABLE "auth_user_user_permissions"
  ADD CONSTRAINT "user_id_refs_id_4dc23c39" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
  ADD CONSTRAINT "permission_id_refs_id_35d9ac25" FOREIGN KEY ("permission_id") REFERENCES "auth_permission" ("id");

--
-- Filtros para la tabla "django_admin_log"
--
ALTER TABLE "django_admin_log"
  ADD CONSTRAINT "user_id_refs_id_c0d12874" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
  ADD CONSTRAINT "content_type_id_refs_id_93d2d1f8" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id");

--
-- Filtros para la tabla "libros_prestamo"
--
ALTER TABLE "libros_prestamo"
  ADD CONSTRAINT "usuario_id_refs_id_a0464827" FOREIGN KEY ("usuario_id") REFERENCES "libros_usuario" ("id"),
  ADD CONSTRAINT "espacio_id_refs_id_4155d2e0" FOREIGN KEY ("espacio_id") REFERENCES "libros_espacio" ("id");

--
-- Filtros para la tabla "libros_usuario"
--
ALTER TABLE "libros_usuario"
  ADD CONSTRAINT "user_id_refs_id_00c0d1ec" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
  ADD CONSTRAINT "tipo_usuario_id_refs_id_343bcb42" FOREIGN KEY ("tipo_usuario_id") REFERENCES "libros_tipo_usuario" ("id");

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
