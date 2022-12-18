CREATE TABLE "sale_items" (
    "id" SERIAL PRIMARY KEY,
    "saleId" INTEGER NOT NULL REFERENCES "sales"("id"),
    "productId" INTEGER NOT NULL REFERENCES "products"("id"),
    "amount" INTEGER NOT NULL,
    "size" INTEGER NOT NULL
)