CREATE TABLE sustainability_stores(
  storeid INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  storename TEXT NOT NULL,
  website TEXT NOT NULL,
  lastdatemodified TIMESTAMP NOT NULL DEFAULT now(),
  comments TEXT NOT NULL,
  categoriesid INTEGER REFERENCES sustainability_categories(categoriesid) ON DELETE CASCADE NOT NULL,
  packagingsid INTEGER REFERENCES sustainability_packagings(packagingsid) ON DELETE CASCADE NOT NULL,
  ratingsid INTEGER REFERENCES sustainability_ratings(ratingsid) ON DELETE CASCADE NOT NULL
)