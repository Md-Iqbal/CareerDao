PGDMP         0                z            CareerDaoDB    13.4    13.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    876522    CareerDaoDB    DATABASE     m   CREATE DATABASE "CareerDaoDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Bangla_Bangladesh.utf8';
    DROP DATABASE "CareerDaoDB";
                postgres    false            �            1259    1179929    appJobAPI_appliedjob    TABLE     �  CREATE TABLE public."appJobAPI_appliedjob" (
    id integer NOT NULL,
    is_active boolean NOT NULL,
    applied_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    job_id integer NOT NULL,
    user_id bigint NOT NULL,
    appointed boolean NOT NULL,
    cv character varying(100) NOT NULL,
    email character varying(30),
    full_name character varying(100)
);
 *   DROP TABLE public."appJobAPI_appliedjob";
       public         heap    postgres    false            �            1259    1516631    appJobAPI_appliedjob_id_seq    SEQUENCE     �   CREATE SEQUENCE public."appJobAPI_appliedjob_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."appJobAPI_appliedjob_id_seq";
       public          postgres    false    220            �           0    0    appJobAPI_appliedjob_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."appJobAPI_appliedjob_id_seq" OWNED BY public."appJobAPI_appliedjob".id;
          public          postgres    false    231            �            1259    1179905    appJobAPI_postedjob    TABLE     L  CREATE TABLE public."appJobAPI_postedjob" (
    id integer NOT NULL,
    company_name_id integer,
    name character varying(100) NOT NULL,
    designation text,
    skills text,
    experience integer,
    vacancy integer,
    job_description text,
    place character varying(100),
    salary numeric(12,2) NOT NULL,
    job_type character varying(10),
    contact_number integer NOT NULL,
    contact_email character varying(30) NOT NULL,
    is_active boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    educational_qualification character varying(25),
    maximum_age integer,
    minimum_age integer,
    document_image1 character varying(100),
    document_image2 character varying(100),
    job_category character varying(100),
    salary2 numeric(12,2) NOT NULL
);
 )   DROP TABLE public."appJobAPI_postedjob";
       public         heap    postgres    false            �            1259    1516698    appJobAPI_postedjob_id_seq    SEQUENCE     �   CREATE SEQUENCE public."appJobAPI_postedjob_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."appJobAPI_postedjob_id_seq";
       public          postgres    false    219            �           0    0    appJobAPI_postedjob_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."appJobAPI_postedjob_id_seq" OWNED BY public."appJobAPI_postedjob".id;
          public          postgres    false    232            �            1259    876598    app_authApi_user    TABLE     �  CREATE TABLE public."app_authApi_user" (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    username character varying(25) NOT NULL,
    email character varying(30) NOT NULL,
    is_company boolean NOT NULL,
    is_project_manager boolean NOT NULL,
    is_freelancer boolean NOT NULL,
    last_login timestamp with time zone,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_admin boolean NOT NULL
);
 &   DROP TABLE public."app_authApi_user";
       public         heap    postgres    false            �            1259    1516558    app_authApi_user_groups    TABLE     �   CREATE TABLE public."app_authApi_user_groups" (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 -   DROP TABLE public."app_authApi_user_groups";
       public         heap    postgres    false            �            1259    1516556    app_authApi_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public."app_authApi_user_groups_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."app_authApi_user_groups_id_seq";
       public          postgres    false    228            �           0    0    app_authApi_user_groups_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."app_authApi_user_groups_id_seq" OWNED BY public."app_authApi_user_groups".id;
          public          postgres    false    227            �            1259    876596    app_authApi_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."app_authApi_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."app_authApi_user_id_seq";
       public          postgres    false    211            �           0    0    app_authApi_user_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."app_authApi_user_id_seq" OWNED BY public."app_authApi_user".id;
          public          postgres    false    210            �            1259    1516570 !   app_authApi_user_user_permissions    TABLE     �   CREATE TABLE public."app_authApi_user_user_permissions" (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 7   DROP TABLE public."app_authApi_user_user_permissions";
       public         heap    postgres    false            �            1259    1516568 (   app_authApi_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."app_authApi_user_user_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."app_authApi_user_user_permissions_id_seq";
       public          postgres    false    230            �           0    0 (   app_authApi_user_user_permissions_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."app_authApi_user_user_permissions_id_seq" OWNED BY public."app_authApi_user_user_permissions".id;
          public          postgres    false    229            �            1259    1516474    app_homeApi_company    TABLE     S  CREATE TABLE public."app_homeApi_company" (
    id integer NOT NULL,
    username character varying(25) NOT NULL,
    email character varying(30) NOT NULL,
    logo character varying(100) NOT NULL,
    image character varying(100) NOT NULL,
    company_name character varying(25),
    company_description text,
    company_address character varying(25),
    company_phone character varying(25),
    company_website character varying(25),
    country character varying(50),
    user_id bigint,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 )   DROP TABLE public."app_homeApi_company";
       public         heap    postgres    false            �            1259    1516472    app_homeApi_company_id_seq    SEQUENCE     �   CREATE SEQUENCE public."app_homeApi_company_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."app_homeApi_company_id_seq";
       public          postgres    false    222            �           0    0    app_homeApi_company_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."app_homeApi_company_id_seq" OWNED BY public."app_homeApi_company".id;
          public          postgres    false    221            �            1259    1516505    app_homeApi_freelancer    TABLE     �  CREATE TABLE public."app_homeApi_freelancer" (
    id integer NOT NULL,
    username character varying(25) NOT NULL,
    email character varying(30) NOT NULL,
    image character varying(100) NOT NULL,
    first_name character varying(25),
    last_name character varying(25),
    phone character varying(25),
    address character varying(25),
    occupation character varying(25),
    document_name character varying(25),
    document_number character varying(25),
    document_image character varying(100),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    company_id integer,
    user_id bigint
);
 ,   DROP TABLE public."app_homeApi_freelancer";
       public         heap    postgres    false            �            1259    1516503    app_homeApi_freelancer_id_seq    SEQUENCE     �   CREATE SEQUENCE public."app_homeApi_freelancer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."app_homeApi_freelancer_id_seq";
       public          postgres    false    226            �           0    0    app_homeApi_freelancer_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."app_homeApi_freelancer_id_seq" OWNED BY public."app_homeApi_freelancer".id;
          public          postgres    false    225            �            1259    1516491    app_homeApi_projectmanager    TABLE     �  CREATE TABLE public."app_homeApi_projectmanager" (
    id integer NOT NULL,
    username character varying(25) NOT NULL,
    email character varying(30) NOT NULL,
    image character varying(100) NOT NULL,
    first_name character varying(25),
    last_name character varying(25),
    phone character varying(25),
    address character varying(25),
    occupation character varying(25),
    document_name character varying(25),
    document_number character varying(25),
    document_image character varying(100),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    company_id integer,
    user_id bigint
);
 0   DROP TABLE public."app_homeApi_projectmanager";
       public         heap    postgres    false            �            1259    1516489 !   app_homeApi_projectmanager_id_seq    SEQUENCE     �   CREATE SEQUENCE public."app_homeApi_projectmanager_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."app_homeApi_projectmanager_id_seq";
       public          postgres    false    224            �           0    0 !   app_homeApi_projectmanager_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."app_homeApi_projectmanager_id_seq" OWNED BY public."app_homeApi_projectmanager".id;
          public          postgres    false    223            �            1259    876554 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    876552    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    876564    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    876562    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    876546    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    876544    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    876656    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    876654    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    212            �            1259    876536    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    876534    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    876525    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    876523    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            �            1259    876678    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    876690     token_blacklist_blacklistedtoken    TABLE     �   CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);
 4   DROP TABLE public.token_blacklist_blacklistedtoken;
       public         heap    postgres    false            �            1259    876738 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.token_blacklist_blacklistedtoken_id_seq;
       public          postgres    false    215            �           0    0 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;
          public          postgres    false    217            �            1259    876698     token_blacklist_outstandingtoken    TABLE       CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id bigint,
    jti character varying(255) NOT NULL
);
 4   DROP TABLE public.token_blacklist_outstandingtoken;
       public         heap    postgres    false            �            1259    876754 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.token_blacklist_outstandingtoken_id_seq;
       public          postgres    false    216            �           0    0 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;
          public          postgres    false    218            �           2604    1516633    appJobAPI_appliedjob id    DEFAULT     �   ALTER TABLE ONLY public."appJobAPI_appliedjob" ALTER COLUMN id SET DEFAULT nextval('public."appJobAPI_appliedjob_id_seq"'::regclass);
 H   ALTER TABLE public."appJobAPI_appliedjob" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    220            �           2604    1516700    appJobAPI_postedjob id    DEFAULT     �   ALTER TABLE ONLY public."appJobAPI_postedjob" ALTER COLUMN id SET DEFAULT nextval('public."appJobAPI_postedjob_id_seq"'::regclass);
 G   ALTER TABLE public."appJobAPI_postedjob" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    219            �           2604    876601    app_authApi_user id    DEFAULT     ~   ALTER TABLE ONLY public."app_authApi_user" ALTER COLUMN id SET DEFAULT nextval('public."app_authApi_user_id_seq"'::regclass);
 D   ALTER TABLE public."app_authApi_user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �           2604    1516561    app_authApi_user_groups id    DEFAULT     �   ALTER TABLE ONLY public."app_authApi_user_groups" ALTER COLUMN id SET DEFAULT nextval('public."app_authApi_user_groups_id_seq"'::regclass);
 K   ALTER TABLE public."app_authApi_user_groups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    1516573 $   app_authApi_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public."app_authApi_user_user_permissions" ALTER COLUMN id SET DEFAULT nextval('public."app_authApi_user_user_permissions_id_seq"'::regclass);
 U   ALTER TABLE public."app_authApi_user_user_permissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    1516477    app_homeApi_company id    DEFAULT     �   ALTER TABLE ONLY public."app_homeApi_company" ALTER COLUMN id SET DEFAULT nextval('public."app_homeApi_company_id_seq"'::regclass);
 G   ALTER TABLE public."app_homeApi_company" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    1516508    app_homeApi_freelancer id    DEFAULT     �   ALTER TABLE ONLY public."app_homeApi_freelancer" ALTER COLUMN id SET DEFAULT nextval('public."app_homeApi_freelancer_id_seq"'::regclass);
 J   ALTER TABLE public."app_homeApi_freelancer" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    1516494    app_homeApi_projectmanager id    DEFAULT     �   ALTER TABLE ONLY public."app_homeApi_projectmanager" ALTER COLUMN id SET DEFAULT nextval('public."app_homeApi_projectmanager_id_seq"'::regclass);
 N   ALTER TABLE public."app_homeApi_projectmanager" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    876557    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �           2604    876567    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �           2604    876549    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �           2604    876659    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �           2604    876539    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �           2604    876528    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �           2604    876740 #   token_blacklist_blacklistedtoken id    DEFAULT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);
 R   ALTER TABLE public.token_blacklist_blacklistedtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    215            �           2604    876756 #   token_blacklist_outstandingtoken id    DEFAULT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);
 R   ALTER TABLE public.token_blacklist_outstandingtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    216            �          0    1179929    appJobAPI_appliedjob 
   TABLE DATA           �   COPY public."appJobAPI_appliedjob" (id, is_active, applied_at, updated_at, job_id, user_id, appointed, cv, email, full_name) FROM stdin;
    public          postgres    false    220   �      �          0    1179905    appJobAPI_postedjob 
   TABLE DATA           N  COPY public."appJobAPI_postedjob" (id, company_name_id, name, designation, skills, experience, vacancy, job_description, place, salary, job_type, contact_number, contact_email, is_active, created_at, updated_at, educational_qualification, maximum_age, minimum_age, document_image1, document_image2, job_category, salary2) FROM stdin;
    public          postgres    false    219   �      �          0    876598    app_authApi_user 
   TABLE DATA           �   COPY public."app_authApi_user" (id, password, username, email, is_company, is_project_manager, is_freelancer, last_login, created_at, updated_at, is_active, is_staff, is_superuser, date_joined, first_name, last_name, is_admin) FROM stdin;
    public          postgres    false    211   /      �          0    1516558    app_authApi_user_groups 
   TABLE DATA           J   COPY public."app_authApi_user_groups" (id, user_id, group_id) FROM stdin;
    public          postgres    false    228   �      �          0    1516570 !   app_authApi_user_user_permissions 
   TABLE DATA           Y   COPY public."app_authApi_user_user_permissions" (id, user_id, permission_id) FROM stdin;
    public          postgres    false    230   �      �          0    1516474    app_homeApi_company 
   TABLE DATA           �   COPY public."app_homeApi_company" (id, username, email, logo, image, company_name, company_description, company_address, company_phone, company_website, country, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    222         �          0    1516505    app_homeApi_freelancer 
   TABLE DATA           �   COPY public."app_homeApi_freelancer" (id, username, email, image, first_name, last_name, phone, address, occupation, document_name, document_number, document_image, created_at, updated_at, company_id, user_id) FROM stdin;
    public          postgres    false    226   �      �          0    1516491    app_homeApi_projectmanager 
   TABLE DATA           �   COPY public."app_homeApi_projectmanager" (id, username, email, image, first_name, last_name, phone, address, occupation, document_name, document_number, document_image, created_at, updated_at, company_id, user_id) FROM stdin;
    public          postgres    false    224          �          0    876554 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   =      �          0    876564    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   Z      �          0    876546    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   w      �          0    876656    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    213   �      �          0    876536    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   �      �          0    876525    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   U      �          0    876678    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    214   x       �          0    876690     token_blacklist_blacklistedtoken 
   TABLE DATA           X   COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
    public          postgres    false    215   �%      �          0    876698     token_blacklist_outstandingtoken 
   TABLE DATA           k   COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
    public          postgres    false    216   �%      �           0    0    appJobAPI_appliedjob_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."appJobAPI_appliedjob_id_seq"', 1, false);
          public          postgres    false    231            �           0    0    appJobAPI_postedjob_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."appJobAPI_postedjob_id_seq"', 3, true);
          public          postgres    false    232            �           0    0    app_authApi_user_groups_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."app_authApi_user_groups_id_seq"', 1, false);
          public          postgres    false    227            �           0    0    app_authApi_user_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."app_authApi_user_id_seq"', 70, true);
          public          postgres    false    210            �           0    0 (   app_authApi_user_user_permissions_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."app_authApi_user_user_permissions_id_seq"', 1, false);
          public          postgres    false    229            �           0    0    app_homeApi_company_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."app_homeApi_company_id_seq"', 2, true);
          public          postgres    false    221            �           0    0    app_homeApi_freelancer_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."app_homeApi_freelancer_id_seq"', 2, true);
          public          postgres    false    225            �           0    0 !   app_homeApi_projectmanager_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."app_homeApi_projectmanager_id_seq"', 1, true);
          public          postgres    false    223            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);
          public          postgres    false    204            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);
          public          postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);
          public          postgres    false    202            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 49, true);
          public          postgres    false    200            �           0    0 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 1, false);
          public          postgres    false    217            �           0    0 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 51, true);
          public          postgres    false    218            �           2606    1516623 .   appJobAPI_appliedjob appJobAPI_appliedjob_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."appJobAPI_appliedjob"
    ADD CONSTRAINT "appJobAPI_appliedjob_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."appJobAPI_appliedjob" DROP CONSTRAINT "appJobAPI_appliedjob_pkey";
       public            postgres    false    220            �           2606    1516679 ,   appJobAPI_postedjob appJobAPI_postedjob_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."appJobAPI_postedjob"
    ADD CONSTRAINT "appJobAPI_postedjob_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."appJobAPI_postedjob" DROP CONSTRAINT "appJobAPI_postedjob_pkey";
       public            postgres    false    219            �           2606    876607 +   app_authApi_user app_authApi_user_email_key 
   CONSTRAINT     k   ALTER TABLE ONLY public."app_authApi_user"
    ADD CONSTRAINT "app_authApi_user_email_key" UNIQUE (email);
 Y   ALTER TABLE ONLY public."app_authApi_user" DROP CONSTRAINT "app_authApi_user_email_key";
       public            postgres    false    211            �           2606    1516563 4   app_authApi_user_groups app_authApi_user_groups_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."app_authApi_user_groups"
    ADD CONSTRAINT "app_authApi_user_groups_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."app_authApi_user_groups" DROP CONSTRAINT "app_authApi_user_groups_pkey";
       public            postgres    false    228            �           2606    1516577 N   app_authApi_user_groups app_authApi_user_groups_user_id_group_id_129589bf_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."app_authApi_user_groups"
    ADD CONSTRAINT "app_authApi_user_groups_user_id_group_id_129589bf_uniq" UNIQUE (user_id, group_id);
 |   ALTER TABLE ONLY public."app_authApi_user_groups" DROP CONSTRAINT "app_authApi_user_groups_user_id_group_id_129589bf_uniq";
       public            postgres    false    228    228            �           2606    876603 &   app_authApi_user app_authApi_user_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."app_authApi_user"
    ADD CONSTRAINT "app_authApi_user_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."app_authApi_user" DROP CONSTRAINT "app_authApi_user_pkey";
       public            postgres    false    211            �           2606    1516591 ^   app_authApi_user_user_permissions app_authApi_user_user_pe_user_id_permission_id_1ed1e1bc_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."app_authApi_user_user_permissions"
    ADD CONSTRAINT "app_authApi_user_user_pe_user_id_permission_id_1ed1e1bc_uniq" UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public."app_authApi_user_user_permissions" DROP CONSTRAINT "app_authApi_user_user_pe_user_id_permission_id_1ed1e1bc_uniq";
       public            postgres    false    230    230            �           2606    1516575 H   app_authApi_user_user_permissions app_authApi_user_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."app_authApi_user_user_permissions"
    ADD CONSTRAINT "app_authApi_user_user_permissions_pkey" PRIMARY KEY (id);
 v   ALTER TABLE ONLY public."app_authApi_user_user_permissions" DROP CONSTRAINT "app_authApi_user_user_permissions_pkey";
       public            postgres    false    230            �           2606    876605 .   app_authApi_user app_authApi_user_username_key 
   CONSTRAINT     q   ALTER TABLE ONLY public."app_authApi_user"
    ADD CONSTRAINT "app_authApi_user_username_key" UNIQUE (username);
 \   ALTER TABLE ONLY public."app_authApi_user" DROP CONSTRAINT "app_authApi_user_username_key";
       public            postgres    false    211            �           2606    1516486 1   app_homeApi_company app_homeApi_company_email_key 
   CONSTRAINT     q   ALTER TABLE ONLY public."app_homeApi_company"
    ADD CONSTRAINT "app_homeApi_company_email_key" UNIQUE (email);
 _   ALTER TABLE ONLY public."app_homeApi_company" DROP CONSTRAINT "app_homeApi_company_email_key";
       public            postgres    false    222            �           2606    1516482 ,   app_homeApi_company app_homeApi_company_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."app_homeApi_company"
    ADD CONSTRAINT "app_homeApi_company_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."app_homeApi_company" DROP CONSTRAINT "app_homeApi_company_pkey";
       public            postgres    false    222            �           2606    1516488 3   app_homeApi_company app_homeApi_company_user_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public."app_homeApi_company"
    ADD CONSTRAINT "app_homeApi_company_user_id_key" UNIQUE (user_id);
 a   ALTER TABLE ONLY public."app_homeApi_company" DROP CONSTRAINT "app_homeApi_company_user_id_key";
       public            postgres    false    222            �           2606    1516484 4   app_homeApi_company app_homeApi_company_username_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."app_homeApi_company"
    ADD CONSTRAINT "app_homeApi_company_username_key" UNIQUE (username);
 b   ALTER TABLE ONLY public."app_homeApi_company" DROP CONSTRAINT "app_homeApi_company_username_key";
       public            postgres    false    222            �           2606    1516514 7   app_homeApi_freelancer app_homeApi_freelancer_email_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."app_homeApi_freelancer"
    ADD CONSTRAINT "app_homeApi_freelancer_email_key" UNIQUE (email);
 e   ALTER TABLE ONLY public."app_homeApi_freelancer" DROP CONSTRAINT "app_homeApi_freelancer_email_key";
       public            postgres    false    226            �           2606    1516510 2   app_homeApi_freelancer app_homeApi_freelancer_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."app_homeApi_freelancer"
    ADD CONSTRAINT "app_homeApi_freelancer_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."app_homeApi_freelancer" DROP CONSTRAINT "app_homeApi_freelancer_pkey";
       public            postgres    false    226            �           2606    1516516 9   app_homeApi_freelancer app_homeApi_freelancer_user_id_key 
   CONSTRAINT     {   ALTER TABLE ONLY public."app_homeApi_freelancer"
    ADD CONSTRAINT "app_homeApi_freelancer_user_id_key" UNIQUE (user_id);
 g   ALTER TABLE ONLY public."app_homeApi_freelancer" DROP CONSTRAINT "app_homeApi_freelancer_user_id_key";
       public            postgres    false    226            �           2606    1516512 :   app_homeApi_freelancer app_homeApi_freelancer_username_key 
   CONSTRAINT     }   ALTER TABLE ONLY public."app_homeApi_freelancer"
    ADD CONSTRAINT "app_homeApi_freelancer_username_key" UNIQUE (username);
 h   ALTER TABLE ONLY public."app_homeApi_freelancer" DROP CONSTRAINT "app_homeApi_freelancer_username_key";
       public            postgres    false    226            �           2606    1516500 ?   app_homeApi_projectmanager app_homeApi_projectmanager_email_key 
   CONSTRAINT        ALTER TABLE ONLY public."app_homeApi_projectmanager"
    ADD CONSTRAINT "app_homeApi_projectmanager_email_key" UNIQUE (email);
 m   ALTER TABLE ONLY public."app_homeApi_projectmanager" DROP CONSTRAINT "app_homeApi_projectmanager_email_key";
       public            postgres    false    224            �           2606    1516496 :   app_homeApi_projectmanager app_homeApi_projectmanager_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."app_homeApi_projectmanager"
    ADD CONSTRAINT "app_homeApi_projectmanager_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."app_homeApi_projectmanager" DROP CONSTRAINT "app_homeApi_projectmanager_pkey";
       public            postgres    false    224            �           2606    1516502 A   app_homeApi_projectmanager app_homeApi_projectmanager_user_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_projectmanager"
    ADD CONSTRAINT "app_homeApi_projectmanager_user_id_key" UNIQUE (user_id);
 o   ALTER TABLE ONLY public."app_homeApi_projectmanager" DROP CONSTRAINT "app_homeApi_projectmanager_user_id_key";
       public            postgres    false    224            �           2606    1516498 B   app_homeApi_projectmanager app_homeApi_projectmanager_username_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_projectmanager"
    ADD CONSTRAINT "app_homeApi_projectmanager_username_key" UNIQUE (username);
 p   ALTER TABLE ONLY public."app_homeApi_projectmanager" DROP CONSTRAINT "app_homeApi_projectmanager_username_key";
       public            postgres    false    224            �           2606    876594    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            �           2606    876580 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            �           2606    876569 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            �           2606    876559    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            �           2606    876571 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            �           2606    876551 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            �           2606    876665 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    213            �           2606    876543 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            �           2606    876541 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            �           2606    876533 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            �           2606    876685 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    214            �           2606    876732 F   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken DROP CONSTRAINT token_blacklist_blacklistedtoken_pkey;
       public            postgres    false    215            �           2606    876758 N   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);
 x   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken DROP CONSTRAINT token_blacklist_blacklistedtoken_token_id_key;
       public            postgres    false    215            �           2606    876723 W   token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);
 �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken DROP CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq;
       public            postgres    false    216            �           2606    876743 F   token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.token_blacklist_outstandingtoken DROP CONSTRAINT token_blacklist_outstandingtoken_pkey;
       public            postgres    false    216            �           1259    1516701 $   appJobAPI_appliedjob_job_id_f31442ef    INDEX     k   CREATE INDEX "appJobAPI_appliedjob_job_id_f31442ef" ON public."appJobAPI_appliedjob" USING btree (job_id);
 :   DROP INDEX public."appJobAPI_appliedjob_job_id_f31442ef";
       public            postgres    false    220            �           1259    1179960 %   appJobAPI_appliedjob_user_id_22c7f72d    INDEX     m   CREATE INDEX "appJobAPI_appliedjob_user_id_22c7f72d" ON public."appJobAPI_appliedjob" USING btree (user_id);
 ;   DROP INDEX public."appJobAPI_appliedjob_user_id_22c7f72d";
       public            postgres    false    220            �           1259    1516650 ,   appJobAPI_postedjob_company_name_id_38e39804    INDEX     {   CREATE INDEX "appJobAPI_postedjob_company_name_id_38e39804" ON public."appJobAPI_postedjob" USING btree (company_name_id);
 B   DROP INDEX public."appJobAPI_postedjob_company_name_id_38e39804";
       public            postgres    false    219            �           1259    876625 $   app_authApi_user_email_20e7d133_like    INDEX     z   CREATE INDEX "app_authApi_user_email_20e7d133_like" ON public."app_authApi_user" USING btree (email varchar_pattern_ops);
 :   DROP INDEX public."app_authApi_user_email_20e7d133_like";
       public            postgres    false    211            �           1259    1516589 )   app_authApi_user_groups_group_id_f9e50908    INDEX     u   CREATE INDEX "app_authApi_user_groups_group_id_f9e50908" ON public."app_authApi_user_groups" USING btree (group_id);
 ?   DROP INDEX public."app_authApi_user_groups_group_id_f9e50908";
       public            postgres    false    228            �           1259    1516588 (   app_authApi_user_groups_user_id_fc3e94da    INDEX     s   CREATE INDEX "app_authApi_user_groups_user_id_fc3e94da" ON public."app_authApi_user_groups" USING btree (user_id);
 >   DROP INDEX public."app_authApi_user_groups_user_id_fc3e94da";
       public            postgres    false    228            �           1259    1516603 8   app_authApi_user_user_permissions_permission_id_09c7d3b2    INDEX     �   CREATE INDEX "app_authApi_user_user_permissions_permission_id_09c7d3b2" ON public."app_authApi_user_user_permissions" USING btree (permission_id);
 N   DROP INDEX public."app_authApi_user_user_permissions_permission_id_09c7d3b2";
       public            postgres    false    230            �           1259    1516602 2   app_authApi_user_user_permissions_user_id_387a1c40    INDEX     �   CREATE INDEX "app_authApi_user_user_permissions_user_id_387a1c40" ON public."app_authApi_user_user_permissions" USING btree (user_id);
 H   DROP INDEX public."app_authApi_user_user_permissions_user_id_387a1c40";
       public            postgres    false    230            �           1259    876624 '   app_authApi_user_username_697e552f_like    INDEX     �   CREATE INDEX "app_authApi_user_username_697e552f_like" ON public."app_authApi_user" USING btree (username varchar_pattern_ops);
 =   DROP INDEX public."app_authApi_user_username_697e552f_like";
       public            postgres    false    211            �           1259    1516523 '   app_homeApi_company_email_0b5540c4_like    INDEX     �   CREATE INDEX "app_homeApi_company_email_0b5540c4_like" ON public."app_homeApi_company" USING btree (email varchar_pattern_ops);
 =   DROP INDEX public."app_homeApi_company_email_0b5540c4_like";
       public            postgres    false    222            �           1259    1516522 *   app_homeApi_company_username_ede404f2_like    INDEX     �   CREATE INDEX "app_homeApi_company_username_ede404f2_like" ON public."app_homeApi_company" USING btree (username varchar_pattern_ops);
 @   DROP INDEX public."app_homeApi_company_username_ede404f2_like";
       public            postgres    false    222            �           1259    1516549 *   app_homeApi_freelancer_company_id_0cbc3a8a    INDEX     w   CREATE INDEX "app_homeApi_freelancer_company_id_0cbc3a8a" ON public."app_homeApi_freelancer" USING btree (company_id);
 @   DROP INDEX public."app_homeApi_freelancer_company_id_0cbc3a8a";
       public            postgres    false    226            �           1259    1516548 *   app_homeApi_freelancer_email_641136e7_like    INDEX     �   CREATE INDEX "app_homeApi_freelancer_email_641136e7_like" ON public."app_homeApi_freelancer" USING btree (email varchar_pattern_ops);
 @   DROP INDEX public."app_homeApi_freelancer_email_641136e7_like";
       public            postgres    false    226            �           1259    1516547 -   app_homeApi_freelancer_username_ee345782_like    INDEX     �   CREATE INDEX "app_homeApi_freelancer_username_ee345782_like" ON public."app_homeApi_freelancer" USING btree (username varchar_pattern_ops);
 C   DROP INDEX public."app_homeApi_freelancer_username_ee345782_like";
       public            postgres    false    226            �           1259    1516536 .   app_homeApi_projectmanager_company_id_d659f439    INDEX        CREATE INDEX "app_homeApi_projectmanager_company_id_d659f439" ON public."app_homeApi_projectmanager" USING btree (company_id);
 D   DROP INDEX public."app_homeApi_projectmanager_company_id_d659f439";
       public            postgres    false    224            �           1259    1516535 .   app_homeApi_projectmanager_email_a43948bc_like    INDEX     �   CREATE INDEX "app_homeApi_projectmanager_email_a43948bc_like" ON public."app_homeApi_projectmanager" USING btree (email varchar_pattern_ops);
 D   DROP INDEX public."app_homeApi_projectmanager_email_a43948bc_like";
       public            postgres    false    224            �           1259    1516534 1   app_homeApi_projectmanager_username_0f851309_like    INDEX     �   CREATE INDEX "app_homeApi_projectmanager_username_0f851309_like" ON public."app_homeApi_projectmanager" USING btree (username varchar_pattern_ops);
 G   DROP INDEX public."app_homeApi_projectmanager_username_0f851309_like";
       public            postgres    false    224            �           1259    876595    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            �           1259    876591 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            �           1259    876592 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            �           1259    876577 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            �           1259    876676 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    213            �           1259    876677 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    213            �           1259    876687 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    214            �           1259    876686 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    214            �           1259    876724 6   token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like    INDEX     �   CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);
 J   DROP INDEX public.token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like;
       public            postgres    false    216            �           1259    876721 1   token_blacklist_outstandingtoken_user_id_83bc629a    INDEX     �   CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);
 E   DROP INDEX public.token_blacklist_outstandingtoken_user_id_83bc629a;
       public            postgres    false    216                       2606    1516709 <   appJobAPI_appliedjob appJobAPI_appliedjob_job_id_f31442ef_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."appJobAPI_appliedjob"
    ADD CONSTRAINT "appJobAPI_appliedjob_job_id_f31442ef_fk" FOREIGN KEY (job_id) REFERENCES public."appJobAPI_postedjob"(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public."appJobAPI_appliedjob" DROP CONSTRAINT "appJobAPI_appliedjob_job_id_f31442ef_fk";
       public          postgres    false    219    220    3018                       2606    1179950 Q   appJobAPI_appliedjob appJobAPI_appliedjob_user_id_22c7f72d_fk_app_authApi_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."appJobAPI_appliedjob"
    ADD CONSTRAINT "appJobAPI_appliedjob_user_id_22c7f72d_fk_app_authApi_user_id" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."appJobAPI_appliedjob" DROP CONSTRAINT "appJobAPI_appliedjob_user_id_22c7f72d_fk_app_authApi_user_id";
       public          postgres    false    2994    220    211                       2606    1516651 M   appJobAPI_postedjob appJobAPI_postedjob_company_name_id_38e39804_fk_app_homeA    FK CONSTRAINT     �   ALTER TABLE ONLY public."appJobAPI_postedjob"
    ADD CONSTRAINT "appJobAPI_postedjob_company_name_id_38e39804_fk_app_homeA" FOREIGN KEY (company_name_id) REFERENCES public."app_homeApi_company"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."appJobAPI_postedjob" DROP CONSTRAINT "appJobAPI_postedjob_company_name_id_38e39804_fk_app_homeA";
       public          postgres    false    222    219    3027                       2606    1516583 R   app_authApi_user_groups app_authApi_user_groups_group_id_f9e50908_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_authApi_user_groups"
    ADD CONSTRAINT "app_authApi_user_groups_group_id_f9e50908_fk_auth_group_id" FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."app_authApi_user_groups" DROP CONSTRAINT "app_authApi_user_groups_group_id_f9e50908_fk_auth_group_id";
       public          postgres    false    207    2983    228            
           2606    1516578 W   app_authApi_user_groups app_authApi_user_groups_user_id_fc3e94da_fk_app_authApi_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_authApi_user_groups"
    ADD CONSTRAINT "app_authApi_user_groups_user_id_fc3e94da_fk_app_authApi_user_id" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."app_authApi_user_groups" DROP CONSTRAINT "app_authApi_user_groups_user_id_fc3e94da_fk_app_authApi_user_id";
       public          postgres    false    228    211    2994                       2606    1516597 Z   app_authApi_user_user_permissions app_authApi_user_use_permission_id_09c7d3b2_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_authApi_user_user_permissions"
    ADD CONSTRAINT "app_authApi_user_use_permission_id_09c7d3b2_fk_auth_perm" FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."app_authApi_user_user_permissions" DROP CONSTRAINT "app_authApi_user_use_permission_id_09c7d3b2_fk_auth_perm";
       public          postgres    false    205    230    2978                       2606    1516592 T   app_authApi_user_user_permissions app_authApi_user_use_user_id_387a1c40_fk_app_authA    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_authApi_user_user_permissions"
    ADD CONSTRAINT "app_authApi_user_use_user_id_387a1c40_fk_app_authA" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."app_authApi_user_user_permissions" DROP CONSTRAINT "app_authApi_user_use_user_id_387a1c40_fk_app_authA";
       public          postgres    false    2994    211    230                       2606    1516517 O   app_homeApi_company app_homeApi_company_user_id_92305f27_fk_app_authApi_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_company"
    ADD CONSTRAINT "app_homeApi_company_user_id_92305f27_fk_app_authApi_user_id" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."app_homeApi_company" DROP CONSTRAINT "app_homeApi_company_user_id_92305f27_fk_app_authApi_user_id";
       public          postgres    false    2994    222    211                       2606    1516537 L   app_homeApi_freelancer app_homeApi_freelanc_company_id_0cbc3a8a_fk_app_homeA    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_freelancer"
    ADD CONSTRAINT "app_homeApi_freelanc_company_id_0cbc3a8a_fk_app_homeA" FOREIGN KEY (company_id) REFERENCES public."app_homeApi_company"(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."app_homeApi_freelancer" DROP CONSTRAINT "app_homeApi_freelanc_company_id_0cbc3a8a_fk_app_homeA";
       public          postgres    false    3027    222    226            	           2606    1516542 U   app_homeApi_freelancer app_homeApi_freelancer_user_id_965fa76c_fk_app_authApi_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_freelancer"
    ADD CONSTRAINT "app_homeApi_freelancer_user_id_965fa76c_fk_app_authApi_user_id" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."app_homeApi_freelancer" DROP CONSTRAINT "app_homeApi_freelancer_user_id_965fa76c_fk_app_authApi_user_id";
       public          postgres    false    211    226    2994                       2606    1516524 P   app_homeApi_projectmanager app_homeApi_projectm_company_id_d659f439_fk_app_homeA    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_projectmanager"
    ADD CONSTRAINT "app_homeApi_projectm_company_id_d659f439_fk_app_homeA" FOREIGN KEY (company_id) REFERENCES public."app_homeApi_company"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."app_homeApi_projectmanager" DROP CONSTRAINT "app_homeApi_projectm_company_id_d659f439_fk_app_homeA";
       public          postgres    false    224    222    3027                       2606    1516529 M   app_homeApi_projectmanager app_homeApi_projectm_user_id_62f8ce03_fk_app_authA    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_projectmanager"
    ADD CONSTRAINT "app_homeApi_projectm_user_id_62f8ce03_fk_app_authA" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."app_homeApi_projectmanager" DROP CONSTRAINT "app_homeApi_projectm_user_id_62f8ce03_fk_app_authA";
       public          postgres    false    2994    224    211            �           2606    876586 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2978    209    205            �           2606    876581 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2983    207    209            �           2606    876572 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    203    2973            �           2606    876666 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2973    213    203            �           2606    876671 I   django_admin_log django_admin_log_user_id_c564eba6_fk_app_authApi_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_app_authApi_user_id" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT "django_admin_log_user_id_c564eba6_fk_app_authApi_user_id";
       public          postgres    false    211    2994    213                        2606    876764 V   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken DROP CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk;
       public          postgres    false    216    215    3014                       2606    876725 S   token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_app_authA    FK CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT "token_blacklist_outs_user_id_83bc629a_fk_app_authA" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.token_blacklist_outstandingtoken DROP CONSTRAINT "token_blacklist_outs_user_id_83bc629a_fk_app_authA";
       public          postgres    false    216    211    2994            �      x������ � �      �   }  x���IOD!�ϝ_��'a}����%��KG�yL&������%I����_%(�%��0��|����9����%ra��y�G�Lr��0_�>�#�]�d<K��T��Xr��S�'�)��(��(R��B�������=(i:���t�K�)��������R��KÔ����Z��� f*�ށ�,<\�I�|�h�ݾ0	 "���v4���axt�:.%Г9��C��@3M�e��^��z
�����z�Z���L�>�'9��z����2�G5��reӫ/�sT�Qt�����D/��#C=[�^M�s��W�+u�~��bϞԞ=�Ҕs]na���f�@BM�a�2J��U7
��������V��,���/�W�=��      �   �  x���[o�@��ͯȃߢ8�W�ZB�:$���Re��Y��&q���&q�i�ᬎ�;c�VY���ǌ�����l�V�u"�D�i�C�&D/��%�z4l�]�ΣIe��.�����-�۠oji����Z�6i�g'�h��(
��Bi�
�W��� j��0R�K�*���B`ab� 1c�RPB�Q=��tд��iw�~yU������C�p�ҧ������s���m���b=�o�v?�</Ee���6���P���>8�y|N��E�ń!%A&=gC�c.��L���ͩ���2��䲛�J��c����~���<��;G����@f�,�k��k��w�G���5�|�v��7�g�N�Z�~[��<XѪ~�o���E�a?	��m�E��t�`��V��sĻ/��������z� ����      �      x������ � �      �      x������ � �      �   �   x�E�M
� ��z
�E�|�ĺ�	z�ll5"M4�d��7�������Y�R��p}���)E�j)S��s��ꗏ-7*����4�u\��~��=!��T���R3Do�k�j���IC��J	�������0�      �   `   x�3��NMK�ȇR�fFI��z����������)@�Ҝ���t�?,�����H��T��D��������R������\����,P��%W� Aj#
      �      x������ � �      �      x������ � �      �      x������ � �      �   %  x�m�[��0E��*XA4���m�y��0Ct��}�|qUMq�tLs�,�i}j�&��G��<~'Y�\�Z������8E�����ܬ�0b�$�o��)l0TE����v���'9���\��a'ث�S,{cEE������1��!)H�~��M�m��$�N 9�l Y�v���˳K���%%�`�NLVJ�+�W�m�CQ�����k��\x�	��d7)�<#v���Ao��7Vc��"�E����_];ͮI�����BnbNc��j�Š{L���%q�cR��,G�:��M�k�f��?����խ�NwL���%q�cR��,G�;����ɍɍ��4�� ��; �� � �?�&�p��7��?|��=l),צP�Sඥ�U�S춥��Sd�R�q��0t-�e?���Z�c�*qվ[����;��%�m�=:�Y_/O>_&��R5P��j���+i�4͒�$+�������,���KS^��Pܻ�z�F.�[p7�k#�=�[1������i�}�g�)�15���If{Yw1ՠ�����b�W'��
���c�v��      �   �  x���=o�0�g�WZ����!M��vJ3�c���`ɭ� ���ܠ��L�{�!�^F�<P��0�d�%���B%���nm���Ԧ���%@���2�Ɩq�ů�6�����n;���k?��5�����D�
�;b*��vGN�~��?����=�i��{o� � RD>DJjӘ�h	⢂�G�dc7~pLSȫ����r���b�Wd0��:��eu� IkkWZ�^z} H����t�`�P�a\�+�A@R���\d�z�5v\:0z�IeJ_�C�ȼl��_��]A ����~o��iE���~wfq��\e�&l
������y�}<�%C�H�8�G��/��X��|��<�cZ�t�?Y>���f��t�Td�Fי�f¾�6L��)��n1���3�3���fpė��=DA�f��!2��~����)|z(�	 Ք�����S��j��t1,      �   �   x�e��n�0Eg�c�(i�3�S?�@@ˬ�D"	������H��������,^'��~�ZRkIwW2T!���ɸ����k��
|�˱�/95�?��j�󿈎ޜ�O2\#/@f�剃%W|]лv��70]���a���Y���úp����We�$q�	�;'j1�	��[�3G/$4̥�D�B�m�      �     x����n�8���St?�!��zw�3�y�7QR����)�y���qmGAs�&��3��E�۷�h�q���#�P�7����B��g��𒩂!(���'����s�n��	ߘ�:�<J2P��.������0U=��t�?�apm�h�Շ�ms�ʣPpP|Fᄺ�͞+WO�r��!l		o1���<�, ��KD]��ۓ�u]�;� 
�Q3D�f�{q�܍�&��`B���3CN��W�;Tc��:����7g;���+K��(�i*��w
##��$}#�c(2���EɄ:���{��Nt�-���y������s��;�0*6��F��,���G�
mKR{'w�	��{�4)*���޾��k��Jb�P~�@0��X�y� >�6x%�%��/~A�ɪ���Nf�ֺ��I"%Kѻ�N�[��R�8|�����m�k]��n�fL�(:�\4��2c��o\����̛���8�*%9&=������@���QX���p���!��&��k�se��m�#�mj�^j>1�j9�܂���,H{��M&s e��ԇC�q���Gg뼧#*�qP��3G��{D�J��t�HM�[��??���?�����dV$aB�վ���������DZr,���F@��,pU�p_ �	�_(	%�Wl2�֞mn<�H�LuIyID��6�����8,�`�m４���d�)��X ��.���C�H�7s��y��x\�)J����D���$���l �,@z5Sr[��u	�e�
 ���j��}�������-D�r�ឍ�~i�煑mOp�0��@�X��q&hdе��]�CP��J%č=������A�$��Z��<֕pC �L�Y��҅&
