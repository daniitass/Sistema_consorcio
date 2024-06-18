create database consorcio;
use consorcio;

CREATE TABLE Direcciones (
    Direccion_ID INT PRIMARY KEY,
    Calle VARCHAR(15),
    Altura INT,
    Esquina VARCHAR(15),
    Barrio VARCHAR(15)
);

CREATE TABLE Unidad_funcional (
    UF_ID INT PRIMARY KEY,
    Unidad VARCHAR(3),
    Piso INT,
    Direccion VARCHAR(35),
    Direccion_ID INT,
    FOREIGN KEY (Direccion_ID) REFERENCES Direcciones(Direccion_ID)
);

CREATE TABLE Responsable (
    Responsable_ID INT PRIMARY KEY,
    Nombre VARCHAR(20),
    Apellido VARCHAR(20),
    Mail VARCHAR(20),
    Teléfono INT
);

CREATE TABLE Pago_expensas (
    Expensas_ID INT PRIMARY KEY,
    Fecha_pago DATE,
    Fecha_limite DATE,
    Monto FLOAT(10),
    Periodo VARCHAR(14),
    Saldo_anterior FLOAT(10)
);

CREATE TABLE Responsable_unidad_funcional (
    ID_RUF INT PRIMARY KEY,
    Responsable_ID INT,
    UF_ID INT,
    FOREIGN KEY (Responsable_ID) REFERENCES Responsable(Responsable_ID),
    FOREIGN KEY (UF_ID) REFERENCES Unidad_funcional(UF_ID)
);

CREATE TABLE Responsable_pago_expensas (
    ID_RPE INT PRIMARY KEY,
    Responsable_ID INT,
    Expensas_ID INT,
    FOREIGN KEY (Responsable_ID) REFERENCES Responsable(Responsable_ID),
    FOREIGN KEY (Expensas_ID) REFERENCES Pago_expensas(Expensas_ID)
);

