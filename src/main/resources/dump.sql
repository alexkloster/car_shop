--
-- PostgreSQL database dump
--

-- Started on 2019-05-03 00:55:07

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 1864 (class 1262 OID 299579)
-- Name: car_shop_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE car_shop_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';


ALTER DATABASE car_shop_db OWNER TO postgres;

\connect car_shop_db

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 331 (class 2612 OID 16386)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: postgres
--

CREATE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgres;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1531 (class 1259 OID 299915)
-- Dependencies: 3
-- Name: auto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auto (
    id bigint NOT NULL,
    vin character varying(127) NOT NULL,
    model_id bigint NOT NULL,
    engine_id bigint NOT NULL
);


ALTER TABLE public.auto OWNER TO postgres;

--
-- TOC entry 1530 (class 1259 OID 299913)
-- Dependencies: 3 1531
-- Name: auto_engine_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auto_engine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auto_engine_id_seq OWNER TO postgres;

--
-- TOC entry 1867 (class 0 OID 0)
-- Dependencies: 1530
-- Name: auto_engine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auto_engine_id_seq OWNED BY auto.engine_id;


--
-- TOC entry 1868 (class 0 OID 0)
-- Dependencies: 1530
-- Name: auto_engine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auto_engine_id_seq', 1, false);


--
-- TOC entry 1528 (class 1259 OID 299909)
-- Dependencies: 3 1531
-- Name: auto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auto_id_seq OWNER TO postgres;

--
-- TOC entry 1869 (class 0 OID 0)
-- Dependencies: 1528
-- Name: auto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auto_id_seq OWNED BY auto.id;


--
-- TOC entry 1870 (class 0 OID 0)
-- Dependencies: 1528
-- Name: auto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auto_id_seq', 1, true);


--
-- TOC entry 1529 (class 1259 OID 299911)
-- Dependencies: 3 1531
-- Name: auto_model_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auto_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auto_model_id_seq OWNER TO postgres;

--
-- TOC entry 1871 (class 0 OID 0)
-- Dependencies: 1529
-- Name: auto_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auto_model_id_seq OWNED BY auto.model_id;


--
-- TOC entry 1872 (class 0 OID 0)
-- Dependencies: 1529
-- Name: auto_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auto_model_id_seq', 1, false);


--
-- TOC entry 1533 (class 1259 OID 299935)
-- Dependencies: 3
-- Name: client; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE client (
    id bigint NOT NULL,
    name character varying(127) NOT NULL,
    passport_series character varying(4) NOT NULL,
    passport_number integer NOT NULL
);


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 1532 (class 1259 OID 299933)
-- Dependencies: 3 1533
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.client_id_seq OWNER TO postgres;

--
-- TOC entry 1873 (class 0 OID 0)
-- Dependencies: 1532
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE client_id_seq OWNED BY client.id;


--
-- TOC entry 1874 (class 0 OID 0)
-- Dependencies: 1532
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('client_id_seq', 1, true);


--
-- TOC entry 1521 (class 1259 OID 299869)
-- Dependencies: 3
-- Name: engine; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE engine (
    id bigint NOT NULL,
    name character varying(127) NOT NULL,
    power integer NOT NULL,
    capacity double precision NOT NULL,
    consumption double precision NOT NULL,
    cost double precision NOT NULL
);


ALTER TABLE public.engine OWNER TO postgres;

--
-- TOC entry 1520 (class 1259 OID 299867)
-- Dependencies: 3 1521
-- Name: engine_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE engine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.engine_id_seq OWNER TO postgres;

--
-- TOC entry 1875 (class 0 OID 0)
-- Dependencies: 1520
-- Name: engine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE engine_id_seq OWNED BY engine.id;


--
-- TOC entry 1876 (class 0 OID 0)
-- Dependencies: 1520
-- Name: engine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('engine_id_seq', 1, true);


--
-- TOC entry 1523 (class 1259 OID 299877)
-- Dependencies: 3
-- Name: manufacture; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE manufacture (
    id bigint NOT NULL,
    name character varying(127) NOT NULL
);


ALTER TABLE public.manufacture OWNER TO postgres;

--
-- TOC entry 1522 (class 1259 OID 299875)
-- Dependencies: 3 1523
-- Name: manufacture_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE manufacture_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.manufacture_id_seq OWNER TO postgres;

--
-- TOC entry 1877 (class 0 OID 0)
-- Dependencies: 1522
-- Name: manufacture_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE manufacture_id_seq OWNED BY manufacture.id;