�<��nl�`%�p^�5|��k��~��&��~��i1c<�� 
n�T�Xc�3Tu��ù.��
�i#arM��z�u�K�}{�f�K�-Y �C�rQk�ڨ���%��))iZD�^�;�2���a@�@����O����?�P��      �   ;  x�m�ٮ���몧��#�lc�pG�2Bё"�0�y�N�vuK���o��'cEB�_9����׬_MVhD,�`٬7��r�g�Kj��u��$)��'%�S��c��~��D��+��� ����ܕA�|L�����m�tN}o����s��֘ɇEtO��B8w�Kf{=��!�/�9*�Φ냂�`����n���v$s�W���3��7�Z�����	���� ���~�,6onϘ���d���<��ar;������X��D�{��"R���4ݘ�Č��Rc�1�i�q��>SН;˳sv�8��^x�űr1Qi���JJ}aC���W34�0Jp��ӳmy�R0�j��F�f��|����yY&�ȇxΕ\=e�C�t�a�u�y�Yv���N�����t+Ju���x���p�dK/��g|�E���Ş���m�q�ʑ�+��RN�b��c���N��앹uv��[$�k^�Ɍo�q?�q;0D�lk��e�N*~��)F�x���}aS!����D��8	!	�/^ �����ה���g�?��FI�_��
����\C)���h�����ӗ���*��&�s#|���8\�i�����$n>B��i���+
�:����tg?mEk-W���e"��h��C{�ە/�;[Õ����R�!����H��V2eQ��ɭ�L�|<�t�`��3k����h�;h���_���(a�� ��G$pq?�&$��a*���S��T ��h�~�N���;g	�N��EX�⳿�KT��گ��5o8�5o�.���^��1�L
&�w�M�c�(���1Mϯ���!� �=A�E7}�:YG�\3{���lǲe7k��TiY��h+8`Gՠ�̑A[jؔ�B��iHmwp��b�,�E�Q~hg���}R�B9��;����&�o!� �#�B��}|�,1NH]c��-Db����F-�]�>���r��ӭX�>o]��I.�\'��_}yMح��o�m�		�_<�h�/`��CM��9�_T�\��l_��?�~�OT��r��d~�.:V�J��^6�o�b���'k���E�)�c!%q���O�� �s�n3u,��i_��ށИ�א� -9���f���_5�_LU��`4�O?s������?dMO�G�62P�I�����vs]�m�B�>=�+���N�C��\`s��+q�S�0&#
p�@�>�o���L��Wg�\�����]R2qik��df�;7���o��6u¶X��R9�����}
�r"	�L���ϟ?�:3=      �      x������ � �      �      x������ � �     