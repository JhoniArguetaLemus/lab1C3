toc.dat                                                                                             0000600 0004000 0002000 00000065774 14615517635 0014477 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   %    2                |            hospital    16.2    16.2 [    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    17002    hospital    DATABASE     j   CREATE DATABASE hospital WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE hospital;
                usuario2    false         �            1259    17037    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap    usuario2    false         �            1259    17044    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap    usuario2    false         �            1259    17155    citas_medicas    TABLE     J  CREATE TABLE public.citas_medicas (
    id integer NOT NULL,
    id_paciente bigint NOT NULL,
    id_medico bigint NOT NULL,
    fecha date NOT NULL,
    hora character varying(255) NOT NULL,
    observaciones character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.citas_medicas;
       public         heap    usuario2    false         �            1259    17154    citas_medicas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.citas_medicas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.citas_medicas_id_seq;
       public          usuario2    false    237         �           0    0    citas_medicas_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.citas_medicas_id_seq OWNED BY public.citas_medicas.id;
          public          usuario2    false    236         �            1259    17135 	   consultas    TABLE     �   CREATE TABLE public.consultas (
    id_consulta integer NOT NULL,
    fecha date NOT NULL,
    hora character varying(255) NOT NULL,
    observaciones character varying(255) NOT NULL,
    id_paciente bigint NOT NULL,
    id_medico bigint NOT NULL
);
    DROP TABLE public.consultas;
       public         heap    usuario2    false         �            1259    17134    consultas_id_consulta_seq    SEQUENCE     �   CREATE SEQUENCE public.consultas_id_consulta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.consultas_id_consulta_seq;
       public          usuario2    false    235         �           0    0    consultas_id_consulta_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.consultas_id_consulta_seq OWNED BY public.consultas.id_consulta;
          public          usuario2    false    234         �            1259    17069    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    usuario2    false         �            1259    17068    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          usuario2    false    227         �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          usuario2    false    226         �            1259    17090 
   inventario    TABLE     �   CREATE TABLE public.inventario (
    id_medicamento integer NOT NULL,
    nombre_medicamento character varying(255) NOT NULL,
    cantidad_disponible integer NOT NULL,
    fecha_caducidad date NOT NULL,
    descripcion character varying(255) NOT NULL
);
    DROP TABLE public.inventario;
       public         heap    usuario2    false         �            1259    17089    inventario_id_medicamento_seq    SEQUENCE     �   CREATE SEQUENCE public.inventario_id_medicamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.inventario_id_medicamento_seq;
       public          usuario2    false    231         �           0    0    inventario_id_medicamento_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.inventario_id_medicamento_seq OWNED BY public.inventario.id_medicamento;
          public          usuario2    false    230         �            1259    17061    job_batches    TABLE     d  CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);
    DROP TABLE public.job_batches;
       public         heap    usuario2    false         �            1259    17052    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public         heap    usuario2    false         �            1259    17051    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public          usuario2    false    224         �           0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public          usuario2    false    223         �            1259    17099    medicos    TABLE     ]  CREATE TABLE public.medicos (
    id_medico integer NOT NULL,
    nombre character varying(255) NOT NULL,
    apellido character varying(255) NOT NULL,
    especialidad character varying(255) NOT NULL,
    horario_consultas character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL,
    correo character varying(255) NOT NULL
);
    DROP TABLE public.medicos;
       public         heap    usuario2    false         �            1259    17098    medicos_id_medico_seq    SEQUENCE     �   CREATE SEQUENCE public.medicos_id_medico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.medicos_id_medico_seq;
       public          usuario2    false    233         �           0    0    medicos_id_medico_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.medicos_id_medico_seq OWNED BY public.medicos.id_medico;
          public          usuario2    false    232         �            1259    17004 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    usuario2    false         �            1259    17003    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          usuario2    false    216         �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          usuario2    false    215         �            1259    17081    paciente    TABLE     v  CREATE TABLE public.paciente (
    id_paciente integer NOT NULL,
    nombre character varying(255) NOT NULL,
    apellido character varying(255) NOT NULL,
    fecha_nacimiento date NOT NULL,
    genero character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL,
    correo character varying(255) NOT NULL
);
    DROP TABLE public.paciente;
       public         heap    usuario2    false         �            1259    17080    paciente_id_paciente_seq    SEQUENCE     �   CREATE SEQUENCE public.paciente_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.paciente_id_paciente_seq;
       public          usuario2    false    229         �           0    0    paciente_id_paciente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.paciente_id_paciente_seq OWNED BY public.paciente.id_paciente;
          public          usuario2    false    228         �            1259    17021    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    usuario2    false         �            1259    17028    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    usuario2    false         �            1259    17011    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    usuario2    false         �            1259    17010    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          usuario2    false    218         �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          usuario2    false    217         �           2604    17158    citas_medicas id    DEFAULT     t   ALTER TABLE ONLY public.citas_medicas ALTER COLUMN id SET DEFAULT nextval('public.citas_medicas_id_seq'::regclass);
 ?   ALTER TABLE public.citas_medicas ALTER COLUMN id DROP DEFAULT;
       public          usuario2    false    237    236    237         �           2604    17138    consultas id_consulta    DEFAULT     ~   ALTER TABLE ONLY public.consultas ALTER COLUMN id_consulta SET DEFAULT nextval('public.consultas_id_consulta_seq'::regclass);
 D   ALTER TABLE public.consultas ALTER COLUMN id_consulta DROP DEFAULT;
       public          usuario2    false    234    235    235         �           2604    17072    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          usuario2    false    227    226    227         �           2604    17093    inventario id_medicamento    DEFAULT     �   ALTER TABLE ONLY public.inventario ALTER COLUMN id_medicamento SET DEFAULT nextval('public.inventario_id_medicamento_seq'::regclass);
 H   ALTER TABLE public.inventario ALTER COLUMN id_medicamento DROP DEFAULT;
       public          usuario2    false    230    231    231         �           2604    17055    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public          usuario2    false    223    224    224         �           2604    17102    medicos id_medico    DEFAULT     v   ALTER TABLE ONLY public.medicos ALTER COLUMN id_medico SET DEFAULT nextval('public.medicos_id_medico_seq'::regclass);
 @   ALTER TABLE public.medicos ALTER COLUMN id_medico DROP DEFAULT;
       public          usuario2    false    232    233    233         �           2604    17007    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          usuario2    false    215    216    216         �           2604    17084    paciente id_paciente    DEFAULT     |   ALTER TABLE ONLY public.paciente ALTER COLUMN id_paciente SET DEFAULT nextval('public.paciente_id_paciente_seq'::regclass);
 C   ALTER TABLE public.paciente ALTER COLUMN id_paciente DROP DEFAULT;
       public          usuario2    false    229    228    229         �           2604    17014    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          usuario2    false    217    218    218         u          0    17037    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public          usuario2    false    221       3701.dat v          0    17044    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public          usuario2    false    222       3702.dat �          0    17155    citas_medicas 
   TABLE DATA           w   COPY public.citas_medicas (id, id_paciente, id_medico, fecha, hora, observaciones, created_at, updated_at) FROM stdin;
    public          usuario2    false    237       3717.dat �          0    17135 	   consultas 
   TABLE DATA           d   COPY public.consultas (id_consulta, fecha, hora, observaciones, id_paciente, id_medico) FROM stdin;
    public          usuario2    false    235       3715.dat {          0    17069    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          usuario2    false    227       3707.dat           0    17090 
   inventario 
   TABLE DATA           {   COPY public.inventario (id_medicamento, nombre_medicamento, cantidad_disponible, fecha_caducidad, descripcion) FROM stdin;
    public          usuario2    false    231       3711.dat y          0    17061    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public          usuario2    false    225       3705.dat x          0    17052    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public          usuario2    false    224       3704.dat �          0    17099    medicos 
   TABLE DATA           q   COPY public.medicos (id_medico, nombre, apellido, especialidad, horario_consultas, telefono, correo) FROM stdin;
    public          usuario2    false    233       3713.dat p          0    17004 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          usuario2    false    216       3696.dat }          0    17081    paciente 
   TABLE DATA           x   COPY public.paciente (id_paciente, nombre, apellido, fecha_nacimiento, genero, direccion, telefono, correo) FROM stdin;
    public          usuario2    false    229       3709.dat s          0    17021    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          usuario2    false    219       3699.dat t          0    17028    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public          usuario2    false    220       3700.dat r          0    17011    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          usuario2    false    218       3698.dat �           0    0    citas_medicas_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.citas_medicas_id_seq', 1, false);
          public          usuario2    false    236         �           0    0    consultas_id_consulta_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.consultas_id_consulta_seq', 1, false);
          public          usuario2    false    234         �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          usuario2    false    226         �           0    0    inventario_id_medicamento_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.inventario_id_medicamento_seq', 1, false);
          public          usuario2    false    230         �           0    0    jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);
          public          usuario2    false    223         �           0    0    medicos_id_medico_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.medicos_id_medico_seq', 28, true);
          public          usuario2    false    232         �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 10, true);
          public          usuario2    false    215         �           0    0    paciente_id_paciente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.paciente_id_paciente_seq', 34, true);
          public          usuario2    false    228         �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          usuario2    false    217         �           2606    17050    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public            usuario2    false    222         �           2606    17043    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public            usuario2    false    221         �           2606    17162     citas_medicas citas_medicas_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.citas_medicas
    ADD CONSTRAINT citas_medicas_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.citas_medicas DROP CONSTRAINT citas_medicas_pkey;
       public            usuario2    false    237         �           2606    17142    consultas consultas_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.consultas
    ADD CONSTRAINT consultas_pkey PRIMARY KEY (id_consulta);
 B   ALTER TABLE ONLY public.consultas DROP CONSTRAINT consultas_pkey;
       public            usuario2    false    235         �           2606    17077    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            usuario2    false    227         �           2606    17079 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            usuario2    false    227         �           2606    17097    inventario inventario_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id_medicamento);
 D   ALTER TABLE ONLY public.inventario DROP CONSTRAINT inventario_pkey;
       public            usuario2    false    231         �           2606    17067    job_batches job_batches_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
       public            usuario2    false    225         �           2606    17059    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public            usuario2    false    224         �           2606    17106    medicos medicos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.medicos
    ADD CONSTRAINT medicos_pkey PRIMARY KEY (id_medico);
 >   ALTER TABLE ONLY public.medicos DROP CONSTRAINT medicos_pkey;
       public            usuario2    false    233         �           2606    17009    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            usuario2    false    216         �           2606    17088    paciente paciente_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (id_paciente);
 @   ALTER TABLE ONLY public.paciente DROP CONSTRAINT paciente_pkey;
       public            usuario2    false    229         �           2606    17027 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            usuario2    false    219         �           2606    17034    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            usuario2    false    220         �           2606    17020    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            usuario2    false    218         �           2606    17018    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            usuario2    false    218         �           1259    17060    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public            usuario2    false    224         �           1259    17036    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public            usuario2    false    220         �           1259    17035    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public            usuario2    false    220         �           2606    17168 -   citas_medicas citas_medicas_id_medico_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.citas_medicas
    ADD CONSTRAINT citas_medicas_id_medico_foreign FOREIGN KEY (id_medico) REFERENCES public.medicos(id_medico) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.citas_medicas DROP CONSTRAINT citas_medicas_id_medico_foreign;
       public          usuario2    false    3543    237    233         �           2606    17163 /   citas_medicas citas_medicas_id_paciente_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.citas_medicas
    ADD CONSTRAINT citas_medicas_id_paciente_foreign FOREIGN KEY (id_paciente) REFERENCES public.paciente(id_paciente) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.citas_medicas DROP CONSTRAINT citas_medicas_id_paciente_foreign;
       public          usuario2    false    237    3539    229         �           2606    17148 %   consultas consultas_id_medico_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.consultas
    ADD CONSTRAINT consultas_id_medico_foreign FOREIGN KEY (id_medico) REFERENCES public.medicos(id_medico) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.consultas DROP CONSTRAINT consultas_id_medico_foreign;
       public          usuario2    false    3543    233    235         �           2606    17143 '   consultas consultas_id_paciente_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.consultas
    ADD CONSTRAINT consultas_id_paciente_foreign FOREIGN KEY (id_paciente) REFERENCES public.paciente(id_paciente) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.consultas DROP CONSTRAINT consultas_id_paciente_foreign;
       public          usuario2    false    235    3539    229            3701.dat                                                                                            0000600 0004000 0002000 00000000005 14615517635 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3702.dat                                                                                            0000600 0004000 0002000 00000000005 14615517635 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3717.dat                                                                                            0000600 0004000 0002000 00000000005 14615517635 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3715.dat                                                                                            0000600 0004000 0002000 00000000005 14615517635 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3707.dat                                                                                            0000600 0004000 0002000 00000000005 14615517635 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3711.dat                                                                                            0000600 0004000 0002000 00000000005 14615517635 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3705.dat                                                                                            0000600 0004000 0002000 00000000005 14615517635 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3704.dat                                                                                            0000600 0004000 0002000 00000000005 14615517635 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3713.dat                                                                                            0000600 0004000 0002000 00000001151 14615517635 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        21	Pablo	Perez	Cirujano	10:00 am - 5:00 pm	76543362	Pedro@gmail.com