--
-- TOC entry 1878 (class 0 OID 0)
-- Dependencies: 1522
-- Name: manufacture_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('manufacture_id_seq', 1, true);


--
-- TOC entry 1527 (class 1259 OID 299893)
-- Dependencies: 3
-- Name: model; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE model (
    id bigint NOT NULL,
    name character varying(127) NOT NULL,
    vehicle_type_id integer NOT NULL,
    cost double precision NOT NULL,
    manufacture_id integer NOT NULL
);


ALTER TABLE public.model OWNER TO postgres;

--
-- TOC entry 1526 (class 1259 OID 299891)
-- Dependencies: 1527 3
-- Name: model_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.model_id_seq OWNER TO postgres;

--
-- TOC entry 1879 (class 0 OID 0)
-- Dependencies: 1526
-- Name: model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE model_id_seq OWNED BY model.id;


--
-- TOC entry 1880 (class 0 OID 0)
-- Dependencies: 1526
-- Name: model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('model_id_seq', 1, true);


--
-- TOC entry 1538 (class 1259 OID 299949)
-- Dependencies: 1830 3
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE orders (
    id bigint NOT NULL,
    auto_id bigint NOT NULL,
    price double precision NOT NULL,
    client_id bigint NOT NULL,
    user_id bigint NOT NULL,
    first_date date NOT NULL,
    second_date date NOT NULL,
    ready boolean DEFAULT false NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 1535 (class 1259 OID 299943)
-- Dependencies: 3 1538
-- Name: order_auto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE order_auto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.order_auto_id_seq OWNER TO postgres;

--
-- TOC entry 1881 (class 0 OID 0)
-- Dependencies: 1535
-- Name: order_auto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE order_auto_id_seq OWNED BY orders.auto_id;


--
-- TOC entry 1882 (class 0 OID 0)
-- Dependencies: 1535
-- Name: order_auto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('order_auto_id_seq', 1, false);


--
-- TOC entry 1536 (class 1259 OID 299945)
-- Dependencies: 3 1538
-- Name: order_client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE order_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.order_client_id_seq OWNER TO postgres;

--
-- TOC entry 1883 (class 0 OID 0)
-- Dependencies: 1536
-- Name: order_client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE order_client_id_seq OWNED BY orders.client_id;


--
-- TOC entry 1884 (class 0 OID 0)
-- Dependencies: 1536
-- Name: order_client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('order_client_id_seq', 1, false);


--
-- TOC entry 1534 (class 1259 OID 299941)
-- Dependencies: 1538 3
-- Name: order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.order_id_seq OWNER TO postgres;

--
-- TOC entry 1885 (class 0 OID 0)
-- Dependencies: 1534
-- Name: order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE order_id_seq OWNED BY orders.id;


--
-- TOC entry 1886 (class 0 OID 0)
-- Dependencies: 1534
-- Name: order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('order_id_seq', 1, true);


--
-- TOC entry 1537 (class 1259 OID 299947)
-- Dependencies: 1538 3
-- Name: order_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE order_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.order_user_id_seq OWNER TO postgres;

--
-- TOC entry 1887 (class 0 OID 0)
-- Dependencies: 1537
-- Name: order_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE order_user_id_seq OWNED BY orders.user_id;


--
-- TOC entry 1888 (class 0 OID 0)
-- Dependencies: 1537
-- Name: order_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('order_user_id_seq', 1, false);


--
-- TOC entry 1519 (class 1259 OID 299860)
-- Dependencies: 1817 3
-- Name: users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users (
    id bigint NOT NULL,
    name character varying(127) NOT NULL,
    login character varying(127) NOT NULL,
    password character varying(127) NOT NULL,
    role integer NOT NULL,
    submitted boolean DEFAULT false NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 1518 (class 1259 OID 299858)
-- Dependencies: 3 1519
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 1889 (class 0 OID 0)
-- Dependencies: 1518
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- TOC entry 1890 (class 0 OID 0)
-- Dependencies: 1518
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 2, true);


--
-- TOC entry 1525 (class 1259 OID 299885)
-- Dependencies: 3
-- Name: vehicle_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vehicle_type (
    id bigint NOT NULL,
    name character varying(127) NOT NULL
);


ALTER TABLE public.vehicle_type OWNER TO postgres;

--
-- TOC entry 1524 (class 1259 OID 299883)
-- Dependencies: 3 1525
-- Name: vehicle_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE vehicle_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.vehicle_type_id_seq OWNER TO postgres;

--
-- TOC entry 1891 (class 0 OID 0)
-- Dependencies: 1524
-- Name: vehicle_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE vehicle_type_id_seq OWNED BY vehicle_type.id;


--
-- TOC entry 1892 (class 0 OID 0)
-- Dependencies: 1524
-- Name: vehicle_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('vehicle_type_id_seq', 1, true);


--
-- TOC entry 1822 (class 2604 OID 299918)
-- Dependencies: 1528 1531 1531
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auto ALTER COLUMN id SET DEFAULT nextval('auto_id_seq'::regclass);


--
-- TOC entry 1823 (class 2604 OID 299919)
-- Dependencies: 1529 1531 1531
-- Name: model_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auto ALTER COLUMN model_id SET DEFAULT nextval('auto_model_id_seq'::regclass);


--
-- TOC entry 1824 (class 2604 OID 299920)
-- Dependencies: 1530 1531 1531
-- Name: engine_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auto ALTER COLUMN engine_id SET DEFAULT nextval('auto_engine_id_seq'::regclass);


--
-- TOC entry 1825 (class 2604 OID 299938)
-- Dependencies: 1532 1533 1533
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE client ALTER COLUMN id SET DEFAULT nextval('client_id_seq'::regclass);


--
-- TOC entry 1818 (class 2604 OID 299872)
-- Dependencies: 1520 1521 1521
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE engine ALTER COLUMN id SET DEFAULT nextval('engine_id_seq'::regclass);


--
-- TOC entry 1819 (class 2604 OID 299880)
-- Dependencies: 1523 1522 1523
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE manufacture ALTER COLUMN id SET DEFAULT nextval('manufacture_id_seq'::regclass);


--
-- TOC entry 1821 (class 2604 OID 299896)
-- Dependencies: 1526 1527 1527
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE model ALTER COLUMN id SET DEFAULT nextval('model_id_seq'::regclass);


--
-- TOC entry 1826 (class 2604 OID 299952)
-- Dependencies: 1534 1538 1538
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE orders ALTER COLUMN id SET DEFAULT nextval('order_id_seq'::regclass);


--
-- TOC entry 1827 (class 2604 OID 299953)
-- Dependencies: 1535 1538 1538
-- Name: auto_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE orders ALTER COLUMN auto_id SET DEFAULT nextval('order_auto_id_seq'::regclass);


--
-- TOC entry 1828 (class 2604 OID 299954)
-- Dependencies: 1536 1538 1538
-- Name: client_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE orders ALTER COLUMN client_id SET DEFAULT nextval('order_client_id_seq'::regclass);


--
-- TOC entry 1829 (class 2604 OID 299955)
-- Dependencies: 1537 1538 1538
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE orders ALTER COLUMN user_id SET DEFAULT nextval('order_user_id_seq'::regclass);


--
-- TOC entry 1816 (class 2604 OID 299863)
-- Dependencies: 1518 1519 1519
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- TOC entry 1820 (class 2604 OID 299888)
-- Dependencies: 1525 1524 1525
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE vehicle_type ALTER COLUMN id SET DEFAULT nextval('vehicle_type_id_seq'::regclass);


--
-- TOC entry 1859 (class 0 OID 299915)
-- Dependencies: 1531
-- Data for Name: auto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO auto (id, vin, model_id, engine_id) VALUES (1, '1234567', 1, 1);


--
-- TOC entry 1860 (class 0 OID 299935)
-- Dependencies: 1533
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO client (id, name, passport_series, passport_number) VALUES (1, 'Alex', 'MC', 2474855);


--
-- TOC entry 1855 (class 0 OID 299869)
-- Dependencies: 1521
-- Data for Name: engine; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO engine (id, name, power, capacity, consumption, cost) VALUES (1, '1.4 TSI 120HP', 120, 1400, 6, 1000);


--
-- TOC entry 1856 (class 0 OID 299877)
-- Dependencies: 1523
-- Data for Name: manufacture; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO manufacture (id, name) VALUES (1, 'Volkswagen');


--
-- TOC entry 1858 (class 0 OID 299893)
-- Dependencies: 1527
-- Data for Name: model; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO model (id, name, vehicle_type_id, cost, manufacture_id) VALUES (1, 'Golf', 1, 20000, 1);


--
-- TOC entry 1861 (class 0 OID 299949)
-- Dependencies: 1538
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO orders (id, auto_id, price, client_id, user_id, first_date, second_date, ready) VALUES (1, 1, 25000, 1, 1, '2019-05-02', '2019-05-02', true);


--
-- TOC entry 1854 (class 0 OID 299860)
-- Dependencies: 1519
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO users (id, name, login, password, role, submitted) VALUES (2, 'admin', 'admin', 'admin', 0, true);
INSERT INTO users (id, name, login, password, role, submitted) VALUES (1, 'user', 'user', 'user', 1, true);


--
-- TOC entry 1857 (class 0 OID 299885)
-- Dependencies: 1525
-- Data for Name: vehicle_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vehicle_type (id, name) VALUES (1, 'Хэтчбэк');


--
-- TOC entry 1842 (class 2606 OID 299922)
-- Dependencies: 1531 1531
-- Name: auto_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auto
    ADD CONSTRAINT auto_pk PRIMARY KEY (id);


--
-- TOC entry 1844 (class 2606 OID 299940)
-- Dependencies: 1533 1533
-- Name: client_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY client
    ADD CONSTRAINT client_pk PRIMARY KEY (id);


--
-- TOC entry 1834 (class 2606 OID 299874)
-- Dependencies: 1521 1521
-- Name: engine_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY engine
    ADD CONSTRAINT engine_pk PRIMARY KEY (id);


--
-- TOC entry 1836 (class 2606 OID 299882)
-- Dependencies: 1523 1523
-- Name: manufacture_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY manufacture
    ADD CONSTRAINT manufacture_pk PRIMARY KEY (id);


--
-- TOC entry 1840 (class 2606 OID 299898)
-- Dependencies: 1527 1527
-- Name: model_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY model
    ADD CONSTRAINT model_pk PRIMARY KEY (id);


--
-- TOC entry 1846 (class 2606 OID 299958)
-- Dependencies: 1538 1538
-- Name: order_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT order_pk PRIMARY KEY (id);


--
-- TOC entry 1832 (class 2606 OID 299866)
-- Dependencies: 1519 1519
-- Name: users_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pk PRIMARY KEY (id);


--
-- TOC entry 1838 (class 2606 OID 299890)
-- Dependencies: 1525 1525
-- Name: vehicle_type_pk; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vehicle_type
    ADD CONSTRAINT vehicle_type_pk PRIMARY KEY (id);


--
-- TOC entry 1851 (class 2606 OID 299959)
-- Dependencies: 1531 1538 1841
-- Name: auto_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT auto_fk FOREIGN KEY (auto_id) REFERENCES auto(id) ON DELETE CASCADE;


--
-- TOC entry 1852 (class 2606 OID 299964)
-- Dependencies: 1538 1843 1533
-- Name: client_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT client_fk FOREIGN KEY (client_id) REFERENCES client(id) ON DELETE CASCADE;


--
-- TOC entry 1850 (class 2606 OID 299928)
-- Dependencies: 1531 1833 1521
-- Name: engine_fr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auto
    ADD CONSTRAINT engine_fr FOREIGN KEY (engine_id) REFERENCES engine(id) ON DELETE CASCADE;


--
-- TOC entry 1847 (class 2606 OID 299899)
-- Dependencies: 1527 1835 1523
-- Name: manufacture_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model
    ADD CONSTRAINT manufacture_fk FOREIGN KEY (manufacture_id) REFERENCES manufacture(id) ON DELETE CASCADE;


--
-- TOC entry 1849 (class 2606 OID 299923)
-- Dependencies: 1839 1531 1527
-- Name: model_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auto
    ADD CONSTRAINT model_fk FOREIGN KEY (model_id) REFERENCES model(id) ON DELETE CASCADE;


--
-- TOC entry 1853 (class 2606 OID 299969)
-- Dependencies: 1538 1831 1519
-- Name: users_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT users_fk FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- TOC entry 1848 (class 2606 OID 299904)
-- Dependencies: 1525 1837 1527
-- Name: vehicle_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model
    ADD CONSTRAINT vehicle_type_fk FOREIGN KEY (vehicle_type_id) REFERENCES vehicle_type(id) ON DELETE CASCADE;


--
-- TOC entry 1866 (class 0 OID 0)
-- Dependencies: 3
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-05-03 00:55:07

--
-- PostgreSQL database dump complete
--

