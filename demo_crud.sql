PGDMP         0                 y         	   demo_crud    13.4    13.3     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24675 	   demo_crud    DATABASE     m   CREATE DATABASE demo_crud WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE demo_crud;
                demo_crud_dev    false            ?            1259    24689 
   user_image    TABLE     u   CREATE TABLE public.user_image (
    image_id bigint NOT NULL,
    image text,
    mimetype character varying(10)
);
    DROP TABLE public.user_image;
       public         heap    demo_crud_dev    false            ?            1259    24678    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(20) NOT NULL,
    mobile character varying(20),
    name text,
    gender character varying(6),
    role character varying(5),
    password text NOT NULL
);
    DROP TABLE public.users;
       public         heap    demo_crud_dev    false            ?            1259    24676    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          demo_crud_dev    false    201            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          demo_crud_dev    false    200            (           2604    24681    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          demo_crud_dev    false    200    201    201            ?          0    24689 
   user_image 
   TABLE DATA           ?   COPY public.user_image (image_id, image, mimetype) FROM stdin;
    public          demo_crud_dev    false    202   >       ?          0    24678    users 
   TABLE DATA           S   COPY public.users (id, username, mobile, name, gender, role, password) FROM stdin;
    public          demo_crud_dev    false    201   ?       ?           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          demo_crud_dev    false    200            .           2606    24696    user_image user_image_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.user_image
    ADD CONSTRAINT user_image_pkey PRIMARY KEY (image_id);
 D   ALTER TABLE ONLY public.user_image DROP CONSTRAINT user_image_pkey;
       public            demo_crud_dev    false    202            *           2606    24686    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            demo_crud_dev    false    201            ,           2606    24688    users users_username_mobile_key 
   CONSTRAINT     f   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_mobile_key UNIQUE (username, mobile);
 I   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_mobile_key;
       public            demo_crud_dev    false    201    201            /           2606    24697 #   user_image user_image_image_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_image
    ADD CONSTRAINT user_image_image_id_fkey FOREIGN KEY (image_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_image DROP CONSTRAINT user_image_image_id_fkey;
       public          demo_crud_dev    false    201    202    2858            ?   =   x?3?LN?(N,M+?,N??(N??*??NI? ?iY??)i`?????T????t?=... ?0?      ?   ?   x?3?LL?K?344?Զ?0043?041737???H?KI?N,Rp???U?H,.N?Sp????t?T1JT14PI??Mw1???)??07??0KMt5?4?(5
.6,?r.?*?KrNO??,.?t?????? y#~     