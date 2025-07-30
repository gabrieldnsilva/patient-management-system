-- Garante que a tabela 'patient' exista antes de inserir os dados.
CREATE TABLE IF NOT EXISTS patient
(
    id              UUID PRIMARY KEY,
    name            VARCHAR(255) NOT NULL,
    email           VARCHAR(255) UNIQUE NOT NULL,
    address         VARCHAR(255) NOT NULL,
    date_of_birth   DATE NOT NULL,
    registered_date DATE NOT NULL
    );

-- Inserção de 20 registros de pacientes com dados brasileiros.
-- A cláusula 'WHERE NOT EXISTS' previne a inserção de duplicatas caso o script seja executado múltiplas vezes.

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'a1b2c3d4-e5f6-7890-1234-567890abcdef', 'João da Silva', 'joao.silva@example.com.br', 'Rua das Flores, 123, São Paulo, SP', '1985-03-15', '2023-01-10'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'a1b2c3d4-e5f6-7890-1234-567890abcdef');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'b2c3d4e5-f6a7-8901-2345-67890abcdef1', 'Maria Oliveira', 'maria.oliveira@example.com.br', 'Avenida Paulista, 1500, São Paulo, SP', '1992-07-22', '2023-02-20'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'b2c3d4e5-f6a7-8901-2345-67890abcdef1');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'c3d4e5f6-a7b8-9012-3456-7890abcdef12', 'Carlos Pereira', 'carlos.pereira@example.com.br', 'Rua da Consolação, 800, Belo Horizonte, MG', '1978-11-30', '2022-05-14'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'c3d4e5f6-a7b8-9012-3456-7890abcdef12');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'd4e5f6a7-b8c9-0123-4567-890abcdef123', 'Ana Costa', 'ana.costa@example.com.br', 'Praça da Sé, 10, Salvador, BA', '1995-01-05', '2024-03-01'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'd4e5f6a7-b8c9-0123-4567-890abcdef123');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'e5f6a7b8-c9d0-1234-5678-90abcdef1234', 'Francisco Santos', 'francisco.santos@example.com.br', 'Avenida Rio Branco, 200, Rio de Janeiro, RJ', '1988-08-25', '2024-02-15'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'e5f6a7b8-c9d0-1234-5678-90abcdef1234');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'f6a7b8c9-d0e1-2345-6789-0abcdef12345', 'Antônia Rodrigues', 'antonia.rodrigues@example.com.br', 'Rua XV de Novembro, 550, Curitiba, PR', '1991-04-18', '2023-08-25'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'f6a7b8c9-d0e1-2345-6789-0abcdef12345');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'a7b8c9d0-e1f2-3456-7890-1bcdef123456', 'José Almeida', 'jose.almeida@example.com.br', 'Setor Comercial Sul, Quadra 2, Brasília, DF', '1975-02-11', '2022-10-10'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'a7b8c9d0-e1f2-3456-7890-1bcdef123456');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'b8c9d0e1-f2a3-4567-8901-cdef12345678', 'Fernanda Lima', 'fernanda.lima@example.com.br', 'Avenida Boa Viagem, 340, Recife, PE', '1989-09-02', '2024-04-20'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'b8c9d0e1-f2a3-4567-8901-cdef12345678');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'c9d0e1f2-a3b4-5678-9012-def123456789', 'Lucas Martins', 'lucas.martins@example.com.br', 'Rua da Praia, 987, Porto Alegre, RS', '1993-12-15', '2023-06-30'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'c9d0e1f2-a3b4-5678-9012-def123456789');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'd0e1f2a3-b4c5-6789-0123-ef1234567890', 'Juliana Barbosa', 'juliana.barbosa@example.com.br', 'Avenida Afonso Pena, 4000, Campo Grande, MS', '1980-07-09', '2023-01-22'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'd0e1f2a3-b4c5-6789-0123-ef1234567890');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'e1f2a3b4-c5d6-7890-1234-f12345678901', 'Pedro Gonçalves', 'pedro.goncalves@example.com.br', 'Rua 24 de Outubro, 120, Cuiabá, MT', '1984-05-03', '2024-05-12'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'e1f2a3b4-c5d6-7890-1234-f12345678901');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'f2a3b4c5-d6e7-8901-2345-123456789012', 'Camila Ribeiro', 'camila.ribeiro@example.com.br', 'Avenida Beira Mar, 789, Fortaleza, CE', '1990-11-25', '2022-11-11'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'f2a3b4c5-d6e7-8901-2345-123456789012');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'a3b4c5d6-e7f8-9012-3456-234567890123', 'Rafael Ferreira', 'rafael.ferreira@example.com.br', 'Rua das Laranjeiras, 45, Rio de Janeiro, RJ', '1976-06-08', '2023-09-19'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'a3b4c5d6-e7f8-9012-3456-234567890123');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'b4c5d6e7-f8a9-0123-4567-345678901234', 'Beatriz Alves', 'beatriz.alves@example.com.br', 'Alameda dos Anjos, 77, Goiânia, GO', '1987-10-17', '2024-03-29'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'b4c5d6e7-f8a9-0123-4567-345678901234');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'c5d6e7f8-a9b0-1234-5678-456789012345', 'Gustavo Mendes', 'gustavo.mendes@example.com.br', 'Travessa dos Navegantes, 321, Belém, PA', '1998-02-28', '2023-11-05'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'c5d6e7f8-a9b0-1234-5678-456789012345');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'd6e7f8a9-b0c1-2345-6789-567890123456', 'Larissa Rocha', 'larissa.rocha@example.com.br', 'Avenida do Contorno, 9000, Belo Horizonte, MG', '2000-06-10', '2024-01-15'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'd6e7f8a9-b0c1-2345-6789-567890123456');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'e7f8a9b0-c1d2-3456-7890-678901234567', 'Thiago Azevedo', 'thiago.azevedo@example.com.br', 'Rua Augusta, 2500, São Paulo, SP', '1983-04-01', '2022-08-18'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'e7f8a9b0-c1d2-3456-7890-678901234567');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'f8a9b0c1-d2e3-4567-8901-789012345678', 'Sofia Nogueira', 'sofia.nogueira@example.com.br', 'Estrada do Coco, Km 10, Lauro de Freitas, BA', '1996-09-20', '2023-10-02'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'f8a9b0c1-d2e3-4567-8901-789012345678');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'a9b0c1d2-e3f4-5678-9012-890123456789', 'Matheus Carvalho', 'matheus.carvalho@example.com.br', 'Avenida das Américas, 500, Rio de Janeiro, RJ', '1994-03-12', '2024-06-25'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'a9b0c1d2-e3f4-5678-9012-890123456789');

INSERT INTO patient (id, name, email, address, date_of_birth, registered_date)
SELECT 'b0c1d2e3-f4a5-6789-0123-901234567890', 'Isabela Freitas', 'isabela.freitas@example.com.br', 'Rua Padre Anchieta, 2020, Curitiba, PR', '1999-08-08', '2023-04-11'
    WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = 'b0c1d2e3-f4a5-6789-0123-901234567890');
