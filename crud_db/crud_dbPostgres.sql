PGDMP             	            z            crud_db    14.1    14.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    18872    crud_db    DATABASE     c   CREATE DATABASE crud_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE crud_db;
                camilo    false            �            1259    18874    empleado    TABLE     �   CREATE TABLE public.empleado (
    codigo integer NOT NULL,
    apellidos character varying(255),
    edad integer,
    nombres character varying(255),
    telefono character varying(255),
    foto character varying(255)
);
    DROP TABLE public.empleado;
       public         heap    camilo    false            �            1259    18873    empleado_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.empleado_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.empleado_codigo_seq;
       public          camilo    false    210            �           0    0    empleado_codigo_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.empleado_codigo_seq OWNED BY public.empleado.codigo;
          public          camilo    false    209            \           2604    18877    empleado codigo    DEFAULT     r   ALTER TABLE ONLY public.empleado ALTER COLUMN codigo SET DEFAULT nextval('public.empleado_codigo_seq'::regclass);
 >   ALTER TABLE public.empleado ALTER COLUMN codigo DROP DEFAULT;
       public          camilo    false    210    209    210            �          0    18874    empleado 
   TABLE DATA           T   COPY public.empleado (codigo, apellidos, edad, nombres, telefono, foto) FROM stdin;
    public          camilo    false    210          �           0    0    empleado_codigo_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.empleado_codigo_seq', 6, true);
          public          camilo    false    209            ^           2606    18881    empleado empleado_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pkey;
       public            camilo    false    210            �   K   x�3�,*MMI�42���460�04�LI-NN,JO��*H�2C�HN���ɇ�*-N-�-��/�/�74�G����� ��     