INSERT INTO blogful_articles (title, content, date_published)
VALUES
    ('Old Man And The Sea', 'Story of an old man who is in the middle of the sea', now() - '21 days'::INTERVAL),

    ('Fire Temple', 'Story of a legendary fire spirt found in a temple covered in lava', now() - '12 days' :: INTERVAL),

    ('Water Temple', 'Story of a legendary water spirit who has helped boats cross dangerous seas', now() - '16 days' :: INTERVAL),

    ('Wind Temple', 'Story of a legnedary wind spirit who allows anything that flies to soar.', now() - '11 days' :: INTERVAL),

    ('Ice Temple', 'Story of a legnedary ice spirit who is the only reason why we have snow.', now() - '10 days' :: INTERVAL),

    ('Wind Temple', 'Story of a legnedary wind spirit who allows anything that flies to soar.', now() - '9 days' :: INTERVAL),

    ('Earth Temple', 'Story of a legnedary earth spirit who grants us a platform to walk on.', now() - '9 days' :: INTERVAL),

    ('Lightning Temple', 'Story of a legnedary lightning spirit who without it, there would be no lightbubs.', now() - '6 days' :: INTERVAL),

    ('Dark Temple', 'Story of a legnedary dark spirit who is half of light. The one that reveals your darkness.', now() - '4 days' :: INTERVAL),

    ('Light Temple', 'Story of a legnedary light spirit who is the other half of dark. This is the one that brings the good out of you.', now() - '5 days' :: INTERVAL),

    ('Time Temple', 'Story of a legnedary time spirit who with a snap of its fingers can stop time.', now() - '1 days' :: INTERVAL),

    ('Justice Leage', 'Story of a league of superheroes who work together to fight against villians.', now() - '3 days' :: INTERVAL),

    ('Ginyu Force', 'Story of a legendary group of five warriors who have fantastic poses.', now() - '7 days' :: INTERVAL),

    ('Granblue Fantasy', 'Story of a legnedary warrior who can kick even the gods with his tims!', now() - '17 days' :: INTERVAL),

    ('The Goons', 'Story of a group of people who somehow all work at a warehouse just to talk shit to one another.', now() - '14 days' :: INTERVAL),

    ('Persona 6', 'Just a regular story of some group of high school students with stands', now() - '19 days' :: INTERVAL),

    ('JOJO', 'The only story you need to read in this database. Once you finish this, you will have a golden experience.', now() - '15 days' :: INTERVAL),

    ('Poor Nick', 'Story of a man who likes to talk shit, but always ducks when you challenge him. Probably ducking right now as we speak.', now() - '14 days' :: INTERVAL);

--Make a new SQL file for seed.blogful.sql to INSERT at least 20 new dummy articles. Try to give them different title, content and date_published values. Then run that script to fill your table with some seeded articles.