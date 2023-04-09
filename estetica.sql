/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : estetica

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 29/06/2022 20:09:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cita
-- ----------------------------
DROP TABLE IF EXISTS `cita`;
CREATE TABLE `cita` (
  `id_cita` bigint NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `status` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `idUsuarios` bigint NOT NULL,
  `idlocal` int NOT NULL,
  `total_cita` float NOT NULL,
  PRIMARY KEY (`id_cita`) USING BTREE,
  KEY `idUsuarios` (`idUsuarios`) USING BTREE,
  KEY `idlocal` (`idlocal`) USING BTREE,
  CONSTRAINT `idlocal` FOREIGN KEY (`idlocal`) REFERENCES `locales` (`id_local`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `idUsuarios` FOREIGN KEY (`idUsuarios`) REFERENCES `usuario` (`id_usuarios`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cita
-- ----------------------------
BEGIN;
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (6, 'Cita Emer', '2022-05-13', '13:00:00', '0', 3, 3, 200);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (7, 'Cita Emer', '2022-05-13', '14:00:00', '0', 3, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (9, 'Corte jose', '2022-06-24', '17:30:00', '0', 5, 5, 270);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (10, 'Corte jose', '2022-06-25', '17:00:00', '0', 5, 5, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (11, 'Teñido de pelo', '2022-06-25', '18:09:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (12, 'Cita 2', '2022-06-23', '18:18:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (13, 'Cita 2', '2022-06-23', '18:18:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (14, 'Cita 2', '2022-06-23', '18:18:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (15, 'Cita 2', '2022-06-23', '18:18:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (16, 'Cita 2', '2022-06-23', '18:18:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (17, 'Cita 3', '2022-06-24', '14:45:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (18, 'Cita 3', '2022-06-24', '14:45:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (19, 'Cita 3', '2022-06-24', '14:45:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (20, 'Cita 3', '2022-06-24', '14:45:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (21, 'Cita 3', '2022-06-24', '14:45:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (22, 'cita 4', '2022-06-24', '14:49:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (23, 'cita 4', '2022-06-24', '14:49:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (24, 'cita 5', '2022-06-11', '14:50:00', '0', 5, 5, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (25, 'cita 6', '2022-06-23', '15:05:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (26, 'cita chida', '2022-06-22', '15:00:00', '0', 3, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (27, 'cita chida 2', '2022-06-18', '15:20:00', '0', 5, 5, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (28, 'cita chida 2', '2022-06-18', '15:20:00', '0', 5, 5, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (29, 'cita chida ahora si', '2022-06-17', '15:28:00', '0', 5, 5, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (30, 'ahora si va el bueno', '2022-06-24', '15:30:00', '0', 5, 5, 80);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (31, 'Corte de pelo', '2022-06-24', '15:30:00', '0', 5, 3, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (32, 'Teñido barba', '2022-06-25', '17:45:00', '0', 5, 3, 80);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (33, 'Pulida', '2022-06-30', '19:20:00', '0', 5, 5, 170);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (34, 'Pulida', '2022-06-30', '19:20:00', '0', 5, 5, 170);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (35, 'Pulida', '2022-06-30', '19:20:00', '0', 5, 5, 170);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (36, 'Pulida', '2022-06-30', '19:20:00', '0', 5, 5, 170);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (37, 'Pulida', '2022-06-30', '19:20:00', '0', 5, 5, 170);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (38, 'Corte chido', '2022-06-30', '16:45:00', '0', 5, 5, 170);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (39, 'Corte chido', '2022-06-30', '16:45:00', '0', 5, 5, 170);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (40, 'Corte chido', '2022-06-30', '16:45:00', '0', 5, 5, 170);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (41, 'Corte chido', '2022-06-30', '16:45:00', '0', 5, 5, 170);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (42, 'Corte chido', '2022-06-30', '16:45:00', '0', 5, 5, 170);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (43, 'Corte jose', '2022-06-18', '16:51:00', '0', 5, 3, 170);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (44, 'Corte jose', '2022-06-18', '16:51:00', '0', 5, 3, 170);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (45, 'Corte chido', '2022-06-30', '15:15:00', '1', 5, 5, 90);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (46, 'cita20', '2022-06-30', '17:23:00', '0', 5, 5, 0);
INSERT INTO `cita` (`id_cita`, `alias`, `fecha`, `hora`, `status`, `idUsuarios`, `idlocal`, `total_cita`) VALUES (47, 'cita20', '2022-06-30', '17:23:00', '1', 5, 5, 350);
COMMIT;

-- ----------------------------
-- Table structure for detalle_cita
-- ----------------------------
DROP TABLE IF EXISTS `detalle_cita`;
CREATE TABLE `detalle_cita` (
  `id_dtalle_cita` bigint NOT NULL AUTO_INCREMENT,
  `id_cita_dcita` bigint NOT NULL,
  `id_servicio_dcita` tinyint NOT NULL,
  `cantidad_cita` tinyint NOT NULL,
  PRIMARY KEY (`id_dtalle_cita`) USING BTREE,
  KEY `id_servicio_dcita` (`id_servicio_dcita`) USING BTREE,
  KEY `id_cita_dcita` (`id_cita_dcita`) USING BTREE,
  CONSTRAINT `id_cita_dcita` FOREIGN KEY (`id_cita_dcita`) REFERENCES `cita` (`id_cita`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `id_servicio_dcita` FOREIGN KEY (`id_servicio_dcita`) REFERENCES `servicio` (`id_servicio`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of detalle_cita
-- ----------------------------
BEGIN;
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (3, 6, 3, 2);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (4, 9, 4, 3);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (5, 30, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (6, 32, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (7, 33, 4, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (8, 33, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (9, 34, 4, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (10, 34, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (11, 35, 4, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (12, 35, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (13, 36, 4, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (14, 36, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (15, 37, 4, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (16, 37, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (17, 38, 4, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (18, 38, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (19, 39, 4, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (20, 39, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (21, 40, 4, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (22, 40, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (23, 41, 4, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (24, 41, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (25, 42, 4, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (26, 42, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (27, 43, 4, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (28, 43, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (29, 44, 4, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (30, 44, 5, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (31, 45, 4, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (36, 47, 3, 1);
INSERT INTO `detalle_cita` (`id_dtalle_cita`, `id_cita_dcita`, `id_servicio_dcita`, `cantidad_cita`) VALUES (37, 47, 6, 1);
COMMIT;

-- ----------------------------
-- Table structure for locales
-- ----------------------------
DROP TABLE IF EXISTS `locales`;
CREATE TABLE `locales` (
  `id_local` int NOT NULL AUTO_INCREMENT,
  `nombre_local` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `direccion_local` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `estatus` bit(1) NOT NULL,
  PRIMARY KEY (`id_local`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of locales
-- ----------------------------
BEGIN;
INSERT INTO `locales` (`id_local`, `nombre_local`, `direccion_local`, `estatus`) VALUES (3, 'Union Jilo', 'Jilo', b'1');
INSERT INTO `locales` (`id_local`, `nombre_local`, `direccion_local`, `estatus`) VALUES (4, 'Union', 'Mnazayork', b'0');
INSERT INTO `locales` (`id_local`, `nombre_local`, `direccion_local`, `estatus`) VALUES (5, 'Union Tepeji', 'Tepeji del Rio', b'1');
COMMIT;

-- ----------------------------
-- Table structure for servicio
-- ----------------------------
DROP TABLE IF EXISTS `servicio`;
CREATE TABLE `servicio` (
  `id_servicio` tinyint NOT NULL AUTO_INCREMENT,
  `nombre_servicio` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `precio` float NOT NULL,
  `estatus` bit(1) DEFAULT NULL,
  `tiempo` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id_servicio`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of servicio
-- ----------------------------
BEGIN;
INSERT INTO `servicio` (`id_servicio`, `nombre_servicio`, `precio`, `estatus`, `tiempo`) VALUES (3, 'Teñido', 100, b'1', '1.5 hrs');
INSERT INTO `servicio` (`id_servicio`, `nombre_servicio`, `precio`, `estatus`, `tiempo`) VALUES (4, 'Corte Cabello Hombre', 90, b'1', '20 mins');
INSERT INTO `servicio` (`id_servicio`, `nombre_servicio`, `precio`, `estatus`, `tiempo`) VALUES (5, 'Teñido Barba', 80, b'1', '40 mins');
INSERT INTO `servicio` (`id_servicio`, `nombre_servicio`, `precio`, `estatus`, `tiempo`) VALUES (6, 'Uñas acrilicas', 250, b'1', '2 hrs');
COMMIT;

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id_usuarios` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `apellido1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telefono` varchar(14) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `contrasenia` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `token` int NOT NULL,
  `permiso` bit(1) NOT NULL,
  PRIMARY KEY (`id_usuarios`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of usuario
-- ----------------------------
BEGIN;
INSERT INTO `usuario` (`id_usuarios`, `nombre`, `apellido1`, `telefono`, `email`, `contrasenia`, `token`, `permiso`) VALUES (2, 'oMAR', 'Aranda', '55301245', 'OMAR.COM.MX', '1234', 486165776, b'0');
INSERT INTO `usuario` (`id_usuarios`, `nombre`, `apellido1`, `telefono`, `email`, `contrasenia`, `token`, `permiso`) VALUES (3, 'oMAR', 'Aranda', '55301245', 'OMAR.COM.MX', '1234', 10478926, b'0');
INSERT INTO `usuario` (`id_usuarios`, `nombre`, `apellido1`, `telefono`, `email`, `contrasenia`, `token`, `permiso`) VALUES (4, 'Juan', 'Figueroa', '7731271279', 'juan@mail.com', '6789', 212, b'1');
INSERT INTO `usuario` (`id_usuarios`, `nombre`, `apellido1`, `telefono`, `email`, `contrasenia`, `token`, `permiso`) VALUES (5, 'Jose', 'Madero', '5578941578', 'joseM@mail.com', 'jose1234', 296857253, b'0');
COMMIT;

-- ----------------------------
-- Procedure structure for editar_cita
-- ----------------------------
DROP PROCEDURE IF EXISTS `editar_cita`;
delimiter ;;
CREATE PROCEDURE `editar_cita`(IN p_idCita int, p_alias varchar(255), IN p_fecha varchar(255),
        IN p_hora varchar(255),
                                                          IN p_local varchar(255))
BEGIN
  UPDATE cita set alias=(p_alias),fecha=(p_fecha),hora=(p_hora),idlocal=(p_local),total_cita='0'
	where id_cita=p_idCita;
	
	delete from detalle_cita WHERE id_cita_dcita=p_idCita;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_cancelar_cita
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_cancelar_cita`;
delimiter ;;
CREATE PROCEDURE `proc_cancelar_cita`(p_cita int)
BEGIN
UPDATE cita set cita.`status`='0' where cita.id_cita=p_cita;
select 'se cancelo la cita' as Mensaje_BD;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_consul_citasTotales
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_consul_citasTotales`;
delimiter ;;
CREATE PROCEDURE `proc_consul_citasTotales`()
begin
	SELECT cita.alias, cita.fecha, cita.hora, cita.total_cita, usuario.nombre, locales.nombre_local from cita inner join usuario on
cita.idUsuarios = usuario.id_usuarios INNER JOIN locales on locales.id_local=cita.idlocal;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_consul_edita_local
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_consul_edita_local`;
delimiter ;;
CREATE PROCEDURE `proc_consul_edita_local`(p_idLocal TINYINT)
begin
	Select locales.id_local,locales.nombre_local, locales.direccion_local, locales.estatus from locales where locales.id_local=p_idLocal;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_consul_locales
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_consul_locales`;
delimiter ;;
CREATE PROCEDURE `proc_consul_locales`()
begin
Select * from locales where estatus='1';
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_consul_servicios
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_consul_servicios`;
delimiter ;;
CREATE PROCEDURE `proc_consul_servicios`()
begin
select id_servicio,nombre_servicio, precio, tiempo from servicio where estatus='1';
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_consu_etidar_servicio
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_consu_etidar_servicio`;
delimiter ;;
CREATE PROCEDURE `proc_consu_etidar_servicio`(p_idServicio TINYINT)
begin
	select servicio.id_servicio,servicio.nombre_servicio, servicio.precio, servicio.tiempo, servicio.estatus from servicio WHERE servicio.id_servicio=p_idServicio;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_editar_local
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_editar_local`;
delimiter ;;
CREATE PROCEDURE `proc_editar_local`(p_idLocal TINYINT, p_nomLocal VARCHAR(255), p_direccionLocla VARCHAR(255))
begin
	UPDATE locales set locales.nombre_local=p_nomLocal, locales.direccion_local=p_direccionLocla
	WHERE locales.id_local=p_idLocal ;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_editar_servicio
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_editar_servicio`;
delimiter ;;
CREATE PROCEDURE `proc_editar_servicio`(p_idServicio TINYINT, p_nomServicio VARCHAR(255), p_precioServ FLOAT, p_tiempoServ VARCHAR(255))
begin
UPDATE servicio set servicio.nombre_servicio=p_nomServicio, servicio.precio= p_precioServ, servicio.tiempo=p_tiempoServ WHERE servicio.id_servicio=p_idServicio;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_insertar_cita
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_insertar_cita`;
delimiter ;;
CREATE PROCEDURE `proc_insertar_cita`(IN p_alias varchar(255), IN p_fecha varchar(255),
                                                          IN p_hora varchar(255), IN p_usuario int,
                                                          IN p_local varchar(255))
begin


if EXISTS (SELECT cita.id_cita from cita where cita.fecha=p_fecha and cita.hora=p_hora)
then
		SELECT 'FECHA NO DISPONIBLE' AS MENSAJE_BD;
else
	insert cita VALUES(default,trim(p_alias), p_fecha, p_hora, '1', p_usuario, p_local,0);
	select MAX(id_cita) FROM cita WHERE idUsuarios=p_usuario;
end if;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_insertar_detalle_cita
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_insertar_detalle_cita`;
delimiter ;;
CREATE PROCEDURE `proc_insertar_detalle_cita`(p_id_cita BIGINT, p_servicio VARCHAR(255))
BEGIN
	declare id_servicio int;
	select servicio.id_servicio into id_servicio from servicio where servicio.nombre_servicio=p_servicio;
	insert into detalle_cita VALUES(default,p_id_cita, id_servicio);
	select 'Se inserto Detalle de Cita' as 'Mensaje_DB';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_insertar_detCita
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_insertar_detCita`;
delimiter ;;
CREATE PROCEDURE `proc_insertar_detCita`(p_idCita BIGINT, p_servicio BIGINT)
begin
declare pcatiCita tinyint;
DECLARE totaciata float;
Declare actuacita float;
Select cantidad_cita into pcatiCita from detalle_cita WHERE detalle_cita.id_cita_dcita=p_idCita;

Select total_cita into totaciata from cita where cita.id_cita=p_idCita;

SELECT servicio.precio into actuacita from servicio where servicio.id_servicio = p_servicio;

if EXISTS (Select detalle_cita.id_cita_dcita from detalle_cita where detalle_cita.id_cita_dcita=p_idCita and detalle_cita.id_servicio_dcita=p_servicio)
then
	UPDATE detalle_cita set cantidad_cita=(pcaticita+1) where detalle_cita.id_cita_dcita=p_idCita;
	UPDATE cita set total_cita=(totaciata+actuacita) where cita.id_cita=p_idCita;
else
	insert detalle_cita values (DEFAULt,p_idCita, p_servicio, 1);
	UPDATE cita set total_cita=(totaciata+actuacita) where cita.id_cita=p_idCita;
end if;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_insertar_local
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_insertar_local`;
delimiter ;;
CREATE PROCEDURE `proc_insertar_local`(p_nom_local varchar(255),
p_direccion_local varchar(255))
begin
if EXISTS(Select locales.nombre_local from locales where locales.nombre_local=trim(p_nom_local))
then
	SELECT 'Ya existe ese local' as Mensaje_BD;
else
	insert locales values(default, trim(p_nom_local),trim(p_direccion_local),1);
	SELECT 'Se inserto Local' as Mensaje_BD;
end if;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_insertar_servicio
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_insertar_servicio`;
delimiter ;;
CREATE PROCEDURE `proc_insertar_servicio`(p_nom_servicio varchar(255),
p_precio_serv float,
p_tiempo varchar(255))
begin
if EXISTS(Select servicio.nombre_servicio from servicio where servicio.nombre_servicio=trim(p_nom_servicio))
then
	SELECT 'Ya exite este servicio' as Mensaje_BD;
else
	insert servicio VALUES(DEFAULT, trim(p_nom_servicio), trim(p_precio_serv), 1, trim(p_tiempo));
	Select 'Se inserto nuevo servicio' as Mensaje_BD;
end if;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_insertar_usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_insertar_usuario`;
delimiter ;;
CREATE PROCEDURE `proc_insertar_usuario`(p_nombre varchar(255), p_apellido1 VARCHAR(255), p_telefono varchar(255), p_correo varchar(255),
p_contrasenia varchar(255))
begin
if p_nombre='' or p_apellido1='' or p_telefono='' or p_contrasenia=''
then
SELECT 'No dejes campos en blanco' as MENSAJE_BD;
else
insert usuario values(DEFAULT,trim(p_nombre), trim(p_apellido1), trim(p_telefono), trim(p_correo), trim(p_contrasenia), (SELECT ROUND(((999999999 - 100000000) * RAND() + 1), 0)),0);
SELECT 'SE REGISTRO DE FOMRA ADECUADA EL USUARIO' AS MENSAJE_BD;
end if;

end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for proc_validar_usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `proc_validar_usuario`;
delimiter ;;
CREATE PROCEDURE `proc_validar_usuario`(p_usuario varchar(255),
p_contra varchar(255))
begin
declare id_usuario int;
if EXISTS(select usuario.id_usuarios from usuario where usuario.nombre=p_usuario and usuario.contrasenia=p_contra)
then
	SELECT 'Puedes ingresar' as Mensaje_BD;
	select usuario.id_usuarios into id_usuario from usuario where usuario.nombre=p_usuario and usuario.contrasenia=p_contra;
else
	Select "El usuario o la contraseña son incorrectos" as Mensaje_BD;
end if;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ver_citas_admin
-- ----------------------------
DROP PROCEDURE IF EXISTS `ver_citas_admin`;
delimiter ;;
CREATE PROCEDURE `ver_citas_admin`()
BEGIN
SELECT
cita.id_cita,
	cita.alias,
	CONCAT(usuario.nombre, ' ',
	usuario.apellido1), 
	cita.fecha, 
	cita.hora,
	cita.total_cita
FROM
	cita
	INNER JOIN
	usuario
	ON 
		cita.idUsuarios = usuario.id_usuarios
		where cita.status='1';
		
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for ver_citas_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `ver_citas_user`;
delimiter ;;
CREATE PROCEDURE `ver_citas_user`(idUser int)
BEGIN
SELECT
cita.id_cita,
	cita.alias,
	cita.fecha, 
	cita.hora,
	cita.total_cita
FROM
	cita
	INNER JOIN
	usuario
	ON 
		cita.idUsuarios = usuario.id_usuarios
		where cita.status='1' and usuario.id_usuarios= idUser;
		
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
