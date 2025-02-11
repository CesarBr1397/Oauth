-- Table: public.AspNetUserTokens

-- DROP TABLE IF EXISTS public."AspNetUserTokens";

CREATE TABLE IF NOT EXISTS public."AspNetUserTokens"
(
    "UserId" text COLLATE pg_catalog."default" NOT NULL,
    "LoginProvider" character varying(128) COLLATE pg_catalog."default" NOT NULL,
    "Name" character varying(128) COLLATE pg_catalog."default" NOT NULL,
    "Value" text COLLATE pg_catalog."default",
    CONSTRAINT "PK_AspNetUserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name"),
    CONSTRAINT "FK_AspNetUserTokens_AspNetUsers_UserId" FOREIGN KEY ("UserId")
        REFERENCES public."AspNetUsers" ("Id") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."AspNetUserTokens"
    OWNER to postgres;