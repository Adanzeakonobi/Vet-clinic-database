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




--  visited  on Sep 29th, 2019.
--  visited  on Oct 3rd, 2020.
-- Angemon visited Jack Harkness on Nov 4th, 2020.
--  visited Maisy Smith on Jan 24th, 2019.
-- Boarmon visited Maisy Smith on May 15th, 2019.
-- Boarmon visited Maisy Smith on Feb 27th, 2020.
-- Boarmon visited Maisy Smith on Aug 3rd, 2020.
--  visited  on May 24th, 2020.
-- Blossom  Tatcher on Jan 11th, 2021.



--  visited  on Jan 5th, 2020.
-- Pikachu visited  on Mar 8th, 2020.
-- Pikachu visited Maisy Smith on May 14th, 2020.
--  visited  on May 4th, 2021.
--  visited  on Feb 24th, 2021.
--  visited  on Dec 21st, 2019.
-- Plantmon visited  on Aug 10th, 2020.
-- Plantmon visited Maisy Smith on Apr 7th, 2021.

















INSERT INTO visits (animal_id, vet_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Agumon'), (SELECT id FROM vets WHERE name='William Tatcher'), '2020-05-24');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Agumon'), (SELECT id FROM vets WHERE name='Stephanie Mendez'), '2020-07-22');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Gabumon'), (SELECT id FROM vets WHERE name='Jack Harkness'), '2021-02-02');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Pikachu'), (SELECT id FROM vets WHERE name='Maisy Smith'), '2020-01-05');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Pikachu'), (SELECT id FROM vets WHERE name='Maisy Smith'), '2020-03-08');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Pikachu'), (SELECT id FROM vets WHERE name='Maisy Smith'), '2020-05-14');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Devimon'), (SELECT id FROM vets WHERE name='Stephanie Mendez'), '2021-05-04');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Charmander'), (SELECT id FROM vets WHERE name='Jack Harkness'), '2021-02-24');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Plantmon'), (SELECT id FROM vets WHERE name='Maisy Smith'), '2019-12-21');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Plantmon'), (SELECT id FROM vets WHERE name='William Tatcher'), '2020-10-10');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Plantmon'), (SELECT id FROM vets WHERE name='Maisy Smith'), '2021-04-07');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Squirtle'), (SELECT id FROM vets WHERE name='Stephanie Mendez'), '2019-09-29');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Angemon'), (SELECT id FROM vets WHERE name='Jack Harkness'), '2020-10-03');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Angemon'), (SELECT id FROM vets WHERE name='Jack Harkness'), '2020-11-04');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Boarmon'), (SELECT id FROM vets WHERE name='Maisy Smith'), '2019-01-24');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Boarmon'), (SELECT id FROM vets WHERE name='Maisy Smith'), '2019-05-15');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Boarmon'), (SELECT id FROM vets WHERE name='Maisy Smith'), '2020-02-27');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Boarmon'), (SELECT id FROM vets WHERE name='Maisy Smith'), '2020-10-03');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Blossom'), (SELECT id FROM vets WHERE name='Stephanie Mendez'), '2020-05-24');
INSERT INTO visits (name_id, vets_id, date_of_visit) VALUES ((SELECT id FROM animals WHERE name='Blossom'), (SELECT id FROM vets WHERE name='William Tatcher'), '2021-01-11');