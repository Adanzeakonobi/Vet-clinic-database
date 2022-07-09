INSERT INTO visits (animal_id, vet_id, date_of_visit)
VALUES
((SELECT animals.id FROM animals WHERE animals.name = 'Agumon'),
(SELECT vets.id FROM vets WHERE vets.name = 'William Tatcher'),
'2020-05-24'
);
INSERT INTO visits (date_of_visit, animal_id, vet_id)
VALUES ('2020-07-22', (SELECT animals.id FROM animals WHERE animals.name = 'Agumon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Stephanie Mendez')
),
('2021-02-02', (SELECT animals.id FROM animals WHERE animals.name = 'Gabumon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Jack Harkness')
),
('2020-01-05', (SELECT animals.id FROM animals WHERE animals.name = 'Pikachu'),
(SELECT vets.id FROM vets WHERE vets.name = 'Maisy Smith')
),
('2020-03-08', (SELECT animals.id FROM animals WHERE animals.name = 'Pikachu'),
(SELECT vets.id FROM vets WHERE vets.name = 'Maisy Smith')
),
('2020-05-14', (SELECT animals.id FROM animals WHERE animals.name = 'Pikachu'),
(SELECT vets.id FROM vets WHERE vets.name = 'Maisy Smith')
),
('2021-05-04', (SELECT animals.id FROM animals WHERE animals.name = 'Devimon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Stephanie Mendez')
),
('2021-02-24', (SELECT animals.id FROM animals WHERE animals.name = 'Charmander'),
(SELECT vets.id FROM vets WHERE vets.name = 'Jack Harkness')
),
('2019-12-21', (SELECT animals.id FROM animals WHERE animals.name = 'Plantmon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Maisy Smith')
),
('2020-08-10', (SELECT animals.id FROM animals WHERE animals.name = 'Plantmon'),
(SELECT vets.id FROM vets WHERE vets.name = 'William Tatcher')
),
('2021-04-07', (SELECT animals.id FROM animals WHERE animals.name = 'Plantmon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Maisy Smith')
),
('2019-09-29', (SELECT animals.id FROM animals WHERE animals.name = 'Squirtle'),
(SELECT vets.id FROM vets WHERE vets.name = 'Stephanie Mendez')
),
('2020-10-03', (SELECT animals.id FROM animals WHERE animals.name = 'Angemon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Jack Harkness')
),
('2020-11-04', (SELECT animals.id FROM animals WHERE animals.name = 'Angemon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Jack Harkness')
),
('2019-01-24', (SELECT animals.id FROM animals WHERE animals.name = 'Boarmon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Maisy Smith')
),
('2019-05-15', (SELECT animals.id FROM animals WHERE animals.name = 'Boarmon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Maisy Smith')
),
('2020-02-27', (SELECT animals.id FROM animals WHERE animals.name = 'Boarmon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Maisy Smith')
),
('2020-08-03', (SELECT animals.id FROM animals WHERE animals.name = 'Boarmon'),
(SELECT vets.id FROM vets WHERE vets.name = 'Maisy Smith')
),
('2020-05-24', (SELECT animals.id FROM animals WHERE animals.name = 'Blossom'),
(SELECT vets.id FROM vets WHERE vets.name = 'Stephanie Mendez')
),
('2021-01-11', (SELECT animals.id FROM animals WHERE animals.name = 'Blossom'),
(SELECT vets.id FROM vets WHERE vets.name = 'William Tatcher')
);