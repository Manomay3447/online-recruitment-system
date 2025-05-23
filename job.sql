PGDMP     
    0    	            {            recruitment    15.2    15.2     (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            +           1262    16408    recruitment    DATABASE     �   CREATE DATABASE recruitment WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE recruitment;
                postgres    false            �            1259    16470    com    TABLE     �  CREATE TABLE public.com (
    cname character varying(255),
    caddress character varying(255),
    cpost character varying(255),
    ccriteria character varying(255),
    cusername character varying(255) NOT NULL,
    cpassword character varying(255) NOT NULL,
    cemail character varying(255),
    ccontact character varying(255),
    ccutoff character varying(255),
    acutoff character varying(255),
    lastdate character varying(255)
);
    DROP TABLE public.com;
       public         heap    postgres    false            �            1259    16416 
   copyofexam    TABLE     �   CREATE TABLE public.copyofexam (
    examid character varying(255) NOT NULL,
    examname character varying(255),
    cutoff character varying(255)
);
    DROP TABLE public.copyofexam;
       public         heap    postgres    false            �            1259    16465    details    TABLE     l  CREATE TABLE public.details (
    username character varying(255),
    name character varying(255),
    gender character varying(255),
    dateofbirth character varying(255),
    collegename character varying(255),
    collegephone character varying(255),
    collegeemail character varying(255),
    branch character varying(255),
    mark character varying(255),
    degree character varying(255),
    email_id character varying(255),
    telephone character varying(255),
    address character varying(255),
    state character varying(255),
    pincode character varying(255),
    category character varying(255)
);
    DROP TABLE public.details;
       public         heap    postgres    false            �            1259    16421    exam    TABLE     �   CREATE TABLE public.exam (
    jobid character varying(255),
    post character varying(255),
    examid character varying(255),
    examname character varying(255),
    cutoff character varying(255)
);
    DROP TABLE public.exam;
       public         heap    postgres    false            �            1259    16426    experienced    TABLE       CREATE TABLE public.experienced (
    username character varying(255) NOT NULL,
    expyears character varying(255),
    company character varying(255),
    designation character varying(255),
    salary character varying(255),
    comaddress character varying(255)
);
    DROP TABLE public.experienced;
       public         heap    postgres    false            �            1259    16433 
   jobdetails    TABLE       CREATE TABLE public.jobdetails (
    jobid character varying(255) NOT NULL,
    post character varying(255),
    criteria character varying(255),
    noofvacancies character varying(255),
    salary character varying(255),
    lastdate character varying(255)
);
    DROP TABLE public.jobdetails;
       public         heap    postgres    false            �            1259    16438    login    TABLE     �   CREATE TABLE public.login (
    username character varying(255) NOT NULL,
    password character varying(255),
    status character varying(255)
);
    DROP TABLE public.login;
       public         heap    postgres    false            �            1259    16445    question    TABLE     V  CREATE TABLE public.question (
    jobid character varying(255),
    examid character varying(255),
    questionno integer,
    question character varying(255),
    option1 character varying(255),
    option2 character varying(255),
    option3 character varying(255),
    option4 character varying(255),
    answer character varying(255)
);
    DROP TABLE public.question;
       public         heap    postgres    false            �            1259    16450    result    TABLE     �   CREATE TABLE public.result (
    studentid character varying(255),
    examid character varying(255),
    jobid character varying(255),
    mark integer
);
    DROP TABLE public.result;
       public         heap    postgres    false            �            1259    16455 	   temp_data    TABLE       CREATE TABLE public.temp_data (
    studid character varying(255),
    qstno integer,
    qst character varying(255),
    ch1 character varying(255),
    ch2 character varying(255),
    ch3 character varying(255),
    ch4 character varying(255),
    ans character varying(255)
);
    DROP TABLE public.temp_data;
       public         heap    postgres    false            %          0    16470    com 
   TABLE DATA           �   COPY public.com (cname, caddress, cpost, ccriteria, cusername, cpassword, cemail, ccontact, ccutoff, acutoff, lastdate) FROM stdin;
    public          postgres    false    223   �!                 0    16416 
   copyofexam 
   TABLE DATA           >   COPY public.copyofexam (examid, examname, cutoff) FROM stdin;
    public          postgres    false    214   8"       $          0    16465    details 
   TABLE DATA           �   COPY public.details (username, name, gender, dateofbirth, collegename, collegephone, collegeemail, branch, mark, degree, email_id, telephone, address, state, pincode, category) FROM stdin;
    public          postgres    false    222   U"                 0    16421    exam 
   TABLE DATA           E   COPY public.exam (jobid, post, examid, examname, cutoff) FROM stdin;
    public          postgres    false    215   �#                 0    16426    experienced 
   TABLE DATA           c   COPY public.experienced (username, expyears, company, designation, salary, comaddress) FROM stdin;
    public          postgres    false    216   �#                 0    16433 
   jobdetails 
   TABLE DATA           \   COPY public.jobdetails (jobid, post, criteria, noofvacancies, salary, lastdate) FROM stdin;
    public          postgres    false    217   4$                  0    16438    login 
   TABLE DATA           ;   COPY public.login (username, password, status) FROM stdin;
    public          postgres    false    218   z$       !          0    16445    question 
   TABLE DATA           s   COPY public.question (jobid, examid, questionno, question, option1, option2, option3, option4, answer) FROM stdin;
    public          postgres    false    219   �$       "          0    16450    result 
   TABLE DATA           @   COPY public.result (studentid, examid, jobid, mark) FROM stdin;
    public          postgres    false    220   �-       #          0    16455 	   temp_data 
   TABLE DATA           P   COPY public.temp_data (studid, qstno, qst, ch1, ch2, ch3, ch4, ans) FROM stdin;
    public          postgres    false    221   �-       �           2606    16476    com com_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.com
    ADD CONSTRAINT com_pkey PRIMARY KEY (cusername);
 6   ALTER TABLE ONLY public.com DROP CONSTRAINT com_pkey;
       public            postgres    false    223            �           2606    16432    experienced experienced_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.experienced
    ADD CONSTRAINT experienced_pkey PRIMARY KEY (username);
 F   ALTER TABLE ONLY public.experienced DROP CONSTRAINT experienced_pkey;
       public            postgres    false    216            �           2606    16444    login login_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (username);
 :   ALTER TABLE ONLY public.login DROP CONSTRAINT login_pkey;
       public            postgres    false    218            %   �   x�M�1� �z9�'P���@��(	��In��6�l����
��Jn��	��aSK�i�G�:Q��T:犯�#]Ǆ!�nN`���`����Eg;��d�M:�x\����[W��B%Pv�aw{!�E	cH'\I-��b�뎫������>�            x������ � �      $   W  x�Ő�n�0��?O��%؆[)�"�H鱗Q0�!�$R޾6Y���ֻ������8����6�`#5���,LU�R!a�����(�BV�ֽ>��r�������ԐfX�'֓��(UU6�j�@0li�<��.���O��O��=���펟'�e�� KX�0��*�k3?x7���Z/�f�s�a��Ŵ���n�S�uC\��!�4� ˮ6t	D��&�,��8�����kW�����;w1���)��aQi����E���5R�[��-Xh[�eh���R��NWeQ��(KC��RacY�D��X�k��,Si8CnKC���)���I�/H�8�C����oN~��         ,   x��/J�KO�,IM���J,KTHI-�4�L,(��43������ ��
�         ,   x�K,�H�42��p��,H�-�47500�L�H��K������ �0	@         6   x��/J�KO�,IM���J,KTHI-��uv�4�42 NC#}}##c�=... k�"          ^   x�MMI
�0<'��}���m+��%'/��4���zR~d�K��w�$
$��~��#(cI�K�k����8�W/6�׎��o��犙?F�)�      !   �  x��W�n�F�=~��-�^��|�!q�M�ĉa��X��1"G�H�w8���}��ߧY`�k�3�ެ�diC$�r�w����.;dS�R^���?<؇�ss�F8>>k���n����~�Hi�v�g�����/C��nL��a����>L������إ��2��h��g��15���	:����o�,���s>��e�OE^Kn��YuΚ����O����0%���ܩBrI0*.��mf���?�+b/LQ�<�b�N%���D�N����@Pr�WP��J�|h,*�*=�.Ғ%2��Ԯ�
�o��G��2qQ.��e�o���⁇�@ p�nD2#٘�t��)�
>S�KkFV 4L����u�W�|l�sAp��6,����ؔ2Uu�D�fj�1'+��]v���=����
�s)9�"v�C��0��^��oxx�T����C�X%V�r��U4���\��E��;��A�S^0~y������po5�;YU�-O����IB8-Cd�����?+\-��!��s��N������|�8Ý�ʅ����Oe��I�*N2��b,b����kO���>(ŀ�4ꏲQ����J�Y����F�ݴ����x��
q	�aò`i1ZS gJ [���/��Qm��ʪ�ݝD:n�TM\>��5�]K��tY���hL�"�D�����KI-MA��0Ed%��k����9��a�CS�+K�����%��95�(�|� 	^(����0�q�b����_��Y+z�Y���D�M)�@�`{�������k�o7�.6�f/<��b*�H �oT�`֠Kk��ã}���&�|�"w�ݛ��~aU����T9Uɍ���^ԣ�!�/���r���9B�f�m�zch���	ŇgP^d�TYW�E�tJ�Ҫ) -W�vz�\揠�2̛}5D�@��Sp���,5���S���T:ODN �8�6��3��ԧD�e*�ڹ���$@��LD�e�̳AĽ��5������h#S������MZ�9�y񄋊%���VǶ9A��\�R����w=���T�t�)[<(���#Y�d��o�>�{�����a��4v�W�U��X!tf������F�Ek��.��A�oG�(���3* Y�*x�4|���U�z�Ʃ�B����b�F���*EU��
���إ�۵�q '\۱�L��L�$B�Z��6K��S����J^�&���@lR��!�� �% �AFˋe������C�H����
`'A]V��X6f,�g�e�w�����ka�:���k얲hAp�h'ō�ťdXc���� �xN��l7��l��Ɩ�&��+�l�������@!�3`��]������ �`2�K:�a:�KFL�� �P��bh�E��/C�dɍ�@`�i��#�_�#�FIK�d���&�Y�:97�r�Y|0>M��&^��dkjI�ӭ��S��s�3����m�Wa���'���sH4P�@��D��V��4��I5�TC�V�O��T��Ĵ�:i�_C�6Ŏ�N�!{�eC�&�N�[�q��,~�n��G�όw9Nڡ��^nM����x�~��H"����We3��^����*�'�NP�ag����V���[���^df���r�H���A�o(����989�9t���س���SR�=��G��1�� �5i�YI��3N�W`���Z�i"�طN�烴���L��FH�u=�rP[~+�B���۽5 :�Z�V�|'�.��S�u�~����Vr�c�
��R�ѣU�������#A����⣲�"��3l�� ��eqN�H2��[���,�pg�݊��7VT���	-��� �RU����^O��;Q!�������tZ%����{9����(7��;@�dz-��M�^�ySr���A�1��7[bj�В6S���|d1����ڢN�N��Lo:>?"�I��P�����d��6]&�y^�K/i|��%<zMV��^IcqD�Gu�5����@e��
�ƻ�1��چ �t��M�����s����. r�7߯[� ,��5LG+*_�
�!��؝Ѐw5�H������"��Yu��q�y���t�o��w�k�pCR�21����&z�`��@Wޘ5h�+��]�%�)��������ð��      "      x������ � �      #      x������ � �     