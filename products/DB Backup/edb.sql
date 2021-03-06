PGDMP         8                x            edb    12.2    12.2 (   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    59089    edb    DATABASE     �   CREATE DATABASE edb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE edb;
                postgres    false            �            1259    59217    account_emailaddress    TABLE     �   CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap    postgres    false            �            1259    59215    account_emailaddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public          postgres    false    219            �           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public          postgres    false    218            �            1259    59227    account_emailconfirmation    TABLE     �   CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap    postgres    false            �            1259    59225     account_emailconfirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public          postgres    false    221            �           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public          postgres    false    220            �            1259    59121 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    59119    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    59131    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    59129    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    59113    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    59111    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    59139 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    59149    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    59147    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    59137    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    59157    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    59155 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    59254    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    59252    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    223            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    222            �            1259    59103    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    59101    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    59092    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    59090    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    59431    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    59443    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    postgres    false            �            1259    59441    django_site_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          postgres    false    246            �           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          postgres    false    245            �            1259    59372    products_address    TABLE     o  CREATE TABLE public.products_address (
    id integer NOT NULL,
    street_address character varying(100) NOT NULL,
    apartment_address character varying(100) NOT NULL,
    country character varying(2) NOT NULL,
    zip character varying(100) NOT NULL,
    address_type character varying(1) NOT NULL,
    "default" boolean NOT NULL,
    user_id integer NOT NULL
);
 $   DROP TABLE public.products_address;
       public         heap    postgres    false            �            1259    59370    products_address_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_address_id_seq;
       public          postgres    false    243            �           0    0    products_address_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_address_id_seq OWNED BY public.products_address.id;
          public          postgres    false    242            �            1259    59287    products_brands    TABLE     s   CREATE TABLE public.products_brands (
    id integer NOT NULL,
    "Brand_Name" character varying(100) NOT NULL
);
 #   DROP TABLE public.products_brands;
       public         heap    postgres    false            �            1259    59285    products_brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.products_brands_id_seq;
       public          postgres    false    225            �           0    0    products_brands_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.products_brands_id_seq OWNED BY public.products_brands.id;
          public          postgres    false    224            �            1259    59295    products_categories    TABLE     z   CREATE TABLE public.products_categories (
    id integer NOT NULL,
    "Category_Name" character varying(100) NOT NULL
);
 '   DROP TABLE public.products_categories;
       public         heap    postgres    false            �            1259    59293    products_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.products_categories_id_seq;
       public          postgres    false    227            �           0    0    products_categories_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.products_categories_id_seq OWNED BY public.products_categories.id;
          public          postgres    false    226                        1259    67283    products_coupon    TABLE     �   CREATE TABLE public.products_coupon (
    id integer NOT NULL,
    code character varying(15) NOT NULL,
    amount double precision NOT NULL
);
 #   DROP TABLE public.products_coupon;
       public         heap    postgres    false            �            1259    67281    products_coupon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_coupon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.products_coupon_id_seq;
       public          postgres    false    256            �           0    0    products_coupon_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.products_coupon_id_seq OWNED BY public.products_coupon.id;
          public          postgres    false    255            �            1259    59303    products_item    TABLE     L  CREATE TABLE public.products_item (
    id integer NOT NULL,
    title character varying(80) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "Price" numeric(100,2) NOT NULL,
    "Discount" numeric(100,2) NOT NULL,
    slug character varying(80) NOT NULL,
    "Colour" character varying(80) NOT NULL,
    "Size" character varying(80) NOT NULL,
    "Weight" double precision NOT NULL,
    "Discription" text NOT NULL,
    "Modify_date" timestamp with time zone NOT NULL,
    "Expiry_date" timestamp with time zone NOT NULL,
    "Create_date" timestamp with time zone NOT NULL
);
 !   DROP TABLE public.products_item;
       public         heap    postgres    false            �            1259    59301    products_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.products_item_id_seq;
       public          postgres    false    229            �           0    0    products_item_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.products_item_id_seq OWNED BY public.products_item.id;
          public          postgres    false    228            �            1259    59356    products_order    TABLE     �  CREATE TABLE public.products_order (
    id integer NOT NULL,
    start_date timestamp with time zone NOT NULL,
    ordered_date timestamp with time zone NOT NULL,
    ordered boolean NOT NULL,
    user_id integer NOT NULL,
    billing_address_id integer,
    payment_id integer,
    shipping_address_id integer,
    being_delivered boolean NOT NULL,
    coupon_id integer,
    received boolean NOT NULL,
    refund_granted boolean NOT NULL,
    refund_requested boolean NOT NULL
);
 "   DROP TABLE public.products_order;
       public         heap    postgres    false            �            1259    59354    products_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.products_order_id_seq;
       public          postgres    false    239            �           0    0    products_order_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.products_order_id_seq OWNED BY public.products_order.id;
          public          postgres    false    238            �            1259    59364    products_order_items    TABLE     �   CREATE TABLE public.products_order_items (
    id integer NOT NULL,
    order_id integer NOT NULL,
    orderitem_id integer NOT NULL
);
 (   DROP TABLE public.products_order_items;
       public         heap    postgres    false            �            1259    59362    products_order_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_order_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.products_order_items_id_seq;
       public          postgres    false    241            �           0    0    products_order_items_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.products_order_items_id_seq OWNED BY public.products_order_items.id;
          public          postgres    false    240            �            1259    59348    products_orderitem    TABLE     �   CREATE TABLE public.products_orderitem (
    id integer NOT NULL,
    ordered boolean NOT NULL,
    quantity integer NOT NULL,
    iteml_id integer NOT NULL,
    user_id integer NOT NULL
);
 &   DROP TABLE public.products_orderitem;
       public         heap    postgres    false            �            1259    59346    products_orderitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_orderitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.products_orderitem_id_seq;
       public          postgres    false    237            �           0    0    products_orderitem_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.products_orderitem_id_seq OWNED BY public.products_orderitem.id;
          public          postgres    false    236                       1259    67316    products_payment    TABLE     �   CREATE TABLE public.products_payment (
    id integer NOT NULL,
    stripe_charge_id character varying(50) NOT NULL,
    amount double precision NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    user_id integer
);
 $   DROP TABLE public.products_payment;
       public         heap    postgres    false                       1259    67314    products_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_payment_id_seq;
       public          postgres    false    260            �           0    0    products_payment_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_payment_id_seq OWNED BY public.products_payment.id;
          public          postgres    false    259                       1259    67305    products_refund    TABLE     �   CREATE TABLE public.products_refund (
    id integer NOT NULL,
    reason text NOT NULL,
    accepted boolean NOT NULL,
    email character varying(254) NOT NULL,
    order_id integer NOT NULL
);
 #   DROP TABLE public.products_refund;
       public         heap    postgres    false                       1259    67303    products_refund_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_refund_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.products_refund_id_seq;
       public          postgres    false    258            �           0    0    products_refund_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.products_refund_id_seq OWNED BY public.products_refund.id;
          public          postgres    false    257            �            1259    59314    products_registration    TABLE     �  CREATE TABLE public.products_registration (
    id integer NOT NULL,
    "Sitemoto" character varying(100) NOT NULL,
    "Phonenumber" character varying(100) NOT NULL,
    "Email" character varying(254) NOT NULL,
    "Address" text NOT NULL,
    "Facebook" character varying(200) NOT NULL,
    "Twitter" character varying(200) NOT NULL,
    "Googlepls" character varying(200) NOT NULL,
    linkedin character varying(200) NOT NULL
);
 )   DROP TABLE public.products_registration;
       public         heap    postgres    false            �            1259    59312    products_registration_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_registration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.products_registration_id_seq;
       public          postgres    false    231            �           0    0    products_registration_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.products_registration_id_seq OWNED BY public.products_registration.id;
          public          postgres    false    230            �            1259    59335    products_user    TABLE     r  CREATE TABLE public.products_user (
    id integer NOT NULL,
    "FirstName" character varying(100) NOT NULL,
    "LastName" character varying(100) NOT NULL,
    "Email" character varying(254) NOT NULL,
    "Phonenumber" text NOT NULL,
    "Password" character varying(50) NOT NULL,
    "RePassword" character varying(50) NOT NULL,
    "UserName_id" integer NOT NULL
);
 !   DROP TABLE public.products_user;
       public         heap    postgres    false            �            1259    59333    products_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.products_user_id_seq;
       public          postgres    false    235            �           0    0    products_user_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.products_user_id_seq OWNED BY public.products_user.id;
          public          postgres    false    234            �            1259    59325    products_userprofile    TABLE     �   CREATE TABLE public.products_userprofile (
    id integer NOT NULL,
    stripe_customer_id character varying(50),
    one_click_purchasing boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.products_userprofile;
       public         heap    postgres    false            �            1259    59323    products_userprofile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.products_userprofile_id_seq;
       public          postgres    false    233            �           0    0    products_userprofile_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.products_userprofile_id_seq OWNED BY public.products_userprofile.id;
          public          postgres    false    232            �            1259    59454    socialaccount_socialaccount    TABLE     D  CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public         heap    postgres    false            �            1259    59452 "   socialaccount_socialaccount_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public          postgres    false    248            �           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;
          public          postgres    false    247            �            1259    59465    socialaccount_socialapp    TABLE     #  CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public         heap    postgres    false            �            1259    59463    socialaccount_socialapp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public          postgres    false    250            �           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;
          public          postgres    false    249            �            1259    59473    socialaccount_socialapp_sites    TABLE     �   CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);
 1   DROP TABLE public.socialaccount_socialapp_sites;
       public         heap    postgres    false            �            1259    59471 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
       public          postgres    false    252            �           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;
          public          postgres    false    251            �            1259    59481    socialaccount_socialtoken    TABLE     �   CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public         heap    postgres    false            �            1259    59479     socialaccount_socialtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public          postgres    false    254            �           0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;
          public          postgres    false    253            >           2604    59530    account_emailaddress id    DEFAULT     �   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            ?           2604    59531    account_emailconfirmation id    DEFAULT     �   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            9           2604    59532    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            :           2604    59533    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            8           2604    59534    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            ;           2604    59535    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            <           2604    59536    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            =           2604    59537    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            @           2604    59538    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            7           2604    59539    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            6           2604    59540    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            L           2604    59541    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            K           2604    59542    products_address id    DEFAULT     z   ALTER TABLE ONLY public.products_address ALTER COLUMN id SET DEFAULT nextval('public.products_address_id_seq'::regclass);
 B   ALTER TABLE public.products_address ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243            B           2604    59543    products_brands id    DEFAULT     x   ALTER TABLE ONLY public.products_brands ALTER COLUMN id SET DEFAULT nextval('public.products_brands_id_seq'::regclass);
 A   ALTER TABLE public.products_brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            C           2604    59544    products_categories id    DEFAULT     �   ALTER TABLE ONLY public.products_categories ALTER COLUMN id SET DEFAULT nextval('public.products_categories_id_seq'::regclass);
 E   ALTER TABLE public.products_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            Q           2604    67286    products_coupon id    DEFAULT     x   ALTER TABLE ONLY public.products_coupon ALTER COLUMN id SET DEFAULT nextval('public.products_coupon_id_seq'::regclass);
 A   ALTER TABLE public.products_coupon ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256            D           2604    59545    products_item id    DEFAULT     t   ALTER TABLE ONLY public.products_item ALTER COLUMN id SET DEFAULT nextval('public.products_item_id_seq'::regclass);
 ?   ALTER TABLE public.products_item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            I           2604    59359    products_order id    DEFAULT     v   ALTER TABLE ONLY public.products_order ALTER COLUMN id SET DEFAULT nextval('public.products_order_id_seq'::regclass);
 @   ALTER TABLE public.products_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            J           2604    59367    products_order_items id    DEFAULT     �   ALTER TABLE ONLY public.products_order_items ALTER COLUMN id SET DEFAULT nextval('public.products_order_items_id_seq'::regclass);
 F   ALTER TABLE public.products_order_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            H           2604    59351    products_orderitem id    DEFAULT     ~   ALTER TABLE ONLY public.products_orderitem ALTER COLUMN id SET DEFAULT nextval('public.products_orderitem_id_seq'::regclass);
 D   ALTER TABLE public.products_orderitem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            S           2604    67319    products_payment id    DEFAULT     z   ALTER TABLE ONLY public.products_payment ALTER COLUMN id SET DEFAULT nextval('public.products_payment_id_seq'::regclass);
 B   ALTER TABLE public.products_payment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            R           2604    67308    products_refund id    DEFAULT     x   ALTER TABLE ONLY public.products_refund ALTER COLUMN id SET DEFAULT nextval('public.products_refund_id_seq'::regclass);
 A   ALTER TABLE public.products_refund ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            E           2604    59546    products_registration id    DEFAULT     �   ALTER TABLE ONLY public.products_registration ALTER COLUMN id SET DEFAULT nextval('public.products_registration_id_seq'::regclass);
 G   ALTER TABLE public.products_registration ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            G           2604    59547    products_user id    DEFAULT     t   ALTER TABLE ONLY public.products_user ALTER COLUMN id SET DEFAULT nextval('public.products_user_id_seq'::regclass);
 ?   ALTER TABLE public.products_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            F           2604    59548    products_userprofile id    DEFAULT     �   ALTER TABLE ONLY public.products_userprofile ALTER COLUMN id SET DEFAULT nextval('public.products_userprofile_id_seq'::regclass);
 F   ALTER TABLE public.products_userprofile ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            M           2604    59549    socialaccount_socialaccount id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            N           2604    59550    socialaccount_socialapp id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            O           2604    59551     socialaccount_socialapp_sites id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);
 O   ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            P           2604    59552    socialaccount_socialtoken id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253    254            �          0    59217    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          postgres    false    219   ��      �          0    59227    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          postgres    false    221   ޔ      |          0    59121 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   ��      ~          0    59131    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �      z          0    59113    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   5�      �          0    59139 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   �      �          0    59149    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ��      �          0    59157    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   ��      �          0    59254    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    223   ˙      x          0    59103    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   4�      v          0    59092    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   0�      �          0    59431    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    244   ՟      �          0    59443    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    246   �      �          0    59372    products_address 
   TABLE DATA           �   COPY public.products_address (id, street_address, apartment_address, country, zip, address_type, "default", user_id) FROM stdin;
    public          postgres    false    243   L�      �          0    59287    products_brands 
   TABLE DATA           ;   COPY public.products_brands (id, "Brand_Name") FROM stdin;
    public          postgres    false    225   i�      �          0    59295    products_categories 
   TABLE DATA           B   COPY public.products_categories (id, "Category_Name") FROM stdin;
    public          postgres    false    227   ��      �          0    67283    products_coupon 
   TABLE DATA           ;   COPY public.products_coupon (id, code, amount) FROM stdin;
    public          postgres    false    256   ��      �          0    59303    products_item 
   TABLE DATA           �   COPY public.products_item (id, title, "Image", "Price", "Discount", slug, "Colour", "Size", "Weight", "Discription", "Modify_date", "Expiry_date", "Create_date") FROM stdin;
    public          postgres    false    229   �      �          0    59356    products_order 
   TABLE DATA           �   COPY public.products_order (id, start_date, ordered_date, ordered, user_id, billing_address_id, payment_id, shipping_address_id, being_delivered, coupon_id, received, refund_granted, refund_requested) FROM stdin;
    public          postgres    false    239   Q�      �          0    59364    products_order_items 
   TABLE DATA           J   COPY public.products_order_items (id, order_id, orderitem_id) FROM stdin;
    public          postgres    false    241   ��      �          0    59348    products_orderitem 
   TABLE DATA           V   COPY public.products_orderitem (id, ordered, quantity, iteml_id, user_id) FROM stdin;
    public          postgres    false    237   Ʃ      �          0    67316    products_payment 
   TABLE DATA           ^   COPY public.products_payment (id, stripe_charge_id, amount, "timestamp", user_id) FROM stdin;
    public          postgres    false    260   ��      �          0    67305    products_refund 
   TABLE DATA           P   COPY public.products_refund (id, reason, accepted, email, order_id) FROM stdin;
    public          postgres    false    258   �      �          0    59314    products_registration 
   TABLE DATA           �   COPY public.products_registration (id, "Sitemoto", "Phonenumber", "Email", "Address", "Facebook", "Twitter", "Googlepls", linkedin) FROM stdin;
    public          postgres    false    231   /�      �          0    59335    products_user 
   TABLE DATA           �   COPY public.products_user (id, "FirstName", "LastName", "Email", "Phonenumber", "Password", "RePassword", "UserName_id") FROM stdin;
    public          postgres    false    235   Ǫ      �          0    59325    products_userprofile 
   TABLE DATA           e   COPY public.products_userprofile (id, stripe_customer_id, one_click_purchasing, user_id) FROM stdin;
    public          postgres    false    233   �      �          0    59454    socialaccount_socialaccount 
   TABLE DATA           v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public          postgres    false    248   �      �          0    59465    socialaccount_socialapp 
   TABLE DATA           ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public          postgres    false    250   .�      �          0    59473    socialaccount_socialapp_sites 
   TABLE DATA           R   COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public          postgres    false    252   K�      �          0    59481    socialaccount_socialtoken 
   TABLE DATA           l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public          postgres    false    254   h�      �           0    0    account_emailaddress_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, true);
          public          postgres    false    218            �           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          postgres    false    220            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 100, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 107, true);
          public          postgres    false    222            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 25, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 47, true);
          public          postgres    false    202            �           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    245            �           0    0    products_address_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.products_address_id_seq', 1, true);
          public          postgres    false    242            �           0    0    products_brands_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.products_brands_id_seq', 2, true);
          public          postgres    false    224            �           0    0    products_categories_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.products_categories_id_seq', 1, false);
          public          postgres    false    226            �           0    0    products_coupon_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.products_coupon_id_seq', 1, true);
          public          postgres    false    255            �           0    0    products_item_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.products_item_id_seq', 16, true);
          public          postgres    false    228            �           0    0    products_order_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.products_order_id_seq', 2, true);
          public          postgres    false    238            �           0    0    products_order_items_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.products_order_items_id_seq', 98, true);
          public          postgres    false    240            �           0    0    products_orderitem_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.products_orderitem_id_seq', 60, true);
          public          postgres    false    236            �           0    0    products_payment_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.products_payment_id_seq', 1, false);
          public          postgres    false    259            �           0    0    products_refund_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.products_refund_id_seq', 1, false);
          public          postgres    false    257            �           0    0    products_registration_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.products_registration_id_seq', 1, true);
          public          postgres    false    230            �           0    0    products_user_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.products_user_id_seq', 1, true);
          public          postgres    false    234            �           0    0    products_userprofile_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.products_userprofile_id_seq', 1, true);
          public          postgres    false    232            �           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);
          public          postgres    false    247            �           0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);
          public          postgres    false    249            �           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);
          public          postgres    false    251            �           0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);
          public          postgres    false    253            }           2606    59250 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public            postgres    false    219                       2606    59222 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public            postgres    false    219            �           2606    59234 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public            postgres    false    221            �           2606    59232 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public            postgres    false    221            a           2606    59283    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            f           2606    59173 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            i           2606    59136 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            c           2606    59126    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            \           2606    59164 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            ^           2606    59118 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            q           2606    59154 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            t           2606    59188 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            k           2606    59144    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            w           2606    59162 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            z           2606    59202 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            n           2606    59277     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            �           2606    59263 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    223            W           2606    59110 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            Y           2606    59108 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            U           2606    59100 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            �           2606    59438 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    244            �           2606    59450 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            postgres    false    246            �           2606    59448    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            postgres    false    246            �           2606    59380 &   products_address products_address_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.products_address
    ADD CONSTRAINT products_address_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.products_address DROP CONSTRAINT products_address_pkey;
       public            postgres    false    243            �           2606    59292 $   products_brands products_brands_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.products_brands
    ADD CONSTRAINT products_brands_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.products_brands DROP CONSTRAINT products_brands_pkey;
       public            postgres    false    225            �           2606    59300 ,   products_categories products_categories_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.products_categories
    ADD CONSTRAINT products_categories_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.products_categories DROP CONSTRAINT products_categories_pkey;
       public            postgres    false    227            �           2606    67288 $   products_coupon products_coupon_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.products_coupon
    ADD CONSTRAINT products_coupon_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.products_coupon DROP CONSTRAINT products_coupon_pkey;
       public            postgres    false    256            �           2606    59311     products_item products_item_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.products_item
    ADD CONSTRAINT products_item_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.products_item DROP CONSTRAINT products_item_pkey;
       public            postgres    false    229            �           2606    59412 M   products_order_items products_order_items_order_id_orderitem_id_e0c44fff_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.products_order_items
    ADD CONSTRAINT products_order_items_order_id_orderitem_id_e0c44fff_uniq UNIQUE (order_id, orderitem_id);
 w   ALTER TABLE ONLY public.products_order_items DROP CONSTRAINT products_order_items_order_id_orderitem_id_e0c44fff_uniq;
       public            postgres    false    241    241            �           2606    59369 .   products_order_items products_order_items_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.products_order_items
    ADD CONSTRAINT products_order_items_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.products_order_items DROP CONSTRAINT products_order_items_pkey;
       public            postgres    false    241            �           2606    59361 "   products_order products_order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.products_order
    ADD CONSTRAINT products_order_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.products_order DROP CONSTRAINT products_order_pkey;
       public            postgres    false    239            �           2606    59353 *   products_orderitem products_orderitem_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.products_orderitem
    ADD CONSTRAINT products_orderitem_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.products_orderitem DROP CONSTRAINT products_orderitem_pkey;
       public            postgres    false    237            �           2606    67321 &   products_payment products_payment_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.products_payment
    ADD CONSTRAINT products_payment_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.products_payment DROP CONSTRAINT products_payment_pkey;
       public            postgres    false    260            �           2606    67313 $   products_refund products_refund_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.products_refund
    ADD CONSTRAINT products_refund_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.products_refund DROP CONSTRAINT products_refund_pkey;
       public            postgres    false    258            �           2606    59322 0   products_registration products_registration_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.products_registration
    ADD CONSTRAINT products_registration_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.products_registration DROP CONSTRAINT products_registration_pkey;
       public            postgres    false    231            �           2606    59554 5   products_user products_user_UserName_id_9a8c1431_uniq 
   CONSTRAINT     {   ALTER TABLE ONLY public.products_user
    ADD CONSTRAINT "products_user_UserName_id_9a8c1431_uniq" UNIQUE ("UserName_id");
 a   ALTER TABLE ONLY public.products_user DROP CONSTRAINT "products_user_UserName_id_9a8c1431_uniq";
       public            postgres    false    235            �           2606    59345 +   products_user products_user_UserName_id_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.products_user
    ADD CONSTRAINT "products_user_UserName_id_key" UNIQUE ("UserName_id");
 W   ALTER TABLE ONLY public.products_user DROP CONSTRAINT "products_user_UserName_id_key";
       public            postgres    false    235            �           2606    59343     products_user products_user_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.products_user
    ADD CONSTRAINT products_user_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.products_user DROP CONSTRAINT products_user_pkey;
       public            postgres    false    235            �           2606    59330 .   products_userprofile products_userprofile_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.products_userprofile
    ADD CONSTRAINT products_userprofile_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.products_userprofile DROP CONSTRAINT products_userprofile_pkey;
       public            postgres    false    233            �           2606    59332 5   products_userprofile products_userprofile_user_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.products_userprofile
    ADD CONSTRAINT products_userprofile_user_id_key UNIQUE (user_id);
 _   ALTER TABLE ONLY public.products_userprofile DROP CONSTRAINT products_userprofile_user_id_key;
       public            postgres    false    233            �           2606    59462 <   socialaccount_socialaccount socialaccount_socialaccount_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public            postgres    false    248            �           2606    59493 R   socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);
 |   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq;
       public            postgres    false    248    248            �           2606    59501 Y   socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);
 �   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq;
       public            postgres    false    252    252            �           2606    59470 4   socialaccount_socialapp socialaccount_socialapp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public            postgres    false    250            �           2606    59478 @   socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
       public            postgres    false    252            �           2606    59491 S   socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);
 }   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;
       public            postgres    false    254    254            �           2606    59489 8   socialaccount_socialtoken socialaccount_socialtoken_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public            postgres    false    254            {           1259    59251 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public            postgres    false    219            �           1259    59241 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public            postgres    false    219            �           1259    59248 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     �   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public            postgres    false    221            �           1259    59247 +   account_emailconfirmation_key_f43612bd_like    INDEX     �   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public            postgres    false    221            _           1259    59284    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            d           1259    59184 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            g           1259    59185 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            Z           1259    59170 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            o           1259    59200 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            r           1259    59199 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            u           1259    59214 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            x           1259    59213 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            l           1259    59278     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            �           1259    59274 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    223            �           1259    59275 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    223            �           1259    59440 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    244            �           1259    59439 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    244            �           1259    59451     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            postgres    false    246            �           1259    59430 %   products_address_UserName_id_e8427479    INDEX     g   CREATE INDEX "products_address_UserName_id_e8427479" ON public.products_address USING btree (user_id);
 ;   DROP INDEX public."products_address_UserName_id_e8427479";
       public            postgres    false    243            �           1259    59555    products_item_Slug_5d805453    INDEX     W   CREATE INDEX "products_item_Slug_5d805453" ON public.products_item USING btree (slug);
 1   DROP INDEX public."products_item_Slug_5d805453";
       public            postgres    false    229            �           1259    59556     products_item_Slug_5d805453_like    INDEX     p   CREATE INDEX "products_item_Slug_5d805453_like" ON public.products_item USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public."products_item_Slug_5d805453_like";
       public            postgres    false    229            �           1259    59381    products_item_slug_f9228702    INDEX     U   CREATE INDEX products_item_slug_f9228702 ON public.products_item USING btree (slug);
 /   DROP INDEX public.products_item_slug_f9228702;
       public            postgres    false    229            �           1259    59382     products_item_slug_f9228702_like    INDEX     n   CREATE INDEX products_item_slug_f9228702_like ON public.products_item USING btree (slug varchar_pattern_ops);
 4   DROP INDEX public.products_item_slug_f9228702_like;
       public            postgres    false    229            �           1259    67432 *   products_order_billing_address_id_9b770143    INDEX     s   CREATE INDEX products_order_billing_address_id_9b770143 ON public.products_order USING btree (billing_address_id);
 >   DROP INDEX public.products_order_billing_address_id_9b770143;
       public            postgres    false    239            �           1259    67451 !   products_order_coupon_id_c2ee11d3    INDEX     a   CREATE INDEX products_order_coupon_id_c2ee11d3 ON public.products_order USING btree (coupon_id);
 5   DROP INDEX public.products_order_coupon_id_c2ee11d3;
       public            postgres    false    239            �           1259    59423 &   products_order_items_order_id_9e8fcfa0    INDEX     k   CREATE INDEX products_order_items_order_id_9e8fcfa0 ON public.products_order_items USING btree (order_id);
 :   DROP INDEX public.products_order_items_order_id_9e8fcfa0;
       public            postgres    false    241            �           1259    59424 *   products_order_items_orderitem_id_85e108d2    INDEX     s   CREATE INDEX products_order_items_orderitem_id_85e108d2 ON public.products_order_items USING btree (orderitem_id);
 >   DROP INDEX public.products_order_items_orderitem_id_85e108d2;
       public            postgres    false    241            �           1259    67438 "   products_order_payment_id_8b27435b    INDEX     c   CREATE INDEX products_order_payment_id_8b27435b ON public.products_order USING btree (payment_id);
 6   DROP INDEX public.products_order_payment_id_8b27435b;
       public            postgres    false    239            �           1259    67444 +   products_order_shipping_address_id_f492bd7f    INDEX     u   CREATE INDEX products_order_shipping_address_id_f492bd7f ON public.products_order USING btree (shipping_address_id);
 ?   DROP INDEX public.products_order_shipping_address_id_f492bd7f;
       public            postgres    false    239            �           1259    59410    products_order_user_id_dfb540d8    INDEX     ]   CREATE INDEX products_order_user_id_dfb540d8 ON public.products_order USING btree (user_id);
 3   DROP INDEX public.products_order_user_id_dfb540d8;
       public            postgres    false    239            �           1259    59403 $   products_orderitem_iteml_id_d9549225    INDEX     g   CREATE INDEX products_orderitem_iteml_id_d9549225 ON public.products_orderitem USING btree (iteml_id);
 8   DROP INDEX public.products_orderitem_iteml_id_d9549225;
       public            postgres    false    237            �           1259    59404 #   products_orderitem_user_id_95e86fc2    INDEX     e   CREATE INDEX products_orderitem_user_id_95e86fc2 ON public.products_orderitem USING btree (user_id);
 7   DROP INDEX public.products_orderitem_user_id_95e86fc2;
       public            postgres    false    237            �           1259    67345 !   products_payment_user_id_6a9958df    INDEX     a   CREATE INDEX products_payment_user_id_6a9958df ON public.products_payment USING btree (user_id);
 5   DROP INDEX public.products_payment_user_id_6a9958df;
       public            postgres    false    260            �           1259    67339 !   products_refund_order_id_599cc2ed    INDEX     a   CREATE INDEX products_refund_order_id_599cc2ed ON public.products_refund USING btree (order_id);
 5   DROP INDEX public.products_refund_order_id_599cc2ed;
       public            postgres    false    258            �           1259    59499 ,   socialaccount_socialaccount_user_id_8146e70c    INDEX     w   CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);
 @   DROP INDEX public.socialaccount_socialaccount_user_id_8146e70c;
       public            postgres    false    248            �           1259    59513 .   socialaccount_socialapp_sites_site_id_2579dee5    INDEX     {   CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);
 B   DROP INDEX public.socialaccount_socialapp_sites_site_id_2579dee5;
       public            postgres    false    252            �           1259    59512 3   socialaccount_socialapp_sites_socialapp_id_97fb6e7d    INDEX     �   CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);
 G   DROP INDEX public.socialaccount_socialapp_sites_socialapp_id_97fb6e7d;
       public            postgres    false    252            �           1259    59524 -   socialaccount_socialtoken_account_id_951f210e    INDEX     y   CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);
 A   DROP INDEX public.socialaccount_socialtoken_account_id_951f210e;
       public            postgres    false    254            �           1259    59525 )   socialaccount_socialtoken_app_id_636a42d7    INDEX     q   CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);
 =   DROP INDEX public.socialaccount_socialtoken_app_id_636a42d7;
       public            postgres    false    254            �           2606    59235 J   account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id;
       public          postgres    false    2923    213    219            �           2606    59242 U   account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
       public          postgres    false    2943    221    219            �           2606    59179 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    211    207    2910            �           2606    59174 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2915    209    211            �           2606    59165 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2905    207    205            �           2606    59194 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    215    2915            �           2606    59189 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    215    213    2923            �           2606    59208 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    2910    207            �           2606    59203 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    213    2923            �           2606    59264 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    223    2905    205            �           2606    59269 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    213    2923    223            �           2606    67414 B   products_address products_address_user_id_56d505a4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_address
    ADD CONSTRAINT products_address_user_id_56d505a4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.products_address DROP CONSTRAINT products_address_user_id_56d505a4_fk_auth_user_id;
       public          postgres    false    213    2923    243            �           2606    67433 F   products_order products_order_billing_address_id_9b770143_fk_products_    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_order
    ADD CONSTRAINT products_order_billing_address_id_9b770143_fk_products_ FOREIGN KEY (billing_address_id) REFERENCES public.products_address(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.products_order DROP CONSTRAINT products_order_billing_address_id_9b770143_fk_products_;
       public          postgres    false    2996    243    239            �           2606    67452 F   products_order products_order_coupon_id_c2ee11d3_fk_products_coupon_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_order
    ADD CONSTRAINT products_order_coupon_id_c2ee11d3_fk_products_coupon_id FOREIGN KEY (coupon_id) REFERENCES public.products_coupon(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.products_order DROP CONSTRAINT products_order_coupon_id_c2ee11d3_fk_products_coupon_id;
       public          postgres    false    256    239    3026            �           2606    59413 P   products_order_items products_order_items_order_id_9e8fcfa0_fk_products_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_order_items
    ADD CONSTRAINT products_order_items_order_id_9e8fcfa0_fk_products_order_id FOREIGN KEY (order_id) REFERENCES public.products_order(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.products_order_items DROP CONSTRAINT products_order_items_order_id_9e8fcfa0_fk_products_order_id;
       public          postgres    false    2985    239    241            �           2606    59418 L   products_order_items products_order_items_orderitem_id_85e108d2_fk_products_    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_order_items
    ADD CONSTRAINT products_order_items_orderitem_id_85e108d2_fk_products_ FOREIGN KEY (orderitem_id) REFERENCES public.products_orderitem(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.products_order_items DROP CONSTRAINT products_order_items_orderitem_id_85e108d2_fk_products_;
       public          postgres    false    2979    241    237            �           2606    67439 H   products_order products_order_payment_id_8b27435b_fk_products_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_order
    ADD CONSTRAINT products_order_payment_id_8b27435b_fk_products_payment_id FOREIGN KEY (payment_id) REFERENCES public.products_payment(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.products_order DROP CONSTRAINT products_order_payment_id_8b27435b_fk_products_payment_id;
       public          postgres    false    3031    260    239            �           2606    67445 G   products_order products_order_shipping_address_id_f492bd7f_fk_products_    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_order
    ADD CONSTRAINT products_order_shipping_address_id_f492bd7f_fk_products_ FOREIGN KEY (shipping_address_id) REFERENCES public.products_address(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.products_order DROP CONSTRAINT products_order_shipping_address_id_f492bd7f_fk_products_;
       public          postgres    false    243    2996    239            �           2606    59405 >   products_order products_order_user_id_dfb540d8_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_order
    ADD CONSTRAINT products_order_user_id_dfb540d8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.products_order DROP CONSTRAINT products_order_user_id_dfb540d8_fk_auth_user_id;
       public          postgres    false    213    2923    239            �           2606    59393 K   products_orderitem products_orderitem_iteml_id_d9549225_fk_products_item_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_orderitem
    ADD CONSTRAINT products_orderitem_iteml_id_d9549225_fk_products_item_id FOREIGN KEY (iteml_id) REFERENCES public.products_item(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.products_orderitem DROP CONSTRAINT products_orderitem_iteml_id_d9549225_fk_products_item_id;
       public          postgres    false    2962    237    229            �           2606    59398 F   products_orderitem products_orderitem_user_id_95e86fc2_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_orderitem
    ADD CONSTRAINT products_orderitem_user_id_95e86fc2_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.products_orderitem DROP CONSTRAINT products_orderitem_user_id_95e86fc2_fk_auth_user_id;
       public          postgres    false    237    2923    213            �           2606    67340 B   products_payment products_payment_user_id_6a9958df_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_payment
    ADD CONSTRAINT products_payment_user_id_6a9958df_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.products_payment DROP CONSTRAINT products_payment_user_id_6a9958df_fk_auth_user_id;
       public          postgres    false    260    2923    213            �           2606    67334 F   products_refund products_refund_order_id_599cc2ed_fk_products_order_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_refund
    ADD CONSTRAINT products_refund_order_id_599cc2ed_fk_products_order_id FOREIGN KEY (order_id) REFERENCES public.products_order(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.products_refund DROP CONSTRAINT products_refund_order_id_599cc2ed_fk_products_order_id;
       public          postgres    false    258    239    2985            �           2606    59388 @   products_user products_user_UserName_id_9a8c1431_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_user
    ADD CONSTRAINT "products_user_UserName_id_9a8c1431_fk_auth_user_id" FOREIGN KEY ("UserName_id") REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.products_user DROP CONSTRAINT "products_user_UserName_id_9a8c1431_fk_auth_user_id";
       public          postgres    false    235    213    2923            �           2606    59383 J   products_userprofile products_userprofile_user_id_e3fc8f20_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_userprofile
    ADD CONSTRAINT products_userprofile_user_id_e3fc8f20_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.products_userprofile DROP CONSTRAINT products_userprofile_user_id_e3fc8f20_fk_auth_user_id;
       public          postgres    false    2923    233    213            �           2606    59514 O   socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc;
       public          postgres    false    248    3007    254            �           2606    59519 K   socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc;
       public          postgres    false    250    3012    254            �           2606    59507 P   socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si;
       public          postgres    false    3005    252    246            �           2606    59502 U   socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc;
       public          postgres    false    250    252    3012            �           2606    59494 X   socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id;
       public          postgres    false    2923    248    213            �      x������ � �      �      x������ � �      |      x������ � �      ~      x������ � �      z   �  x�}�]�� F�aYA���n�R�&��j[����f>|�7g�3�`����p�����d�����?����#����f�
S��ڻ�SV�;���	��d6��1��8=U��xB7R@�l+��%A�v��w\�,o���U���6g)�ɋ#�"B:��oA�e2x�vQ�p��T���J�@-�N �< ������b��|��������٪�Д�Ѧ�"LB���+��O�ř53��k��jÿ�xa���LT;c��0Q�y��p���fUt�G]@y�j� �4Q���i9��/r���0��Ӳ[��+�9��%s��F@m�$���s�[#]f����1.�as?r�)�y]V�<�@���ǌ�X��6ynY$'�q�e�t��7�\��sS�����Ҥ.�Վ�x0��
�*�tǐPd`���}�����<��*��l\P�U&�ٸ��	��l\@�&��6��{T!��S�j�gđ���3�`ȏ��wr�ȓy�����L8��Hװ+0B	D
v��4R����J������mZF�C���]C�#�ACW#A�>F65����7ۇ2�`tϺ�6�����H��'рq�;�U����u[���i'�t���d��gyYb�h����Hs����i^���n�i����t]��⺓��� q�I�{r<]�܃�2_��s��卬5��#䕬-Pƭ�����
#�~�G�$��a2�hD�� [4Uř%u� �t��#�tw�t�&��.�W�"D��Ao�\!8�I��Ay��p�G��><J�T��IW�@A-1�.Ё��]�Q���������=čt_����o��#Ri�T#w������y�|��zU�������P�"�ԏ��� q�,�H`�S��ߴ��_+      �   �   x�%��
�@F�3O��]�w��QZBf%
A(��N�޾���g�	��׳���WH�!�����L��
��M��;v��>�{���p�R�n3�n�����2�#=��d��D2�)���~�̰�ܷ��B�9�9Dk����!V)�      �      x������ � �      �      x������ � �      �   Y  x���Ko�@���W �ZU�Ǽw��f�v�.�,H�*,��(���@N��w��3g.�"�P�1��%
$RZ~�"���.�(l�pay�XJ�#p=�q��/����e�U����S��3{6�X�{�K��}\��I��~k׏�d�JWK?>=�Dȍ���IZ(�d�A��rtZNrc�LzD�hcr�"ٴwU'� ������Z��t�ڇ����:ɫ����i��qB��Kl���>y��Lv�~p�ΣN�UG:�[���C�#���4�����.>�v�����툶�\��w�N�gV&�z@i�,�c��+��2ަ�"p~�߆[��U���'hͨ�|��&ݎˎ�)c���+'���$�hp��]f���ΫC�T#�����ekL�#qs�ۺjlY�YY��Wg&uHy��&><z�s��ItYhޜ�ԋVz��<���w����F�w����F�
N;=L3L����ԂX�����3�E�i��J��>,f&,�1G�@ňad{�B+��[FM)�6��!��!�f�1q������
�qI]��L	�gW�%�O�L��G%X99\P>��X,����      x   �   x�m�Ir� E��aR��١b����#wǅ����
�>&���`Z��L|)>E<��ĩe^�b��M�JY]2���+zV��7(�J�z�����
���s,i�8b�8z����%Yo�-�P���Q鷡�~Hڞ!sr��_l�+�����4%�$�ұ�P];`�|��g���D�~&T�#G�� �#~�է��dە����������E�zg:�%���"�p�      v   �  x����n�0���S�~U43�gYɲ�M�H�T�ۯ���$�A���`V�]�]�g?f ���и6# x����d(A�R	%�_ K�����B%�"���~��c�FC�_����kZ{r_���1���b����t��5���E�6ٶ?ƨ�o;�S��m|~o]]�c�b�Fl�(��
M�ٷ�m��7U,�.N�@\p��l�zZ>��������T(�Ws&Ց�k����fgc3��9G)r�!$�Xp��'*I,6_��ė����՟�^X��X1[��KL��0ע���ڽ^��B�$HŸ?�fHy����s� X�9q��Чk�څ~��C?ؓGw��H4R?�LD��ԃؑ
2ɞJ0s��S4f*Rh�JCXhǡ��ϑ� �0�DB;�c\ޞ�����]��B�H��LU�T���N�
�����k*%¨U��؄�6ʤ�tm�u2�>�Qg�����G[����l�xٓKW�E�����r���㻋�퇮Ik�@�$��
������onj���*��u�!�U��&�e �-���/���RR�s���Q�D�B�o���	���N���DZP���eM��D�@���`|�*��5'�N��+����[�)��9�&��W���ta*Y�t�����p��60      �   :  x���Ko۸�u�)���o�f�N����A
������ԛ�ޟ~�NT�]����D�p��9$���؆s]����tC�#Wр�O��1}{H���]�/���|T/O��˯�_���:N��q~%/����Ը�B���{}�?��s,ϯ�E�ǽ�=��)��˱
���y;�|�����I�2��.��_}��y�]/?����^L�����9�����W��_��u���tAi�dy�:����ု�o�5��_���]�����/�p
���~:>��~B �? ���@`aD0�@=>�"�j]�v@�R����)�T�.�,��n|��!��E:��;_�4%~i0�]�w�M[��
De���1;d���uzy�^^O?����_��������&��y���/����G4~����<�e�C����Њ- f�#�NK�x�J������(���!Vg�m��#Zv/%�Q�8��u �X�@����P�Zv6�Y*[��h�u�ER��5O9���M��TG§���eKilT�퇴p��-k��Ep��_��6DLm;�����aP�U��~HKv�{�{�/�2���}Z��Y֦Q"a�*�Iۚ!	5"�=��#K�"�uh���Փ�}�Z�!5��hLSM���@��v	�=�F9�M����_ǳ���C'��;߈�Qm/6�i�"�����1\iuUeF�UcS<s�m���P�i��c;<�z�.�+��]O�zOvc���2��-��#ޫ�0?,Lv�W��
@ �ﴳ��#T�6��F7EW���9�[��E�<�������`���Rf=:l��AdA�Ҵm+I���I�=L�"F�;�l�0�+*Vv�?f=��4��qj���t�r��\�*@ؚ�FT����I^f�F�@3�+�U懕��z(
n�˙�ח^�KGU��E&jYC�Q�}�ۆZi��>�_X˧�`�����)�S�5U`��9ቜ��Шi�]���G����i���и�^��!�c�N�):��,�F��h?��;�z�{;�� ��,�}��~�)�e��T��v6x��w-8"�c�ش��I�3�ۮ����M�sZg�)˝��v�\��u^����dFᤅ5��1�o�0��]�̻�-v0C���s��9����چ8E��e`&P�yG7��h	�w8��w�"� Z�V#K��j�����K�P��l�Z�[(��%K P��{��r.�(��~��m�#&�K��=��܆1���b�ٵ�jC\�,`���&0����)_���Zv���PF\�6�u>���B�      �      x�3�L�H�-�I�K��Efs��qqq �<	�      �      x������ � �      �   !   x�3�JMQp,(�I�2�t/JM̓�b���� �pb      �      x������ � �      �      x�3�42505�440������ ��      �   a  x�u�[��6ǟ�O�>Tx}����v�Z);�f���Z)2�K��@���kl !0!�c�;���.�D��M��~�J���M� D>a�)�yQ�AT�>�͗`��:�d���*XH���J`Y+	E\�|9��S�z�ß�W!���{��r��md���M�;�;�@B#J#L�<b������y��i0N��%����>s%���/�OFu΃�4U�#�/<nl0'{#��hr�r���	&�t�CI�݈�5�l�0(<�y�<>�@�
J4���;m�5r�0a�/�����#�Ó��F�LG!��]e4+��fE?���O�W1&4����N�_�Uֽ�<��6�z��f��%�JQt�;<?�a7"���~�x��>�q)��N������~{�瀎/�c}�S�c�:v�������ql���ċ�F���ݘ���#=���zd9�yk�Y�����'���@����
1�S�MP.�7S��-�Uc����@۟t��d	O�Y��|��:A}�)�.����`|kP�m�j������w1�@)�������|~v�}>��d���S|��~�'t�jU�y�W�M�F< �F@���#��{�'��(E��m�U�2������-tA��q�'y�O�K�We�A�l5�Qa(�.a����L%�Xe[0�;����;�ܑ�:Խ��L�6l�/�����UuL
g�L���K'�b�Իe=�/u�N�Wm���f��^󼣒��ޱo�B>nz/[5�Y	>Rt�z$d�ֹ��<9v�l�ǽ��h�)1��-�/i�up�
y7�����+��o4�Ia1�:f���v����z*)      �   @   x�3�4202�50�54T02�2��26�36�077�60�26�� *��i��E Nr��qqq �7�      �      x����4�43������ 6�      �      x�31�L�4�4�4�23 3���=... =��      �      x������ � �      �      x������ � �      �   �   x�e�M� ��5��(?ZCtՃ���	L��]5�f�d�,)�J�.R^� ��F�~C4Y�=謅ׄA�gs
�x�"n��y����l��\3~��h����������Ct�@�
D~dX�:�_H?\Ԥ�QJ?��@K      �      x������ � �      �      x�3�44261532��L�4����� (�h      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     