toc.dat                                                                                             0000600 0004000 0002000 00000011315 14445313557 0014453 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                            {           spotify    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16398    spotify    DATABASE     {   CREATE DATABASE spotify WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE spotify;
                postgres    false         �            1259    16422    answer    TABLE       CREATE TABLE public.answer (
    id integer NOT NULL,
    id_question integer NOT NULL,
    answer character varying NOT NULL,
    c1 smallint NOT NULL,
    c2 smallint NOT NULL,
    c3 smallint NOT NULL,
    c4 smallint NOT NULL,
    c5 smallint NOT NULL
);
    DROP TABLE public.answer;
       public         heap    postgres    false         �            1259    16436    final    TABLE     {   CREATE TABLE public.final (
    id integer NOT NULL,
    id_quest integer NOT NULL,
    text character varying NOT NULL
);
    DROP TABLE public.final;
       public         heap    postgres    false         �            1259    16400    quest    TABLE     \   CREATE TABLE public.quest (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.quest;
       public         heap    postgres    false         �            1259    16409    question    TABLE     �   CREATE TABLE public.question (
    id integer NOT NULL,
    id_quest integer NOT NULL,
    question character varying NOT NULL
);
    DROP TABLE public.question;
       public         heap    postgres    false                   0    16422    answer 
   TABLE DATA                 public          postgres    false    216       3339.dat           0    16436    final 
   TABLE DATA                 public          postgres    false    217       3340.dat 	          0    16400    quest 
   TABLE DATA                 public          postgres    false    214       3337.dat 
          0    16409    question 
   TABLE DATA                 public          postgres    false    215       3338.dat u           2606    16428    answer answer_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.answer DROP CONSTRAINT answer_pk;
       public            postgres    false    216         x           2606    16442    final finals_pk 
   CONSTRAINT     M   ALTER TABLE ONLY public.final
    ADD CONSTRAINT finals_pk PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.final DROP CONSTRAINT finals_pk;
       public            postgres    false    217         q           2606    16407    quest quest_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.quest
    ADD CONSTRAINT quest_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.quest DROP CONSTRAINT quest_pk;
       public            postgres    false    214         s           2606    16416    question question_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.question DROP CONSTRAINT question_pk;
       public            postgres    false    215         v           1259    16443    finals_id_uindex    INDEX     G   CREATE UNIQUE INDEX finals_id_uindex ON public.final USING btree (id);
 $   DROP INDEX public.finals_id_uindex;
       public            postgres    false    217         z           2606    16429    answer answer_question_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_question_id_fk FOREIGN KEY (id_question) REFERENCES public.question(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.answer DROP CONSTRAINT answer_question_id_fk;
       public          postgres    false    215    3187    216         y           2606    16417    question question_quest_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_quest_id_fk FOREIGN KEY (id_quest) REFERENCES public.quest(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.question DROP CONSTRAINT question_quest_id_fk;
       public          postgres    false    215    3185    214                                                                                                                                                                                                                                                                                                                           3339.dat                                                                                            0000600 0004000 0002000 00000040421 14445313557 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (1, 1, 'Of course, many times', 1, 2, 3, 4, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (2, 1, 'I''ve never been there', 2, 3, 4, 5, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (3, 1, 'But my grandmother was born in 1905 on the corner of Staroportofrankivska and Velyka Arnautska streets.', 3, 4, 5, 1, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (4, 1, 'Is it really noticeable?', 4, 5, 1, 2, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (5, 2, 'Oh, don''t bother me, just let me listen to my records', 3, 1, 4, 2, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (6, 2, 'There are two big differences!', 4, 1, 3, 5, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (7, 2, 'It''s the same place after all', 5, 3, 2, 4, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (8, 2, 'Do you want tickets to the floor or to the mezzanine?', 2, 3, 5, 1, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (9, 3, 'Records. What do you have to say to me?', 3, 4, 1, 5, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (10, 3, 'Mommy, give me a birth so I don''t have to hear this commercial anymore.', 2, 3, 5, 1, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (11, 3, 'Benya Katz, a bumbler from the next door, is strumming his violin.', 1, 3, 4, 5, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (12, 3, 'This is how I play it', 5, 2, 4, 1, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (13, 4, 'I worked at a conservatory for 15 years. Why did you quit? The canned food was of poor quality...', 3, 5, 1, 4, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (14, 4, 'Of course not! Of course not. But my son, yes! What do you mean "yes"? No', 4, 1, 5, 3, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (15, 4, 'On the keys and other percussion instruments', 3, 5, 4, 2, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (16, 4, '"Every boy from a good family in Odesa should be able to play the violin." - mother', 3, 1, 5, 4, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (18, 5, 'Was once or twice', 1, 2, 3, 5, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (20, 5, 'I have no idea what you''re talking about', 2, 5, 4, 1, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (19, 5, 'This year I will be there for the first time', 3, 5, 2, 1, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (17, 5, 'Yes, it''s consistently there every year', 2, 4, 5, 1, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (21, 6, '12+ hours', 5, 4, 1, 3, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (22, 6, '5 +-3', 3, 3, 2, 4, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (23, 6, 'I listen in public transport', 4, 2, 3, 5, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (24, 6, 'not listening...........', 2, 5, 5, 1, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (25, 7, 'I spend half my salary on them', 5, 3, 1, 2, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (26, 7, 'I definitely drop by once a month', 2, 4, 2, 1, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (27, 7, 'I went to see only my favorite performers', 4, 5, 4, 3, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (28, 7, 'Why should I go to concerts at all?', 3, 2, 3, 4, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (29, 8, 'Rock/metal and everything heavy', 5, 3, 4, 1, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (30, 8, 'I enjoy indie songs', 2, 3, 1, 5, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (31, 8, 'Other, because you have not mentioned many things', 1, 5, 4, 3, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (32, 8, 'Classic rock', 4, 5, 3, 2, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (33, 9, 'As much as I want', 3, 4, 5, 2, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (34, 9, 'One glass every evening', 1, 2, 4, 5, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (35, 9, 'For the mood', 4, 2, 1, 5, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (36, 9, 'I drink coffee, these worlds do not intersect', 3, 2, 1, 4, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (37, 10, 'What?', 4, 1, 5, 2, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (38, 10, 'I know the entire royal family in 10 generations', 5, 4, 2, 1, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (39, 10, 'I watched it because of the handsome main character', 4, 3, 1, 5, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (40, 10, 'I have this series in my plans', 2, 3, 5, 1, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (41, 11, '0', 5, 4, 2, 3, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (42, 11, '1', 4, 2, 1, 5, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (43, 11, '2', 1, 3, 5, 2, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (44, 11, '10', 2, 5, 1, 3, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (45, 12, 'I also have plans for it)', 3, 4, 5, 2, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (46, 12, 'I already live there', 4, 5, 3, 1, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (47, 12, 'I have been several times ', 1, 4, 3, 2, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (48, 12, 'I go there on regular basis', 5, 4, 2, 1, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (49, 13, 'A bass player walks into a bar and...', 5, 1, 4, 3, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (50, 13, 'Why do people joke about them?', 4, 3, 2, 5, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (51, 13, 'I have a friend who knows', 5, 2, 1, 4, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (52, 13, 'I''m a bass player', 3, 1, 5, 4, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (53, 14, 'Doctor', 4, 3, 5, 2, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (54, 14, 'Astronaut', 4, 2, 1, 5, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (55, 14, 'Bee', 4, 1, 5, 3, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (56, 14, 'President', 1, 2, 4, 5, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (57, 15, 'I watched the video "How to boil water"', 4, 2, 1, 3, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (58, 15, 'I cook borscht every day', 1, 4, 2, 3, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (59, 15, 'Scrambled eggs', 2, 3, 1, 5, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (60, 15, 'I can afford to eat only cooked food because I still live with my mother', 4, 5, 2, 3, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (61, 16, 'CatDog', 4, 1, 2, 5, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (62, 16, 'Some parrot', 2, 1, 3, 4, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (63, 16, 'Lizard', 1, 3, 4, 5, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (64, 16, 'sibling', 5, 3, 2, 1, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (65, 17, 'I was born during it', 2, 1, 4, 5, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (66, 17, 'Well, in the company, I guess I can', 5, 1, 3, 4, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (67, 17, 'I don''t watch', 3, 1, 5, 4, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (68, 17, 'Cha-cha-cha', 3, 2, 1, 5, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (69, 18, 'I am the admin of a website with eurovision bets', 2, 4, 5, 3, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (70, 18, 'I bought a green jacket', 3, 2, 1, 5, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (71, 18, 'I know all the songs of all the years', 3, 1, 4, 2, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (72, 18, 'What?', 2, 3, 5, 4, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (73, 19, 'Finland', 4, 3, 5, 1, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (74, 19, 'Ukraine', 1, 3, 5, 2, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (75, 19, 'France (gourmet)', 4, 1, 3, 2, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (76, 19, 'Sweden (traitor)', 1, 2, 3, 4, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (77, 20, 'dancer on the left', 4, 2, 3, 1, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (78, 20, 'dancer on the right', 3, 1, 4, 2, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (79, 20, 'other dancer on the left', 4, 5, 2, 3, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (80, 20, 'other dancer on the right', 5, 1, 2, 4, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (81, 21, 'I am a banana', 5, 1, 2, 3, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (82, 21, 'strawberry', 2, 1, 4, 3, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (83, 21, 'kiwi ', 1, 3, 4, 2, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (84, 21, 'passion fruit', 1, 4, 2, 3, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (85, 22, 'vowel', 2, 5, 4, 1, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (86, 22, 'consonant', 4, 2, 5, 3, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (87, 22, 'Umlaut', 4, 1, 5, 3, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (88, 22, 'h', 3, 2, 5, 1, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (89, 23, 'flute', 4, 3, 5, 2, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (90, 23, 'trembita', 2, 1, 3, 5, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (91, 23, 'cymbals', 5, 2, 1, 3, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (92, 23, 'kobza', 4, 3, 5, 1, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (93, 24, 'mountain', 3, 2, 1, 4, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (94, 24, 'jarochok', 2, 4, 5, 3, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (95, 24, 'stavochok', 1, 3, 4, 5, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (96, 24, 'stepochok', 2, 1, 4, 5, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (97, 25, 'My maximum is to be a singer in a test of what kind of musician you are in a band', 1, 3, 2, 4, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (98, 25, 'If I''m cooking/cleaning/painting', 2, 4, 3, 5, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (99, 25, 'KARAOKE', 3, 5, 1, 4, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (100, 25, 'never', 3, 5, 2, 1, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (101, 26, 'in some with my mother when I was a child', 5, 1, 4, 2, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (102, 26, 'I visit a new one every time I travel', 4, 3, 5, 1, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (103, 26, 'In Lviv and Kyiv', 2, 1, 4, 5, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (104, 26, 'next question', 4, 2, 3, 5, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (105, 27, 'Shrek/Fiona', 5, 2, 4, 1, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (106, 27, 'Dragon', 2, 5, 3, 4, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (107, 27, 'Donkey', 5, 3, 2, 4, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (108, 27, 'Puss in boots', 5, 4, 1, 2, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (109, 28, 'Bohemian rhapsody', 3, 1, 5, 2, 4);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (110, 28, 'Bahamian opera', 2, 1, 5, 4, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (111, 28, 'Redemption conversation', 1, 4, 3, 2, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (112, 28, 'Bermuda triangle', 3, 4, 5, 2, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (113, 29, 'orange', 5, 4, 2, 1, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (114, 29, 'tangerine', 2, 3, 5, 4, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (115, 29, 'grapefruit', 1, 2, 4, 3, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (116, 29, 'lime', 3, 2, 1, 4, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (117, 30, '1', 1, 4, 3, 5, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (118, 30, '2', 5, 4, 1, 3, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (119, 30, '3', 5, 3, 4, 1, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (120, 30, '33', 5, 4, 1, 2, 3);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (121, 31, 'Jonny Hawkins', 5, 4, 2, 3, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (122, 31, 'Daniel Coulter Reynolds', 3, 2, 5, 4, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (123, 31, 'Noah Sebastian', 4, 3, 5, 1, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (124, 31, 'Matthew James Bellamy', 4, 5, 2, 3, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (125, 32, 'Air', 3, 4, 5, 1, 2);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (126, 32, 'Water', 2, 5, 3, 4, 1);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (127, 32, 'Earth', 3, 2, 4, 1, 5);
INSERT INTO public.answer (id, id_question, answer, c1, c2, c3, c4, c5) VALUES (128, 32, 'Fire', 1, 5, 2, 4, 3);


                                                                                                                                                                                                                                               3340.dat                                                                                            0000600 0004000 0002000 00000006312 14445313557 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.final (id, id_quest, text) VALUES (1, 1, 'Bach violin');
INSERT INTO public.final (id, id_quest, text) VALUES (2, 1, 'Beethoven''s drum');
INSERT INTO public.final (id, id_quest, text) VALUES (3, 1, 'An accordion by Chopin or Mozart');
INSERT INTO public.final (id, id_quest, text) VALUES (4, 1, 'Stradivarius guitar');
INSERT INTO public.final (id, id_quest, text) VALUES (5, 1, 'Tchaikovsky''s trumpet');
INSERT INTO public.final (id, id_quest, text) VALUES (6, 2, 'Renie Cares');
INSERT INTO public.final (id, id_quest, text) VALUES (7, 2, 'Tember Blanche');
INSERT INTO public.final (id, id_quest, text) VALUES (8, 2, 'Burned Time Machine');
INSERT INTO public.final (id, id_quest, text) VALUES (9, 2, 'The Unsleeping');
INSERT INTO public.final (id, id_quest, text) VALUES (10, 2, 'Epolets');
INSERT INTO public.final (id, id_quest, text) VALUES (11, 3, 'Muse');
INSERT INTO public.final (id, id_quest, text) VALUES (12, 3, 'Sleep Token');
INSERT INTO public.final (id, id_quest, text) VALUES (13, 3, 'The Beatles');
INSERT INTO public.final (id, id_quest, text) VALUES (14, 3, 'Bullet for my Valentine');
INSERT INTO public.final (id, id_quest, text) VALUES (15, 3, 'Coldplay');
INSERT INTO public.final (id, id_quest, text) VALUES (16, 4, 'Singer');
INSERT INTO public.final (id, id_quest, text) VALUES (17, 4, 'Guitarist');
INSERT INTO public.final (id, id_quest, text) VALUES (18, 4, 'Bass guitarist');
INSERT INTO public.final (id, id_quest, text) VALUES (19, 4, 'Keyboard player');
INSERT INTO public.final (id, id_quest, text) VALUES (20, 4, 'Drummer');
INSERT INTO public.final (id, id_quest, text) VALUES (21, 5, 'Lorin (Sweden)');
INSERT INTO public.final (id, id_quest, text) VALUES (22, 5, 'Kalush Orchestra (Ukraine)');
INSERT INTO public.final (id, id_quest, text) VALUES (23, 5, 'Maneskin (Italy)');
INSERT INTO public.final (id, id_quest, text) VALUES (24, 5, 'Duncan Laurence (Netherlands)');
INSERT INTO public.final (id, id_quest, text) VALUES (25, 5, 'Netta (Israel)');
INSERT INTO public.final (id, id_quest, text) VALUES (26, 6, 'United Kingdom & Europe');
INSERT INTO public.final (id, id_quest, text) VALUES (27, 6, 'North America ');
INSERT INTO public.final (id, id_quest, text) VALUES (28, 6, 'Asia');
INSERT INTO public.final (id, id_quest, text) VALUES (29, 6, 'Australia & New Zealand');
INSERT INTO public.final (id, id_quest, text) VALUES (30, 6, 'Africa');
INSERT INTO public.final (id, id_quest, text) VALUES (31, 7, 'Wagner’s Die Walküre ');
INSERT INTO public.final (id, id_quest, text) VALUES (32, 7, 'Verdi’s Otello');
INSERT INTO public.final (id, id_quest, text) VALUES (33, 7, 'Mozart’s The Marriage of Figaro ');
INSERT INTO public.final (id, id_quest, text) VALUES (34, 7, 'Handel’s Giulio Cesare ');
INSERT INTO public.final (id, id_quest, text) VALUES (35, 7, 'Wagner’s Tristan und Isolde');
INSERT INTO public.final (id, id_quest, text) VALUES (36, 8, 'Will of the people');
INSERT INTO public.final (id, id_quest, text) VALUES (37, 8, 'The 2nd Law');
INSERT INTO public.final (id, id_quest, text) VALUES (38, 8, 'The Resistance');
INSERT INTO public.final (id, id_quest, text) VALUES (39, 8, 'Absolution');
INSERT INTO public.final (id, id_quest, text) VALUES (40, 8, 'Origin of Symetry');


                                                                                                                                                                                                                                                                                                                      3337.dat                                                                                            0000600 0004000 0002000 00000001313 14445313557 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.quest (id, name) VALUES (1, 'What instrument are you at the Summer Theater in Odesa?');
INSERT INTO public.quest (id, name) VALUES (2, 'What kind of performer you are at the fair city 2023');
INSERT INTO public.quest (id, name) VALUES (3, 'What kind of British band are you?');
INSERT INTO public.quest (id, name) VALUES (4, 'What kind of musician are you in the band?');
INSERT INTO public.quest (id, name) VALUES (5, 'What Eurovision winner you are?');
INSERT INTO public.quest (id, name) VALUES (6, 'What continent you are in music tours?');
INSERT INTO public.quest (id, name) VALUES (7, 'What an opera you are?');
INSERT INTO public.quest (id, name) VALUES (8, 'What Muse album are you');


                                                                                                                                                                                                                                                                                                                     3338.dat                                                                                            0000600 0004000 0002000 00000006671 14445313557 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.question (id, id_quest, question) VALUES (1, 1, 'Have you ever been to Odesa?');
INSERT INTO public.question (id, id_quest, question) VALUES (2, 1, 'What is the difference between the Summer Theater and the Green Theater in Odesa?');
INSERT INTO public.question (id, id_quest, question) VALUES (3, 1, 'What do you listen to music on?');
INSERT INTO public.question (id, id_quest, question) VALUES (4, 1, 'Do you play a musical instrument?');
INSERT INTO public.question (id, id_quest, question) VALUES (5, 2, 'Have you ever heard of the Faine Misto music festival?');
INSERT INTO public.question (id, id_quest, question) VALUES (6, 2, 'How many hours a day do you listen to music?');
INSERT INTO public.question (id, id_quest, question) VALUES (7, 2, 'How often do you go to concerts?');
INSERT INTO public.question (id, id_quest, question) VALUES (8, 2, 'What genres of music do you listen to?');
INSERT INTO public.question (id, id_quest, question) VALUES (11, 3, 'How many dogs do you have?');
INSERT INTO public.question (id, id_quest, question) VALUES (9, 3, 'How many liters of tea do you drink per day?');
INSERT INTO public.question (id, id_quest, question) VALUES (15, 4, 'What is the most difficult dish you can cook?');
INSERT INTO public.question (id, id_quest, question) VALUES (25, 7, 'How often do you practice your vocals?');
INSERT INTO public.question (id, id_quest, question) VALUES (10, 3, 'How many times have you watched The Crown?');
INSERT INTO public.question (id, id_quest, question) VALUES (28, 7, 'Choose the correct name of the Queen song');
INSERT INTO public.question (id, id_quest, question) VALUES (22, 6, 'What letter are you?');
INSERT INTO public.question (id, id_quest, question) VALUES (26, 7, 'How many opera houses have you been to?');
INSERT INTO public.question (id, id_quest, question) VALUES (27, 7, 'Who are you from Shrek?');
INSERT INTO public.question (id, id_quest, question) VALUES (18, 5, 'Are you Eurofan?');
INSERT INTO public.question (id, id_quest, question) VALUES (19, 5, 'What country did you support this year?');
INSERT INTO public.question (id, id_quest, question) VALUES (13, 4, 'How many jokes do you know about bass players?');
INSERT INTO public.question (id, id_quest, question) VALUES (24, 6, 'What kind of geological object are you?');
INSERT INTO public.question (id, id_quest, question) VALUES (20, 5, 'Cha-cha-cha?');
INSERT INTO public.question (id, id_quest, question) VALUES (14, 4, 'Who did you dream of becoming as a child?');
INSERT INTO public.question (id, id_quest, question) VALUES (21, 6, 'What fruit do you associate yourself with?');
INSERT INTO public.question (id, id_quest, question) VALUES (23, 6, 'What kind of folk instrument are you?');
INSERT INTO public.question (id, id_quest, question) VALUES (17, 5, 'How long have you been watching Eurovision?');
INSERT INTO public.question (id, id_quest, question) VALUES (12, 3, 'How many times have you been to Britain?');
INSERT INTO public.question (id, id_quest, question) VALUES (16, 4, 'What kind of pet do you have?');
INSERT INTO public.question (id, id_quest, question) VALUES (29, 8, 'What kind of citrus are you?');
INSERT INTO public.question (id, id_quest, question) VALUES (30, 8, 'How many members are in Muse?');
INSERT INTO public.question (id, id_quest, question) VALUES (31, 8, 'What is the name of the lead singer of Muse?');
INSERT INTO public.question (id, id_quest, question) VALUES (32, 8, 'What is the element of your zodiac sign?');


                                                                       restore.sql                                                                                         0000600 0004000 0002000 00000010111 14445313557 0015371 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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

DROP DATABASE spotify;
--
-- Name: spotify; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE spotify WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE spotify OWNER TO postgres;

\connect spotify

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
-- Name: answer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answer (
    id integer NOT NULL,
    id_question integer NOT NULL,
    answer character varying NOT NULL,
    c1 smallint NOT NULL,
    c2 smallint NOT NULL,
    c3 smallint NOT NULL,
    c4 smallint NOT NULL,
    c5 smallint NOT NULL
);


ALTER TABLE public.answer OWNER TO postgres;

--
-- Name: final; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.final (
    id integer NOT NULL,
    id_quest integer NOT NULL,
    text character varying NOT NULL
);


ALTER TABLE public.final OWNER TO postgres;

--
-- Name: quest; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quest (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.quest OWNER TO postgres;

--
-- Name: question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question (
    id integer NOT NULL,
    id_quest integer NOT NULL,
    question character varying NOT NULL
);


ALTER TABLE public.question OWNER TO postgres;

--
-- Data for Name: answer; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3339.dat

--
-- Data for Name: final; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3340.dat

--
-- Data for Name: quest; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3337.dat

--
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3338.dat

--
-- Name: answer answer_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_pk PRIMARY KEY (id);


--
-- Name: final finals_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.final
    ADD CONSTRAINT finals_pk PRIMARY KEY (id);


--
-- Name: quest quest_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quest
    ADD CONSTRAINT quest_pk PRIMARY KEY (id);


--
-- Name: question question_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pk PRIMARY KEY (id);


--
-- Name: finals_id_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX finals_id_uindex ON public.final USING btree (id);


--
-- Name: answer answer_question_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_question_id_fk FOREIGN KEY (id_question) REFERENCES public.question(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: question question_quest_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_quest_id_fk FOREIGN KEY (id_quest) REFERENCES public.quest(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       