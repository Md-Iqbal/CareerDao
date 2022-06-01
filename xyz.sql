PGDMP                         z            CareerDaoDB    13.4    13.4 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    876522    CareerDaoDB    DATABASE     m   CREATE DATABASE "CareerDaoDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Bangla_Bangladesh.utf8';
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
    full_name character varying(100),
    resigned boolean NOT NULL
);
 *   DROP TABLE public."appJobAPI_appliedjob";
       public         heap    postgres    false            �            1259    1516631    appJobAPI_appliedjob_id_seq    SEQUENCE     �   CREATE SEQUENCE public."appJobAPI_appliedjob_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."appJobAPI_appliedjob_id_seq";
       public          postgres    false    220                       0    0    appJobAPI_appliedjob_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."appJobAPI_appliedjob_id_seq" OWNED BY public."appJobAPI_appliedjob".id;
          public          postgres    false    231            �            1259    1179905    appJobAPI_postedjob    TABLE     f  CREATE TABLE public."appJobAPI_postedjob" (
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
    salary2 numeric(12,2) NOT NULL,
    apply_last_date date
);
 )   DROP TABLE public."appJobAPI_postedjob";
       public         heap    postgres    false            �            1259    1516698    appJobAPI_postedjob_id_seq    SEQUENCE     �   CREATE SEQUENCE public."appJobAPI_postedjob_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."appJobAPI_postedjob_id_seq";
       public          postgres    false    219                       0    0    appJobAPI_postedjob_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."appJobAPI_postedjob_id_seq" OWNED BY public."appJobAPI_postedjob".id;
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
       public          postgres    false    228                       0    0    app_authApi_user_groups_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."app_authApi_user_groups_id_seq" OWNED BY public."app_authApi_user_groups".id;
          public          postgres    false    227            �            1259    876596    app_authApi_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."app_authApi_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."app_authApi_user_id_seq";
       public          postgres    false    211                       0    0    app_authApi_user_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."app_authApi_user_id_seq" OWNED BY public."app_authApi_user".id;
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
       public          postgres    false    230                       0    0 (   app_authApi_user_user_permissions_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."app_authApi_user_user_permissions_id_seq" OWNED BY public."app_authApi_user_user_permissions".id;
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
       public          postgres    false    222                       0    0    app_homeApi_company_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."app_homeApi_company_id_seq" OWNED BY public."app_homeApi_company".id;
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
       public          postgres    false    226                       0    0    app_homeApi_freelancer_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."app_homeApi_freelancer_id_seq" OWNED BY public."app_homeApi_freelancer".id;
          public          postgres    false    225            �            1259    1582428    app_homeApi_message    TABLE       CREATE TABLE public."app_homeApi_message" (
    id integer NOT NULL,
    message text,
    created_at timestamp with time zone NOT NULL,
    receiver_id bigint,
    sender_id bigint,
    delivered boolean NOT NULL,
    seen boolean NOT NULL,
    typing boolean NOT NULL
);
 )   DROP TABLE public."app_homeApi_message";
       public         heap    postgres    false            �            1259    1582426    app_homeApi_message_id_seq    SEQUENCE     �   CREATE SEQUENCE public."app_homeApi_message_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."app_homeApi_message_id_seq";
       public          postgres    false    242                       0    0    app_homeApi_message_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."app_homeApi_message_id_seq" OWNED BY public."app_homeApi_message".id;
          public          postgres    false    241            �            1259    1590656    app_homeApi_news    TABLE     f  CREATE TABLE public."app_homeApi_news" (
    id integer NOT NULL,
    title character varying(50),
    description text,
    qoute character varying(200),
    image character varying(100),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_featured boolean NOT NULL,
    topic character varying(50)
);
 &   DROP TABLE public."app_homeApi_news";
       public         heap    postgres    false            �            1259    1590654    app_homeApi_news_id_seq    SEQUENCE     �   CREATE SEQUENCE public."app_homeApi_news_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."app_homeApi_news_id_seq";
       public          postgres    false    244                       0    0    app_homeApi_news_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."app_homeApi_news_id_seq" OWNED BY public."app_homeApi_news".id;
          public          postgres    false    243            �            1259    1516491    app_homeApi_projectmanager    TABLE     �  CREATE TABLE public."app_homeApi_projectmanager" (
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
       public          postgres    false    224                       0    0 !   app_homeApi_projectmanager_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."app_homeApi_projectmanager_id_seq" OWNED BY public."app_homeApi_projectmanager".id;
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
       public          postgres    false    207                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
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
       public          postgres    false    209                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
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
       public          postgres    false    205                        0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
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
       public          postgres    false    213            !           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
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
       public          postgres    false    203            "           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
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
       public          postgres    false    201            #           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            �            1259    876678    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    1582276    hitcount_blacklist_ip    TABLE     m   CREATE TABLE public.hitcount_blacklist_ip (
    id bigint NOT NULL,
    ip character varying(40) NOT NULL
);
 )   DROP TABLE public.hitcount_blacklist_ip;
       public         heap    postgres    false            �            1259    1582365    hitcount_blacklist_ip_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hitcount_blacklist_ip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.hitcount_blacklist_ip_id_seq;
       public          postgres    false    233            $           0    0    hitcount_blacklist_ip_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.hitcount_blacklist_ip_id_seq OWNED BY public.hitcount_blacklist_ip.id;
          public          postgres    false    237            �            1259    1582286    hitcount_blacklist_user_agent    TABLE     ~   CREATE TABLE public.hitcount_blacklist_user_agent (
    id bigint NOT NULL,
    user_agent character varying(255) NOT NULL
);
 1   DROP TABLE public.hitcount_blacklist_user_agent;
       public         heap    postgres    false            �            1259    1582377 $   hitcount_blacklist_user_agent_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hitcount_blacklist_user_agent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.hitcount_blacklist_user_agent_id_seq;
       public          postgres    false    234            %           0    0 $   hitcount_blacklist_user_agent_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.hitcount_blacklist_user_agent_id_seq OWNED BY public.hitcount_blacklist_user_agent.id;
          public          postgres    false    238            �            1259    1582296    hitcount_hit    TABLE     $  CREATE TABLE public.hitcount_hit (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    ip character varying(40) NOT NULL,
    session character varying(40) NOT NULL,
    user_agent character varying(255) NOT NULL,
    hitcount_id bigint NOT NULL,
    user_id bigint
);
     DROP TABLE public.hitcount_hit;
       public         heap    postgres    false            �            1259    1582304    hitcount_hit_count    TABLE     k  CREATE TABLE public.hitcount_hit_count (
    id bigint NOT NULL,
    hits integer NOT NULL,
    modified timestamp with time zone NOT NULL,
    object_pk integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT hitcount_hit_count_hits_check CHECK ((hits >= 0)),
    CONSTRAINT hitcount_hit_count_object_pk_53e9c38f_check CHECK ((object_pk >= 0))
);
 &   DROP TABLE public.hitcount_hit_count;
       public         heap    postgres    false            �            1259    1582406    hitcount_hit_count_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hitcount_hit_count_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.hitcount_hit_count_id_seq;
       public          postgres    false    236            &           0    0    hitcount_hit_count_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.hitcount_hit_count_id_seq OWNED BY public.hitcount_hit_count.id;
          public          postgres    false    240            �            1259    1582394    hitcount_hit_id_seq    SEQUENCE     |   CREATE SEQUENCE public.hitcount_hit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.hitcount_hit_id_seq;
       public          postgres    false    235            '           0    0    hitcount_hit_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.hitcount_hit_id_seq OWNED BY public.hitcount_hit.id;
          public          postgres    false    239            �            1259    876690     token_blacklist_blacklistedtoken    TABLE     �   CREATE TABLE public.token_blacklist_blacklistedtoken (
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
       public          postgres    false    215            (           0    0 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;
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
       public          postgres    false    216            )           0    0 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;
          public          postgres    false    218            �           2604    1516633    appJobAPI_appliedjob id    DEFAULT     �   ALTER TABLE ONLY public."appJobAPI_appliedjob" ALTER COLUMN id SET DEFAULT nextval('public."appJobAPI_appliedjob_id_seq"'::regclass);
 H   ALTER TABLE public."appJobAPI_appliedjob" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    220            �           2604    1516700    appJobAPI_postedjob id    DEFAULT     �   ALTER TABLE ONLY public."appJobAPI_postedjob" ALTER COLUMN id SET DEFAULT nextval('public."appJobAPI_postedjob_id_seq"'::regclass);
 G   ALTER TABLE public."appJobAPI_postedjob" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    219            �           2604    876601    app_authApi_user id    DEFAULT     ~   ALTER TABLE ONLY public."app_authApi_user" ALTER COLUMN id SET DEFAULT nextval('public."app_authApi_user_id_seq"'::regclass);
 D   ALTER TABLE public."app_authApi_user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �           2604    1516561    app_authApi_user_groups id    DEFAULT     �   ALTER TABLE ONLY public."app_authApi_user_groups" ALTER COLUMN id SET DEFAULT nextval('public."app_authApi_user_groups_id_seq"'::regclass);
 K   ALTER TABLE public."app_authApi_user_groups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    1516573 $   app_authApi_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public."app_authApi_user_user_permissions" ALTER COLUMN id SET DEFAULT nextval('public."app_authApi_user_user_permissions_id_seq"'::regclass);
 U   ALTER TABLE public."app_authApi_user_user_permissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    1516477    app_homeApi_company id    DEFAULT     �   ALTER TABLE ONLY public."app_homeApi_company" ALTER COLUMN id SET DEFAULT nextval('public."app_homeApi_company_id_seq"'::regclass);
 G   ALTER TABLE public."app_homeApi_company" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    1516508    app_homeApi_freelancer id    DEFAULT     �   ALTER TABLE ONLY public."app_homeApi_freelancer" ALTER COLUMN id SET DEFAULT nextval('public."app_homeApi_freelancer_id_seq"'::regclass);
 J   ALTER TABLE public."app_homeApi_freelancer" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    1582431    app_homeApi_message id    DEFAULT     �   ALTER TABLE ONLY public."app_homeApi_message" ALTER COLUMN id SET DEFAULT nextval('public."app_homeApi_message_id_seq"'::regclass);
 G   ALTER TABLE public."app_homeApi_message" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            �           2604    1590659    app_homeApi_news id    DEFAULT     ~   ALTER TABLE ONLY public."app_homeApi_news" ALTER COLUMN id SET DEFAULT nextval('public."app_homeApi_news_id_seq"'::regclass);
 D   ALTER TABLE public."app_homeApi_news" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            �           2604    1516494    app_homeApi_projectmanager id    DEFAULT     �   ALTER TABLE ONLY public."app_homeApi_projectmanager" ALTER COLUMN id SET DEFAULT nextval('public."app_homeApi_projectmanager_id_seq"'::regclass);
 N   ALTER TABLE public."app_homeApi_projectmanager" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    876557    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �           2604    876567    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �           2604    876549    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �           2604    876659    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    876539    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �           2604    876528    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            �           2604    1582367    hitcount_blacklist_ip id    DEFAULT     �   ALTER TABLE ONLY public.hitcount_blacklist_ip ALTER COLUMN id SET DEFAULT nextval('public.hitcount_blacklist_ip_id_seq'::regclass);
 G   ALTER TABLE public.hitcount_blacklist_ip ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    233            �           2604    1582379     hitcount_blacklist_user_agent id    DEFAULT     �   ALTER TABLE ONLY public.hitcount_blacklist_user_agent ALTER COLUMN id SET DEFAULT nextval('public.hitcount_blacklist_user_agent_id_seq'::regclass);
 O   ALTER TABLE public.hitcount_blacklist_user_agent ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    234            �           2604    1582396    hitcount_hit id    DEFAULT     r   ALTER TABLE ONLY public.hitcount_hit ALTER COLUMN id SET DEFAULT nextval('public.hitcount_hit_id_seq'::regclass);
 >   ALTER TABLE public.hitcount_hit ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    235            �           2604    1582408    hitcount_hit_count id    DEFAULT     ~   ALTER TABLE ONLY public.hitcount_hit_count ALTER COLUMN id SET DEFAULT nextval('public.hitcount_hit_count_id_seq'::regclass);
 D   ALTER TABLE public.hitcount_hit_count ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    236            �           2604    876740 #   token_blacklist_blacklistedtoken id    DEFAULT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);
 R   ALTER TABLE public.token_blacklist_blacklistedtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    215            �           2604    876756 #   token_blacklist_outstandingtoken id    DEFAULT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);
 R   ALTER TABLE public.token_blacklist_outstandingtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    216            �          0    1179929    appJobAPI_appliedjob 
   TABLE DATA           �   COPY public."appJobAPI_appliedjob" (id, is_active, applied_at, updated_at, job_id, user_id, appointed, cv, email, full_name, resigned) FROM stdin;
    public          postgres    false    220   `g      �          0    1179905    appJobAPI_postedjob 
   TABLE DATA           _  COPY public."appJobAPI_postedjob" (id, company_name_id, name, designation, skills, experience, vacancy, job_description, place, salary, job_type, contact_number, contact_email, is_active, created_at, updated_at, educational_qualification, maximum_age, minimum_age, document_image1, document_image2, job_category, salary2, apply_last_date) FROM stdin;
    public          postgres    false    219   �g      �          0    876598    app_authApi_user 
   TABLE DATA           �   COPY public."app_authApi_user" (id, password, username, email, is_company, is_project_manager, is_freelancer, last_login, created_at, updated_at, is_active, is_staff, is_superuser, date_joined, first_name, last_name, is_admin) FROM stdin;
    public          postgres    false    211   �i      �          0    1516558    app_authApi_user_groups 
   TABLE DATA           J   COPY public."app_authApi_user_groups" (id, user_id, group_id) FROM stdin;
    public          postgres    false    228   >k      �          0    1516570 !   app_authApi_user_user_permissions 
   TABLE DATA           Y   COPY public."app_authApi_user_user_permissions" (id, user_id, permission_id) FROM stdin;
    public          postgres    false    230   [k      �          0    1516474    app_homeApi_company 
   TABLE DATA           �   COPY public."app_homeApi_company" (id, username, email, logo, image, company_name, company_description, company_address, company_phone, company_website, country, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    222   xk      �          0    1516505    app_homeApi_freelancer 
   TABLE DATA           �   COPY public."app_homeApi_freelancer" (id, username, email, image, first_name, last_name, phone, address, occupation, document_name, document_number, document_image, created_at, updated_at, company_id, user_id) FROM stdin;
    public          postgres    false    226   l                0    1582428    app_homeApi_message 
   TABLE DATA           y   COPY public."app_homeApi_message" (id, message, created_at, receiver_id, sender_id, delivered, seen, typing) FROM stdin;
    public          postgres    false    242   �l                0    1590656    app_homeApi_news 
   TABLE DATA           ~   COPY public."app_homeApi_news" (id, title, description, qoute, image, created_at, updated_at, is_featured, topic) FROM stdin;
    public          postgres    false    244   *m      �          0    1516491    app_homeApi_projectmanager 
   TABLE DATA           �   COPY public."app_homeApi_projectmanager" (id, username, email, image, first_name, last_name, phone, address, occupation, document_name, document_number, document_image, created_at, updated_at, company_id, user_id) FROM stdin;
    public          postgres    false    224   �o      �          0    876554 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   	p      �          0    876564    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   &p      �          0    876546    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   Cp      �          0    876656    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    213   Xs      �          0    876536    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   �w      �          0    876525    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   �x      �          0    876678    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    214   �}                0    1582276    hitcount_blacklist_ip 
   TABLE DATA           7   COPY public.hitcount_blacklist_ip (id, ip) FROM stdin;
    public          postgres    false    233   ��                0    1582286    hitcount_blacklist_user_agent 
   TABLE DATA           G   COPY public.hitcount_blacklist_user_agent (id, user_agent) FROM stdin;
    public          postgres    false    234   �                0    1582296    hitcount_hit 
   TABLE DATA           b   COPY public.hitcount_hit (id, created, ip, session, user_agent, hitcount_id, user_id) FROM stdin;
    public          postgres    false    235   6�                0    1582304    hitcount_hit_count 
   TABLE DATA           \   COPY public.hitcount_hit_count (id, hits, modified, object_pk, content_type_id) FROM stdin;
    public          postgres    false    236   �      �          0    876690     token_blacklist_blacklistedtoken 
   TABLE DATA           X   COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
    public          postgres    false    215   ��      �          0    876698     token_blacklist_outstandingtoken 
   TABLE DATA           k   COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
    public          postgres    false    216   ��      *           0    0    appJobAPI_appliedjob_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."appJobAPI_appliedjob_id_seq"', 1, true);
          public          postgres    false    231            +           0    0    appJobAPI_postedjob_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."appJobAPI_postedjob_id_seq"', 3, true);
          public          postgres    false    232            ,           0    0    app_authApi_user_groups_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."app_authApi_user_groups_id_seq"', 1, false);
          public          postgres    false    227            -           0    0    app_authApi_user_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."app_authApi_user_id_seq"', 70, true);
          public          postgres    false    210            .           0    0 (   app_authApi_user_user_permissions_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."app_authApi_user_user_permissions_id_seq"', 1, false);
          public          postgres    false    229            /           0    0    app_homeApi_company_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."app_homeApi_company_id_seq"', 2, true);
          public          postgres    false    221            0           0    0    app_homeApi_freelancer_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."app_homeApi_freelancer_id_seq"', 2, true);
          public          postgres    false    225            1           0    0    app_homeApi_message_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."app_homeApi_message_id_seq"', 48, true);
          public          postgres    false    241            2           0    0    app_homeApi_news_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."app_homeApi_news_id_seq"', 4, true);
          public          postgres    false    243            3           0    0 !   app_homeApi_projectmanager_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."app_homeApi_projectmanager_id_seq"', 1, true);
          public          postgres    false    223            4           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            5           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            6           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    204            7           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 51, true);
          public          postgres    false    212            8           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);
          public          postgres    false    202            9           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 63, true);
          public          postgres    false    200            :           0    0    hitcount_blacklist_ip_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.hitcount_blacklist_ip_id_seq', 1, false);
          public          postgres    false    237            ;           0    0 $   hitcount_blacklist_user_agent_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.hitcount_blacklist_user_agent_id_seq', 1, false);
          public          postgres    false    238            <           0    0    hitcount_hit_count_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.hitcount_hit_count_id_seq', 6, true);
          public          postgres    false    240            =           0    0    hitcount_hit_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hitcount_hit_id_seq', 8, true);
          public          postgres    false    239            >           0    0 '   token_blacklist_blacklistedtoken_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 1, false);
          public          postgres    false    217            ?           0    0 '   token_blacklist_outstandingtoken_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 51, true);
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
       public            postgres    false    211                       2606    1516563 4   app_authApi_user_groups app_authApi_user_groups_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."app_authApi_user_groups"
    ADD CONSTRAINT "app_authApi_user_groups_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."app_authApi_user_groups" DROP CONSTRAINT "app_authApi_user_groups_pkey";
       public            postgres    false    228            "           2606    1516577 N   app_authApi_user_groups app_authApi_user_groups_user_id_group_id_129589bf_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."app_authApi_user_groups"
    ADD CONSTRAINT "app_authApi_user_groups_user_id_group_id_129589bf_uniq" UNIQUE (user_id, group_id);
 |   ALTER TABLE ONLY public."app_authApi_user_groups" DROP CONSTRAINT "app_authApi_user_groups_user_id_group_id_129589bf_uniq";
       public            postgres    false    228    228            �           2606    876603 &   app_authApi_user app_authApi_user_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."app_authApi_user"
    ADD CONSTRAINT "app_authApi_user_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."app_authApi_user" DROP CONSTRAINT "app_authApi_user_pkey";
       public            postgres    false    211            $           2606    1516591 ^   app_authApi_user_user_permissions app_authApi_user_user_pe_user_id_permission_id_1ed1e1bc_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."app_authApi_user_user_permissions"
    ADD CONSTRAINT "app_authApi_user_user_pe_user_id_permission_id_1ed1e1bc_uniq" UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public."app_authApi_user_user_permissions" DROP CONSTRAINT "app_authApi_user_user_pe_user_id_permission_id_1ed1e1bc_uniq";
       public            postgres    false    230    230            '           2606    1516575 H   app_authApi_user_user_permissions app_authApi_user_user_permissions_pkey 
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
       public            postgres    false    222                       2606    1516482 ,   app_homeApi_company app_homeApi_company_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."app_homeApi_company"
    ADD CONSTRAINT "app_homeApi_company_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."app_homeApi_company" DROP CONSTRAINT "app_homeApi_company_pkey";
       public            postgres    false    222                       2606    1516488 3   app_homeApi_company app_homeApi_company_user_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public."app_homeApi_company"
    ADD CONSTRAINT "app_homeApi_company_user_id_key" UNIQUE (user_id);
 a   ALTER TABLE ONLY public."app_homeApi_company" DROP CONSTRAINT "app_homeApi_company_user_id_key";
       public            postgres    false    222                       2606    1516484 4   app_homeApi_company app_homeApi_company_username_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."app_homeApi_company"
    ADD CONSTRAINT "app_homeApi_company_username_key" UNIQUE (username);
 b   ALTER TABLE ONLY public."app_homeApi_company" DROP CONSTRAINT "app_homeApi_company_username_key";
       public            postgres    false    222                       2606    1516514 7   app_homeApi_freelancer app_homeApi_freelancer_email_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."app_homeApi_freelancer"
    ADD CONSTRAINT "app_homeApi_freelancer_email_key" UNIQUE (email);
 e   ALTER TABLE ONLY public."app_homeApi_freelancer" DROP CONSTRAINT "app_homeApi_freelancer_email_key";
       public            postgres    false    226                       2606    1516510 2   app_homeApi_freelancer app_homeApi_freelancer_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."app_homeApi_freelancer"
    ADD CONSTRAINT "app_homeApi_freelancer_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."app_homeApi_freelancer" DROP CONSTRAINT "app_homeApi_freelancer_pkey";
       public            postgres    false    226                       2606    1516516 9   app_homeApi_freelancer app_homeApi_freelancer_user_id_key 
   CONSTRAINT     {   ALTER TABLE ONLY public."app_homeApi_freelancer"
    ADD CONSTRAINT "app_homeApi_freelancer_user_id_key" UNIQUE (user_id);
 g   ALTER TABLE ONLY public."app_homeApi_freelancer" DROP CONSTRAINT "app_homeApi_freelancer_user_id_key";
       public            postgres    false    226                       2606    1516512 :   app_homeApi_freelancer app_homeApi_freelancer_username_key 
   CONSTRAINT     }   ALTER TABLE ONLY public."app_homeApi_freelancer"
    ADD CONSTRAINT "app_homeApi_freelancer_username_key" UNIQUE (username);
 h   ALTER TABLE ONLY public."app_homeApi_freelancer" DROP CONSTRAINT "app_homeApi_freelancer_username_key";
       public            postgres    false    226            B           2606    1582436 ,   app_homeApi_message app_homeApi_message_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."app_homeApi_message"
    ADD CONSTRAINT "app_homeApi_message_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."app_homeApi_message" DROP CONSTRAINT "app_homeApi_message_pkey";
       public            postgres    false    242            F           2606    1590664 &   app_homeApi_news app_homeApi_news_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."app_homeApi_news"
    ADD CONSTRAINT "app_homeApi_news_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."app_homeApi_news" DROP CONSTRAINT "app_homeApi_news_pkey";
       public            postgres    false    244            
           2606    1516500 ?   app_homeApi_projectmanager app_homeApi_projectmanager_email_key 
   CONSTRAINT        ALTER TABLE ONLY public."app_homeApi_projectmanager"
    ADD CONSTRAINT "app_homeApi_projectmanager_email_key" UNIQUE (email);
 m   ALTER TABLE ONLY public."app_homeApi_projectmanager" DROP CONSTRAINT "app_homeApi_projectmanager_email_key";
       public            postgres    false    224                       2606    1516496 :   app_homeApi_projectmanager app_homeApi_projectmanager_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."app_homeApi_projectmanager"
    ADD CONSTRAINT "app_homeApi_projectmanager_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."app_homeApi_projectmanager" DROP CONSTRAINT "app_homeApi_projectmanager_pkey";
       public            postgres    false    224                       2606    1516502 A   app_homeApi_projectmanager app_homeApi_projectmanager_user_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_projectmanager"
    ADD CONSTRAINT "app_homeApi_projectmanager_user_id_key" UNIQUE (user_id);
 o   ALTER TABLE ONLY public."app_homeApi_projectmanager" DROP CONSTRAINT "app_homeApi_projectmanager_user_id_key";
       public            postgres    false    224                       2606    1516498 B   app_homeApi_projectmanager app_homeApi_projectmanager_username_key 
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
       public            postgres    false    214            +           2606    1582283 2   hitcount_blacklist_ip hitcount_blacklist_ip_ip_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.hitcount_blacklist_ip
    ADD CONSTRAINT hitcount_blacklist_ip_ip_key UNIQUE (ip);
 \   ALTER TABLE ONLY public.hitcount_blacklist_ip DROP CONSTRAINT hitcount_blacklist_ip_ip_key;
       public            postgres    false    233            -           2606    1582358 0   hitcount_blacklist_ip hitcount_blacklist_ip_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.hitcount_blacklist_ip
    ADD CONSTRAINT hitcount_blacklist_ip_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.hitcount_blacklist_ip DROP CONSTRAINT hitcount_blacklist_ip_pkey;
       public            postgres    false    233            /           2606    1582370 @   hitcount_blacklist_user_agent hitcount_blacklist_user_agent_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.hitcount_blacklist_user_agent
    ADD CONSTRAINT hitcount_blacklist_user_agent_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.hitcount_blacklist_user_agent DROP CONSTRAINT hitcount_blacklist_user_agent_pkey;
       public            postgres    false    234            2           2606    1582293 J   hitcount_blacklist_user_agent hitcount_blacklist_user_agent_user_agent_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.hitcount_blacklist_user_agent
    ADD CONSTRAINT hitcount_blacklist_user_agent_user_agent_key UNIQUE (user_agent);
 t   ALTER TABLE ONLY public.hitcount_blacklist_user_agent DROP CONSTRAINT hitcount_blacklist_user_agent_user_agent_key;
       public            postgres    false    234            >           2606    1582348 M   hitcount_hit_count hitcount_hit_count_content_type_id_object_pk_4dacb610_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.hitcount_hit_count
    ADD CONSTRAINT hitcount_hit_count_content_type_id_object_pk_4dacb610_uniq UNIQUE (content_type_id, object_pk);
 w   ALTER TABLE ONLY public.hitcount_hit_count DROP CONSTRAINT hitcount_hit_count_content_type_id_object_pk_4dacb610_uniq;
       public            postgres    false    236    236            @           2606    1582399 *   hitcount_hit_count hitcount_hit_count_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.hitcount_hit_count
    ADD CONSTRAINT hitcount_hit_count_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.hitcount_hit_count DROP CONSTRAINT hitcount_hit_count_pkey;
       public            postgres    false    236            8           2606    1582382    hitcount_hit hitcount_hit_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.hitcount_hit
    ADD CONSTRAINT hitcount_hit_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.hitcount_hit DROP CONSTRAINT hitcount_hit_pkey;
       public            postgres    false    235            �           2606    876732 F   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey 
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
       public            postgres    false    211                       1259    1516589 )   app_authApi_user_groups_group_id_f9e50908    INDEX     u   CREATE INDEX "app_authApi_user_groups_group_id_f9e50908" ON public."app_authApi_user_groups" USING btree (group_id);
 ?   DROP INDEX public."app_authApi_user_groups_group_id_f9e50908";
       public            postgres    false    228                        1259    1516588 (   app_authApi_user_groups_user_id_fc3e94da    INDEX     s   CREATE INDEX "app_authApi_user_groups_user_id_fc3e94da" ON public."app_authApi_user_groups" USING btree (user_id);
 >   DROP INDEX public."app_authApi_user_groups_user_id_fc3e94da";
       public            postgres    false    228            %           1259    1516603 8   app_authApi_user_user_permissions_permission_id_09c7d3b2    INDEX     �   CREATE INDEX "app_authApi_user_user_permissions_permission_id_09c7d3b2" ON public."app_authApi_user_user_permissions" USING btree (permission_id);
 N   DROP INDEX public."app_authApi_user_user_permissions_permission_id_09c7d3b2";
       public            postgres    false    230            (           1259    1516602 2   app_authApi_user_user_permissions_user_id_387a1c40    INDEX     �   CREATE INDEX "app_authApi_user_user_permissions_user_id_387a1c40" ON public."app_authApi_user_user_permissions" USING btree (user_id);
 H   DROP INDEX public."app_authApi_user_user_permissions_user_id_387a1c40";
       public            postgres    false    230            �           1259    876624 '   app_authApi_user_username_697e552f_like    INDEX     �   CREATE INDEX "app_authApi_user_username_697e552f_like" ON public."app_authApi_user" USING btree (username varchar_pattern_ops);
 =   DROP INDEX public."app_authApi_user_username_697e552f_like";
       public            postgres    false    211            �           1259    1516523 '   app_homeApi_company_email_0b5540c4_like    INDEX     �   CREATE INDEX "app_homeApi_company_email_0b5540c4_like" ON public."app_homeApi_company" USING btree (email varchar_pattern_ops);
 =   DROP INDEX public."app_homeApi_company_email_0b5540c4_like";
       public            postgres    false    222                       1259    1516522 *   app_homeApi_company_username_ede404f2_like    INDEX     �   CREATE INDEX "app_homeApi_company_username_ede404f2_like" ON public."app_homeApi_company" USING btree (username varchar_pattern_ops);
 @   DROP INDEX public."app_homeApi_company_username_ede404f2_like";
       public            postgres    false    222                       1259    1516549 *   app_homeApi_freelancer_company_id_0cbc3a8a    INDEX     w   CREATE INDEX "app_homeApi_freelancer_company_id_0cbc3a8a" ON public."app_homeApi_freelancer" USING btree (company_id);
 @   DROP INDEX public."app_homeApi_freelancer_company_id_0cbc3a8a";
       public            postgres    false    226                       1259    1516548 *   app_homeApi_freelancer_email_641136e7_like    INDEX     �   CREATE INDEX "app_homeApi_freelancer_email_641136e7_like" ON public."app_homeApi_freelancer" USING btree (email varchar_pattern_ops);
 @   DROP INDEX public."app_homeApi_freelancer_email_641136e7_like";
       public            postgres    false    226                       1259    1516547 -   app_homeApi_freelancer_username_ee345782_like    INDEX     �   CREATE INDEX "app_homeApi_freelancer_username_ee345782_like" ON public."app_homeApi_freelancer" USING btree (username varchar_pattern_ops);
 C   DROP INDEX public."app_homeApi_freelancer_username_ee345782_like";
       public            postgres    false    226            C           1259    1582447 (   app_homeApi_message_receiver_id_e2c18a98    INDEX     s   CREATE INDEX "app_homeApi_message_receiver_id_e2c18a98" ON public."app_homeApi_message" USING btree (receiver_id);
 >   DROP INDEX public."app_homeApi_message_receiver_id_e2c18a98";
       public            postgres    false    242            D           1259    1582448 &   app_homeApi_message_sender_id_a12c03b0    INDEX     o   CREATE INDEX "app_homeApi_message_sender_id_a12c03b0" ON public."app_homeApi_message" USING btree (sender_id);
 <   DROP INDEX public."app_homeApi_message_sender_id_a12c03b0";
       public            postgres    false    242                       1259    1516536 .   app_homeApi_projectmanager_company_id_d659f439    INDEX        CREATE INDEX "app_homeApi_projectmanager_company_id_d659f439" ON public."app_homeApi_projectmanager" USING btree (company_id);
 D   DROP INDEX public."app_homeApi_projectmanager_company_id_d659f439";
       public            postgres    false    224                       1259    1516535 .   app_homeApi_projectmanager_email_a43948bc_like    INDEX     �   CREATE INDEX "app_homeApi_projectmanager_email_a43948bc_like" ON public."app_homeApi_projectmanager" USING btree (email varchar_pattern_ops);
 D   DROP INDEX public."app_homeApi_projectmanager_email_a43948bc_like";
       public            postgres    false    224                       1259    1516534 1   app_homeApi_projectmanager_username_0f851309_like    INDEX     �   CREATE INDEX "app_homeApi_projectmanager_username_0f851309_like" ON public."app_homeApi_projectmanager" USING btree (username varchar_pattern_ops);
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
       public            postgres    false    214            )           1259    1582324 &   hitcount_blacklist_ip_ip_b1955e95_like    INDEX     z   CREATE INDEX hitcount_blacklist_ip_ip_b1955e95_like ON public.hitcount_blacklist_ip USING btree (ip varchar_pattern_ops);
 :   DROP INDEX public.hitcount_blacklist_ip_ip_b1955e95_like;
       public            postgres    false    233            0           1259    1582325 6   hitcount_blacklist_user_agent_user_agent_fbf2061c_like    INDEX     �   CREATE INDEX hitcount_blacklist_user_agent_user_agent_fbf2061c_like ON public.hitcount_blacklist_user_agent USING btree (user_agent varchar_pattern_ops);
 J   DROP INDEX public.hitcount_blacklist_user_agent_user_agent_fbf2061c_like;
       public            postgres    false    234            <           1259    1582332 +   hitcount_hit_count_content_type_id_4a734fe1    INDEX     u   CREATE INDEX hitcount_hit_count_content_type_id_4a734fe1 ON public.hitcount_hit_count USING btree (content_type_id);
 ?   DROP INDEX public.hitcount_hit_count_content_type_id_4a734fe1;
       public            postgres    false    236            3           1259    1582326    hitcount_hit_created_79adf7bc    INDEX     Y   CREATE INDEX hitcount_hit_created_79adf7bc ON public.hitcount_hit USING btree (created);
 1   DROP INDEX public.hitcount_hit_created_79adf7bc;
       public            postgres    false    235            4           1259    1582409 !   hitcount_hit_hitcount_id_b7971910    INDEX     a   CREATE INDEX hitcount_hit_hitcount_id_b7971910 ON public.hitcount_hit USING btree (hitcount_id);
 5   DROP INDEX public.hitcount_hit_hitcount_id_b7971910;
       public            postgres    false    235            5           1259    1582335    hitcount_hit_ip_a52a62aa    INDEX     O   CREATE INDEX hitcount_hit_ip_a52a62aa ON public.hitcount_hit USING btree (ip);
 ,   DROP INDEX public.hitcount_hit_ip_a52a62aa;
       public            postgres    false    235            6           1259    1582336    hitcount_hit_ip_a52a62aa_like    INDEX     h   CREATE INDEX hitcount_hit_ip_a52a62aa_like ON public.hitcount_hit USING btree (ip varchar_pattern_ops);
 1   DROP INDEX public.hitcount_hit_ip_a52a62aa_like;
       public            postgres    false    235            9           1259    1582337    hitcount_hit_session_5be83758    INDEX     Y   CREATE INDEX hitcount_hit_session_5be83758 ON public.hitcount_hit USING btree (session);
 1   DROP INDEX public.hitcount_hit_session_5be83758;
       public            postgres    false    235            :           1259    1582338 "   hitcount_hit_session_5be83758_like    INDEX     r   CREATE INDEX hitcount_hit_session_5be83758_like ON public.hitcount_hit USING btree (session varchar_pattern_ops);
 6   DROP INDEX public.hitcount_hit_session_5be83758_like;
       public            postgres    false    235            ;           1259    1582334    hitcount_hit_user_id_f7067f66    INDEX     Y   CREATE INDEX hitcount_hit_user_id_f7067f66 ON public.hitcount_hit USING btree (user_id);
 1   DROP INDEX public.hitcount_hit_user_id_f7067f66;
       public            postgres    false    235            �           1259    876724 6   token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like    INDEX     �   CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);
 J   DROP INDEX public.token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like;
       public            postgres    false    216            �           1259    876721 1   token_blacklist_outstandingtoken_user_id_83bc629a    INDEX     �   CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);
 E   DROP INDEX public.token_blacklist_outstandingtoken_user_id_83bc629a;
       public            postgres    false    216            P           2606    1516709 <   appJobAPI_appliedjob appJobAPI_appliedjob_job_id_f31442ef_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."appJobAPI_appliedjob"
    ADD CONSTRAINT "appJobAPI_appliedjob_job_id_f31442ef_fk" FOREIGN KEY (job_id) REFERENCES public."appJobAPI_postedjob"(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public."appJobAPI_appliedjob" DROP CONSTRAINT "appJobAPI_appliedjob_job_id_f31442ef_fk";
       public          postgres    false    3064    220    219            O           2606    1179950 Q   appJobAPI_appliedjob appJobAPI_appliedjob_user_id_22c7f72d_fk_app_authApi_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."appJobAPI_appliedjob"
    ADD CONSTRAINT "appJobAPI_appliedjob_user_id_22c7f72d_fk_app_authApi_user_id" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."appJobAPI_appliedjob" DROP CONSTRAINT "appJobAPI_appliedjob_user_id_22c7f72d_fk_app_authApi_user_id";
       public          postgres    false    3040    211    220            N           2606    1516651 M   appJobAPI_postedjob appJobAPI_postedjob_company_name_id_38e39804_fk_app_homeA    FK CONSTRAINT     �   ALTER TABLE ONLY public."appJobAPI_postedjob"
    ADD CONSTRAINT "appJobAPI_postedjob_company_name_id_38e39804_fk_app_homeA" FOREIGN KEY (company_name_id) REFERENCES public."app_homeApi_company"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."appJobAPI_postedjob" DROP CONSTRAINT "appJobAPI_postedjob_company_name_id_38e39804_fk_app_homeA";
       public          postgres    false    3073    222    219            W           2606    1516583 R   app_authApi_user_groups app_authApi_user_groups_group_id_f9e50908_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_authApi_user_groups"
    ADD CONSTRAINT "app_authApi_user_groups_group_id_f9e50908_fk_auth_group_id" FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."app_authApi_user_groups" DROP CONSTRAINT "app_authApi_user_groups_group_id_f9e50908_fk_auth_group_id";
       public          postgres    false    3029    207    228            V           2606    1516578 W   app_authApi_user_groups app_authApi_user_groups_user_id_fc3e94da_fk_app_authApi_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_authApi_user_groups"
    ADD CONSTRAINT "app_authApi_user_groups_user_id_fc3e94da_fk_app_authApi_user_id" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."app_authApi_user_groups" DROP CONSTRAINT "app_authApi_user_groups_user_id_fc3e94da_fk_app_authApi_user_id";
       public          postgres    false    3040    228    211            Y           2606    1516597 Z   app_authApi_user_user_permissions app_authApi_user_use_permission_id_09c7d3b2_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_authApi_user_user_permissions"
    ADD CONSTRAINT "app_authApi_user_use_permission_id_09c7d3b2_fk_auth_perm" FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."app_authApi_user_user_permissions" DROP CONSTRAINT "app_authApi_user_use_permission_id_09c7d3b2_fk_auth_perm";
       public          postgres    false    230    3024    205            X           2606    1516592 T   app_authApi_user_user_permissions app_authApi_user_use_user_id_387a1c40_fk_app_authA    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_authApi_user_user_permissions"
    ADD CONSTRAINT "app_authApi_user_use_user_id_387a1c40_fk_app_authA" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."app_authApi_user_user_permissions" DROP CONSTRAINT "app_authApi_user_use_user_id_387a1c40_fk_app_authA";
       public          postgres    false    211    230    3040            Q           2606    1516517 O   app_homeApi_company app_homeApi_company_user_id_92305f27_fk_app_authApi_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_company"
    ADD CONSTRAINT "app_homeApi_company_user_id_92305f27_fk_app_authApi_user_id" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."app_homeApi_company" DROP CONSTRAINT "app_homeApi_company_user_id_92305f27_fk_app_authApi_user_id";
       public          postgres    false    222    211    3040            T           2606    1516537 L   app_homeApi_freelancer app_homeApi_freelanc_company_id_0cbc3a8a_fk_app_homeA    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_freelancer"
    ADD CONSTRAINT "app_homeApi_freelanc_company_id_0cbc3a8a_fk_app_homeA" FOREIGN KEY (company_id) REFERENCES public."app_homeApi_company"(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."app_homeApi_freelancer" DROP CONSTRAINT "app_homeApi_freelanc_company_id_0cbc3a8a_fk_app_homeA";
       public          postgres    false    222    226    3073            U           2606    1516542 U   app_homeApi_freelancer app_homeApi_freelancer_user_id_965fa76c_fk_app_authApi_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_freelancer"
    ADD CONSTRAINT "app_homeApi_freelancer_user_id_965fa76c_fk_app_authApi_user_id" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."app_homeApi_freelancer" DROP CONSTRAINT "app_homeApi_freelancer_user_id_965fa76c_fk_app_authApi_user_id";
       public          postgres    false    3040    211    226            ]           2606    1582437 S   app_homeApi_message app_homeApi_message_receiver_id_e2c18a98_fk_app_authApi_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_message"
    ADD CONSTRAINT "app_homeApi_message_receiver_id_e2c18a98_fk_app_authApi_user_id" FOREIGN KEY (receiver_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."app_homeApi_message" DROP CONSTRAINT "app_homeApi_message_receiver_id_e2c18a98_fk_app_authApi_user_id";
       public          postgres    false    211    3040    242            ^           2606    1582442 Q   app_homeApi_message app_homeApi_message_sender_id_a12c03b0_fk_app_authApi_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_message"
    ADD CONSTRAINT "app_homeApi_message_sender_id_a12c03b0_fk_app_authApi_user_id" FOREIGN KEY (sender_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."app_homeApi_message" DROP CONSTRAINT "app_homeApi_message_sender_id_a12c03b0_fk_app_authApi_user_id";
       public          postgres    false    211    242    3040            R           2606    1516524 P   app_homeApi_projectmanager app_homeApi_projectm_company_id_d659f439_fk_app_homeA    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_projectmanager"
    ADD CONSTRAINT "app_homeApi_projectm_company_id_d659f439_fk_app_homeA" FOREIGN KEY (company_id) REFERENCES public."app_homeApi_company"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."app_homeApi_projectmanager" DROP CONSTRAINT "app_homeApi_projectm_company_id_d659f439_fk_app_homeA";
       public          postgres    false    3073    224    222            S           2606    1516529 M   app_homeApi_projectmanager app_homeApi_projectm_user_id_62f8ce03_fk_app_authA    FK CONSTRAINT     �   ALTER TABLE ONLY public."app_homeApi_projectmanager"
    ADD CONSTRAINT "app_homeApi_projectm_user_id_62f8ce03_fk_app_authA" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."app_homeApi_projectmanager" DROP CONSTRAINT "app_homeApi_projectm_user_id_62f8ce03_fk_app_authA";
       public          postgres    false    211    224    3040            I           2606    876586 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3024    205    209            H           2606    876581 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    207    3029    209            G           2606    876572 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    3019    203            J           2606    876666 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3019    203    213            K           2606    876671 I   django_admin_log django_admin_log_user_id_c564eba6_fk_app_authApi_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_app_authApi_user_id" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT "django_admin_log_user_id_c564eba6_fk_app_authApi_user_id";
       public          postgres    false    3040    211    213            \           2606    1582327 K   hitcount_hit_count hitcount_hit_count_content_type_id_4a734fe1_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.hitcount_hit_count
    ADD CONSTRAINT hitcount_hit_count_content_type_id_4a734fe1_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.hitcount_hit_count DROP CONSTRAINT hitcount_hit_count_content_type_id_4a734fe1_fk_django_co;
       public          postgres    false    236    203    3019            [           2606    1582421 1   hitcount_hit hitcount_hit_hitcount_id_b7971910_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.hitcount_hit
    ADD CONSTRAINT hitcount_hit_hitcount_id_b7971910_fk FOREIGN KEY (hitcount_id) REFERENCES public.hitcount_hit_count(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.hitcount_hit DROP CONSTRAINT hitcount_hit_hitcount_id_b7971910_fk;
       public          postgres    false    235    3136    236            Z           2606    1582319 A   hitcount_hit hitcount_hit_user_id_f7067f66_fk_app_authApi_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.hitcount_hit
    ADD CONSTRAINT "hitcount_hit_user_id_f7067f66_fk_app_authApi_user_id" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.hitcount_hit DROP CONSTRAINT "hitcount_hit_user_id_f7067f66_fk_app_authApi_user_id";
       public          postgres    false    235    3040    211            L           2606    876764 V   token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.token_blacklist_blacklistedtoken DROP CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk;
       public          postgres    false    3060    215    216            M           2606    876725 S   token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_app_authA    FK CONSTRAINT     �   ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT "token_blacklist_outs_user_id_83bc629a_fk_app_authA" FOREIGN KEY (user_id) REFERENCES public."app_authApi_user"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.token_blacklist_outstandingtoken DROP CONSTRAINT "token_blacklist_outs_user_id_83bc629a_fk_app_authA";
       public          postgres    false    216    3040    211            �   o   x�3�,�4202�50�5�P02�25�2�Գ47�42�60#$�if	4"�L�1%7��9�(%�98$����Q� %�3;5-�"�����!#)5�X/9?��7E��0)1���+F��� �g!      �   �  x���Mo�0����н��o��@�ˀmE�c/lő�����ۊ�@}P)>����$̩��1�B~M䲞a����"ңL.]�ҳ��1�����Ԑ"+�X�T���rW'���K��Q��P�������_���%�7�v�ClY7�|˟�8�Jm��HÔ�����Nh���{���L�I�I�|tBC�b�jh���wX~^�<�u�D	��ᕑ4���Zh3�m_D�"u�*a$w�[�?	4����b\�z>�ws�i���q;?g�౜��|��87���{x˄&�I[��hu�^|��ۢ���'�z����N���J����C��i��e/��{��q����vJs�ٜ��<'2��M*����>�n&�'a�NY�/�˽'��_�����n�E��������      �   �  x���]o�@���W�Fz��]jk%ֺ�%�l�|�8��-�_k?��jvNr��3y3��2�����>f\��G�r�k��Oc��RM�*7!zѤ-IV�A+�w��(Vt��ńn���P[%u�ӂ�Is?{�T�~���(4�5Z�/w�w���5(`�9�7ʺ��al!�01L���ST %�п�O%hZ��������I�2�[̞�w���J�̷�R�o7�3�M6�7��,���ݠ���jx�@O�C�毽����9�kc�b���P��Y,$�M&��is�cw�I�syܼJ��}�6��.��y����n'���Y`׶�m��q�{��k�5�|����w�J�zZ�~[���/�hY�7��3k�D�frd~�<���@	�OPi ����������t: M���      �      x������ � �      �      x������ � �      �   �   x�3�L�,��K̆�&��)�i��)z����������@fAb^�nN~z���q�^A^:.�xo�2����
PE��1~dn�id`d�k`�kh�`ddej`eb�gafbjb�m`�56 �[X��Ꙙ�XZ� e�b���� �V6�      �   t   x�3��NMK�ȇR�fFI��z����������I9���zY�1~X�����������������������������\��@��(eej�gbdda	��7������ 0�"�         �   x�m�1� F�ٜ"{d�&�9KGB��P��M�v!�[?=��7����Uy
��òeyp�hW�5�^�я��?�-��Y�䅃 �X8Y���>�ט	�sV�0P=���^�f�Q:��E�kH���;�={5�         �  x�mTMo�0=�_1�U���u�E���k�]0�m%���~�H�j%���̼�gϢz$��Ӫ��mu��t�	K���-�EQ���"��쯲Q�׺�2ė�#�/�H�I�B��\���ӟ��Ξ/�����\G*V�)Ξ���Z-�q6U*M�ŏ8�7��g���O�8]���5z�5I�� �$�r��e����|�N��TͿ���Y�\��\E#��A����Qaa���=��\�t�}�~�0�ɰͅ�n��vgm�dol���K�5�'g�{�r�eV���a,��x�� 1R)P���}����馺Q�ޛΗ{�&�J�]�Hk��l��_s�t����?K��HN�����Cq�!P�5�C��P�50Zg��2��6l�������������3zS��-7���2��,�sdH�ItjD�B�F_u0���ҵ�։�fY�\.eW�Ҩ�{�b�f�㐶n#�1�la<���f|�n8n�����97��i�>�i����.�6��ӎ�}����a�Z4ƙ�B=Z�3�� oء%B��`�j����N�R���C}�i �I.F� ��z#����&���������Z{a�d��z� �1�� U_�B�q3Q`����^P�x���E{P����z����׷(YM�Z̗�� "Y-V�z�/��d�>��i      �      x������ � �      �      x������ � �      �      x������ � �      �     x�u��r�0���S�����c�So��֙�U����}��J�+���:����{7f����-3�|�\��?�nu��oFP����W3�M������y�; ��f�Y����Ө
P�]s9�c�'XdlK��GƝ��m��:� \���˅:z!�s���"� ,�|��i��˶�٨D�ȝ��:	�V���[£��kMh�l�W�m�x�����;sG�P/`��Vɣ���]ކ~��5ۦ73���9�BD�u��"+G�8�������wQ��Ƕn�x��650;����6�n�)�vԉ��;Y��`�}��E�0���'�A���D@=��a,|��7O�x����o)8���$�'�����l�RĲ�	�o)�(m�<=rv?9O<P�.aQ��"}	��/Y
�9Ji��3t��>�ܿ��D�"�E_N��Iu9͒&Y��d�v�}�F�6+p�­.k�{#�.r�ܹ�������H�E�R1/ӫ�lٽ�������Ou%�r���I�H�A[��&m,WM�+��Pھ�����K���YW"t{>]ͮEdoߒ�d��"�o��������.ɾ�>*��$n�t������d{:���g��OH�O���Ǖ�rl�M�~�-�_��R�"�X�A�.��uԄ:�*VAj��6.gل�����H�&q!��m��A1J����K������d�ENd�qh9>F�Vd(m�y_U�_k�Z7"\��2�Y
jx�E'�A ���h����H6      �   B  x����n�6���SޤE�Co��E�E�v�vuzPЖlɒ,�r�A��P���Y	zvl#����?�g�?0� H9���D@a�c�(A�t�Z �K���!��uYN>=/։�o�h���&���?-�������{���pi��������3b�u��F�3
���\	�Ҥ<�h���tU� �(j��$s�+�Q\�)A���۲J�0�LVq�W�ގ�Q6�T.K�����=GP���4�Ak|�f IR�W���Z���#�	\	H"ř�a�z����B��Ee��#�QQV�/`�U� r*�\b�h�\'e��8P1���!c�M� �&���w���"�B4[dW�(���?\��Q��6��Iʼ^r(m�F���S�w����,�Μi�eMs�U�x�ËP���@i����(�ԋ���׊��)��Bo��.�.����sf�x����m����enk,�C`�b	M���}W�������|����zK��3@.�v��	��k � 8��9 L �	$��� � � b���@���=�@ڐ�@#c�����r���'��o; 9 h��8^w��D<����wP]�Ј#�d04� � �qc�� �ЈW �m�߷�����G �q`c ��F�$ئ��(�vçlx��kB�jB������sc/�so�Sy��,<�r�A�U�?:�cQZ#?xt����o�P�j]���Z�D[�q����V�?�}/Y��A�Bi�ж��:Y�0�_�2��^�v�z`>��SC��/3�\����uo���\�c��	R�j�����6����!�Ծ�4@�^!����o�01��$
-m{�E[/'iŹw��]�zD�޾LZk�Ľ�A�r�AX?WY�Lo;>�U=��e�&���yj�hTW�^W�~yϪ�LOy���s\���ᔖ��=T�B��Rh����]�DQW�K𦵆)�Πn��M���e��ܮ����pI����؞"��Cq`���p��o%��? �i�Qh�NݡU�1^��jT��o��q
�k���i6��5�������b6Խ      �   �   x�m�In�0E��a�(s�Y6��@ ˬ��"|�JN���}��:�0HG�k�9��)8��͓tA��-�TZ��)��A�i"~�C�;���6&�Q�N��HN1in-wϖ#h�u����#<Ut����
^j�MT�.j�_\M	�8�	�h�lJ�Z/#�kQm���IN����z��d���zT�x]W�ۢ���E�:,�I�:.^v�e�i���_�D���      �   D  x����n�6���S�^D ��u�c{� [v�+K�$�I��CR�%�FR`d��OÙo>��nߵS�N�g_�;B��u����/���xVQr])%��w�`��ܽ�v���Ol[��<Jq	�QlW]���.)�"<�/`�f����ٍ����D{�>lS�'��<�I�<J,(6�.#~�ϕk��`9<D.���o!����<���#ԂkDS��m���s]�u&e8�^ ����K7B�����R{�YjN�jܡ��a���`�a�{�Ǳ:Տ��bB�,4���WfD*Ht!��}Ť
�pEQ2�NCw鿉ѱNt�-���c�j����J���A��t����PG7|�T�m�Ԩ侷���wߘ&M5!�{8��1F+k�n1��>��It^+Y�"L��`}��ċ��O~��Mu�����(M�x�ٍ�\�/��R"������[��T�_��oDs�T(:�\4��2�S�6.|�sr�����Q:&9����/��� �Ba��8����r�R&�x$�}�3OTL��&9�LS��R��H<�́T
��,�`��M�r m��4��Fܫ;y���M^Ӛ}t��>st��(�V�r�#R۸���/����>���be�;���?�9��ǟJFK�
F�|#0�:\�@@�/�x����Bh>�� y��uΞb$����$���@�M����쪿`�n���ఔ���I	�0T�8��9l�-5��!�(��|�/y���x\�)�@����d2�I@�o�,����1	�Bd
��k-}m� �<�>L�u1�a
�w���B�R�h��x�KK�NҞ�4	�|���)4q.i`Э�Ӯ> �P눸�'���@)9Zq1��l���$�`+�x&8k�.S�ٜ�"�=��^����H@�-Bؾ���{��k�t��b� �� �o�x���f��j��5Å)Ax���p�%�e=���EҾ;�U���w��ܓp�b.zK�IU��z�F04����3Qn����N�=Ap� �4�v[����-z�GwjW:��Bs�,x���77��K{�g�0�L( �N�d���;����;�=Y��ڈ0i�m�����(�<���7���M��[�1��	���Bl�c��2KP��A��*��"�Ho3�7o�G�J#e�xj�I!�$
_{��:��=SbC	#�*�B�	�g`��#΃��I!ڶ�?�&L�8��R�Ga��*M�V{���2,�[�_>�[r|O�	ay��󭊁��ś��Bi2��L�7�<u��o��wYNJSA�rk�z�?K��uοKmH��į�eߜ�*����,�r�      �   �  x�՗ײ�H��g���78Q����8��{�~���3����f�.e!e,D� �(�V�C������`�b����w�5�DZ˖���������q���E�a_B�� �D���6��EF���{���X'vƂ7XM���*��0�����n�k�TzJǹ�,��Hܟ�l46��#�F���.p�9�(�G*\�X{�h�U�,_�7��U�@��u�K[n�a�{<N�G�S�������������5�Re�/����pC�*�x�\x�è+��f����]ȷC�:4a(`�?�xu=]���d���9}�v�#8#p��	DQRmaґ��f�gU%�``��4� ��HU�.����)#_Z%~�	#9R.����q��k�]����=�����XN�?�����qמm�qb:ͼOK4�ƍ�Al8ϖ?��
�3�ɵ�q���_����ii�F�x	�Z#��i����ϕ��h�4��us/�u��cRm裡��g�����x(�_�2<��97�<4��'"$|��@�ˢ�M>��CV������ų�d��P���i��s)'�	YWw�|��mk��O��Ӱ׋`��ΫrT�����	jZ�/��M�MԷ[a��9��]�DT����Zj$��xIK�I|	˪���L٭-I��z��9I~�tyj��Xk�,_n�P�'�]�����V�-�~1�ȩF�)���h��h�<��oψ8#�3 �/�(�5}fCVc��	�c/ v#�1~ �WoD��-��
,j�8:ê.� �tQٽ٤}��2��:�w�"vgr�AT�=wUAlu͞+a��^'VQ��?}����h�6������6��k�VrsIհٚCEO`;e9�+�Zu�M��m��U��i�)'�� Bs�j��:��B��+�E��?A�oBp"�>#���5�d�r/b�Þ�.��<��fa����E]7{^�O7�~�nL�V��6�G]��2���,8��3���Ǚ¤�7���B�!"Q �}jz�#>�s"4^Aa\A$��H^�[���.�X�!:G����������ߴ��ˋu.�������pa
��3�?��"T�p;��R����O<��9ҡ�Z��kOf�s�uU#�*K@�k񝞤>�����%6Mzn� ��]�d {��PAj�4���f�U��}bZ�z�ߒ~�zt�luZv����Q���^��u_V����5�t������7��VC�{��N�;�/>;����v���GNM��PDW�O@m>�Q/�SD/3��w���2��k���u(����J�,j��'"�P�ȵwL��p|C�����3A�̋�1`�d+�7�ͼ���I���j�(�Y�-��@"~�P�%f�9�n���#6�x�p���gHs�i5���7l�ַ��rT������Q�V��aq[͇֮��t�W���i�	Jm�O7�1'���R������e=���R����C�JsW��)9�ݲ]^�~�I5!�i�V�%��`|5�%*̙���6�2���b��t����ƪ���r��>~��x��T@�|���P�$v�$-Q��3�܌b����2$��g��{XLK�!W�\]����x��a�;��M Z�(��OW��v��W~B*�Æ�aD���[��?��{%��qޣ�|ݚJ7�¬ۤ��ZPگV�J�����Pd�\_bE=�ʾ��� bx�N��o���2��:@Wũ��*�m��l}o�^�y�Z�ν��_"�o�qHg ~@(/�)�T>�˫���c�ih���"*�G���ʞ�=T��Mk������T3��5���M����(���ߦ�6���6��CF���d�<O�Ѯ��e1m^�貖�@�ѯ�����Ѹ�4p[�j�>d����?�r�����Hv��N��g���@�^zE0�5k0#s��Q>�uT�u��Bӵ:����W\W&D������SC��Q��%=�}�������l�2����߈���D���Fa?�W90o�-�%c�Qlv���_Q�զy��_�bzÄ��e8�|u4}2��rv�7�1/����O+� <����31+c����.�IAG����%��E{�ce3��~)��������V�_�k��k�i��͛���n�C�%��u�x���_�bt3,���܂5v�G�=�|�t��W�+��m���,��p'�k ������͜l�$,GE����U}������gX��)��k�������?^Y�            x������ � �            x������ � �         �  x����n�@�5<�,c�Μ��UU���&�F�&���;6�`?}�ċƮ�URY��g~X��89EK c1ʭҠ?�
j
�b��Ѳ�hʕs�����c&[.���=�U�"I��<�͢����0?K�%nɠĄ|�*yJfw�&�\S���ݏ����I��	����vB�.�m�D� �dTi�˥n���(�=CP�J	�b�av����wYi�F�����j�F��0������G������o�:I�!_�D�!�L�H9S�_�
��a�\R���*ٻ�m�~�e�A�*wԇ^����j�/FH���j=D�	a&�:FF�V˷�h�V�\lE��o�A��r��,���?�CC(O5�g�D,�X�r�֐6X��25�XD��M{S'�T;�qr���%Bun�1�ԷO}1���7�p)�� G�����Oi�o_�A��g��oS��         p   x�m�1C!�N���ų���H���~���5����\>�A<�F�4�`#��!�Be섣�)�
_�j�8�8�Y-��VDn��3����W�fye�t��b��0��j)�      �      x������ � �      �      x������ � �     