-- CREATE DATABASE "car_shop_db"
-- WITH
-- OWNER = postgres
-- ENCODING = 'UTF8'
-- CONNECTION LIMIT = -1;


CREATE TABLE "users" (

  id        BIGSERIAL              NOT NULL,
  name      CHARACTER VARYING(127) NOT NULL,
  login     CHARACTER VARYING(127) NOT NULL,
  password  CHARACTER VARYING(127) NOT NULL,
  role      INT                    NOT NULL,
  submitted BOOLEAN                NOT NULL DEFAULT FALSE,

  CONSTRAINT users_pk PRIMARY KEY (id)
);


CREATE TABLE engine (
  id          BIGSERIAL              NOT NULL,
  name        CHARACTER VARYING(127) NOT NULL,
  pover       INT                    NOT NULL,
  capacity    DOUBLE PRECISION       NOT NULL,
  consumption DOUBLE PRECISION       NOT NULL,
  cost        DOUBLE PRECISION       NOT NULL,

  CONSTRAINT engine_pk PRIMARY KEY (id)
);


CREATE TABLE manufacture (
  id   BIGSERIAL              NOT NULL,
  name CHARACTER VARYING(127) NOT NULL,

  CONSTRAINT manufacture_pk PRIMARY KEY (id)
);

CREATE TABLE vehicle_type (

  id   BIGSERIAL              NOT NULL,
  name CHARACTER VARYING(127) NOT NULL,

  CONSTRAINT vehicle_type_pk PRIMARY KEY (id)
);

CREATE TABLE model (
  id              BIGSERIAL              NOT NULL,
  name            CHARACTER VARYING(127) NOT NULL,
  vehicle_type_id INT                    NOT NULL,
  cost            DOUBLE PRECISION       NOT NULL,
  manufacture_id  INT                    NOT NULL,

  CONSTRAINT model_pk PRIMARY KEY (id),

  CONSTRAINT manufacture_fk FOREIGN KEY (manufacture_id)
  REFERENCES manufacture (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,

  CONSTRAINT vehicle_type_fk FOREIGN KEY (vehicle_type_id)
  REFERENCES vehicle_type (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);


CREATE TABLE auto (

  id         BIGSERIAL              NOT NULL,
  VIN        CHARACTER VARYING(127) NOT NULL,
  model_id  BIGSERIAL NOT NULL,
  engine_id BIGSERIAL NOT NULL,

  CONSTRAINT auto_pk PRIMARY KEY (id),

  CONSTRAINT model_fk FOREIGN KEY (model_id)
  REFERENCES model (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,

  CONSTRAINT engine_fr FOREIGN KEY (engine_id)
  REFERENCES engine (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);


CREATE TABLE client (

  id              BIGSERIAL              NOT NULL,
  name            CHARACTER VARYING(127) NOT NULL,
  passport_series CHARACTER VARYING(4)   NOT NULL,
  passport_number INT                    NOT NULL,

  CONSTRAINT client_pk PRIMARY KEY (id)
);

CREATE TABLE "order" (

  id         BIGSERIAL        NOT NULL,
  auto_id    BIGSERIAL        NOT NULL,
  price      DOUBLE PRECISION NOT NULL,
  client_id  BIGSERIAL        NOT NULL,
  user_id    BIGSERIAL        NOT NULL,
  first_date  DATE             NOT NULL,
  second_date DATE             NOT NULL,
  ready      BOOLEAN          NOT NULL DEFAULT FALSE,

  CONSTRAINT order_pk PRIMARY KEY (id),

  CONSTRAINT auto_fk FOREIGN KEY (auto_id)
  REFERENCES auto (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,

  CONSTRAINT client_fk FOREIGN KEY (client_id)
  REFERENCES client (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,

  CONSTRAINT users_fk FOREIGN KEY (user_id)
  REFERENCES users (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);


ALTER TABLE public.engine RENAME COLUMN pover TO power;