22	Gabriela	Ramos	medico general	10:00am-5:00 pm	78906543	gabriela@gmail.com
23	María	López	Cardiología	9:00 - 17:00	555-1234	maria.lopez@example.com
24	Juan	García	Pediatría	8:00 - 16:00	555-5678	juan.garcia@example.com
25	Ana	Martínez	Dermatología	10:00 - 18:00	555-9012	ana.martinez@example.com
26	Carlos	Rodríguez	Ortopedia	7:00 - 15:00	555-3456	carlos.rodriguez@example.com
27	Laura	Pérez	Psiquiatría	12:00 - 20:00	555-7890	laura.perez@example.com
28	David	Sánchez	Oftalmología	11:00 - 19:00	555-2345	david.sanchez@example.com
\.


                                                                                                                                                                                                                                                                                                                                                                                                                       3696.dat                                                                                            0000600 0004000 0002000 00000000546 14615517635 0014303 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0001_01_01_000000_create_users_table	1
2	0001_01_01_000001_create_cache_table	1
3	0001_01_01_000002_create_jobs_table	1
4	2024_05_01_160152_paciente	2
5	2024_05_01_160228_citas_medicas	2
6	2024_05_01_160234_inventario	3
7	2024_05_01_160248_consultas	3
8	2024_05_01_160252_medicos	4
9	2024_05_01_164702_consultas	5
10	2024_05_01_170135_citas_medicas	6
\.


                                                                                                                                                          3709.dat                                                                                            0000600 0004000 0002000 00000001514 14615517635 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        8	Julio	Sanchez	2000-12-09	Masculino	San Miguel	76453212	julio2gmail.com
