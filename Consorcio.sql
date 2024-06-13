create database consorcio;
use consorcio;

CREATE TABLE Unidad_Funcional (
    UF_ID INT PRIMARY KEY,
    Depto VARCHAR(10),
    Piso INT,
    Dirección VARCHAR(100),
    Residente_ID INT,
    FOREIGN KEY (Residente_ID) REFERENCES Residente(Residente_ID)
);

CREATE TABLE Residente (
    Residente_ID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Mail VARCHAR(50),
    Tipo VARCHAR(10)
);

CREATE TABLE Registro_de_Vivienda (
    Registro_vivienda_ID INT PRIMARY KEY,
    UF_ID INT,
    Residente_ID INT,
    FOREIGN KEY (UF_ID) REFERENCES Unidad_Funcional(UF_ID),
    FOREIGN KEY (Residente_ID) REFERENCES Residente(Residente_ID)
);

CREATE TABLE Cobra_Haber (
    Cobra_Haber_ID INT PRIMARY KEY,
    Encargado_ID INT,
    FOREIGN KEY (Encargado_ID) REFERENCES Encargado(Encargado_ID)
);

CREATE TABLE Encargado (
    Encargado_ID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    CUIT VARCHAR(20),
    DNI VARCHAR(20),
    Teléfono VARCHAR(20),
    Mail VARCHAR(50)
);

CREATE TABLE Haber_Encargado (
    Haber_ID INT PRIMARY KEY,
    Monto FLOAT,
    Fecha_Haber DATE,
    Cobra_Haber_ID INT,
    FOREIGN KEY (Cobra_Haber_ID) REFERENCES Cobra_Haber(Cobra_Haber_ID)
);

CREATE TABLE Pago_Expensa (
    Pago_ID INT PRIMARY KEY,
    Fecha_pago DATE,
    Monto FLOAT,
    DNI VARCHAR(20),
    Registro_vivienda_ID INT,
    FOREIGN KEY (Registro_vivienda_ID) REFERENCES Registro_de_Vivienda(Registro_vivienda_ID)
);

CREATE TABLE Incluye_Haber (
    Incluye_Haber_ID INT PRIMARY KEY,
    Pago_ID INT,
    Haber_ID INT,
    FOREIGN KEY (Pago_ID) REFERENCES Pago_Expensa(Pago_ID),
    FOREIGN KEY (Haber_ID) REFERENCES Haber_Encargado(Haber_ID)
);
