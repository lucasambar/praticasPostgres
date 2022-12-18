CREATE TABLE "adresses" (
    "id" SERIAL PRIMARY KEY,
    "userId" INTEGER NOT NULL REFERENCES "users"("id"),
    "cep" TEXT NOT NULL,
    "street" text NOT NULL,
    "number" INTEGER NOT NULL,
    "apto" INTEGER,
    "city" TEXT NOT NULL,
    "uf" TEXT NOT NULL,
    "country" TEXT NOT NULL
)