15	Maria	Fernandez	1988-04-09	Femenino	San Miguel	76543211	maria1234@gmail.com
16	Pedro	Hernandez	1987-05-08	Masculino	San Miguel	76543212	Pedro@gmail.com
17	Juan	Perez	1990-05-15	Masculino	Calle 123	123456789	juan@example.com
18	María	Gómez	1985-09-20	Femenino	Avenida Principal	987654321	maria@example.com
19	Luis	Martinez	1995-03-10	Masculino	Carrera 45	456789123	luis@example.com
20	Ana	López	1988-07-25	Femenino	Calle 67	321654987	ana@example.com
21	Pedro	Ramírez	1992-12-08	Masculino	Avenida 89	789456123	pedro@example.com
22	Sofía	Hernández	1980-04-30	Femenino	Carrera 12	159357852	sofia@example.com
23	Carlos	González	1975-10-05	Masculino	Calle 34	852963741	carlos@example.com
24	Laura	Díaz	1998-01-20	Femenino	Avenida 56	369258147	laura@example.com
\.


                                                                                                                                                                                    3699.dat                                                                                            0000600 0004000 0002000 00000000005 14615517635 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3700.dat                                                                                            0000600 0004000 0002000 00000002563 14615517635 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        IuYj3lAYCuVL5Haf3DEGi1Nc0DdYDupAh9S3YP99	\N	127.0.0.1	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15	YTozOntzOjY6Il90b2tlbiI7czo0MDoiVTB6MU1wZFpHV2VYc1VzaUZVbmYwY0dzeUk3cHBsNkxIckxyMU9OZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1714691399
