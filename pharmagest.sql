PGDMP  &                    }         
   pharmagest    16.4    16.4 _    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398 
   pharmagest    DATABASE     }   CREATE DATABASE pharmagest WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE pharmagest;
                postgres    false            �            1259    16675    commande    TABLE     �   CREATE TABLE public.commande (
    idcommande integer NOT NULL,
    montant numeric(10,2),
    date_commande date DEFAULT CURRENT_DATE,
    idpharmacien integer,
    idfournisseur integer
);
    DROP TABLE public.commande;
       public         heap    postgres    false            �            1259    16674    commande_idcommande_seq    SEQUENCE     �   CREATE SEQUENCE public.commande_idcommande_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.commande_idcommande_seq;
       public          postgres    false    227            �           0    0    commande_idcommande_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.commande_idcommande_seq OWNED BY public.commande.idcommande;
          public          postgres    false    226            �            1259    16632    famille    TABLE     i   CREATE TABLE public.famille (
    idfamille integer NOT NULL,
    nom character varying(255) NOT NULL
);
    DROP TABLE public.famille;
       public         heap    postgres    false            �            1259    16631    famille_idfamille_seq    SEQUENCE     �   CREATE SEQUENCE public.famille_idfamille_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.famille_idfamille_seq;
       public          postgres    false    219            �           0    0    famille_idfamille_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.famille_idfamille_seq OWNED BY public.famille.idfamille;
          public          postgres    false    218            �            1259    16666    fournisseur    TABLE     �   CREATE TABLE public.fournisseur (
    idfournisseur integer NOT NULL,
    nom character varying(255) NOT NULL,
    adresse text,
    contact character varying(50),
    email character varying(255)
);
    DROP TABLE public.fournisseur;
       public         heap    postgres    false            �            1259    16665    fournisseur_idfournisseur_seq    SEQUENCE     �   CREATE SEQUENCE public.fournisseur_idfournisseur_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.fournisseur_idfournisseur_seq;
       public          postgres    false    225            �           0    0    fournisseur_idfournisseur_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.fournisseur_idfournisseur_seq OWNED BY public.fournisseur.idfournisseur;
          public          postgres    false    224            �            1259    16693    ligne_commande    TABLE     �   CREATE TABLE public.ligne_commande (
    idlignecommande integer NOT NULL,
    quantite integer NOT NULL,
    prix_unitaire numeric(10,2),
    idcommande integer,
    idmedicament integer
);
 "   DROP TABLE public.ligne_commande;
       public         heap    postgres    false            �            1259    16692 "   ligne_commande_idlignecommande_seq    SEQUENCE     �   CREATE SEQUENCE public.ligne_commande_idlignecommande_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.ligne_commande_idlignecommande_seq;
       public          postgres    false    229            �           0    0 "   ligne_commande_idlignecommande_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.ligne_commande_idlignecommande_seq OWNED BY public.ligne_commande.idlignecommande;
          public          postgres    false    228            �            1259    16724    ligne_vente    TABLE     �   CREATE TABLE public.ligne_vente (
    idlignevente integer NOT NULL,
    quantite integer NOT NULL,
    prix_unitaire numeric(10,2),
    idvente integer,
    idmedicament integer
);
    DROP TABLE public.ligne_vente;
       public         heap    postgres    false            �            1259    16723    ligne_vente_idlignevente_seq    SEQUENCE     �   CREATE SEQUENCE public.ligne_vente_idlignevente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.ligne_vente_idlignevente_seq;
       public          postgres    false    233            �           0    0    ligne_vente_idlignevente_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.ligne_vente_idlignevente_seq OWNED BY public.ligne_vente.idlignevente;
          public          postgres    false    232            �            1259    16646 
   medicament    TABLE     y  CREATE TABLE public.medicament (
    idmedicament integer NOT NULL,
    nom character varying(255) NOT NULL,
    forme character varying(255),
    prix_achat numeric(10,2) NOT NULL,
    prix_vente numeric(10,2) NOT NULL,
    stock integer DEFAULT 0,
    seuil_commande integer,
    quantite_max integer,
    idfamille integer,
    idunite integer,
    dci character varying
);
    DROP TABLE public.medicament;
       public         heap    postgres    false            �            1259    16645    medicament_idmedicament_seq    SEQUENCE     �   CREATE SEQUENCE public.medicament_idmedicament_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.medicament_idmedicament_seq;
       public          postgres    false    223            �           0    0    medicament_idmedicament_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.medicament_idmedicament_seq OWNED BY public.medicament.idmedicament;
          public          postgres    false    222            �            1259    16741 
   ordonnance    TABLE     �   CREATE TABLE public.ordonnance (
    idordonnance integer NOT NULL,
    date_ordonnance date DEFAULT CURRENT_DATE,
    nom_medecin character varying(255),
    idvente integer
);
    DROP TABLE public.ordonnance;
       public         heap    postgres    false            �            1259    16740    ordonnance_idordonnance_seq    SEQUENCE     �   CREATE SEQUENCE public.ordonnance_idordonnance_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ordonnance_idordonnance_seq;
       public          postgres    false    235            �           0    0    ordonnance_idordonnance_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ordonnance_idordonnance_seq OWNED BY public.ordonnance.idordonnance;
          public          postgres    false    234            �            1259    16763    ticket_vente    TABLE     �  CREATE TABLE public.ticket_vente (
    idticket integer NOT NULL,
    idvente integer NOT NULL,
    date_ticket timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    statut_ticket character varying(20) DEFAULT 'en attente'::character varying,
    montant_total numeric(10,2) NOT NULL,
    idcaissier integer NOT NULL,
    CONSTRAINT ticket_vente_statut_ticket_check CHECK (((statut_ticket)::text = ANY ((ARRAY['en attente'::character varying, 'payé'::character varying])::text[])))
);
     DROP TABLE public.ticket_vente;
       public         heap    postgres    false            �            1259    16762    ticket_vente_idticket_seq    SEQUENCE     �   CREATE SEQUENCE public.ticket_vente_idticket_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ticket_vente_idticket_seq;
       public          postgres    false    237            �           0    0    ticket_vente_idticket_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ticket_vente_idticket_seq OWNED BY public.ticket_vente.idticket;
          public          postgres    false    236            �            1259    16639    unite    TABLE     e   CREATE TABLE public.unite (
    idunite integer NOT NULL,
    nom character varying(255) NOT NULL
);
    DROP TABLE public.unite;
       public         heap    postgres    false            �            1259    16638    unite_idunite_seq    SEQUENCE     �   CREATE SEQUENCE public.unite_idunite_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.unite_idunite_seq;
       public          postgres    false    221            �           0    0    unite_idunite_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.unite_idunite_seq OWNED BY public.unite.idunite;
          public          postgres    false    220            �            1259    16404    useraccounts    TABLE     �  CREATE TABLE public.useraccounts (
    iduseraccounts integer NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    username character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    last_login timestamp without time zone,
    role character varying(50),
    CONSTRAINT chk_role CHECK (((role)::text = ANY ((ARRAY['Pharmacien'::character varying, 'Vendeur'::character varying])::text[])))
);
     DROP TABLE public.useraccounts;
       public         heap    postgres    false            �            1259    16403    useraccounts_iduseraccounts_seq    SEQUENCE     �   CREATE SEQUENCE public.useraccounts_iduseraccounts_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.useraccounts_iduseraccounts_seq;
       public          postgres    false    217            �           0    0    useraccounts_iduseraccounts_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.useraccounts_iduseraccounts_seq OWNED BY public.useraccounts.iduseraccounts;
          public          postgres    false    216            �            1259    16400    users    TABLE     u   CREATE TABLE public.users (
    username character varying(100) NOT NULL,
    mdp character varying(100) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16710    vente    TABLE     i  CREATE TABLE public.vente (
    idvente integer NOT NULL,
    date_vente date DEFAULT CURRENT_DATE,
    montant_total numeric(10,2),
    type_vente character varying(50),
    idvendeur integer,
    statut_vente character varying(20) DEFAULT 'en attente'::character varying,
    CONSTRAINT vente_statut_vente_check CHECK (((statut_vente)::text = ANY ((ARRAY['en attente'::character varying, 'payé'::character varying, 'finalisé'::character varying])::text[]))),
    CONSTRAINT vente_type_vente_check CHECK (((type_vente)::text = ANY ((ARRAY['Libre'::character varying, 'Prescrite'::character varying])::text[])))
);
    DROP TABLE public.vente;
       public         heap    postgres    false            �            1259    16709    vente_idvente_seq    SEQUENCE     �   CREATE SEQUENCE public.vente_idvente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.vente_idvente_seq;
       public          postgres    false    231            �           0    0    vente_idvente_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.vente_idvente_seq OWNED BY public.vente.idvente;
          public          postgres    false    230            �           2604    16678    commande idcommande    DEFAULT     z   ALTER TABLE ONLY public.commande ALTER COLUMN idcommande SET DEFAULT nextval('public.commande_idcommande_seq'::regclass);
 B   ALTER TABLE public.commande ALTER COLUMN idcommande DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    16635    famille idfamille    DEFAULT     v   ALTER TABLE ONLY public.famille ALTER COLUMN idfamille SET DEFAULT nextval('public.famille_idfamille_seq'::regclass);
 @   ALTER TABLE public.famille ALTER COLUMN idfamille DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16669    fournisseur idfournisseur    DEFAULT     �   ALTER TABLE ONLY public.fournisseur ALTER COLUMN idfournisseur SET DEFAULT nextval('public.fournisseur_idfournisseur_seq'::regclass);
 H   ALTER TABLE public.fournisseur ALTER COLUMN idfournisseur DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16696    ligne_commande idlignecommande    DEFAULT     �   ALTER TABLE ONLY public.ligne_commande ALTER COLUMN idlignecommande SET DEFAULT nextval('public.ligne_commande_idlignecommande_seq'::regclass);
 M   ALTER TABLE public.ligne_commande ALTER COLUMN idlignecommande DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    16727    ligne_vente idlignevente    DEFAULT     �   ALTER TABLE ONLY public.ligne_vente ALTER COLUMN idlignevente SET DEFAULT nextval('public.ligne_vente_idlignevente_seq'::regclass);
 G   ALTER TABLE public.ligne_vente ALTER COLUMN idlignevente DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    16649    medicament idmedicament    DEFAULT     �   ALTER TABLE ONLY public.medicament ALTER COLUMN idmedicament SET DEFAULT nextval('public.medicament_idmedicament_seq'::regclass);
 F   ALTER TABLE public.medicament ALTER COLUMN idmedicament DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16744    ordonnance idordonnance    DEFAULT     �   ALTER TABLE ONLY public.ordonnance ALTER COLUMN idordonnance SET DEFAULT nextval('public.ordonnance_idordonnance_seq'::regclass);
 F   ALTER TABLE public.ordonnance ALTER COLUMN idordonnance DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    16766    ticket_vente idticket    DEFAULT     ~   ALTER TABLE ONLY public.ticket_vente ALTER COLUMN idticket SET DEFAULT nextval('public.ticket_vente_idticket_seq'::regclass);
 D   ALTER TABLE public.ticket_vente ALTER COLUMN idticket DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    16642    unite idunite    DEFAULT     n   ALTER TABLE ONLY public.unite ALTER COLUMN idunite SET DEFAULT nextval('public.unite_idunite_seq'::regclass);
 <   ALTER TABLE public.unite ALTER COLUMN idunite DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16407    useraccounts iduseraccounts    DEFAULT     �   ALTER TABLE ONLY public.useraccounts ALTER COLUMN iduseraccounts SET DEFAULT nextval('public.useraccounts_iduseraccounts_seq'::regclass);
 J   ALTER TABLE public.useraccounts ALTER COLUMN iduseraccounts DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16713    vente idvente    DEFAULT     n   ALTER TABLE ONLY public.vente ALTER COLUMN idvente SET DEFAULT nextval('public.vente_idvente_seq'::regclass);
 <   ALTER TABLE public.vente ALTER COLUMN idvente DROP DEFAULT;
       public          postgres    false    231    230    231            �          0    16675    commande 
   TABLE DATA           c   COPY public.commande (idcommande, montant, date_commande, idpharmacien, idfournisseur) FROM stdin;
    public          postgres    false    227   �v       �          0    16632    famille 
   TABLE DATA           1   COPY public.famille (idfamille, nom) FROM stdin;
    public          postgres    false    219   w       �          0    16666    fournisseur 
   TABLE DATA           R   COPY public.fournisseur (idfournisseur, nom, adresse, contact, email) FROM stdin;
    public          postgres    false    225   ew       �          0    16693    ligne_commande 
   TABLE DATA           l   COPY public.ligne_commande (idlignecommande, quantite, prix_unitaire, idcommande, idmedicament) FROM stdin;
    public          postgres    false    229   x       �          0    16724    ligne_vente 
   TABLE DATA           c   COPY public.ligne_vente (idlignevente, quantite, prix_unitaire, idvente, idmedicament) FROM stdin;
    public          postgres    false    233   +x       �          0    16646 
   medicament 
   TABLE DATA           �   COPY public.medicament (idmedicament, nom, forme, prix_achat, prix_vente, stock, seuil_commande, quantite_max, idfamille, idunite, dci) FROM stdin;
    public          postgres    false    223   Hx       �          0    16741 
   ordonnance 
   TABLE DATA           Y   COPY public.ordonnance (idordonnance, date_ordonnance, nom_medecin, idvente) FROM stdin;
    public          postgres    false    235   �y       �          0    16763    ticket_vente 
   TABLE DATA           p   COPY public.ticket_vente (idticket, idvente, date_ticket, statut_ticket, montant_total, idcaissier) FROM stdin;
    public          postgres    false    237   �y       �          0    16639    unite 
   TABLE DATA           -   COPY public.unite (idunite, nom) FROM stdin;
    public          postgres    false    221   �y       ~          0    16404    useraccounts 
   TABLE DATA           q   COPY public.useraccounts (iduseraccounts, firstname, lastname, username, password, last_login, role) FROM stdin;
    public          postgres    false    217   "z       |          0    16400    users 
   TABLE DATA           .   COPY public.users (username, mdp) FROM stdin;
    public          postgres    false    215   {       �          0    16710    vente 
   TABLE DATA           h   COPY public.vente (idvente, date_vente, montant_total, type_vente, idvendeur, statut_vente) FROM stdin;
    public          postgres    false    231   8{       �           0    0    commande_idcommande_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.commande_idcommande_seq', 1, false);
          public          postgres    false    226            �           0    0    famille_idfamille_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.famille_idfamille_seq', 3, true);
          public          postgres    false    218            �           0    0    fournisseur_idfournisseur_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.fournisseur_idfournisseur_seq', 8, true);
          public          postgres    false    224            �           0    0 "   ligne_commande_idlignecommande_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.ligne_commande_idlignecommande_seq', 1, false);
          public          postgres    false    228            �           0    0    ligne_vente_idlignevente_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ligne_vente_idlignevente_seq', 1, false);
          public          postgres    false    232            �           0    0    medicament_idmedicament_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.medicament_idmedicament_seq', 14, true);
          public          postgres    false    222            �           0    0    ordonnance_idordonnance_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ordonnance_idordonnance_seq', 1, false);
          public          postgres    false    234            �           0    0    ticket_vente_idticket_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.ticket_vente_idticket_seq', 1, false);
          public          postgres    false    236            �           0    0    unite_idunite_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.unite_idunite_seq', 3, true);
          public          postgres    false    220            �           0    0    useraccounts_iduseraccounts_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.useraccounts_iduseraccounts_seq', 14, true);
          public          postgres    false    216            �           0    0    vente_idvente_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.vente_idvente_seq', 3, true);
          public          postgres    false    230            �           2606    16681    commande commande_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_pkey PRIMARY KEY (idcommande);
 @   ALTER TABLE ONLY public.commande DROP CONSTRAINT commande_pkey;
       public            postgres    false    227            �           2606    16637    famille famille_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.famille
    ADD CONSTRAINT famille_pkey PRIMARY KEY (idfamille);
 >   ALTER TABLE ONLY public.famille DROP CONSTRAINT famille_pkey;
       public            postgres    false    219            �           2606    16673    fournisseur fournisseur_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.fournisseur
    ADD CONSTRAINT fournisseur_pkey PRIMARY KEY (idfournisseur);
 F   ALTER TABLE ONLY public.fournisseur DROP CONSTRAINT fournisseur_pkey;
       public            postgres    false    225            �           2606    16698 "   ligne_commande ligne_commande_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ligne_commande
    ADD CONSTRAINT ligne_commande_pkey PRIMARY KEY (idlignecommande);
 L   ALTER TABLE ONLY public.ligne_commande DROP CONSTRAINT ligne_commande_pkey;
       public            postgres    false    229            �           2606    16729    ligne_vente ligne_vente_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ligne_vente
    ADD CONSTRAINT ligne_vente_pkey PRIMARY KEY (idlignevente);
 F   ALTER TABLE ONLY public.ligne_vente DROP CONSTRAINT ligne_vente_pkey;
       public            postgres    false    233            �           2606    16654    medicament medicament_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.medicament
    ADD CONSTRAINT medicament_pkey PRIMARY KEY (idmedicament);
 D   ALTER TABLE ONLY public.medicament DROP CONSTRAINT medicament_pkey;
       public            postgres    false    223            �           2606    16747    ordonnance ordonnance_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.ordonnance
    ADD CONSTRAINT ordonnance_pkey PRIMARY KEY (idordonnance);
 D   ALTER TABLE ONLY public.ordonnance DROP CONSTRAINT ordonnance_pkey;
       public            postgres    false    235            �           2606    16771    ticket_vente ticket_vente_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.ticket_vente
    ADD CONSTRAINT ticket_vente_pkey PRIMARY KEY (idticket);
 H   ALTER TABLE ONLY public.ticket_vente DROP CONSTRAINT ticket_vente_pkey;
       public            postgres    false    237            �           2606    16644    unite unite_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.unite
    ADD CONSTRAINT unite_pkey PRIMARY KEY (idunite);
 :   ALTER TABLE ONLY public.unite DROP CONSTRAINT unite_pkey;
       public            postgres    false    221            �           2606    16409    useraccounts useraccounts_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.useraccounts
    ADD CONSTRAINT useraccounts_pkey PRIMARY KEY (iduseraccounts);
 H   ALTER TABLE ONLY public.useraccounts DROP CONSTRAINT useraccounts_pkey;
       public            postgres    false    217            �           2606    16717    vente vente_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.vente
    ADD CONSTRAINT vente_pkey PRIMARY KEY (idvente);
 :   ALTER TABLE ONLY public.vente DROP CONSTRAINT vente_pkey;
       public            postgres    false    231            �           2606    16687 $   commande commande_idfournisseur_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_idfournisseur_fkey FOREIGN KEY (idfournisseur) REFERENCES public.fournisseur(idfournisseur);
 N   ALTER TABLE ONLY public.commande DROP CONSTRAINT commande_idfournisseur_fkey;
       public          postgres    false    225    227    4820            �           2606    16682 #   commande commande_idpharmacien_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_idpharmacien_fkey FOREIGN KEY (idpharmacien) REFERENCES public.useraccounts(iduseraccounts);
 M   ALTER TABLE ONLY public.commande DROP CONSTRAINT commande_idpharmacien_fkey;
       public          postgres    false    217    227    4812            �           2606    16777    ticket_vente fk_ticket_caissier    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket_vente
    ADD CONSTRAINT fk_ticket_caissier FOREIGN KEY (idcaissier) REFERENCES public.useraccounts(iduseraccounts);
 I   ALTER TABLE ONLY public.ticket_vente DROP CONSTRAINT fk_ticket_caissier;
       public          postgres    false    217    4812    237            �           2606    16772    ticket_vente fk_ticket_vente    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket_vente
    ADD CONSTRAINT fk_ticket_vente FOREIGN KEY (idvente) REFERENCES public.vente(idvente) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.ticket_vente DROP CONSTRAINT fk_ticket_vente;
       public          postgres    false    4826    231    237            �           2606    16699 -   ligne_commande ligne_commande_idcommande_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ligne_commande
    ADD CONSTRAINT ligne_commande_idcommande_fkey FOREIGN KEY (idcommande) REFERENCES public.commande(idcommande);
 W   ALTER TABLE ONLY public.ligne_commande DROP CONSTRAINT ligne_commande_idcommande_fkey;
       public          postgres    false    229    227    4822            �           2606    16704 /   ligne_commande ligne_commande_idmedicament_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ligne_commande
    ADD CONSTRAINT ligne_commande_idmedicament_fkey FOREIGN KEY (idmedicament) REFERENCES public.medicament(idmedicament);
 Y   ALTER TABLE ONLY public.ligne_commande DROP CONSTRAINT ligne_commande_idmedicament_fkey;
       public          postgres    false    229    4818    223            �           2606    16735 )   ligne_vente ligne_vente_idmedicament_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ligne_vente
    ADD CONSTRAINT ligne_vente_idmedicament_fkey FOREIGN KEY (idmedicament) REFERENCES public.medicament(idmedicament);
 S   ALTER TABLE ONLY public.ligne_vente DROP CONSTRAINT ligne_vente_idmedicament_fkey;
       public          postgres    false    233    223    4818            �           2606    16730 $   ligne_vente ligne_vente_idvente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ligne_vente
    ADD CONSTRAINT ligne_vente_idvente_fkey FOREIGN KEY (idvente) REFERENCES public.vente(idvente);
 N   ALTER TABLE ONLY public.ligne_vente DROP CONSTRAINT ligne_vente_idvente_fkey;
       public          postgres    false    231    233    4826            �           2606    16655 $   medicament medicament_idfamille_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicament
    ADD CONSTRAINT medicament_idfamille_fkey FOREIGN KEY (idfamille) REFERENCES public.famille(idfamille);
 N   ALTER TABLE ONLY public.medicament DROP CONSTRAINT medicament_idfamille_fkey;
       public          postgres    false    4814    219    223            �           2606    16660 "   medicament medicament_idunite_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicament
    ADD CONSTRAINT medicament_idunite_fkey FOREIGN KEY (idunite) REFERENCES public.unite(idunite);
 L   ALTER TABLE ONLY public.medicament DROP CONSTRAINT medicament_idunite_fkey;
       public          postgres    false    221    223    4816            �           2606    16748 "   ordonnance ordonnance_idvente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ordonnance
    ADD CONSTRAINT ordonnance_idvente_fkey FOREIGN KEY (idvente) REFERENCES public.vente(idvente);
 L   ALTER TABLE ONLY public.ordonnance DROP CONSTRAINT ordonnance_idvente_fkey;
       public          postgres    false    235    4826    231            �           2606    16718    vente vente_idvendeur_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.vente
    ADD CONSTRAINT vente_idvendeur_fkey FOREIGN KEY (idvendeur) REFERENCES public.useraccounts(iduseraccounts);
 D   ALTER TABLE ONLY public.vente DROP CONSTRAINT vente_idvendeur_fkey;
       public          postgres    false    231    217    4812            �      x������ � �      �   9   x�3�t�+�L��/�,,M-�2�s��,�����yi9����%��E@�=... yV      �   �   x�M���0E�ׯ��b�P`M�������iRڦ�����v�s�-�r�r�#p�=NGyϸ%���<Ih���F��hg���طfXvrj
�0��1:KIjx&y���]_7��0c���Z���v�p��(�H�{}ז��WE�������4�      �      x������ � �      �      x������ � �      �   L  x����j�0��O����hbl{)��1
��Mf���Y-�����$�ԭ�bL�/�?���Z4"��������FU�	h�#�aA�_�xl�ϋ0XY��F9b�|zH�;y2)O\���~��x;���!��B6B�H� �p��d�LaS�Ca͟�K|A���z�mcK��� 8�lwT^�����X
���GW7���$sX���!�K��!�o. ��ʕ��^.���XL0��++iZe�`��k.c2x
�\�d����ia�g��œ������׸	��`B�?:�(��t4�t��PU!lD������]C�M��������h%ن��_%��:      �      x������ � �      �      x������ � �      �   4   x�3�t��-(��=���ˈ�-'19?��˘3��� �8�$?�(��+F��� X�}      ~   �   x�]�An�0E��)r�gll�eU�Q%���b��P��Un_�&���o���#C�����gn���ᰃמ�����LA3u���C��'����*5��2���c%YYdDYհ���ix���v��K�쏗�w�G�PV��mH��ز�&��
�/�$XLl]�T��'���ׂ/>�G:��BVX�>*���֟���qd`7�q͛�H��}��J��P�38Y�� mBe�      |      x������ � �      �      x������ � �     