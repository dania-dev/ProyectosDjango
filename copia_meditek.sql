PGDMP     "    "                {            meditek    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16399    meditek    DATABASE     }   CREATE DATABASE meditek WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Honduras.1252';
    DROP DATABASE meditek;
                postgres    false            �           0    0    meditek    DATABASE PROPERTIES     0   ALTER DATABASE meditek SET "TimeZone" TO 'UTC';
                     postgres    false            �            1259    16426 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16425    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    221            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    220            �            1259    16435    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16434    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    223            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    222            �            1259    16419    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16418    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    219            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    218            �            1259    16442 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16451    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16450    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    227            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    226            �            1259    16441    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    225            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    224            �            1259    16458    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16457 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    229            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    228            �            1259    16517    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16516    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    231            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    230            �            1259    16410    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16409    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    217            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    216            �            1259    16401    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16400    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    215            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    214            �            1259    16602    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16547    meditek_ciclo_trabajo    TABLE     |   CREATE TABLE public.meditek_ciclo_trabajo (
    id integer NOT NULL,
    valor double precision NOT NULL,
    fecha date
);
 )   DROP TABLE public.meditek_ciclo_trabajo;
       public         heap    postgres    false            �            1259    16546    meditek_ciclo_trabajo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meditek_ciclo_trabajo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.meditek_ciclo_trabajo_id_seq;
       public          postgres    false    233            �           0    0    meditek_ciclo_trabajo_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.meditek_ciclo_trabajo_id_seq OWNED BY public.meditek_ciclo_trabajo.id;
          public          postgres    false    232            �            1259    16554    meditek_control_value    TABLE     |   CREATE TABLE public.meditek_control_value (
    id integer NOT NULL,
    valor double precision NOT NULL,
    fecha date
);
 )   DROP TABLE public.meditek_control_value;
       public         heap    postgres    false            �            1259    16553    meditek_control_value_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meditek_control_value_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.meditek_control_value_id_seq;
       public          postgres    false    235            �           0    0    meditek_control_value_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.meditek_control_value_id_seq OWNED BY public.meditek_control_value.id;
          public          postgres    false    234            �            1259    16561    meditek_estado    TABLE     u   CREATE TABLE public.meditek_estado (
    id integer NOT NULL,
    valor double precision NOT NULL,
    fecha date
);
 "   DROP TABLE public.meditek_estado;
       public         heap    postgres    false            �            1259    16560    meditek_estado_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meditek_estado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.meditek_estado_id_seq;
       public          postgres    false    237            �           0    0    meditek_estado_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.meditek_estado_id_seq OWNED BY public.meditek_estado.id;
          public          postgres    false    236            �            1259    16568    meditek_process_status    TABLE     }   CREATE TABLE public.meditek_process_status (
    id integer NOT NULL,
    valor double precision NOT NULL,
    fecha date
);
 *   DROP TABLE public.meditek_process_status;
       public         heap    postgres    false            �            1259    16567    meditek_process_status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meditek_process_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.meditek_process_status_id_seq;
       public          postgres    false    239            �           0    0    meditek_process_status_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.meditek_process_status_id_seq OWNED BY public.meditek_process_status.id;
          public          postgres    false    238            �            1259    16575    meditek_process_value    TABLE     |   CREATE TABLE public.meditek_process_value (
    id integer NOT NULL,
    valor double precision NOT NULL,
    fecha date
);
 )   DROP TABLE public.meditek_process_value;
       public         heap    postgres    false            �            1259    16574    meditek_process_value_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meditek_process_value_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.meditek_process_value_id_seq;
       public          postgres    false    241            �           0    0    meditek_process_value_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.meditek_process_value_id_seq OWNED BY public.meditek_process_value.id;
          public          postgres    false    240            �            1259    16582    meditek_ref_voltaje    TABLE     z   CREATE TABLE public.meditek_ref_voltaje (
    id integer NOT NULL,
    valor double precision NOT NULL,
    fecha date
);
 '   DROP TABLE public.meditek_ref_voltaje;
       public         heap    postgres    false            �            1259    16581    meditek_ref_voltaje_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meditek_ref_voltaje_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.meditek_ref_voltaje_id_seq;
       public          postgres    false    243            �           0    0    meditek_ref_voltaje_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.meditek_ref_voltaje_id_seq OWNED BY public.meditek_ref_voltaje.id;
          public          postgres    false    242            �            1259    16589    meditek_set_point    TABLE     x   CREATE TABLE public.meditek_set_point (
    id integer NOT NULL,
    valor double precision NOT NULL,
    fecha date
);
 %   DROP TABLE public.meditek_set_point;
       public         heap    postgres    false            �            1259    16588    meditek_set_point_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meditek_set_point_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.meditek_set_point_id_seq;
       public          postgres    false    245            �           0    0    meditek_set_point_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.meditek_set_point_id_seq OWNED BY public.meditek_set_point.id;
          public          postgres    false    244            �            1259    16596    meditek_tipo_proceso    TABLE     {   CREATE TABLE public.meditek_tipo_proceso (
    id integer NOT NULL,
    valor double precision NOT NULL,
    fecha date
);
 (   DROP TABLE public.meditek_tipo_proceso;
       public         heap    postgres    false            �            1259    16595    meditek_tipo_proceso_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meditek_tipo_proceso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.meditek_tipo_proceso_id_seq;
       public          postgres    false    247            �           0    0    meditek_tipo_proceso_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.meditek_tipo_proceso_id_seq OWNED BY public.meditek_tipo_proceso.id;
          public          postgres    false    246            �           2604    16429    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16438    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    16422    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16445    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16454    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    16461    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    16520    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    16413    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16404    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16550    meditek_ciclo_trabajo id    DEFAULT     �   ALTER TABLE ONLY public.meditek_ciclo_trabajo ALTER COLUMN id SET DEFAULT nextval('public.meditek_ciclo_trabajo_id_seq'::regclass);
 G   ALTER TABLE public.meditek_ciclo_trabajo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    16557    meditek_control_value id    DEFAULT     �   ALTER TABLE ONLY public.meditek_control_value ALTER COLUMN id SET DEFAULT nextval('public.meditek_control_value_id_seq'::regclass);
 G   ALTER TABLE public.meditek_control_value ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    16564    meditek_estado id    DEFAULT     v   ALTER TABLE ONLY public.meditek_estado ALTER COLUMN id SET DEFAULT nextval('public.meditek_estado_id_seq'::regclass);
 @   ALTER TABLE public.meditek_estado ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    16571    meditek_process_status id    DEFAULT     �   ALTER TABLE ONLY public.meditek_process_status ALTER COLUMN id SET DEFAULT nextval('public.meditek_process_status_id_seq'::regclass);
 H   ALTER TABLE public.meditek_process_status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    16578    meditek_process_value id    DEFAULT     �   ALTER TABLE ONLY public.meditek_process_value ALTER COLUMN id SET DEFAULT nextval('public.meditek_process_value_id_seq'::regclass);
 G   ALTER TABLE public.meditek_process_value ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    16585    meditek_ref_voltaje id    DEFAULT     �   ALTER TABLE ONLY public.meditek_ref_voltaje ALTER COLUMN id SET DEFAULT nextval('public.meditek_ref_voltaje_id_seq'::regclass);
 E   ALTER TABLE public.meditek_ref_voltaje ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    16592    meditek_set_point id    DEFAULT     |   ALTER TABLE ONLY public.meditek_set_point ALTER COLUMN id SET DEFAULT nextval('public.meditek_set_point_id_seq'::regclass);
 C   ALTER TABLE public.meditek_set_point ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            �           2604    16599    meditek_tipo_proceso id    DEFAULT     �   ALTER TABLE ONLY public.meditek_tipo_proceso ALTER COLUMN id SET DEFAULT nextval('public.meditek_tipo_proceso_id_seq'::regclass);
 F   ALTER TABLE public.meditek_tipo_proceso ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    247    247            �          0    16426 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    221   ��       �          0    16435    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    223   ��       �          0    16419    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    219   ��       �          0    16442 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    225   .�       �          0    16451    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    227   N�       �          0    16458    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    229   k�       �          0    16517    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    231   ��       �          0    16410    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    217   ��       �          0    16401    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    215   ��       �          0    16602    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    248   J�       �          0    16547    meditek_ciclo_trabajo 
   TABLE DATA           A   COPY public.meditek_ciclo_trabajo (id, valor, fecha) FROM stdin;
    public          postgres    false    233   ��       �          0    16554    meditek_control_value 
   TABLE DATA           A   COPY public.meditek_control_value (id, valor, fecha) FROM stdin;
    public          postgres    false    235   ��       �          0    16561    meditek_estado 
   TABLE DATA           :   COPY public.meditek_estado (id, valor, fecha) FROM stdin;
    public          postgres    false    237   ,�       �          0    16568    meditek_process_status 
   TABLE DATA           B   COPY public.meditek_process_status (id, valor, fecha) FROM stdin;
    public          postgres    false    239   Z�       �          0    16575    meditek_process_value 
   TABLE DATA           A   COPY public.meditek_process_value (id, valor, fecha) FROM stdin;
    public          postgres    false    241   ��       �          0    16582    meditek_ref_voltaje 
   TABLE DATA           ?   COPY public.meditek_ref_voltaje (id, valor, fecha) FROM stdin;
    public          postgres    false    243   ��       �          0    16589    meditek_set_point 
   TABLE DATA           =   COPY public.meditek_set_point (id, valor, fecha) FROM stdin;
    public          postgres    false    245   ��       �          0    16596    meditek_tipo_proceso 
   TABLE DATA           @   COPY public.meditek_tipo_proceso (id, valor, fecha) FROM stdin;
    public          postgres    false    247   �       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    220            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    222            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          postgres    false    218            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    226            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 8, true);
          public          postgres    false    228            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 7, true);
          public          postgres    false    230            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          postgres    false    216            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
          public          postgres    false    214            �           0    0    meditek_ciclo_trabajo_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.meditek_ciclo_trabajo_id_seq', 3, true);
          public          postgres    false    232            �           0    0    meditek_control_value_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.meditek_control_value_id_seq', 1, false);
          public          postgres    false    234            �           0    0    meditek_estado_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.meditek_estado_id_seq', 1, false);
          public          postgres    false    236            �           0    0    meditek_process_status_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.meditek_process_status_id_seq', 1, false);
          public          postgres    false    238            �           0    0    meditek_process_value_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.meditek_process_value_id_seq', 1, false);
          public          postgres    false    240            �           0    0    meditek_ref_voltaje_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.meditek_ref_voltaje_id_seq', 1, false);
          public          postgres    false    242            �           0    0    meditek_set_point_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.meditek_set_point_id_seq', 4, true);
          public          postgres    false    244            �           0    0    meditek_tipo_proceso_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.meditek_tipo_proceso_id_seq', 1, false);
          public          postgres    false    246            �           2606    16544    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    221            �           2606    16484 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    223    223            �           2606    16440 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    223            �           2606    16431    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    221            �           2606    16470 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    219    219            �           2606    16424 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    219            �           2606    16456 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    227            �           2606    16499 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    227    227            �           2606    16447    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    225            �           2606    16463 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    229            �           2606    16513 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    229    229            �           2606    16539     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    225            �           2606    16525 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    231            �           2606    16417 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    217    217            �           2606    16415 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    217            �           2606    16408 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    215                       2606    16608 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    248            �           2606    16552 0   meditek_ciclo_trabajo meditek_ciclo_trabajo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.meditek_ciclo_trabajo
    ADD CONSTRAINT meditek_ciclo_trabajo_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.meditek_ciclo_trabajo DROP CONSTRAINT meditek_ciclo_trabajo_pkey;
       public            postgres    false    233            �           2606    16559 0   meditek_control_value meditek_control_value_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.meditek_control_value
    ADD CONSTRAINT meditek_control_value_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.meditek_control_value DROP CONSTRAINT meditek_control_value_pkey;
       public            postgres    false    235            �           2606    16566 "   meditek_estado meditek_estado_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.meditek_estado
    ADD CONSTRAINT meditek_estado_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.meditek_estado DROP CONSTRAINT meditek_estado_pkey;
       public            postgres    false    237            �           2606    16573 2   meditek_process_status meditek_process_status_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.meditek_process_status
    ADD CONSTRAINT meditek_process_status_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.meditek_process_status DROP CONSTRAINT meditek_process_status_pkey;
       public            postgres    false    239            �           2606    16580 0   meditek_process_value meditek_process_value_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.meditek_process_value
    ADD CONSTRAINT meditek_process_value_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.meditek_process_value DROP CONSTRAINT meditek_process_value_pkey;
       public            postgres    false    241                       2606    16587 ,   meditek_ref_voltaje meditek_ref_voltaje_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.meditek_ref_voltaje
    ADD CONSTRAINT meditek_ref_voltaje_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.meditek_ref_voltaje DROP CONSTRAINT meditek_ref_voltaje_pkey;
       public            postgres    false    243                       2606    16594 (   meditek_set_point meditek_set_point_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.meditek_set_point
    ADD CONSTRAINT meditek_set_point_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.meditek_set_point DROP CONSTRAINT meditek_set_point_pkey;
       public            postgres    false    245                       2606    16601 .   meditek_tipo_proceso meditek_tipo_proceso_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.meditek_tipo_proceso
    ADD CONSTRAINT meditek_tipo_proceso_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.meditek_tipo_proceso DROP CONSTRAINT meditek_tipo_proceso_pkey;
       public            postgres    false    247            �           1259    16545    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    221            �           1259    16485 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    223            �           1259    16486 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    223            �           1259    16471 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    219            �           1259    16501 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    227            �           1259    16500 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    227            �           1259    16515 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    229            �           1259    16514 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    229            �           1259    16540     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    225            �           1259    16536 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    231            �           1259    16537 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    231                       1259    16610 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    248            	           1259    16609 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    248                       2606    16478 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    223    219    3285                       2606    16473 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    221    223    3290            
           2606    16464 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3280    219    217                       2606    16493 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3290    227    221                       2606    16488 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    225    3298    227                       2606    16507 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    219    229    3285                       2606    16502 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3298    229    225                       2606    16526 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    217    3280    231                       2606    16531 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    225    3298    231            �      x������ � �      �      x������ � �      �   E  x�m�Q�� @��9A'`;��{���M���M����BHx��xXR���ϧ�~?M�qrsX��Q���װ���O??��b(��w7� ��`�kt��d�!�ŭ�m��,�倾p9�c��O�(��[V$82�%��Ɤ�@~ks�ri�1�)!����*	 ܮ�๹U� ���M���]<>?<<�|6n��q�J'~�W;��ũ0�hs�"�B�o�W����9k4�
֐���W��0�����$LT{�P�0V�+Br��0�.����ӫk|H�V|ɧ��)��˔��2���_T⭨��Oݫ��Nݨ(��sY�g��RLY<�K��$x��s�-�w�ZP�]�N"e$�� �K�(B@(����{�t�Fxnj'0�DTW���)iY�ÎYi ʬ���1'��"�n��1�2�+����PBq̩��	����x��@>w��~w/?��s���Z�g���Eo<��5fA��`[6�B��q�T8�0���w��G��3��4���|�1gq��¸x|y�L�#�1݈6,qԕ�'����AK���Ck��2�      �     x�m�Ko�@�5�
��̽3��&-[塦� i� #8>
��/,Mz��$���D_�.nh��IJJްz힣+��n�6y4$X�o+�,�ב�����i1�6R��x�<q��Ȟ �Cb�80t���e=�䊗~�T��v}#sv+��ϣ��M޳�UL��~]3E�Y������q7
�ҭ��.	�T�;��ˉ_��>����]^x�=R���mR��J���z��'�e#z/e/�)�G=+Op����m��?uUU� �"_�      �      x������ � �      �   1   x���   �7[��\R���!�#*��X������"��:5o��      �     x����j�0��!��QcKr��<�c��7q:�.	���ﾴe[J�M �O��L��T�A2D\�'!�g�z�$��2[׮�L�����L`��Fi�
�H�i8��ۮO���n[�q�go�i�O��ڐ-~u��$�"^")]ܫ�6��n��U��`��T��^�5ڦIC����_5�Ɉ��Ώ]"�|��q�+���n�qUL��J�z�����D��Xpq�w��]�$����Ȁ6�s�����n����ũ��w�$�r6�B      �   �   x�e��� D�ُ1��ۿ�l�J�,a�&�{��h��̙�����ӈA�
��Y*b��� �F�D9B��̘�z
Rn�F��G��~�'�I�88���]��H�7;���y�X�.�#������/ZS�Z�-�C7uHx7y�S�mŌb"� ��
�E2������f�      �   �  x���Mn� F��Sd?�EQ���2B��Ac�Q��ġ[�3Ά|��U��O�N1�f�4��nrљ����3��T<<#?C�2�$c�9�Ƭ��8��(�9����n:�P�2�J��#T�O���v�oV���6��.Cp����3RN�Kt~�/����ջK2�ˢ���_t��j��w�dF����OVT�!ڠgF�,���ףy׃��tj%
�Q��pC�KZ�h�pH�B)���H�K)��q_��@y& �����y���=W�AG*E$�W�ݢ]gg�@HU ��[)ofpW}XJ�m>��.������8�+��rǥR�X%u_�%���D�P}���3L'�JT�uN�����=�h	p��_�lF{u��9��ТB��܂j��cLa�n��I���Ņ�8Dx"�����()��ݞN���fn      �   a  x���K��0  �u{��Oi�	� 5�`���5U"�4h��O�r�0���ݫO��%`��V�(�aQ^,���Y���r����nv.xY"�N��A�C�e�6�����k�!����m/U�q���UZ�
�C� �R��;���zҨ��}��b���e����O�[�t��k�^]�X	|Zp�T�g����b7�v��>C�ysl�����[�$��|C���F�%_�c�e,�r�x��/bu�7�6�� 6b6!3�Q?��6�2��w�X��a��g�=��T����j{Z)��p�粎�+}p���:H"#��[��ҟ_W�!dch6��&�{�{6�L� �r�h      �   3   x�3�4�3�4202�50�50�2B0�50�2�4ѳ0�����p��qqq �	J      �      x�3�4ճ�4202�50�50����� *D~      �      x�3�4�3�4202�50�50����� )�s      �      x�3��37�4202�50�52������ .��      �      x�3�4�3�4202�50�54����� )�v      �       x�3�4�3���4202�50�50����� 3��      �   &   x�3�4ѳ�4202�50�54�2ᴀ�W� �$Y      �      x������ � �     