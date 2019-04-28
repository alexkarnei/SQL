-- Table: public."Faculties"

-- DROP TABLE public."Faculties";

CREATE TABLE public."Faculties"
(
    id bigint NOT NULL DEFAULT nextval('faculties_id_seq'::regclass) ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT faculties_pkey PRIMARY KEY (id),
    CONSTRAINT faculties_name_unique UNIQUE (name)
,
    CONSTRAINT check_faculties_name CHECK (name::text <> ' '::text)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Faculties"
    OWNER to postgres;