-- Table: public.AspNetRoles

-- DROP TABLE IF EXISTS public."AspNetRoles";

CREATE TABLE IF NOT EXISTS public."AspNetRoles"
(
    "Id" text COLLATE pg_catalog."default" NOT NULL,
    "Name" character varying(256) COLLATE pg_catalog."default",
    "NormalizedName" character varying(256) COLLATE pg_catalog."default",
    "ConcurrencyStamp" text COLLATE pg_catalog."default",
    CONSTRAINT "PK_AspNetRoles" PRIMARY KEY ("Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."AspNetRoles"
    OWNER to postgres;
-- Index: RoleNameIndex

-- DROP INDEX IF EXISTS public."RoleNameIndex";

CREATE UNIQUE INDEX IF NOT EXISTS "RoleNameIndex"
    ON public."AspNetRoles" USING btree
    ("NormalizedName" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;