d5vnss06KY0S2IevmAufvsf0AU2dtq3WQhOZiuzf	\N	127.0.0.1	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15	YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2doZnREemRCR2JvZ3FLZEtPZnM3ZGhQTngxUWNFM0pnMllRZDBoZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYWNpZW50ZXMvMTQvZWRpdGFyP190b2tlbj1PZ2hmdER6ZEJHYm9ncUtkS09mczdkaFBOeDFRY0UzSmcyWVFkMGhmIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==	1714779459
N9JXJFJiGgjIXc4q9iKTaFXZeAHNkA4xaOWk2GXR	\N	127.0.0.1	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4.1 Safari/605.1.15	YTozOntzOjY6Il90b2tlbiI7czo0MDoiaThnYUNJbUhPSkloTWVzWTlRaGhuZGQ0TEd0TnZ2SHR2dG1XOEVJcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZ3JlZ2FyX21lZGljbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=	1714855753
\.


                                                                                                                                             3698.dat                                                                                            0000600 0004000 0002000 00000000005 14615517635 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000054500 14615517635 0015405 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE hospital;
--
-- Name: hospital; Type: DATABASE; Schema: -; Owner: usuario2
--

CREATE DATABASE hospital WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE hospital OWNER TO usuario2;

\connect hospital

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cache; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO usuario2;

