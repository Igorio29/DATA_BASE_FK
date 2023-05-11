CREATE TABLE genero_dos_filmes (
    id_genero INTEGER PRIMARY KEY NOT NULL,
    nome_genero VARCHAR(50) NOT NULL
);

INSERT INTO genero_dos_filmes VALUES (
    1,
    'ACAO'
);
INSERT INTO genero_dos_filmes VALUES (
    2,
    'COMEDIA'
);
INSERT INTO genero_dos_filmes VALUES (
    3,
    'DOCUMENTARIO'
);

CREATE TABLE filmes (
    id_filme INTEGER PRIMARY KEY NOT NULL,
    nome_filme VARCHAR(50) NOT NULL,
    protagonista_filme VARCHAR(50) NOT NULL,
    tempo_filme TIME,
    diretor_filme VARCHAR(50) NOT NULL,
    ano_filme INTEGER NOT NULL,
    id_genero INTEGER ,
    FOREIGN KEY (id_genero) REFERENCES genero_dos_filmes(id_genero)
);


INSERT INTO filmes VALUES (
    1,
    'O homem do ano',
    'Murilo Benicio',
    '02:20:00',
    'Glauber Rocha',
     2001,
     1
);

INSERT INTO filmes VALUES (
    2,
    'Alto da Compadecida',
    'Selton Melo',
    '02:30:00',
    'Guel Arraes',
     2005,
     2
);

INSERT INTO filmes VALUES (
    3,
    'Tropa de Elite',
    'Wagner Moura',
    '02:10:00',
    'Jose Padilha',
     2007,
     1
);

SELECT * FROM filmes WHERE diretor_filme LIKE '%Padilha';
