CREATE TABLE estudio_dos_filmes (
    id_estudio INTEGER PRIMARY KEY NOT NULL,
    estudio VARCHAR(50) NOT NULL
);

INSERT INTO estudio_dos_filmes VALUES (
    1,
    'dreamworks'
);

INSERT INTO estudio_dos_filmes VALUES (
    2,
    'united_artistis'
);

INSERT INTO estudio_dos_filmes VALUES (
    3,
    'universal'
);

INSERT INTO estudio_dos_filmes VALUES (
    4,
    'bibo_filmes'
);

INSERT INTO estudio_dos_filmes VALUES (
    5,
    'disney'
);

SELECT * FROM estudio_dos_filmes;

CREATE TABLE filmes (
    id_filme INTEGER PRIMARY KEY NOT NULL,
    filme VARCHAR(50) NOT NULL,
    ano VARCHAR(50) NOT NULL,
    id_estudio INTEGER,
    FOREIGN KEY (id_estudio) REFERENCES estudio_dos_filmes(id_estudio)
);

INSERT INTO filmes VALUES (
    1,
    'Como Treinar Seu Dragão',
    '2010',
    1
);

INSERT INTO filmes VALUES (
    2,
    'Os croods',
    '2013',
    1
);

INSERT INTO filmes VALUES (
    3,
    'shrek',
    '2001',
    1
);

INSERT INTO filmes VALUES (
    4,
    'chuck',
    '1988',
    2
);

INSERT INTO filmes VALUES (
    5,
    'Velozes e furiosos',
    '2001',
    4
);

INSERT INTO filmes VALUES (
    6,
    'um monstro em Paris',
    '2011',
    4
);

INSERT INTO filmes VALUES (
    7,
    'lilo e stitch',
    '2002',
    5
);

SELECT * FROM filmes;