--
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache_locks OWNER TO usuario2;

--
-- Name: citas_medicas; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.citas_medicas (
    id integer NOT NULL,
    id_paciente bigint NOT NULL,
    id_medico bigint NOT NULL,
    fecha date NOT NULL,
    hora character varying(255) NOT NULL,
    observaciones character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.citas_medicas OWNER TO usuario2;

--
-- Name: citas_medicas_id_seq; Type: SEQUENCE; Schema: public; Owner: usuario2
--

CREATE SEQUENCE public.citas_medicas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.citas_medicas_id_seq OWNER TO usuario2;

--
-- Name: citas_medicas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario2
--

ALTER SEQUENCE public.citas_medicas_id_seq OWNED BY public.citas_medicas.id;


--
-- Name: consultas; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.consultas (
    id_consulta integer NOT NULL,
    fecha date NOT NULL,
    hora character varying(255) NOT NULL,
    observaciones character varying(255) NOT NULL,
    id_paciente bigint NOT NULL,
    id_medico bigint NOT NULL
);


ALTER TABLE public.consultas OWNER TO usuario2;

--
-- Name: consultas_id_consulta_seq; Type: SEQUENCE; Schema: public; Owner: usuario2
--

CREATE SEQUENCE public.consultas_id_consulta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.consultas_id_consulta_seq OWNER TO usuario2;

--
-- Name: consultas_id_consulta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario2
--

ALTER SEQUENCE public.consultas_id_consulta_seq OWNED BY public.consultas.id_consulta;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO usuario2;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: usuario2
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO usuario2;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario2
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: inventario; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.inventario (
    id_medicamento integer NOT NULL,
    nombre_medicamento character varying(255) NOT NULL,
    cantidad_disponible integer NOT NULL,
    fecha_caducidad date NOT NULL,
    descripcion character varying(255) NOT NULL
);


ALTER TABLE public.inventario OWNER TO usuario2;

--
-- Name: inventario_id_medicamento_seq; Type: SEQUENCE; Schema: public; Owner: usuario2
--

CREATE SEQUENCE public.inventario_id_medicamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inventario_id_medicamento_seq OWNER TO usuario2;

--
-- Name: inventario_id_medicamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario2
--

ALTER SEQUENCE public.inventario_id_medicamento_seq OWNED BY public.inventario.id_medicamento;


--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


ALTER TABLE public.job_batches OWNER TO usuario2;

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO usuario2;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: usuario2
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO usuario2;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario2
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: medicos; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.medicos (
    id_medico integer NOT NULL,
    nombre character varying(255) NOT NULL,
    apellido character varying(255) NOT NULL,
    especialidad character varying(255) NOT NULL,
    horario_consultas character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL,
    correo character varying(255) NOT NULL
);


ALTER TABLE public.medicos OWNER TO usuario2;

--
-- Name: medicos_id_medico_seq; Type: SEQUENCE; Schema: public; Owner: usuario2
--

CREATE SEQUENCE public.medicos_id_medico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.medicos_id_medico_seq OWNER TO usuario2;

--
-- Name: medicos_id_medico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario2
--

ALTER SEQUENCE public.medicos_id_medico_seq OWNED BY public.medicos.id_medico;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO usuario2;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: usuario2
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO usuario2;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario2
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: paciente; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.paciente (
    id_paciente integer NOT NULL,
    nombre character varying(255) NOT NULL,
    apellido character varying(255) NOT NULL,
    fecha_nacimiento date NOT NULL,
    genero character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL,
    correo character varying(255) NOT NULL
);


ALTER TABLE public.paciente OWNER TO usuario2;

--
-- Name: paciente_id_paciente_seq; Type: SEQUENCE; Schema: public; Owner: usuario2
--

CREATE SEQUENCE public.paciente_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.paciente_id_paciente_seq OWNER TO usuario2;

--
-- Name: paciente_id_paciente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario2
--

ALTER SEQUENCE public.paciente_id_paciente_seq OWNED BY public.paciente.id_paciente;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO usuario2;

--
-- Name: sessions; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


ALTER TABLE public.sessions OWNER TO usuario2;

--
-- Name: users; Type: TABLE; Schema: public; Owner: usuario2
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO usuario2;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: usuario2
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO usuario2;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: usuario2
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: citas_medicas id; Type: DEFAULT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.citas_medicas ALTER COLUMN id SET DEFAULT nextval('public.citas_medicas_id_seq'::regclass);


--
-- Name: consultas id_consulta; Type: DEFAULT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.consultas ALTER COLUMN id_consulta SET DEFAULT nextval('public.consultas_id_consulta_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: inventario id_medicamento; Type: DEFAULT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.inventario ALTER COLUMN id_medicamento SET DEFAULT nextval('public.inventario_id_medicamento_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: medicos id_medico; Type: DEFAULT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.medicos ALTER COLUMN id_medico SET DEFAULT nextval('public.medicos_id_medico_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: paciente id_paciente; Type: DEFAULT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.paciente ALTER COLUMN id_paciente SET DEFAULT nextval('public.paciente_id_paciente_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.cache (key, value, expiration) FROM stdin;
\.
COPY public.cache (key, value, expiration) FROM '$$PATH$$/3701.dat';

--
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.
COPY public.cache_locks (key, owner, expiration) FROM '$$PATH$$/3702.dat';

--
-- Data for Name: citas_medicas; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.citas_medicas (id, id_paciente, id_medico, fecha, hora, observaciones, created_at, updated_at) FROM stdin;
\.
COPY public.citas_medicas (id, id_paciente, id_medico, fecha, hora, observaciones, created_at, updated_at) FROM '$$PATH$$/3717.dat';

--
-- Data for Name: consultas; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.consultas (id_consulta, fecha, hora, observaciones, id_paciente, id_medico) FROM stdin;
\.
COPY public.consultas (id_consulta, fecha, hora, observaciones, id_paciente, id_medico) FROM '$$PATH$$/3715.dat';

--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.
COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM '$$PATH$$/3707.dat';

--
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.inventario (id_medicamento, nombre_medicamento, cantidad_disponible, fecha_caducidad, descripcion) FROM stdin;
\.
COPY public.inventario (id_medicamento, nombre_medicamento, cantidad_disponible, fecha_caducidad, descripcion) FROM '$$PATH$$/3711.dat';

--
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.
COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM '$$PATH$$/3705.dat';

--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.
COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM '$$PATH$$/3704.dat';

--
-- Data for Name: medicos; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.medicos (id_medico, nombre, apellido, especialidad, horario_consultas, telefono, correo) FROM stdin;
\.
COPY public.medicos (id_medico, nombre, apellido, especialidad, horario_consultas, telefono, correo) FROM '$$PATH$$/3713.dat';

--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.migrations (id, migration, batch) FROM stdin;
\.
COPY public.migrations (id, migration, batch) FROM '$$PATH$$/3696.dat';

--
-- Data for Name: paciente; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.paciente (id_paciente, nombre, apellido, fecha_nacimiento, genero, direccion, telefono, correo) FROM stdin;
\.
COPY public.paciente (id_paciente, nombre, apellido, fecha_nacimiento, genero, direccion, telefono, correo) FROM '$$PATH$$/3709.dat';

--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.
COPY public.password_reset_tokens (email, token, created_at) FROM '$$PATH$$/3699.dat';

--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
\.
COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM '$$PATH$$/3700.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: usuario2
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.
COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM '$$PATH$$/3698.dat';

--
-- Name: citas_medicas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario2
--

SELECT pg_catalog.setval('public.citas_medicas_id_seq', 1, false);


--
-- Name: consultas_id_consulta_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario2
--

SELECT pg_catalog.setval('public.consultas_id_consulta_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario2
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: inventario_id_medicamento_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario2
--

SELECT pg_catalog.setval('public.inventario_id_medicamento_seq', 1, false);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario2
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: medicos_id_medico_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario2
--

SELECT pg_catalog.setval('public.medicos_id_medico_seq', 28, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario2
--

SELECT pg_catalog.setval('public.migrations_id_seq', 10, true);


--
-- Name: paciente_id_paciente_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario2
--

SELECT pg_catalog.setval('public.paciente_id_paciente_seq', 34, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: usuario2
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- Name: citas_medicas citas_medicas_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.citas_medicas
    ADD CONSTRAINT citas_medicas_pkey PRIMARY KEY (id);


--
-- Name: consultas consultas_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.consultas
    ADD CONSTRAINT consultas_pkey PRIMARY KEY (id_consulta);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: inventario inventario_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id_medicamento);


--
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: medicos medicos_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.medicos
    ADD CONSTRAINT medicos_pkey PRIMARY KEY (id_medico);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: paciente paciente_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (id_paciente);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: usuario2
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- Name: sessions_last_activity_index; Type: INDEX; Schema: public; Owner: usuario2
--

CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);


--
-- Name: sessions_user_id_index; Type: INDEX; Schema: public; Owner: usuario2
--

CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);


--
-- Name: citas_medicas citas_medicas_id_medico_foreign; Type: FK CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.citas_medicas
    ADD CONSTRAINT citas_medicas_id_medico_foreign FOREIGN KEY (id_medico) REFERENCES public.medicos(id_medico) ON DELETE CASCADE;


--
-- Name: citas_medicas citas_medicas_id_paciente_foreign; Type: FK CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.citas_medicas
    ADD CONSTRAINT citas_medicas_id_paciente_foreign FOREIGN KEY (id_paciente) REFERENCES public.paciente(id_paciente) ON DELETE CASCADE;


--
-- Name: consultas consultas_id_medico_foreign; Type: FK CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.consultas
    ADD CONSTRAINT consultas_id_medico_foreign FOREIGN KEY (id_medico) REFERENCES public.medicos(id_medico) ON DELETE CASCADE;


--
-- Name: consultas consultas_id_paciente_foreign; Type: FK CONSTRAINT; Schema: public; Owner: usuario2
--

ALTER TABLE ONLY public.consultas
    ADD CONSTRAINT consultas_id_paciente_foreign FOREIGN KEY (id_paciente) REFERENCES public.paciente(id_paciente) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                