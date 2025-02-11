-- Table: public.AspNetUserClaims

-- DROP TABLE IF EXISTS public."AspNetUserClaims";

CREATE TABLE IF NOT EXISTS public."AspNetUserClaims"
(
    "Id" integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    "UserId" text COLLATE pg_catalog."default" NOT NULL,
    "ClaimType" text COLLATE pg_catalog."default",
    "ClaimValue" text COLLATE pg_catalog."default",
    CONSTRAINT "PK_AspNetUserClaims" PRIMARY KEY ("Id"),
    CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" FOREIGN KEY ("UserId")
        REFERENCES public."AspNetUsers" ("Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."AspNetUserClaims"
    OWNER to postgres;
-- Index: IX_AspNetUserClaims_UserId

-- DROP INDEX IF EXISTS public."IX_AspNetUserClaims_UserId";

CREATE INDEX IF NOT EXISTS "IX_AspNetUserClaims_UserId"
    ON public."AspNetUserClaims" USING btree
    ("UserId" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;