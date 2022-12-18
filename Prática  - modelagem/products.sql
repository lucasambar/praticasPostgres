CREATE TABLE "products" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE,
    "categoryId" INTEGER NOT NULL REFERENCES "categories"("id")
)