/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Agumon', '2020-02-03', 0, True, 10.23);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Gabumon', '2018-11-15', 2, True, 8);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Pikachu', '2021-01-07', 1, False, 15.04);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Devimon', '2017-05-12', 5, True, 11);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Charmander', '2020-02-08', 0, False, -11);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Plantmon', '2021-11-15', 2, True, -5.7);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Squirtle', '1993-04-02', 3, False, -12.13);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Angemon', '2005-06-12', 1, True, -45);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Boarmon', '2005-06-07', 7, True, 20.4);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Blossom', '1998-10-13', 3, True, 17);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Ditto', '2022-05-14', 4, True, 22);

INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);

INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);

INSERT INTO owners (full_name, age) VALUES ('Bob', 45);

INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);

INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14);

INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES ('Pokemon'), ('Digimon');

UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Digimon')
WHERE name LIKE '%mon';

UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Pokemon')
WHERE species_id IS NULL;

UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Sam Smith')
WHERE name = 'Agumon';

UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell')
WHERE name = 'Gabumon' OR name = 'Pikachu';

UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob')
WHERE name = 'Devimon' OR name = 'Plantmon';

UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond')
WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';

UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Dean Winchester')
WHERE name = 'Angemon' OR name = 'Boarmon';

INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher',45, '2000-04-23'); 
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 26, '2019-01-17');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Jack Harkness',38,'2008-06-08');

INSERT INTO specializations (species_id, vet_id)
VALUES
((SELECT species.id FROM species WHERE species.name = 'Pokemon'),
(SELECT vets.id FROM vets WHERE vets.name = 'William Tatcher')
),
((SELECT species.id FROM species WHERE species.name = 'Pokemon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Stephanie Mendez')
),
((SELECT species.id FROM species WHERE species.name = 'Digimon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Stephanie Mendez')
),
((SELECT species.id FROM species WHERE species.name = 'Digimon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Jack Harkness'));

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
VALUES ((SELECT id FROM animals WHERE name='Agumon'),
(SELECT id FROM vets WHERE name='William Tatcher'), '2020-05-24');

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2020-07-22' FROM animals, vets WHERE animals.name = 'Agumon' AND vets.name = 'Stephanie Mendez';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2021-02-02' FROM animals, vets WHERE animals.name = 'Gabumon' AND vets.name = 'Jack Harkness';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2020-01-05' FROM animals, vets WHERE animals.name = 'Pikachu' AND vets.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2020-03-08' FROM animals, vets WHERE animals.name = 'Pikachu' AND vets.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2020-05-14' FROM animals, vets WHERE animals.name = 'Pikachu' AND vets.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2021-05-04' FROM animals, vets WHERE animals.name = 'Devimon' AND vets.name = 'Stephanie Mendez';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2021-02-24' FROM animals, vets WHERE animals.name = 'Charmander' AND vets.name = 'Jack Harkness';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2019-12-21' FROM animals, vets WHERE animals.name = 'Plantmon' AND vets.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2020-08-10' FROM animals, vets WHERE animals.name = 'Plantmon' AND vets.name = 'William Tatcher';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2021-04-07' FROM animals, vets WHERE animals.name = 'Plantmon' AND vets.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2019-09-29' FROM animals, vets WHERE animals.name = 'Squirtle' AND vets.name = 'Stephanie Mendez';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2020-10-03' FROM animals, vets WHERE animals.name = 'Angemon' AND vets.name = 'Jack Harkness';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2020-11-04' FROM animals, vets WHERE animals.name = 'Angemon' AND vets.name = 'Jack Harkness';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2019-01-24' FROM animals, vets WHERE animals.name = 'Boarmon' AND vets.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2019-05-15' FROM animals, vets WHERE animals.name = 'Boarmon' AND vets.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2020-02-27' FROM animals, vets WHERE animals.name = 'Boarmon' AND vets.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2020-08-03' FROM animals, vets WHERE animals.name = 'Boarmon' AND vets.name = 'Maisy Smith';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2020-05-24' FROM animals, vets WHERE animals.name = 'Blossom' AND vets.name = 'Stephanie Mendez';

INSERT INTO visits (animal_id, vet_id, date_of_visit) 
SELECT animals.id, vets.id, '2021-01-11' FROM animals, vets WHERE animals.name = 'Blossom' AND vets.name = 'visited William';
