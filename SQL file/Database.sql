PGDMP      9                }            database_Project    16.6    16.6 &    "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    16781    database_Project    DATABASE     �   CREATE DATABASE "database_Project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Chinese (Simplified)_China.936';
 "   DROP DATABASE "database_Project";
                postgres    false            �            1259    16795    coaching    TABLE     �   CREATE TABLE public.coaching (
    coach_id character varying(30) NOT NULL,
    name character varying(100),
    expertise character varying(200)
);
    DROP TABLE public.coaching;
       public         heap    postgres    false            �            1259    16852    coaching_event    TABLE     �   CREATE TABLE public.coaching_event (
    event_code character varying(30) NOT NULL,
    coach_id character varying(30) NOT NULL
);
 "   DROP TABLE public.coaching_event;
       public         heap    postgres    false            �            1259    16805    coaching_material    TABLE     �   CREATE TABLE public.coaching_material (
    material_id character varying(30) NOT NULL,
    name character varying(100),
    description text
);
 %   DROP TABLE public.coaching_material;
       public         heap    postgres    false            �            1259    16812 	   equipment    TABLE     �   CREATE TABLE public.equipment (
    equipment_id character varying(30) NOT NULL,
    description character varying(200),
    value numeric(10,2),
    quantity integer,
    event_code character varying(30)
);
    DROP TABLE public.equipment;
       public         heap    postgres    false            �            1259    16837    event_participant    TABLE     �   CREATE TABLE public.event_participant (
    participant_id character varying(30) NOT NULL,
    event_code character varying(30) NOT NULL
);
 %   DROP TABLE public.event_participant;
       public         heap    postgres    false            �            1259    16800    events    TABLE     �   CREATE TABLE public.events (
    event_code character varying(30) NOT NULL,
    event_description character varying(200),
    event_type character varying(100),
    event_status character varying(50)
);
    DROP TABLE public.events;
       public         heap    postgres    false            �            1259    16790    participant    TABLE     �   CREATE TABLE public.participant (
    participant_id character varying(30) NOT NULL,
    name character varying(100),
    contact_information character varying(200)
);
    DROP TABLE public.participant;
       public         heap    postgres    false            �            1259    16822    volunteer_event    TABLE     �   CREATE TABLE public.volunteer_event (
    volun_id character varying(30) NOT NULL,
    event_code character varying(30) NOT NULL,
    start_time timestamp without time zone,
    end_time timestamp without time zone
);
 #   DROP TABLE public.volunteer_event;
       public         heap    postgres    false            �            1259    16785 
   volunteers    TABLE     �   CREATE TABLE public.volunteers (
    volun_id character varying(30) NOT NULL,
    name character varying(100),
    address character varying(200),
    telephonenumber character varying(20)
);
    DROP TABLE public.volunteers;
       public         heap    postgres    false                      0    16795    coaching 
   TABLE DATA           =   COPY public.coaching (coach_id, name, expertise) FROM stdin;
    public          postgres    false    217   .                 0    16852    coaching_event 
   TABLE DATA           >   COPY public.coaching_event (event_code, coach_id) FROM stdin;
    public          postgres    false    223   C.                 0    16805    coaching_material 
   TABLE DATA           K   COPY public.coaching_material (material_id, name, description) FROM stdin;
    public          postgres    false    219   o.                 0    16812 	   equipment 
   TABLE DATA           [   COPY public.equipment (equipment_id, description, value, quantity, event_code) FROM stdin;
    public          postgres    false    220   �.                 0    16837    event_participant 
   TABLE DATA           G   COPY public.event_participant (participant_id, event_code) FROM stdin;
    public          postgres    false    222   �.                 0    16800    events 
   TABLE DATA           Y   COPY public.events (event_code, event_description, event_type, event_status) FROM stdin;
    public          postgres    false    218   �.                 0    16790    participant 
   TABLE DATA           P   COPY public.participant (participant_id, name, contact_information) FROM stdin;
    public          postgres    false    216   |/                 0    16822    volunteer_event 
   TABLE DATA           U   COPY public.volunteer_event (volun_id, event_code, start_time, end_time) FROM stdin;
    public          postgres    false    221   �/                 0    16785 
   volunteers 
   TABLE DATA           N   COPY public.volunteers (volun_id, name, address, telephonenumber) FROM stdin;
    public          postgres    false    215   �/       �           2606    16856 "   coaching_event coaching_event_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.coaching_event
    ADD CONSTRAINT coaching_event_pkey PRIMARY KEY (event_code, coach_id);
 L   ALTER TABLE ONLY public.coaching_event DROP CONSTRAINT coaching_event_pkey;
       public            postgres    false    223    223            x           2606    16811 (   coaching_material coaching_material_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.coaching_material
    ADD CONSTRAINT coaching_material_pkey PRIMARY KEY (material_id);
 R   ALTER TABLE ONLY public.coaching_material DROP CONSTRAINT coaching_material_pkey;
       public            postgres    false    219            t           2606    16799    coaching coaching_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.coaching
    ADD CONSTRAINT coaching_pkey PRIMARY KEY (coach_id);
 @   ALTER TABLE ONLY public.coaching DROP CONSTRAINT coaching_pkey;
       public            postgres    false    217            z           2606    16816    equipment equipment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (equipment_id);
 B   ALTER TABLE ONLY public.equipment DROP CONSTRAINT equipment_pkey;
       public            postgres    false    220            ~           2606    16841 (   event_participant event_participant_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.event_participant
    ADD CONSTRAINT event_participant_pkey PRIMARY KEY (participant_id, event_code);
 R   ALTER TABLE ONLY public.event_participant DROP CONSTRAINT event_participant_pkey;
       public            postgres    false    222    222            v           2606    16804    events events_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (event_code);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    218            r           2606    16794    participant participant_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.participant
    ADD CONSTRAINT participant_pkey PRIMARY KEY (participant_id);
 F   ALTER TABLE ONLY public.participant DROP CONSTRAINT participant_pkey;
       public            postgres    false    216            |           2606    16826 $   volunteer_event volunteer_event_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.volunteer_event
    ADD CONSTRAINT volunteer_event_pkey PRIMARY KEY (volun_id, event_code);
 N   ALTER TABLE ONLY public.volunteer_event DROP CONSTRAINT volunteer_event_pkey;
       public            postgres    false    221    221            p           2606    16789    volunteers volunteers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.volunteers
    ADD CONSTRAINT volunteers_pkey PRIMARY KEY (volun_id);
 D   ALTER TABLE ONLY public.volunteers DROP CONSTRAINT volunteers_pkey;
       public            postgres    false    215            �           2606    16862    coaching_event fk_ce_coach    FK CONSTRAINT     �   ALTER TABLE ONLY public.coaching_event
    ADD CONSTRAINT fk_ce_coach FOREIGN KEY (coach_id) REFERENCES public.coaching(coach_id);
 D   ALTER TABLE ONLY public.coaching_event DROP CONSTRAINT fk_ce_coach;
       public          postgres    false    217    223    4724            �           2606    16857    coaching_event fk_ce_event    FK CONSTRAINT     �   ALTER TABLE ONLY public.coaching_event
    ADD CONSTRAINT fk_ce_event FOREIGN KEY (event_code) REFERENCES public.events(event_code);
 D   ALTER TABLE ONLY public.coaching_event DROP CONSTRAINT fk_ce_event;
       public          postgres    false    223    218    4726            �           2606    16847    event_participant fk_ep_event    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_participant
    ADD CONSTRAINT fk_ep_event FOREIGN KEY (event_code) REFERENCES public.events(event_code);
 G   ALTER TABLE ONLY public.event_participant DROP CONSTRAINT fk_ep_event;
       public          postgres    false    222    218    4726            �           2606    16842 #   event_participant fk_ep_participant    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_participant
    ADD CONSTRAINT fk_ep_participant FOREIGN KEY (participant_id) REFERENCES public.participant(participant_id);
 M   ALTER TABLE ONLY public.event_participant DROP CONSTRAINT fk_ep_participant;
       public          postgres    false    216    222    4722            �           2606    16817    equipment fk_equipment_event    FK CONSTRAINT     �   ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT fk_equipment_event FOREIGN KEY (event_code) REFERENCES public.events(event_code);
 F   ALTER TABLE ONLY public.equipment DROP CONSTRAINT fk_equipment_event;
       public          postgres    false    218    4726    220            �           2606    16832    volunteer_event fk_ve_event    FK CONSTRAINT     �   ALTER TABLE ONLY public.volunteer_event
    ADD CONSTRAINT fk_ve_event FOREIGN KEY (event_code) REFERENCES public.events(event_code);
 E   ALTER TABLE ONLY public.volunteer_event DROP CONSTRAINT fk_ve_event;
       public          postgres    false    221    4726    218            �           2606    16827    volunteer_event fk_ve_volunteer    FK CONSTRAINT     �   ALTER TABLE ONLY public.volunteer_event
    ADD CONSTRAINT fk_ve_volunteer FOREIGN KEY (volun_id) REFERENCES public.volunteers(volun_id);
 I   ALTER TABLE ONLY public.volunteer_event DROP CONSTRAINT fk_ve_volunteer;
       public          postgres    false    4720    215    221               0   x�3����N�tJ,�N-IJ���2������t��qr������� �
�            x�3000�4�2000�4������� !K�            x������ � �            x������ � �            x�3�4000����� M�         �   x����
�0����)��n]	mq�&iB&��ҷ7"�������a�Ma��M%�������6�;ZwR,'��A�Hc3��9�5l�'��9��sN����B�jBo˞�{��,�֪~0��+8bI�c���Z��h����M�9�:!�<S�qM         ,   x�0��H,*��� �����9�z���\F�Q�FF�\1z\\\ ��
�         &   x�3�4000�4202�50�54W00�#lb\1z\\\ �^	            x�3���442a�=... ��     