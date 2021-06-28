PGDMP     (                    y         
   SB_TUIT_db #   13.3 (Ubuntu 13.3-0ubuntu0.21.04.1) #   13.3 (Ubuntu 13.3-0ubuntu0.21.04.1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    19323 
   SB_TUIT_db    DATABASE     a   CREATE DATABASE "SB_TUIT_db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE "SB_TUIT_db";
                sbtuit    false            �            1259    19494    Daraja    TABLE     �   CREATE TABLE public."Daraja" (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public."Daraja";
       public         heap    sbtuit    false            �            1259    19492    Daraja_id_seq    SEQUENCE     x   CREATE SEQUENCE public."Daraja_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Daraja_id_seq";
       public          sbtuit    false    220            �           0    0    Daraja_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Daraja_id_seq" OWNED BY public."Daraja".id;
          public          sbtuit    false    219            �            1259    19502    Fakultet    TABLE     �   CREATE TABLE public."Fakultet" (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public."Fakultet";
       public         heap    sbtuit    false            �            1259    19500    Fakultet_id_seq    SEQUENCE     z   CREATE SEQUENCE public."Fakultet_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Fakultet_id_seq";
       public          sbtuit    false    222            �           0    0    Fakultet_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Fakultet_id_seq" OWNED BY public."Fakultet".id;
          public          sbtuit    false    221            �            1259    19585 	   File Type    TABLE     g   CREATE TABLE public."File Type" (
    id bigint NOT NULL,
    title character varying(255) NOT NULL
);
    DROP TABLE public."File Type";
       public         heap    sbtuit    false            �            1259    19583    File Type_id_seq    SEQUENCE     {   CREATE SEQUENCE public."File Type_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."File Type_id_seq";
       public          sbtuit    false    232            �           0    0    File Type_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."File Type_id_seq" OWNED BY public."File Type".id;
          public          sbtuit    false    231            �            1259    19510    Kafedra    TABLE     �   CREATE TABLE public."Kafedra" (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public."Kafedra";
       public         heap    sbtuit    false            �            1259    19508    Kafedra_id_seq    SEQUENCE     y   CREATE SEQUENCE public."Kafedra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Kafedra_id_seq";
       public          sbtuit    false    224            �           0    0    Kafedra_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Kafedra_id_seq" OWNED BY public."Kafedra".id;
          public          sbtuit    false    223            �            1259    19518    Teacher Data    TABLE     z  CREATE TABLE public."Teacher Data" (
    id bigint NOT NULL,
    middle_name character varying(255),
    informaton text,
    image character varying(255),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    daraja_id bigint,
    fakultet_id bigint,
    kafedra_id bigint,
    unvon_id bigint,
    user_id integer NOT NULL
);
 "   DROP TABLE public."Teacher Data";
       public         heap    sbtuit    false            �            1259    19516    Teacher Data_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."Teacher Data_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Teacher Data_id_seq";
       public          sbtuit    false    226            �           0    0    Teacher Data_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Teacher Data_id_seq" OWNED BY public."Teacher Data".id;
          public          sbtuit    false    225            �            1259    19537    Teacher File    TABLE     8  CREATE TABLE public."Teacher File" (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    type_id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    teacher_id_id bigint NOT NULL
);
 "   DROP TABLE public."Teacher File";
       public         heap    sbtuit    false            �            1259    19535    Teacher File_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."Teacher File_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Teacher File_id_seq";
       public          sbtuit    false    230            �           0    0    Teacher File_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Teacher File_id_seq" OWNED BY public."Teacher File".id;
          public          sbtuit    false    229            �            1259    19529    Unvon    TABLE     �   CREATE TABLE public."Unvon" (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public."Unvon";
       public         heap    sbtuit    false            �            1259    19527    Unvon_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Unvon_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Unvon_id_seq";
       public          sbtuit    false    228            �           0    0    Unvon_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Unvon_id_seq" OWNED BY public."Unvon".id;
          public          sbtuit    false    227            �            1259    19355 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    sbtuit    false            �            1259    19353    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          sbtuit    false    207            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          sbtuit    false    206            �            1259    19365    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    sbtuit    false            �            1259    19363    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          sbtuit    false    209            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          sbtuit    false    208            �            1259    19347    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    sbtuit    false            �            1259    19345    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          sbtuit    false    205            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          sbtuit    false    204            �            1259    19373 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    sbtuit    false            �            1259    19383    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    sbtuit    false            �            1259    19381    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          sbtuit    false    213            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          sbtuit    false    212            �            1259    19371    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          sbtuit    false    211            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          sbtuit    false    210            �            1259    19391    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    sbtuit    false            �            1259    19389 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          sbtuit    false    215            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          sbtuit    false    214            �            1259    19451    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    sbtuit    false            �            1259    19449    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          sbtuit    false    217            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          sbtuit    false    216            �            1259    19337    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    sbtuit    false            �            1259    19335    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          sbtuit    false    203            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          sbtuit    false    202            �            1259    19326    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    sbtuit    false            �            1259    19324    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          sbtuit    false    201            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          sbtuit    false    200            �            1259    19482    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    sbtuit    false            �           2604    19497 	   Daraja id    DEFAULT     j   ALTER TABLE ONLY public."Daraja" ALTER COLUMN id SET DEFAULT nextval('public."Daraja_id_seq"'::regclass);
 :   ALTER TABLE public."Daraja" ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    219    220    220            �           2604    19505    Fakultet id    DEFAULT     n   ALTER TABLE ONLY public."Fakultet" ALTER COLUMN id SET DEFAULT nextval('public."Fakultet_id_seq"'::regclass);
 <   ALTER TABLE public."Fakultet" ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    221    222    222            �           2604    19588    File Type id    DEFAULT     p   ALTER TABLE ONLY public."File Type" ALTER COLUMN id SET DEFAULT nextval('public."File Type_id_seq"'::regclass);
 =   ALTER TABLE public."File Type" ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    231    232    232            �           2604    19513 
   Kafedra id    DEFAULT     l   ALTER TABLE ONLY public."Kafedra" ALTER COLUMN id SET DEFAULT nextval('public."Kafedra_id_seq"'::regclass);
 ;   ALTER TABLE public."Kafedra" ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    223    224    224            �           2604    19521    Teacher Data id    DEFAULT     v   ALTER TABLE ONLY public."Teacher Data" ALTER COLUMN id SET DEFAULT nextval('public."Teacher Data_id_seq"'::regclass);
 @   ALTER TABLE public."Teacher Data" ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    226    225    226            �           2604    19540    Teacher File id    DEFAULT     v   ALTER TABLE ONLY public."Teacher File" ALTER COLUMN id SET DEFAULT nextval('public."Teacher File_id_seq"'::regclass);
 @   ALTER TABLE public."Teacher File" ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    229    230    230            �           2604    19532    Unvon id    DEFAULT     h   ALTER TABLE ONLY public."Unvon" ALTER COLUMN id SET DEFAULT nextval('public."Unvon_id_seq"'::regclass);
 9   ALTER TABLE public."Unvon" ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    227    228    228            �           2604    19358    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    206    207    207            �           2604    19368    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    208    209    209            �           2604    19350    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    204    205    205            �           2604    19376    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    210    211    211            �           2604    19386    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    212    213    213            �           2604    19394    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    214    215    215            �           2604    19454    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    216    217    217            �           2604    19340    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    203    202    203            �           2604    19329    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          sbtuit    false    200    201    201            �          0    19494    Daraja 
   TABLE DATA           E   COPY public."Daraja" (id, title, created_at, updated_at) FROM stdin;
    public          sbtuit    false    220   8�       �          0    19502    Fakultet 
   TABLE DATA           G   COPY public."Fakultet" (id, title, created_at, updated_at) FROM stdin;
    public          sbtuit    false    222   ��       �          0    19585 	   File Type 
   TABLE DATA           0   COPY public."File Type" (id, title) FROM stdin;
    public          sbtuit    false    232   S�       �          0    19510    Kafedra 
   TABLE DATA           F   COPY public."Kafedra" (id, title, created_at, updated_at) FROM stdin;
    public          sbtuit    false    224   ��       �          0    19518    Teacher Data 
   TABLE DATA           �   COPY public."Teacher Data" (id, middle_name, informaton, image, created_at, updated_at, daraja_id, fakultet_id, kafedra_id, unvon_id, user_id) FROM stdin;
    public          sbtuit    false    226   ��       �          0    19537    Teacher File 
   TABLE DATA           i   COPY public."Teacher File" (id, title, file, type_id, created_at, updated_at, teacher_id_id) FROM stdin;
    public          sbtuit    false    230   R�       �          0    19529    Unvon 
   TABLE DATA           D   COPY public."Unvon" (id, title, created_at, updated_at) FROM stdin;
    public          sbtuit    false    228   ��       �          0    19355 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          sbtuit    false    207   h�       �          0    19365    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          sbtuit    false    209   ��       �          0    19347    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          sbtuit    false    205   ��       �          0    19373 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          sbtuit    false    211   ��       �          0    19383    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          sbtuit    false    213   ��       �          0    19391    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          sbtuit    false    215   ��       �          0    19451    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          sbtuit    false    217   ��       �          0    19337    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          sbtuit    false    203   ��       �          0    19326    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          sbtuit    false    201   w�       �          0    19482    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          sbtuit    false    218   ��       �           0    0    Daraja_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Daraja_id_seq"', 5, true);
          public          sbtuit    false    219            �           0    0    Fakultet_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Fakultet_id_seq"', 2, true);
          public          sbtuit    false    221            �           0    0    File Type_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."File Type_id_seq"', 5, true);
          public          sbtuit    false    231            �           0    0    Kafedra_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Kafedra_id_seq"', 9, true);
          public          sbtuit    false    223            �           0    0    Teacher Data_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Teacher Data_id_seq"', 56, true);
          public          sbtuit    false    225            �           0    0    Teacher File_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Teacher File_id_seq"', 35, true);
          public          sbtuit    false    229            �           0    0    Unvon_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Unvon_id_seq"', 5, true);
          public          sbtuit    false    227            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          sbtuit    false    206            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          sbtuit    false    208            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);
          public          sbtuit    false    204            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          sbtuit    false    212            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 28, true);
          public          sbtuit    false    210            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          sbtuit    false    214            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 209, true);
          public          sbtuit    false    216            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);
          public          sbtuit    false    202            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);
          public          sbtuit    false    200            �           2606    19499    Daraja Daraja_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Daraja"
    ADD CONSTRAINT "Daraja_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Daraja" DROP CONSTRAINT "Daraja_pkey";
       public            sbtuit    false    220            �           2606    19507    Fakultet Fakultet_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Fakultet"
    ADD CONSTRAINT "Fakultet_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Fakultet" DROP CONSTRAINT "Fakultet_pkey";
       public            sbtuit    false    222                       2606    19590    File Type File Type_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."File Type"
    ADD CONSTRAINT "File Type_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."File Type" DROP CONSTRAINT "File Type_pkey";
       public            sbtuit    false    232                       2606    19592    File Type File Type_title_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."File Type"
    ADD CONSTRAINT "File Type_title_key" UNIQUE (title);
 K   ALTER TABLE ONLY public."File Type" DROP CONSTRAINT "File Type_title_key";
       public            sbtuit    false    232            �           2606    19515    Kafedra Kafedra_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Kafedra"
    ADD CONSTRAINT "Kafedra_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Kafedra" DROP CONSTRAINT "Kafedra_pkey";
       public            sbtuit    false    224            �           2606    19526    Teacher Data Teacher Data_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Teacher Data"
    ADD CONSTRAINT "Teacher Data_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Teacher Data" DROP CONSTRAINT "Teacher Data_pkey";
       public            sbtuit    false    226            �           2606    19552 %   Teacher Data Teacher Data_user_id_key 
   CONSTRAINT     g   ALTER TABLE ONLY public."Teacher Data"
    ADD CONSTRAINT "Teacher Data_user_id_key" UNIQUE (user_id);
 S   ALTER TABLE ONLY public."Teacher Data" DROP CONSTRAINT "Teacher Data_user_id_key";
       public            sbtuit    false    226                       2606    19545    Teacher File Teacher File_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Teacher File"
    ADD CONSTRAINT "Teacher File_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Teacher File" DROP CONSTRAINT "Teacher File_pkey";
       public            sbtuit    false    230            �           2606    19534    Unvon Unvon_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Unvon"
    ADD CONSTRAINT "Unvon_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Unvon" DROP CONSTRAINT "Unvon_pkey";
       public            sbtuit    false    228            �           2606    19480    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            sbtuit    false    207            �           2606    19407 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            sbtuit    false    209    209            �           2606    19370 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            sbtuit    false    209            �           2606    19360    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            sbtuit    false    207            �           2606    19398 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            sbtuit    false    205    205            �           2606    19352 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            sbtuit    false    205            �           2606    19388 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            sbtuit    false    213            �           2606    19422 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            sbtuit    false    213    213            �           2606    19378    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            sbtuit    false    211            �           2606    19396 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            sbtuit    false    215            �           2606    19436 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            sbtuit    false    215    215            �           2606    19474     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            sbtuit    false    211            �           2606    19460 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            sbtuit    false    217            �           2606    19344 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            sbtuit    false    203    203            �           2606    19342 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            sbtuit    false    203            �           2606    19334 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            sbtuit    false    201            �           2606    19489 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            sbtuit    false    218                       1259    19604    File Type_title_58dceb20_like    INDEX     l   CREATE INDEX "File Type_title_58dceb20_like" ON public."File Type" USING btree (title varchar_pattern_ops);
 3   DROP INDEX public."File Type_title_58dceb20_like";
       public            sbtuit    false    232            �           1259    19573    Teacher Data_daraja_id_3323ed3d    INDEX     a   CREATE INDEX "Teacher Data_daraja_id_3323ed3d" ON public."Teacher Data" USING btree (daraja_id);
 5   DROP INDEX public."Teacher Data_daraja_id_3323ed3d";
       public            sbtuit    false    226            �           1259    19574 !   Teacher Data_fakultet_id_1683fd3b    INDEX     e   CREATE INDEX "Teacher Data_fakultet_id_1683fd3b" ON public."Teacher Data" USING btree (fakultet_id);
 7   DROP INDEX public."Teacher Data_fakultet_id_1683fd3b";
       public            sbtuit    false    226            �           1259    19575     Teacher Data_kafedra_id_3f5ec7ed    INDEX     c   CREATE INDEX "Teacher Data_kafedra_id_3f5ec7ed" ON public."Teacher Data" USING btree (kafedra_id);
 6   DROP INDEX public."Teacher Data_kafedra_id_3f5ec7ed";
       public            sbtuit    false    226            �           1259    19582    Teacher Data_unvon_id_b28e6172    INDEX     _   CREATE INDEX "Teacher Data_unvon_id_b28e6172" ON public."Teacher Data" USING btree (unvon_id);
 4   DROP INDEX public."Teacher Data_unvon_id_b28e6172";
       public            sbtuit    false    226                       1259    19581 #   Teacher File_teacher_id_id_98b4bd28    INDEX     i   CREATE INDEX "Teacher File_teacher_id_id_98b4bd28" ON public."Teacher File" USING btree (teacher_id_id);
 9   DROP INDEX public."Teacher File_teacher_id_id_98b4bd28";
       public            sbtuit    false    230                       1259    19598    Teacher File_type_id_f4199209    INDEX     ]   CREATE INDEX "Teacher File_type_id_f4199209" ON public."Teacher File" USING btree (type_id);
 3   DROP INDEX public."Teacher File_type_id_f4199209";
       public            sbtuit    false    230            �           1259    19481    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            sbtuit    false    207            �           1259    19418 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            sbtuit    false    209            �           1259    19419 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            sbtuit    false    209            �           1259    19404 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            sbtuit    false    205            �           1259    19434 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            sbtuit    false    213            �           1259    19433 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            sbtuit    false    213            �           1259    19448 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            sbtuit    false    215            �           1259    19447 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            sbtuit    false    215            �           1259    19475     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            sbtuit    false    211            �           1259    19471 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            sbtuit    false    217            �           1259    19472 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            sbtuit    false    217            �           1259    19491 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            sbtuit    false    218            �           1259    19490 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            sbtuit    false    218                       2606    19558 9   Teacher Data Teacher Data_daraja_id_3323ed3d_fk_Daraja_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teacher Data"
    ADD CONSTRAINT "Teacher Data_daraja_id_3323ed3d_fk_Daraja_id" FOREIGN KEY (daraja_id) REFERENCES public."Daraja"(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public."Teacher Data" DROP CONSTRAINT "Teacher Data_daraja_id_3323ed3d_fk_Daraja_id";
       public          sbtuit    false    220    226    3057                       2606    19563 =   Teacher Data Teacher Data_fakultet_id_1683fd3b_fk_Fakultet_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teacher Data"
    ADD CONSTRAINT "Teacher Data_fakultet_id_1683fd3b_fk_Fakultet_id" FOREIGN KEY (fakultet_id) REFERENCES public."Fakultet"(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public."Teacher Data" DROP CONSTRAINT "Teacher Data_fakultet_id_1683fd3b_fk_Fakultet_id";
       public          sbtuit    false    3059    222    226                       2606    19568 ;   Teacher Data Teacher Data_kafedra_id_3f5ec7ed_fk_Kafedra_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teacher Data"
    ADD CONSTRAINT "Teacher Data_kafedra_id_3f5ec7ed_fk_Kafedra_id" FOREIGN KEY (kafedra_id) REFERENCES public."Kafedra"(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public."Teacher Data" DROP CONSTRAINT "Teacher Data_kafedra_id_3f5ec7ed_fk_Kafedra_id";
       public          sbtuit    false    224    226    3061                       2606    19546 7   Teacher Data Teacher Data_unvon_id_b28e6172_fk_Unvon_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teacher Data"
    ADD CONSTRAINT "Teacher Data_unvon_id_b28e6172_fk_Unvon_id" FOREIGN KEY (unvon_id) REFERENCES public."Unvon"(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public."Teacher Data" DROP CONSTRAINT "Teacher Data_unvon_id_b28e6172_fk_Unvon_id";
       public          sbtuit    false    228    3071    226                       2606    19553 :   Teacher Data Teacher Data_user_id_748ca593_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teacher Data"
    ADD CONSTRAINT "Teacher Data_user_id_748ca593_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public."Teacher Data" DROP CONSTRAINT "Teacher Data_user_id_748ca593_fk_auth_user_id";
       public          sbtuit    false    226    3032    211                       2606    19576 C   Teacher File Teacher File_teacher_id_id_98b4bd28_fk_Teacher Data_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teacher File"
    ADD CONSTRAINT "Teacher File_teacher_id_id_98b4bd28_fk_Teacher Data_id" FOREIGN KEY (teacher_id_id) REFERENCES public."Teacher Data"(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public."Teacher File" DROP CONSTRAINT "Teacher File_teacher_id_id_98b4bd28_fk_Teacher Data_id";
       public          sbtuit    false    3066    230    226                       2606    19606 :   Teacher File Teacher File_type_id_f4199209_fk_File Type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teacher File"
    ADD CONSTRAINT "Teacher File_type_id_f4199209_fk_File Type_id" FOREIGN KEY (type_id) REFERENCES public."File Type"(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public."Teacher File" DROP CONSTRAINT "Teacher File_type_id_f4199209_fk_File Type_id";
       public          sbtuit    false    232    230    3077                       2606    19413 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          sbtuit    false    205    3019    209            
           2606    19408 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          sbtuit    false    207    3024    209            	           2606    19399 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          sbtuit    false    205    203    3014                       2606    19428 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          sbtuit    false    207    3024    213                       2606    19423 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          sbtuit    false    213    3032    211                       2606    19442 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          sbtuit    false    215    205    3019                       2606    19437 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          sbtuit    false    211    215    3032                       2606    19461 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          sbtuit    false    217    203    3014                       2606    19466 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          sbtuit    false    3032    217    211            �   �   x�u�1�0��99Ew��vl�����X"UBU��ڊ��Ca��>=4�47C�������m�=B��D��@�U!~WKE������D�4v�X��5�]�朮�-�;!}�U�S�����1M�5&:���֙R=�3g�}̣=�      �   m   x�}̻@0 й�
�hzo��`5Z�\����#1b>�VN�|�[X�EZ(�%B&M�:[�+��4H���SQ]ʑUa�4��f[�h~ke���!�֏*s׵���}+�      �   K   x�3�H�)L,�W�M,��I�I,�2��M�H��ɬD4�t/-�����sM8�3�J`\Sΐļ��2;F��� D�V      �   0  x����n�0Eg�)�1TX��a�T�CW�.F��F�S��N@e�i�{|u�Q���4t0����p@�0�&j�DM���!X+e�|!�)5:ӊ����㐚�Npߺ�J��V[[4ި��{G��]�b�Ss	��]�b3a%�e�R3I�6ms�~pr���?`s#7E��J5�壯[����-��QT�Ἥ�5_ܾ�k�´�`A���i�԰I����]��z�²'"��TХ�Ŵxe��� ��3�heu�5SM��̢-�YR����!{�[}嶣K�4����S����UU� Y��      �   T  x���Qo�0��ͯ�[������VM��Jm����������[Q�_?��]��@�����s.����7zբ�}��65y�┳�]p�YV2^2A�,�<�B�?iQL4E,��4�ݯZm�f��4u9������L(-�"�EL����p���E"St;zW�S5丹`���ɒ)B)h�;�TM4��8.)у3z��,v�fa4�O�8-#��(�eN4�W5U�M�����e5�I�(+Ӕ(�Ҍ��h�l�70
]�t��zc�{yh]}�������TɈց
��8R�7M$�����^��1�h)$�Ui��H%?x6is��݀	�U��sN��e���l�Y�����5�o _k[E���;x��CX� s�R��s�;؆�׷���o���=��9��_K��7�q-x��~��u3��v1����y7�~�θFoa�߁_�N���U��zC��}��)�^���l3��|[w΃��Nc��~��^��az��4�`;"�p.¹P��h���e!�a�T"�X�cq���o/w_#�T�+k&�q<PI�i�C,X"��`���{0/ENR^,��8Ry���ɒG�$��3o�      �   f  x��ѻj�0��~
m�]K���V��P��ҩ�c�>��D!���q�g�"�~�����{p(U��Pؕ�hG����5�������A�X���N=~,=�a\/ޔs�D�j�q�Ō��YF�,�,��D&r�bq7��1����B��@*�v��=�e�GԀw��l����:��/�Y�+\�S�Z�x�ڪ^n��k\Z�<�I��r�~Nsz�s��3tP�hZm:l	Xm'�H���e��Զٌ�gZ�x_N��&����IDE�iv+�KyzL����ߢ��I��(az�yPZp�T�9���ӄ���K�����Тq���͑���h��i2SxI��4������R�      �   �   x�u�;�0��99E7�ȯ<�����T��,Dm�R����?٨�s��9�Y��Z�}O�Go�8	���Zp��IS��l�H+W��Z�*�NC)C�vS,����L���s�ʲp�9��UL����Ze�\_�����?x      �      x������ � �      �      x������ � �      �     x�m�Yn�0���Sp�
gay�5*U1K�%���7��x�ǟ�O��gl�i��a�ڡ{��������/ �c{H��%�M����X��qJ�
�lvK���O���&��r$;Ů��aIP�Q4$8*n˖��z���ۇ�����EH�N!B
Q� X�v��>u���ӇJ�O�t=��� ����M�p5n���ݵƿ����j0��T�a�Ef0	~��f<�i�X��]�������&�'c&킑c*��#��&v�'�5��&�L�N�L�"��P3*�4���~��6����4�V�h��@rP�[a�%������ۂ�|i�.i1f/I1�r/(1"�R�S7�t�n�ɋjSɗ&�s�����r�*5 s�,poc>���?��@�d���r ���>�_��o�$
ݿ��ջ�e�����/������e\�a5%�_���T�g��s��<)��I�h�F��h�%c_��7'��      �   �  x�}�[��J���_qH�3Z�2���]i.
�INP��RrS����ngƑ6�����a븉��/�mȰdA}���qq�Y�r��d`Aep	��$=��s!įQ���O1������tI���;��~�~.Z�֢H�}P���Ⱦ�����Y���`���C�Mނ ������l�.���y��cڋ��|%�&��TUZ��v��Ċ�Wj'�I�e��h��˕�M�����q\���4������K�/;/�O����$�$}����.�Ҝ�aN0�	��;D5���ZY�6��/S�/�����
n�½E�l���H7�����;�z�
���2�Q�*��̞�Ӎ��͞�&��+|9HW��CЩ��g�`�>��lE��-7=��Z#��j�u/�5�O6n�%݊�t�WT�1Ꙝy~⭲- iU��D)m"o^��;t��[�<WB1@ӣ�J��r��*���=���"�N�&W��E����2]��⒏q�1LQf��za�e�]�2O��q�c�����W�0w��r��Y�;�Tą��_R�K�6�X53���4؅8��ڕ�5�_�g�|���q�}R5"O��
J7���;=�#�i�[G�Ӓ�s�1U�U���m���5.������Au�fH���w&�&��춏&��.݊��@]�n�l�߻�nڛFkr韨,*�D(�����-�D� �N7�WH$s�l�E>��I*HcZ��ເ�B�ͳ,�w*����� g9�??�O�a=Y���%K�I��ɕ�G�h��4��J�$o�AZ�;��O,��0@9�]�+F�c��,�����'�R�lR\�u�[�}�}kvW���9^[h^�����t����s�?�K�@�0s���{�g��C�.o8k�<Y9����Tk"Kž<2��cgn/�`u�܎n�v�|4��[�o�uT��Hĝ�ߐ�l�������      �      x������ � �      �      x������ � �      �      x��[�s�6f�
N^�pW��֛{izm/I�$7��un�H�KbLI��N��[�L�,���U������~cI3 @�&�k�9��&�Rs&�FDY}w>��h������t6}6����2�ѯ &fPΌ�}j�������?��f�����˪Yo�U��=�{��_e�/�.�j�#�f�^?����b��F�df�z^�&D�!1�0QPe@�h�X�<)�$�+˔go�����&d�!��]��L�}�q�V1_P� ƨe+��߯�u��Z���\I���Ǖل\���RΉ8�m��\M�Li�ڃ��k����z~S^o��l����j���/�/�]!*B�ZO)@��+�3�ߖ˲i1-��t�X�w����<	���Fo�|�{�[��f;�_oī�H���DtFJ��YY}�g�H��M̈́B!�+��1�G"�;�Bk�Vp����>��벩�ey]/�E9d����%c,*&%��ҫr^.��`*c��
�b�P�����U�<�c.
")�.84��`L�&�B��S��r��o` 	0(�P��I�T��\���jS7C��,�A@�!}F� �8�I�A�����UyY�7C��� S�AS'Ͼ)�P�7I ��P�\q	N?5�Ɨ� �� 1B�E�7TK����E�Y�V�$Bh�����^?��M����lo>�T���E҅!\��g�j}P��TAO c��x���^~��nfM^�>U���V�pڢ��hL�k-�Sλ�bvU/���ܬ���qT�0��Ԛ{_`�6����m�(-�&
���7�}�D�:�,�if
��b�eg��uSo���vU/�K|�awm�BG<��XV��<Q}-hd�f�-VP��w'd��py���#[Aq�y[���my����eR��G02!�.C��X
��\U���/0䥅
=��t�J�h5�1d�Wh(�aB�@`Am�3ٻ
�\�ߔ��j��Wmzy>E!��!oka��`��j��2{���e�L&19�jªU��ǭ�8�B{:8hw:/���R�C�1�ҏ,8��r��H��^m���<$�6���ʨ�|d�E�CF0�)g{o0�&�D��f�˒��R��-�����r�~��Eu�[����A�2��Y��%��"�1�r'7;m��UBn������q��:�����)��P��X��|�ٱ���(��TM."'U� ��d.K`���4^�ue~�v�b �U�"rEes��f���Y�OK����jZcd��Z f}�2v�����Pe�3�譈zv�Uw~��=�� �1�0XvS8��<t��/�˙;K�/�YmZ�<��<�c�XRa%l��2Gv�'������P)Y7n9Ԓ��+ri3a]�S7�٦�l��;������5��D�~��|n�d�3���j�f4u��c���H��%vA�*��9h�`�BwG0l�\�m��|)�Y^���<ǎC
�%	z���'GgW~��3�8�u[;�*�;�jx��^.�[iA���*����Œ�"ޖ7�N�z�h3%���"��?����u�ev�_4x�_���v�����m�h�ӭ̦m�b��"��+<6�����lB�����.*�@��TZ{���W�����v��m��?��iS�RaC�ݞ�4����dB���f���R��з�����ٞq=�b[�+�	l��������2'��1�`���x�T�>�����Wr���[B������'��9��	vn�T`��L~]�jl*罦2�Óݴ���=�#�A�4,�8>��/�O��^$�!��������u����?PjJn���I'��uU��w&���#bT��IG�IiGMj!�0P
��H�^`@�B7����K`{]\������u��]�u_m��:S`��V��О����&�FEh6����Ǻ���ᾎ��`�w<Ah	tCѮ��&<�s7�����ٶvX�����z��D�e�#W6�I�Z٣��*�m��*�M��|���g��0�Yi;B7�0���,�7)%Dv����lS���J���ػ;�l����Ϥ"S6�@���)�M���BK�f8ԝ�?Rj�w�`~�J�P��K�Y�� �]!1����N�qO�:�X�[�	�2�{�V���P��XKa��p��N�
t1�R����3�D��Ĉ0�^H���*aOb$bFӢ$¥��E��(�! ���F���V�b��0B	�&���ᓧ�_�hچ�0}���)�|ִSvF���ZsJ��\Lj��0'�~��
N̂�,������5�#�����)���]��i,X�[cM�l��<0f�c�z
��R�S%X����N��1�h/=�f�_��y*fA��@%�G8�SF���Ge�;T�]<���R�h���qI�� 14c,IA�'�q̂�И�bdOrƘ,���X�q=�Q 8�UF�5����pA���Szw���$h���\��`�7ƙ/j�\O/.�R
"ĐvN�T ���Ǜ��2�!c(��ˮ>�//�.=��!�.�!Bv������q8C,t6r��?&�	 ���Iex:�:�x>G��X�Q;�'y�:�D��r}0�  `v�+�V�ɮ1$%`b3��T�w�=�����zˮcre�I�oHn0�mQR(������� �vD�+��Jq�Ř����6�/{���=�V��l���!6�����~���aB����K���(��_q<D{�+$�q�}Qı�6�kN��ᙲ�b9�#�~�)�&0&;6l����!�4�.�I������+���S��-C��B���AJ��e��c�j�x�6Hn�{���#7t|��liӓ�Fw�
�mn�_O��Ez�WH`-���0Ee�_f��n[՟�j�1
ǪSqC�}���aB�`�a�/'~�N���_})q�Ho5��ۮ@j�6־�f��:�Ac �GE��Y+B��N� ��	Q�8�}ޥ�B8c_���P?�~\�ݽ�^��,	�Q��Bd�'-��*��	h�#����@ŵ��0���x�����Cc1��t$[;��b�wa�J����-����RF����M�^�M�H�;���E����t�} �	r�׷�����@��| g	r�s�9O�K��������ee����?�چ�����I��wd*AƔ�{AlG����^w�����SH܆t*�#O��{ye7��QD��(4ڎޛ��(��Eڡ/6Z s�-L��LSaU����Ci۠��l3[oRiT���Ow��I����X���A�-o�N��N*U2��V���O 3rzS*d/�-A��kXN`?�F����Vv��Ey���.��&?�������z#U&DV�f�֦�q�i��Ovs#�}Mb,<57~�bdd�k2׶ FQW�cE�����;��N�#=BGg�z7�-jd��M��(��ȭ��'h��#����$�v��R��!�/�[)�y��P��Ёm��me�1��̭w&�:/B�y:���؃[;��b-i�V�n��(i�Ky�,7��x)���ͣ�	}��}�SE7�<[���AՄ�IY;	���D}���cB�F�h���n��m��!�q^-�[�Ԅ�+�+V��O"j|�O�z%b�)��C!��J	����m�q����[�K�6wB8o:��NM���?��{�2��>��*���mD�Tę�0c�'�ee7���j�-����d�_�	]=���Q���4b��L�P*������Ibs}^bl��nl���F�a�M���.�|���R��V��G^#:*�3b��=�����N���-�0�.� 1�r���l�>k7*[���E�ޠ���^����� 	��%t�%q��Ȃy�b ����4�KnR�h57�<a�@yڻF��pl5�HaA��� 2!O�Z���&D#Sv���̽��>���M9=��������z����qa�P��v�������@����� TDH��6�ٿg����/�V;N��Y���G�7�٢�A$8�25�o��W_�    �2�      �   �   x�e��
�0���aƪ�}���S[IS��_э
�;�H81@vr�бWY�J���2�]�X��IH3^�!E�B��3]g��oy����wP��g�`I�M�(�ҐFe�g��Z�Bh�ž��f7œ_r���6[72��Дa{�uB��9V�      �      x����n�0����_͌�<�J�.X�i��*o���T �\�������w���q<�~�  mh�\]��|'��r'p'��H�Z����M��Y�ަ���r�&�/T(�X��
�uwLˌg}�}z���Yw8�8C�v3R�u�1t������O]ا��Y�Ȗ�]Ws�a�ۺƯS,������Ⱥz���>6a�r�mܗ�}{LO�R�+M���.�4��o\��*�.{3���|)����x� ��B�{�vØ�icS��r�Fi^\���7���[b�9�u����6�겔OW���8����h?��K�	4��c�W�y�2�BYz�|�̏�^�8 �B�+�p��������̌\�S�"����n �G��+�2�H�����miby�ӓ������F��'_(c�X��*��\��#p0��r�>움�fgM�L+�у�iA�������t{ �����PgC����B|�"�He4�n7��ON��      �   �  x���ۮ�H���^W��LUP�
�DA�$�oer��L���&s��'����#岡~f${�/���2GeN�%?�X��ʲ>&���+:��Yg}�s^�8[�����Q��� d;���.#�o��ە�{��'�-y�0݂�Ђ�'��R'sp�)*�V݃\P�-e�o��\nrD@��t��Q�ޮ�M�A�`���e�K[=��O�G�
vt�_;�|���^ՉT��I�M�'ő�AR�P��	Y���,x���0C�fS��<o낶z2]x�+	�1��D��.�66�"�����Ǯ��#��<<4|�6F~ڇqJ�"�'"�4a �o�t�f��ÔM}_7S8ă79������#Z'e����9�R��[V]�CX��wRRw>М/����[)_�)(Ѽ6��`v�UR����Ξכ>I�g·
egR)�l ŎgI��JY��y�v��;�W爎<?�MN3P�H�vY���C䝃˧�T]a)�|5]W��ZE1�.5A�zn|�������Fn��OF�~g����1��ы��G.$>�q�z5�= ⃊����Q=2B�-��(��2�u�]���Kަ �30�f�,L���b�	 4��X�#��(p]2vu��ד��=.P�l�_m�'O��T�]���m&9
"tt,�-mϱ�-#�p���g���� X�4��ye )ᆔ��8���-7W.L��&��_D!��LY�d}f�J��/���7*�zx�N�*M��U2�8���+1@e`���;����U�.���ɬ��w@juc?F�>�!7�ݜ&�iQ~6�!W�clDN�:�W�Z+�V�_�:�� ���";zRd����ӣq7��`���x���u�{0�O������� �fL/$,;����8��G�lQ��SZ���`3�(,�cHc
zx�F[�Y_�ܲG;>vj���*u�z�n1/iva��#�X���M�+��� ���j     