CREATE TABLE "sales" (
    "id" SERIAL PRIMARY KEY,
    "buyerId" INTEGER NOT NULL REFERENCES "users"("id"),
    "status" TEXT NOT NULL DEFAULT "created",
    "adressId" INTEGER NOT NULL REFERENCES "adesses"("id")
)