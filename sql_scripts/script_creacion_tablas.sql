use accidentes_viales_caba;

-- Se crea la tabla para homicidios_hechos
CREATE TABLE IF NOT EXISTS homicidios_hechos (
    id VARCHAR(255) PRIMARY KEY,
    n_victimas INT,
    fecha DATETIME,
    aaaa INT,
    mm INT,
    dd INT,
    hora VARCHAR(255),
    hh INT,
    tipo_de_calle VARCHAR(255),
    comuna INT,
    longitud VARCHAR(255),
    latitud VARCHAR(255),
    participantes VARCHAR(255),
    victima VARCHAR(255),
    acusado VARCHAR(255)
);

-- Se crea la tabla para homicidios_victimas
CREATE TABLE IF NOT EXISTS homicidios_victimas (
    id_hecho VARCHAR(255),
    fecha DATE,
    aaaa INT,
    mm INT,
    dd INT,
    rol VARCHAR(255),
    victima VARCHAR(255),
    sexo VARCHAR(10),
    edad INT,
    FOREIGN KEY (id_hecho) REFERENCES homicidios_hechos(id)
);

-- Se crea la tabla para poblacion
CREATE TABLE IF NOT EXISTS poblacion (
	comuna INT,
    total_pob INT
);

-- Se crea la tabla para radares_ausa
CREATE TABLE IF NOT EXISTS radares_ausa (
	hora INT,
    cantidad_vehiculos INT
);
