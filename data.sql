INSERT INTO categories (title, description, restricted) VALUES ('World Of Warcraft', 'Anything WoW - generally the main section for this website!', true);
INSERT INTO categories (title, description) VALUES ('General', 'Anything not related to WoW');
INSERT INTO categories (title, description, restricted) VALUES ('help me', 'stupidity ONLY (watch out)', true);
INSERT INTO subcategories (title, description, category_id) VALUES ('Blooded', 'Expect announcements, anything about the guild itself.', 1);
INSERT INTO subcategories (title, description, category_id) VALUES ('General', 'Class discussion, spec discussion, why warlock is bad discussion :D', 1);
INSERT INTO subcategories (title, description, category_id) VALUES ('Off-Topic', 'Your favourite wow memes, artwork, lore discussion...', 1);
INSERT INTO subcategories (title, description, category_id) VALUES ('General', 'General General. Just anything really!', 2);
INSERT INTO subcategories (title, description, category_id) VALUES ('Forum Games', 'Section for forum games if anyone wants to play those!', 2);
INSERT INTO subcategories (title, description, category_id) VALUES ('derp', 'haha you made funny meme', 3);
INSERT INTO subcategories (title, description, category_id) VALUES ('Stupidity Corner', 'dumb forum games, dumb discussion, dumb.', 3);
INSERT INTO groups (name) VALUES ('user');
INSERT INTO groups (name, privilege) VALUES ('dev', 3);
INSERT INTO groups (name, privilege) VALUES ('gm', 3);
INSERT INTO groups (name, privilege) VALUES ('verified', 1);
INSERT INTO groups (name, privilege) VALUES ('officer', 2)
