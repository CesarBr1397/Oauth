-- Table: public.AspNetUserLogins

-- DROP TABLE IF EXISTS public."AspNetUserLogins";

CREATE TABLE IF NOT EXISTS public."AspNetUserLogins"
(
    "LoginProvider" character varying(128) COLLATE pg_catalog."default" NOT NULL,
    "ProviderKey" character varying(128) COLLATE pg_catalog."default" NOT NULL,
    "ProviderDisplayName" text COLLATE pg_catalog."default",
    "UserId" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "PK_AspNetUserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey"),
    CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId")
        REFERENCES public."AspNetUsers" ("Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."AspNetUserLogins"
    OWNER to postgres;
-- Index: IX_AspNetUserLogins_UserId

-- DROP INDEX IF EXISTS public."IX_AspNetUserLogins_UserId";

CREATE INDEX IF NOT EXISTS "IX_AspNetUserLogins_UserId"
    ON public."AspNetUserLogins" USING btree
    ("UserId" COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;