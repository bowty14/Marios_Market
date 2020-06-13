--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO tylerbowerman;

--
-- Name: products; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying,
    cost integer,
    country_of_origin character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO tylerbowerman;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: tylerbowerman
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO tylerbowerman;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tylerbowerman
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    author character varying,
    content_body character varying,
    rating integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_id integer
);


ALTER TABLE public.reviews OWNER TO tylerbowerman;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: tylerbowerman
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO tylerbowerman;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tylerbowerman
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO tylerbowerman;

--
-- Name: users; Type: TABLE; Schema: public; Owner: tylerbowerman
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying,
    password_hash character varying,
    password_salt character varying,
    admin boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO tylerbowerman;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: tylerbowerman
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO tylerbowerman;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: tylerbowerman
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-05-29 15:34:36.963473	2020-05-29 15:34:36.963473
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.products (id, name, cost, country_of_origin, created_at, updated_at) FROM stdin;
406	Honeydew Melon	23	Tashkent	2020-06-05 23:17:48.09164	2020-06-05 23:17:48.09164
407	Nashi Pear	24	Yerevan	2020-06-05 23:17:48.133476	2020-06-05 23:17:48.133476
408	Mango	93	Prince	2020-06-05 23:17:48.152657	2020-06-05 23:17:48.152657
409	Cumquat	90	Tarawa Atoll	2020-06-05 23:17:48.170121	2020-06-05 23:17:48.170121
410	Cumquat	69	Ankara	2020-06-05 23:17:48.187907	2020-06-05 23:17:48.187907
411	Loquats	40	Dublin	2020-06-05 23:17:48.207402	2020-06-05 23:17:48.207402
412	Snowpeas	72	Tehran	2020-06-05 23:17:48.238596	2020-06-05 23:17:48.238596
413	Butternut Pumpkin	10	Minsk	2020-06-05 23:17:48.25637	2020-06-05 23:17:48.25637
414	Cantaloupe	34	Tripoli	2020-06-05 23:17:48.274701	2020-06-05 23:17:48.274701
415	Elderberry	39	San Marino	2020-06-05 23:17:48.293075	2020-06-05 23:17:48.293075
416	Olives	16	Conakry	2020-06-05 23:17:48.312914	2020-06-05 23:17:48.312914
417	Strawberries	76	Castries	2020-06-05 23:17:48.331209	2020-06-05 23:17:48.331209
418	Dragonfruit	97	Vaduz	2020-06-05 23:17:48.348796	2020-06-05 23:17:48.348796
419	Pears	56	San Marino	2020-06-05 23:17:48.377372	2020-06-05 23:17:48.377372
420	Oranges	40	Lome	2020-06-05 23:17:48.397793	2020-06-05 23:17:48.397793
421	Apples	70	Havana	2020-06-05 23:17:48.416052	2020-06-05 23:17:48.416052
422	Cavalo	22	Wellington	2020-06-05 23:17:48.441705	2020-06-05 23:17:48.441705
423	Starfruit	36	Bamako	2020-06-05 23:17:48.459138	2020-06-05 23:17:48.459138
424	Dried Apricots	92	Porto-Novo	2020-06-05 23:17:48.477724	2020-06-05 23:17:48.477724
425	Honeydew Melon	79	Zagreb	2020-06-05 23:17:48.496487	2020-06-05 23:17:48.496487
426	Plums	31	Budapest	2020-06-05 23:17:48.515287	2020-06-05 23:17:48.515287
427	Apricots	98	Tallinn	2020-06-05 23:17:48.53547	2020-06-05 23:17:48.53547
428	Custard Apples	48	Luxembourg	2020-06-05 23:17:48.580967	2020-06-05 23:17:48.580967
429	Kiwi Fruit	86	Mbabane	2020-06-05 23:17:48.598987	2020-06-05 23:17:48.598987
430	Feijoa	55	Jerusalem	2020-06-05 23:17:48.619213	2020-06-05 23:17:48.619213
431	Grapes	83	Taipei	2020-06-05 23:17:48.636615	2020-06-05 23:17:48.636615
432	Goji Berry	50	Abuja	2020-06-05 23:17:48.654281	2020-06-05 23:17:48.654281
433	Cumquat	63	Maputo	2020-06-05 23:17:48.671221	2020-06-05 23:17:48.671221
434	Avocado	43	Bissau	2020-06-05 23:17:48.689109	2020-06-05 23:17:48.689109
435	Grapes	79	Dhaka	2020-06-05 23:17:48.706575	2020-06-05 23:17:48.706575
436	Olives	62	Brazzaville	2020-06-05 23:17:48.72373	2020-06-05 23:17:48.72373
437	Olives	61	Sao Tome	2020-06-05 23:17:48.740623	2020-06-05 23:17:48.740623
438	Watermelon	97	Riga	2020-06-05 23:17:48.813282	2020-06-05 23:17:48.813282
439	Incaberries	48	Jerusalem	2020-06-05 23:17:48.830425	2020-06-05 23:17:48.830425
440	Blueberries	97	Lusaka	2020-06-05 23:17:48.847737	2020-06-05 23:17:48.847737
441	Goji Berry	77	Quito	2020-06-05 23:17:48.86806	2020-06-05 23:17:48.86806
442	Juniper Berries	33	Minsk	2020-06-05 23:17:48.885338	2020-06-05 23:17:48.885338
443	Corella Pear	16	Valletta	2020-06-05 23:17:48.902256	2020-06-05 23:17:48.902256
444	Loquats	45	Mbabane	2020-06-05 23:17:48.919234	2020-06-05 23:17:48.919234
445	Sprouts	56	Brazzaville	2020-06-05 23:17:48.936686	2020-06-05 23:17:48.936686
446	Juniper Berries	60	Kampala	2020-06-05 23:17:48.954721	2020-06-05 23:17:48.954721
447	Dried Apricots	38	Suva	2020-06-05 23:17:48.972544	2020-06-05 23:17:48.972544
448	Prunes	51	San Jose	2020-06-05 23:17:48.990346	2020-06-05 23:17:48.990346
449	Elderberry	14	Kabul	2020-06-05 23:17:49.007776	2020-06-05 23:17:49.007776
450	Custard Apples Daikon	39	Bamako	2020-06-05 23:17:49.026425	2020-06-05 23:17:49.026425
451	Cherries	39	Maseru	2020-06-05 23:17:49.061317	2020-06-05 23:17:49.061317
452	Dried Apricots	88	Phnom Penh	2020-06-05 23:17:49.082072	2020-06-05 23:17:49.082072
453	Custard Apples	20	Bangkok	2020-06-05 23:17:49.098966	2020-06-05 23:17:49.098966
454	Oranges	35	Roseau	2020-06-05 23:17:49.116072	2020-06-05 23:17:49.116072
455	Limes	98	Minsk	2020-06-05 23:17:49.133846	2020-06-05 23:17:49.133846
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.reviews (id, author, content_body, rating, created_at, updated_at, product_id) FROM stdin;
25258	Jack Pott	Waistcoat vhs tote bag etsy gastropub cliche franzen poutine ennui hoodie pbr&b sustainable williamsburg polaroid salvia ramps humblebrag meh +1.	3	2020-06-05 23:17:48.117301	2020-06-05 23:17:48.117301	406
25259	Juan Fortharoad	Twee portland 8-bit authentic meh shoreditch skateboard cronut church-key dreamcatcher five dollar toast cray tofu cardigan jean shorts brunch.	2	2020-06-05 23:17:48.120957	2020-06-05 23:17:48.120957	406
25260	Milly Graham	Plaid banjo selfies tilde five dollar toast stumptown neutra irony vegan polaroid distillery celiac whatever flannel tousled meh bespoke gastropub tote bag gentrify.	4	2020-06-05 23:17:48.123978	2020-06-05 23:17:48.123978	406
25261	Ben Thair	Cleanse hashtag direct trade synth drinking normcore neutra pabst pinterest meditation yr raw denim skateboard retro pork belly gluten-free letterpress literally viral shabby chic.	3	2020-06-05 23:17:48.127123	2020-06-05 23:17:48.127123	406
25262	Molly Kuehl	Seitan dreamcatcher chambray tumblr cold-pressed tote bag sartorial pabst pitchfork raw denim farm-to-table shoreditch umami austin everyday wolf locavore street fanny pack marfa.	5	2020-06-05 23:17:48.130713	2020-06-05 23:17:48.130713	406
25263	Parker Carr	Retro intelligentsia kombucha cleanse humblebrag park echo pour-over crucifix flexitarian dreamcatcher pork belly meh health goth phlogiston forage kitsch hashtag godard.	1	2020-06-05 23:17:48.136515	2020-06-05 23:17:48.136515	407
25264	Don Thatt	Drinking cardigan twee tumblr butcher marfa carry disrupt humblebrag 8-bit paleo hashtag put a bird on it brunch franzen helvetica messenger bag fashion axe thundercats organic.	5	2020-06-05 23:17:48.14038	2020-06-05 23:17:48.14038	407
25265	Melba Crisp	Umami drinking humblebrag godard selvage venmo kinfolk quinoa before they sold out salvia butcher muggle magic cred pinterest vegan cardigan 8-bit viral craft beer vinyl.	4	2020-06-05 23:17:48.143236	2020-06-05 23:17:48.143236	407
25266	Therese R. Green	Normcore bicycle rights knausgaard tofu slow-carb fashion axe echo mustache locavore biodiesel twee jean shorts umami humblebrag kombucha retro godard yolo.	2	2020-06-05 23:17:48.146632	2020-06-05 23:17:48.146632	407
25267	Anita Bathe	Flannel narwhal farm-to-table franzen meh stumptown freegan carry mumblecore trust fund paleo everyday typewriter pabst muggle magic mlkshk crucifix lomo pinterest.	4	2020-06-05 23:17:48.149614	2020-06-05 23:17:48.149614	407
25268	Ida Whana	Yolo bitters hashtag trust fund hoodie viral fanny pack 90's polaroid tote bag humblebrag crucifix cleanse flannel tacos gastropub five dollar toast cardigan.	1	2020-06-05 23:17:48.155695	2020-06-05 23:17:48.155695	408
25269	Elle O'Quent	Ennui pabst helvetica gastropub tumblr retro narwhal knausgaard readymade squid butcher skateboard poutine raw denim tilde 3 wolf moon mumblecore health before they sold out.	3	2020-06-05 23:17:48.158537	2020-06-05 23:17:48.158537	408
25270	Al Gore Rythim	Whatever cold-pressed meditation goth taxidermy blog +1 bespoke biodiesel craft beer gluten-free flannel swag selvage roof yolo tumblr slow-carb humblebrag.	5	2020-06-05 23:17:48.161685	2020-06-05 23:17:48.161685	408
25271	Justin Casey Howells	Kogi pbr&b bitters portland slow-carb small batch keytar intelligentsia tofu typewriter swag diy aesthetic letterpress vice echo leggings freegan meggings.	3	2020-06-05 23:17:48.164617	2020-06-05 23:17:48.164617	408
25272	Neil Down	Portland disrupt cronut marfa skateboard sustainable farm-to-table readymade blog squid leggings xoxo flannel art party kombucha church-key irony austin plaid.	2	2020-06-05 23:17:48.167499	2020-06-05 23:17:48.167499	408
25273	R. M. Pitt	Pop-up fanny pack pbr&b viral green juice phlogiston cred schlitz kale chips migas mustache retro selvage pitchfork church-key typewriter poutine.	2	2020-06-05 23:17:48.173209	2020-06-05 23:17:48.173209	409
25274	Sandy Banks	Trust fund wayfarers viral plaid portland before they sold out vegan poutine yr meditation sriracha fanny pack cleanse banjo aesthetic.	1	2020-06-05 23:17:48.176414	2020-06-05 23:17:48.176414	409
25275	Dee Sember	Tousled meh thundercats flannel kickstarter sustainable gentrify brunch viral pork belly artisan trust fund selvage tote bag marfa vegan shoreditch.	1	2020-06-05 23:17:48.179227	2020-06-05 23:17:48.179227	409
25276	Ima Hogg	Typewriter selfies park whatever deep v narwhal viral semiotics salvia craft beer chillwave vegan pinterest brooklyn pug meggings before they sold out poutine.	2	2020-06-05 23:17:48.182427	2020-06-05 23:17:48.182427	409
25277	Jay Walker	Cornhole single-origin coffee offal umami truffaut tofu gastropub butcher pbr&b helvetica pork belly leggings migas keffiyeh seitan.	4	2020-06-05 23:17:48.185154	2020-06-05 23:17:48.185154	409
25278	Claire Voyance	Vice blue bottle selvage chicharrones cold-pressed dreamcatcher everyday meh twee kickstarter godard synth lo-fi pop-up gentrify offal normcore banh mi.	4	2020-06-05 23:17:48.191346	2020-06-05 23:17:48.191346	410
25279	Estelle Hertz	Fixie selfies tofu schlitz mixtape trust fund ennui dreamcatcher health organic art party five dollar toast beard scenester hoodie tumblr meggings small batch plaid.	2	2020-06-05 23:17:48.194852	2020-06-05 23:17:48.194852	410
25280	Myra Maines	Stumptown thundercats tote bag drinking pinterest schlitz migas master xoxo keytar flannel bespoke selfies hashtag small batch cardigan pop-up.	3	2020-06-05 23:17:48.197938	2020-06-05 23:17:48.197938	410
25281	Mary Gold	Salvia flexitarian pour-over carry direct trade loko cray venmo humblebrag photo booth before they sold out slow-carb vinegar kitsch tousled shoreditch meh kogi seitan vinyl.	3	2020-06-05 23:17:48.201394	2020-06-05 23:17:48.201394	410
25282	Parker Carr	Normcore truffaut deep v thundercats banh mi knausgaard organic pabst pour-over chillwave listicle mixtape mustache master ethical humblebrag microdosing viral vice irony.	4	2020-06-05 23:17:48.20418	2020-06-05 23:17:48.20418	410
25283	Darren Deeds	Twee crucifix raw denim vice lumbersexual humblebrag xoxo blue bottle ethical cleanse selfies wes anderson sriracha locavore deep v thundercats biodiesel quinoa slow-carb.	1	2020-06-05 23:17:48.210734	2020-06-05 23:17:48.210734	411
25284	Clara Sabell	Fashion axe plaid kickstarter normcore yolo +1 wes anderson chambray kogi ennui organic cold-pressed umami art party typewriter pop-up sartorial tattooed thundercats crucifix.	1	2020-06-05 23:17:48.214148	2020-06-05 23:17:48.214148	411
25285	Kitty Katz	Deep v organic helvetica etsy loko sartorial twee leggings vinegar brunch microdosing wayfarers godard pabst skateboard drinking wes anderson bespoke squid fashion axe.	1	2020-06-05 23:17:48.216926	2020-06-05 23:17:48.216926	411
25286	Brighton Early	Intelligentsia brunch distillery ugh polaroid flexitarian butcher 90's hashtag swag fingerstache everyday street truffaut cray bicycle rights.	4	2020-06-05 23:17:48.220155	2020-06-05 23:17:48.220155	411
25287	Duane Pipe	Hella marfa deep v hashtag 90's bushwick dreamcatcher chia offal blue bottle cred trust fund 8-bit forage migas pitchfork kogi.	2	2020-06-05 23:17:48.23584	2020-06-05 23:17:48.23584	411
25288	Kerry Oki	Jean shorts cardigan listicle 8-bit keffiyeh sartorial lumbersexual photo booth semiotics authentic cold-pressed mustache you probably haven't heard of them helvetica salvia single-origin coffee truffaut kombucha wolf.	2	2020-06-05 23:17:48.242043	2020-06-05 23:17:48.242043	412
25289	Bertha D. Blues	Asymmetrical williamsburg yr knausgaard cliche waistcoat plaid flannel cardigan meditation lumbersexual wayfarers pabst post-ironic flexitarian quinoa stumptown forage.	4	2020-06-05 23:17:48.244993	2020-06-05 23:17:48.244993	412
25290	Dan Druff	Slow-carb shabby chic wes anderson williamsburg migas meditation occupy cornhole tilde kogi celiac pour-over kale chips microdosing chillwave small batch messenger bag deep v cleanse.	5	2020-06-05 23:17:48.247757	2020-06-05 23:17:48.247757	412
25291	Jimmy DeLocke	Quinoa lomo retro celiac farm-to-table phlogiston paleo venmo ennui wolf skateboard chia sustainable kombucha trust fund photo booth helvetica salvia franzen portland.	1	2020-06-05 23:17:48.250645	2020-06-05 23:17:48.250645	412
25292	Brock Lee	Fanny pack cray park typewriter listicle actually everyday gastropub asymmetrical yr church-key kombucha godard trust fund selfies brooklyn green juice tote bag twee.	1	2020-06-05 23:17:48.253526	2020-06-05 23:17:48.253526	412
25293	I. M. Boring	Paleo squid pop-up meggings goth diy cardigan before they sold out mixtape stumptown bespoke keytar you probably haven't heard of them biodiesel park.	5	2020-06-05 23:17:48.259762	2020-06-05 23:17:48.259762	413
25294	Carson O. Gin	Cronut gluten-free bushwick food truck jean shorts mustache goth try-hard lomo cornhole fixie offal trust fund sustainable phlogiston.	4	2020-06-05 23:17:48.262779	2020-06-05 23:17:48.262779	413
25295	Buddy System	Whatever hashtag 8-bit fashion axe you probably haven't heard of them vice austin chicharrones trust fund ramps keytar cronut marfa gluten-free beard food truck wayfarers try-hard disrupt.	4	2020-06-05 23:17:48.265531	2020-06-05 23:17:48.265531	413
25296	Anna Graham	Lo-fi sustainable post-ironic beard kitsch butcher yr hella shoreditch squid leggings lumbersexual carry organic locavore street gluten-free authentic pinterest pbr&b.	2	2020-06-05 23:17:48.268858	2020-06-05 23:17:48.268858	413
25297	Mitch Again	Sustainable sartorial tattooed jean shorts whatever meggings flexitarian asymmetrical waistcoat keffiyeh semiotics freegan fanny pack fixie meh.	1	2020-06-05 23:17:48.271794	2020-06-05 23:17:48.271794	413
25298	Laura Norder	Biodiesel gentrify street xoxo irony williamsburg cred food truck chia whatever ethical single-origin coffee blog tilde aesthetic thundercats.	5	2020-06-05 23:17:48.278435	2020-06-05 23:17:48.278435	414
25299	Tom A. Toe	Wes anderson five dollar toast tousled keffiyeh marfa knausgaard selvage 3 wolf moon fashion axe cold-pressed art party pour-over try-hard semiotics celiac.	4	2020-06-05 23:17:48.281641	2020-06-05 23:17:48.281641	414
25300	Haywood Jashootmee	Readymade tattooed narwhal vegan park crucifix brunch bushwick portland helvetica celiac try-hard church-key flexitarian hashtag offal fingerstache biodiesel roof blue bottle.	4	2020-06-05 23:17:48.284604	2020-06-05 23:17:48.284604	414
25301	Ginger Rayl	Neutra bespoke 8-bit salvia post-ironic biodiesel fanny pack meggings ugh offal chambray mumblecore mustache brunch marfa microdosing schlitz church-key vinegar distillery.	5	2020-06-05 23:17:48.287441	2020-06-05 23:17:48.287441	414
25302	Dusty Storm	Bushwick kitsch small batch skateboard hashtag cray meggings everyday knausgaard portland chillwave biodiesel carry fixie typewriter crucifix disrupt five dollar toast kinfolk you probably haven't heard of them.	5	2020-06-05 23:17:48.290301	2020-06-05 23:17:48.290301	414
25303	Colin Allcars	Semiotics mustache blue bottle franzen whatever vinegar selfies bicycle rights 3 wolf moon single-origin coffee goth disrupt helvetica cleanse chambray flexitarian.	2	2020-06-05 23:17:48.296105	2020-06-05 23:17:48.296105	415
25304	Morey Bund	+1 diy cronut pop-up hella tattooed twee pickled cleanse chillwave selvage chicharrones loko before they sold out letterpress put a bird on it typewriter.	3	2020-06-05 23:17:48.298903	2020-06-05 23:17:48.298903	415
25305	Anita Bath	Cronut letterpress truffaut dreamcatcher pbr&b authentic tumblr meh roof hammock raw denim tacos carry actually phlogiston fashion axe.	5	2020-06-05 23:17:48.303688	2020-06-05 23:17:48.303688	415
25306	Phil Graves	Listicle keytar fanny pack brooklyn offal venmo meh slow-carb fingerstache wolf craft beer iphone hoodie biodiesel flannel paleo forage dreamcatcher.	5	2020-06-05 23:17:48.306726	2020-06-05 23:17:48.306726	415
25307	Alex Blaine Layder	Bespoke typewriter blog letterpress synth chambray marfa waistcoat vhs kogi messenger bag yuccie banh mi ennui chicharrones echo ugh.	4	2020-06-05 23:17:48.310243	2020-06-05 23:17:48.310243	415
25308	Dusty Carr	Occupy xoxo cornhole selvage waistcoat actually chambray sartorial kombucha paleo meggings butcher 3 wolf moon mumblecore organic hammock banh mi.	4	2020-06-05 23:17:48.316175	2020-06-05 23:17:48.316175	416
25309	Heather N. Yonn	Polaroid tofu offal fixie kinfolk loko taxidermy shabby chic aesthetic fingerstache vinyl hammock gentrify vegan mlkshk brooklyn celiac fanny pack ennui microdosing.	3	2020-06-05 23:17:48.319121	2020-06-05 23:17:48.319121	416
25310	Misty Waters	Poutine chambray actually messenger bag freegan helvetica kale chips venmo keytar green juice cronut cred vhs plaid diy synth butcher trust fund wes anderson.	5	2020-06-05 23:17:48.322602	2020-06-05 23:17:48.322602	416
25311	Curt Zee	Food truck art party polaroid keytar you probably haven't heard of them wayfarers sriracha muggle magic chia vice direct trade portland five dollar toast pour-over freegan chicharrones narwhal pitchfork gluten-free lo-fi.	4	2020-06-05 23:17:48.325697	2020-06-05 23:17:48.325697	416
25312	Phil A. Mignon	Food truck mixtape keffiyeh polaroid vinyl keytar diy squid fixie asymmetrical celiac pickled sriracha swag mumblecore offal five dollar toast.	2	2020-06-05 23:17:48.328478	2020-06-05 23:17:48.328478	416
25313	Xavier Breath	Church-key mumblecore deep v forage banh mi jean shorts stumptown helvetica knausgaard green juice wayfarers before they sold out portland meh tumblr kickstarter humblebrag cliche.	1	2020-06-05 23:17:48.334267	2020-06-05 23:17:48.334267	417
25314	Royal Payne	Portland yuccie keytar crucifix next level messenger bag cardigan paleo lo-fi bitters shoreditch craft beer forage 8-bit celiac schlitz meggings wayfarers.	5	2020-06-05 23:17:48.337265	2020-06-05 23:17:48.337265	417
25315	Braxton Hicks	Etsy cray offal pour-over five dollar toast pitchfork keffiyeh lo-fi fashion axe intelligentsia put a bird on it tousled wayfarers distillery polaroid umami.	1	2020-06-05 23:17:48.340427	2020-06-05 23:17:48.340427	417
25316	Pearl E. Whites	Lo-fi tofu kombucha microdosing lomo keytar wes anderson humblebrag flexitarian marfa typewriter gastropub shoreditch portland beard banjo.	4	2020-06-05 23:17:48.343272	2020-06-05 23:17:48.343272	417
25317	Gus Tofwin	Church-key cleanse sustainable next level kombucha twee synth listicle offal kinfolk skateboard mumblecore intelligentsia lomo fashion axe roof.	4	2020-06-05 23:17:48.346019	2020-06-05 23:17:48.346019	417
25318	Ford Parker	Pabst beard single-origin coffee cray narwhal salvia knausgaard mlkshk hashtag microdosing banjo health tousled thundercats slow-carb viral green juice.	5	2020-06-05 23:17:48.35192	2020-06-05 23:17:48.35192	418
25319	Cole Durkee	Brunch chambray disrupt meggings blue bottle gluten-free trust fund tofu messenger bag cornhole retro pabst occupy tumblr synth.	2	2020-06-05 23:17:48.354813	2020-06-05 23:17:48.354813	418
25320	Ellie Noise	Cred hammock deep v intelligentsia organic flannel poutine tousled etsy fashion axe vinyl small batch pitchfork heirloom iphone hoodie.	2	2020-06-05 23:17:48.357615	2020-06-05 23:17:48.357615	418
25321	Xavier Breath	Cornhole brooklyn kogi pop-up craft beer bespoke ethical kombucha paleo semiotics polaroid distillery tousled whatever messenger bag crucifix roof.	3	2020-06-05 23:17:48.368036	2020-06-05 23:17:48.368036	418
25322	Scott Shawn DeRocks	Pabst tousled locavore cold-pressed schlitz intelligentsia mustache migas skateboard asymmetrical you probably haven't heard of them selfies stumptown chambray etsy.	4	2020-06-05 23:17:48.374605	2020-06-05 23:17:48.374605	418
25323	Marj Oram	Kogi gastropub keytar jean shorts meggings crucifix sriracha distillery flexitarian listicle pinterest everyday gentrify mlkshk austin 8-bit.	5	2020-06-05 23:17:48.381046	2020-06-05 23:17:48.381046	419
25324	Frank Furter	Beard hoodie yolo yr fashion axe small batch mumblecore +1 church-key ugh craft beer narwhal distillery waistcoat chartreuse wolf bushwick umami.	3	2020-06-05 23:17:48.384075	2020-06-05 23:17:48.384075	419
25325	Joy Anna DeLight	Lumbersexual park banh mi slow-carb yr mumblecore bitters single-origin coffee fashion axe jean shorts put a bird on it pabst occupy lo-fi iphone food truck blog.	3	2020-06-05 23:17:48.388511	2020-06-05 23:17:48.388511	419
25326	Luke Adam Go	Chicharrones vinegar iphone yr goth lumbersexual cold-pressed kinfolk sriracha jean shorts etsy street ugh echo waistcoat knausgaard yolo letterpress.	4	2020-06-05 23:17:48.391936	2020-06-05 23:17:48.391936	419
25327	Hope Ferterbest	Kickstarter blue bottle kale chips health chia aesthetic scenester portland pabst truffaut diy wayfarers post-ironic brooklyn kitsch.	1	2020-06-05 23:17:48.39488	2020-06-05 23:17:48.39488	419
25328	Buck Ng	Butcher tacos master wolf brooklyn everyday selfies flannel distillery crucifix twee bushwick 8-bit artisan typewriter dreamcatcher chicharrones banjo fixie flexitarian.	3	2020-06-05 23:17:48.401136	2020-06-05 23:17:48.401136	420
25329	Justin Casey Howells	Truffaut slow-carb five dollar toast chambray craft beer tacos fanny pack poutine kogi photo booth fixie meh wayfarers godard vhs green juice leggings listicle.	3	2020-06-05 23:17:48.403991	2020-06-05 23:17:48.403991	420
25330	Bess Eaton	Franzen next level keffiyeh vhs before they sold out jean shorts cray seitan stumptown cold-pressed schlitz chillwave green juice 8-bit tacos post-ironic chicharrones messenger bag.	2	2020-06-05 23:17:48.407512	2020-06-05 23:17:48.407512	420
25331	Bill Board	Pitchfork sriracha yuccie health asymmetrical schlitz distillery tattooed next level brunch kombucha chia helvetica sustainable iphone chicharrones.	2	2020-06-05 23:17:48.41058	2020-06-05 23:17:48.41058	420
25332	Ima Lytle Teapot	Marfa salvia letterpress bitters hashtag drinking mumblecore flannel ramps green juice deep v retro authentic forage tacos disrupt.	2	2020-06-05 23:17:48.413441	2020-06-05 23:17:48.413441	420
25333	Sandy Banks	Listicle paleo occupy kale chips yuccie hashtag sriracha shoreditch hella cornhole goth ethical ramps polaroid truffaut godard squid.	5	2020-06-05 23:17:48.419175	2020-06-05 23:17:48.419175	421
25334	Lisa Ford	Diy cray waistcoat echo food truck biodiesel bushwick park craft beer polaroid keytar helvetica wayfarers ramps sustainable blue bottle forage shabby chic actually.	4	2020-06-05 23:17:48.422545	2020-06-05 23:17:48.422545	421
25335	Iona Corolla	Artisan messenger bag authentic keffiyeh wes anderson hoodie mustache tacos venmo biodiesel hammock iphone chia asymmetrical truffaut.	4	2020-06-05 23:17:48.425298	2020-06-05 23:17:48.425298	421
25336	Matt Tress	Health locavore kinfolk yolo tote bag etsy pickled street wolf cliche cronut tattooed squid ramps cornhole.	5	2020-06-05 23:17:48.428052	2020-06-05 23:17:48.428052	421
25337	Eileen Dover	Hashtag godard portland you probably haven't heard of them plaid truffaut disrupt next level park shabby chic cornhole flexitarian scenester aesthetic health franzen food truck gastropub.	1	2020-06-05 23:17:48.438357	2020-06-05 23:17:48.438357	421
25338	Les Moore	Vhs +1 shabby chic put a bird on it chillwave truffaut brunch waistcoat microdosing park 3 wolf moon cronut meggings portland 90's bespoke artisan kitsch.	1	2020-06-05 23:17:48.444736	2020-06-05 23:17:48.444736	422
25339	Ginger Snapp	Crucifix tofu muggle magic synth hella thundercats yr drinking occupy typewriter paleo polaroid actually truffaut sartorial biodiesel.	4	2020-06-05 23:17:48.447681	2020-06-05 23:17:48.447681	422
25340	Bill Board	Authentic lo-fi kale chips before they sold out gastropub ethical venmo crucifix try-hard chartreuse fixie intelligentsia asymmetrical church-key cornhole distillery.	4	2020-06-05 23:17:48.450683	2020-06-05 23:17:48.450683	422
25341	Barb E. Cue	Biodiesel loko kogi banh mi heirloom fanny pack tattooed you probably haven't heard of them seitan marfa migas shabby chic salvia schlitz mustache wolf chicharrones microdosing organic.	3	2020-06-05 23:17:48.453663	2020-06-05 23:17:48.453663	422
25342	Robin Banks	Asymmetrical ethical photo booth heirloom ramps cliche kombucha 90's sriracha single-origin coffee taxidermy scenester fashion axe hammock brunch beard.	1	2020-06-05 23:17:48.456468	2020-06-05 23:17:48.456468	422
25343	Cheri Pitts	Retro chicharrones listicle tote bag pabst 8-bit squid semiotics sustainable selfies heirloom cred banh mi 90's taxidermy shabby chic iphone quinoa hashtag.	5	2020-06-05 23:17:48.462895	2020-06-05 23:17:48.462895	423
25344	Hugh deMann	Williamsburg franzen keffiyeh before they sold out craft beer raw denim yolo brooklyn biodiesel helvetica vegan slow-carb hoodie sriracha plaid bushwick brunch quinoa cronut locavore.	3	2020-06-05 23:17:48.4661	2020-06-05 23:17:48.4661	423
25345	Dusty Sandmann	Mumblecore church-key green juice aesthetic roof vice etsy food truck tumblr austin tattooed tilde distillery direct trade literally.	1	2020-06-05 23:17:48.469113	2020-06-05 23:17:48.469113	423
25346	Ed Venture	Intelligentsia deep v flannel cred single-origin coffee kitsch 8-bit etsy austin lomo cleanse godard migas pork belly street gentrify trust fund.	1	2020-06-05 23:17:48.472094	2020-06-05 23:17:48.472094	423
25347	Dinah Might	Tousled cleanse banh mi cray ramps chicharrones seitan pabst forage microdosing twee hoodie farm-to-table vice butcher typewriter keytar direct trade church-key goth.	1	2020-06-05 23:17:48.474913	2020-06-05 23:17:48.474913	423
25348	Tamara Knight	Wes anderson fingerstache leggings 3 wolf moon flexitarian food truck muggle magic mumblecore polaroid pitchfork pork belly seitan narwhal photo booth five dollar toast single-origin coffee goth marfa shabby chic.	3	2020-06-05 23:17:48.481686	2020-06-05 23:17:48.481686	424
25349	Misty C. Shore	Ugh vhs butcher stumptown tattooed meggings chillwave bitters farm-to-table mlkshk pickled loko 90's before they sold out fingerstache.	5	2020-06-05 23:17:48.484679	2020-06-05 23:17:48.484679	424
25350	Ricky T. Ladder	Readymade lumbersexual cronut master salvia pug flexitarian umami pabst skateboard iphone blue bottle ennui franzen plaid sartorial.	4	2020-06-05 23:17:48.487676	2020-06-05 23:17:48.487676	424
25351	Jay Bird	Slow-carb truffaut kogi tote bag fingerstache wes anderson farm-to-table jean shorts loko before they sold out next level cardigan fanny pack flannel tattooed dreamcatcher leggings photo booth.	2	2020-06-05 23:17:48.490796	2020-06-05 23:17:48.490796	424
25352	Eaton Wright	Ennui helvetica twee wes anderson kombucha echo quinoa sustainable leggings fingerstache humblebrag craft beer mixtape gluten-free bitters typewriter irony messenger bag.	5	2020-06-05 23:17:48.49379	2020-06-05 23:17:48.49379	424
25353	Tish Hughes	Jean shorts loko austin butcher kale chips mlkshk offal you probably haven't heard of them vice bitters brunch typewriter polaroid small batch sustainable.	2	2020-06-05 23:17:48.499967	2020-06-05 23:17:48.499967	425
25354	Lynn Guini	Distillery flannel seitan phlogiston drinking everyday keffiyeh bespoke cronut actually scenester next level cred deep v poutine knausgaard stumptown.	3	2020-06-05 23:17:48.502976	2020-06-05 23:17:48.502976	425
25355	Jean Poole	Beard lumbersexual portland biodiesel locavore bitters truffaut marfa umami viral gentrify migas pork belly direct trade gastropub keffiyeh distillery kombucha cred jean shorts.	2	2020-06-05 23:17:48.506623	2020-06-05 23:17:48.506623	425
25356	Ellie Noise	Cardigan aesthetic skateboard wolf cronut tote bag thundercats readymade blue bottle locavore austin banh mi brooklyn park asymmetrical kickstarter 90's yr echo.	4	2020-06-05 23:17:48.50961	2020-06-05 23:17:48.50961	425
25357	May K. Fist	Messenger bag hoodie deep v pickled pabst craft beer ramps freegan portland polaroid retro keffiyeh bitters before they sold out muggle magic kogi.	4	2020-06-05 23:17:48.512542	2020-06-05 23:17:48.512542	425
25358	Shirley Knot	Hoodie wolf +1 pug kogi migas quinoa loko raw denim chicharrones fingerstache chambray fixie skateboard synth you probably haven't heard of them bitters whatever distillery meditation.	2	2020-06-05 23:17:48.518619	2020-06-05 23:17:48.518619	426
25359	Doug Graves	Pickled lo-fi gentrify whatever tacos organic cred diy bitters biodiesel hashtag letterpress put a bird on it freegan humblebrag tote bag polaroid.	5	2020-06-05 23:17:48.522876	2020-06-05 23:17:48.522876	426
25360	Marcus Absent	Green juice cold-pressed ramps wolf kogi pug small batch park xoxo artisan vinyl flannel church-key vhs bicycle rights selfies hella.	2	2020-06-05 23:17:48.526048	2020-06-05 23:17:48.526048	426
25361	Barry D. Hatchett	3 wolf moon sartorial kinfolk banh mi stumptown echo single-origin coffee raw denim crucifix hella austin tote bag williamsburg etsy chicharrones try-hard.	5	2020-06-05 23:17:48.528953	2020-06-05 23:17:48.528953	426
25362	Sue Case	Selfies jean shorts before they sold out health cardigan next level flannel distillery literally wayfarers ethical cliche franzen bicycle rights selvage gentrify.	2	2020-06-05 23:17:48.532061	2020-06-05 23:17:48.532061	426
25363	Darrell B. Moore	Truffaut keffiyeh locavore roof wayfarers squid offal tofu asymmetrical cred vinegar shoreditch art party paleo mustache food truck letterpress pickled tousled.	5	2020-06-05 23:17:48.538606	2020-06-05 23:17:48.538606	427
25364	Noah Riddle	Yolo kinfolk farm-to-table cliche slow-carb 8-bit hoodie literally bushwick deep v tacos phlogiston +1 photo booth semiotics before they sold out sartorial.	4	2020-06-05 23:17:48.541938	2020-06-05 23:17:48.541938	427
25365	Reid Enright	Brooklyn seitan kale chips green juice ennui pitchfork yuccie truffaut chartreuse shabby chic fixie xoxo occupy food truck hella yr bushwick.	5	2020-06-05 23:17:48.544756	2020-06-05 23:17:48.544756	427
25366	Dusty Storm	Pork belly actually lomo cold-pressed tousled tote bag shabby chic single-origin coffee lo-fi 8-bit wes anderson wolf kogi chartreuse selvage cleanse chicharrones.	1	2020-06-05 23:17:48.548024	2020-06-05 23:17:48.548024	427
25367	Lance Lyde	Vice kinfolk viral mlkshk next level shabby chic stumptown portland vinyl pabst master muggle magic 8-bit etsy cliche.	4	2020-06-05 23:17:48.577701	2020-06-05 23:17:48.577701	427
25368	Justin Thyme	Diy portland synth roof cornhole tilde +1 seitan waistcoat irony paleo drinking phlogiston migas you probably haven't heard of them crucifix 90's master mixtape.	3	2020-06-05 23:17:48.584159	2020-06-05 23:17:48.584159	428
25369	Ron A. Muck	Etsy sustainable park put a bird on it readymade try-hard sartorial 3 wolf moon mumblecore microdosing pug food truck whatever brooklyn ennui lo-fi.	3	2020-06-05 23:17:48.587698	2020-06-05 23:17:48.587698	428
25370	Juan Nightstand	Waistcoat kitsch lo-fi kogi wes anderson 8-bit salvia cold-pressed pitchfork cardigan williamsburg jean shorts literally bicycle rights kickstarter chia sustainable locavore.	1	2020-06-05 23:17:48.590656	2020-06-05 23:17:48.590656	428
25371	Lisa Ford	Humblebrag pour-over tousled portland ugh yr seitan xoxo authentic distillery chicharrones thundercats helvetica gluten-free gentrify chia gastropub kinfolk viral.	4	2020-06-05 23:17:48.593536	2020-06-05 23:17:48.593536	428
25372	Biff Wellington	Letterpress artisan selvage vinyl bitters deep v muggle magic brunch literally pitchfork 3 wolf moon humblebrag pbr&b cronut drinking taxidermy you probably haven't heard of them pour-over.	3	2020-06-05 23:17:48.596352	2020-06-05 23:17:48.596352	428
25373	Miss Alanius	Vinegar shabby chic loko marfa tilde cred park tacos umami stumptown fanny pack health five dollar toast waistcoat everyday.	2	2020-06-05 23:17:48.605519	2020-06-05 23:17:48.605519	429
25374	Wanda Rinn	Blog cardigan single-origin coffee listicle vegan sriracha leggings helvetica wayfarers small batch brooklyn chicharrones wes anderson ramps banh mi carry try-hard 90's.	2	2020-06-05 23:17:48.608342	2020-06-05 23:17:48.608342	429
25375	Misty C. Shore	Normcore +1 hashtag wes anderson letterpress disrupt artisan bicycle rights yuccie farm-to-table gentrify twee cleanse helvetica actually pickled celiac narwhal iphone.	4	2020-06-05 23:17:48.611194	2020-06-05 23:17:48.611194	429
25376	Willie Maykit	Taxidermy austin craft beer stumptown keytar shabby chic forage vice brunch tofu freegan kinfolk locavore lo-fi fingerstache semiotics lomo schlitz green juice.	1	2020-06-05 23:17:48.613893	2020-06-05 23:17:48.613893	429
25377	Jacklyn Hyde	Jean shorts semiotics dreamcatcher beard vegan bushwick pbr&b tumblr salvia microdosing you probably haven't heard of them +1 migas hashtag pug kombucha marfa heirloom ethical waistcoat.	3	2020-06-05 23:17:48.61668	2020-06-05 23:17:48.61668	429
25378	Brandy D. Cantor	Bitters retro phlogiston artisan brunch health pinterest pop-up gentrify art party cold-pressed hoodie street seitan you probably haven't heard of them mixtape put a bird on it before they sold out.	5	2020-06-05 23:17:48.622931	2020-06-05 23:17:48.622931	430
25379	Winsom Cash	Yuccie small batch authentic migas phlogiston thundercats pop-up austin occupy helvetica viral roof tacos fixie humblebrag normcore polaroid chicharrones tote bag.	4	2020-06-05 23:17:48.625714	2020-06-05 23:17:48.625714	430
25380	Nick O'Time	Small batch loko yr seitan green juice pitchfork austin tousled park organic ethical readymade narwhal master hammock dreamcatcher.	5	2020-06-05 23:17:48.628518	2020-06-05 23:17:48.628518	430
25381	June Bugg	You probably haven't heard of them chambray skateboard cronut mlkshk bitters keffiyeh master paleo meditation readymade listicle migas quinoa church-key.	3	2020-06-05 23:17:48.631397	2020-06-05 23:17:48.631397	430
25382	Rocky Beach	Iphone mlkshk poutine chartreuse letterpress everyday asymmetrical migas retro xoxo pour-over keffiyeh art party wolf tofu.	3	2020-06-05 23:17:48.634088	2020-06-05 23:17:48.634088	430
25383	Rex Easley	Tumblr pbr&b distillery thundercats retro church-key schlitz yuccie fanny pack you probably haven't heard of them quinoa chia pug authentic forage.	5	2020-06-05 23:17:48.639897	2020-06-05 23:17:48.639897	431
25384	Mitch Again	Loko cornhole cronut crucifix twee pop-up cardigan biodiesel gentrify next level everyday vinegar butcher umami leggings kombucha.	3	2020-06-05 23:17:48.642808	2020-06-05 23:17:48.642808	431
25385	Penny Lane	Helvetica post-ironic 8-bit godard mixtape offal trust fund ugh scenester pabst goth roof intelligentsia lo-fi five dollar toast authentic you probably haven't heard of them pour-over.	5	2020-06-05 23:17:48.646037	2020-06-05 23:17:48.646037	431
25386	Clara Nett	Health selvage readymade hammock chambray intelligentsia kickstarter fixie crucifix tofu listicle squid slow-carb fingerstache skateboard cred plaid park.	4	2020-06-05 23:17:48.648782	2020-06-05 23:17:48.648782	431
25387	Dale E. Bread	You probably haven't heard of them blog franzen jean shorts hoodie occupy put a bird on it aesthetic bitters +1 diy tote bag church-key park cold-pressed messenger bag 90's.	4	2020-06-05 23:17:48.651726	2020-06-05 23:17:48.651726	431
25388	Don Key	Xoxo salvia taxidermy etsy tattooed yuccie swag sustainable you probably haven't heard of them drinking artisan messenger bag fashion axe yr diy.	1	2020-06-05 23:17:48.657166	2020-06-05 23:17:48.657166	432
25389	Douglas S. Halfempty	Before they sold out locavore trust fund pug poutine sustainable cliche vice crucifix raw denim blog semiotics church-key 90's art party.	2	2020-06-05 23:17:48.660279	2020-06-05 23:17:48.660279	432
25390	Phil A. Delphia	Taxidermy distillery narwhal mumblecore disrupt direct trade retro plaid before they sold out selvage loko everyday lomo you probably haven't heard of them meggings.	3	2020-06-05 23:17:48.663161	2020-06-05 23:17:48.663161	432
25391	Candice B. DePlace	+1 slow-carb kogi williamsburg seitan godard authentic flexitarian artisan cliche salvia pitchfork stumptown pickled tumblr typewriter wes anderson tattooed tote bag.	5	2020-06-05 23:17:48.665886	2020-06-05 23:17:48.665886	432
25392	Ima Lytle Teapot	Chillwave viral chicharrones cold-pressed pop-up park poutine muggle magic vhs ethical jean shorts yolo authentic venmo vinegar wes anderson.	5	2020-06-05 23:17:48.668568	2020-06-05 23:17:48.668568	432
25393	Kenny Penny	Goth synth bitters distillery locavore kickstarter cleanse vice marfa intelligentsia brooklyn twee franzen kogi pitchfork phlogiston 3 wolf moon you probably haven't heard of them mlkshk portland.	1	2020-06-05 23:17:48.674204	2020-06-05 23:17:48.674204	433
25394	Rusty Fossat	Literally deep v austin lumbersexual keytar meggings vegan offal cray echo before they sold out master green juice butcher put a bird on it ugh cred.	3	2020-06-05 23:17:48.677165	2020-06-05 23:17:48.677165	433
25395	Kim Payne Slogan	Migas fashion axe deep v pop-up swag typewriter keffiyeh leggings echo etsy humblebrag hashtag dreamcatcher meh kinfolk readymade gentrify ramps.	1	2020-06-05 23:17:48.680579	2020-06-05 23:17:48.680579	433
25396	Adam Meway	Hammock next level vhs +1 squid ethical master pinterest health poutine etsy blog sustainable scenester farm-to-table.	2	2020-06-05 23:17:48.683303	2020-06-05 23:17:48.683303	433
25397	Joe Czarfunee	Migas trust fund fingerstache diy kogi +1 try-hard kinfolk franzen normcore pickled aesthetic waistcoat lumbersexual plaid xoxo shabby chic dreamcatcher biodiesel forage.	5	2020-06-05 23:17:48.686302	2020-06-05 23:17:48.686302	433
25398	Aretha Holly	Wayfarers five dollar toast pour-over keytar street 90's butcher stumptown listicle cold-pressed lumbersexual typewriter chia heirloom church-key 8-bit roof.	3	2020-06-05 23:17:48.692176	2020-06-05 23:17:48.692176	434
25399	M. T. Toombe	Deep v hoodie before they sold out vhs health fashion axe aesthetic street literally pabst meditation slow-carb salvia vice venmo occupy celiac kombucha mumblecore paleo.	1	2020-06-05 23:17:48.694953	2020-06-05 23:17:48.694953	434
25400	Brandy Anne Koch	Gastropub 90's paleo brunch ennui synth food truck swag readymade franzen mixtape selfies plaid green juice iphone put a bird on it.	3	2020-06-05 23:17:48.697693	2020-06-05 23:17:48.697693	434
25401	Sandy C. Shore	Fixie etsy asymmetrical kitsch vinyl ramps actually offal synth pabst stumptown echo literally hammock helvetica butcher.	5	2020-06-05 23:17:48.700834	2020-06-05 23:17:48.700834	434
25402	Ilene Dover	Banjo biodiesel raw denim 90's bespoke fixie polaroid venmo semiotics butcher plaid scenester artisan pickled cray fashion axe kale chips tacos asymmetrical.	3	2020-06-05 23:17:48.704013	2020-06-05 23:17:48.704013	434
25403	Pepe Roni	Biodiesel hammock chicharrones selfies chillwave post-ironic williamsburg fanny pack next level tattooed ethical vice five dollar toast street everyday brooklyn echo.	2	2020-06-05 23:17:48.709541	2020-06-05 23:17:48.709541	435
25404	Rick O'Shea	Normcore meggings bushwick kickstarter ennui +1 schlitz gentrify tousled occupy direct trade flannel hashtag mumblecore swag marfa roof.	3	2020-06-05 23:17:48.712337	2020-06-05 23:17:48.712337	435
25405	Bob Inforapples	Kinfolk xoxo franzen knausgaard freegan stumptown 90's fashion axe quinoa twee kickstarter vhs raw denim pork belly keytar retro pickled whatever.	4	2020-06-05 23:17:48.71502	2020-06-05 23:17:48.71502	435
25406	Myles Long	Mixtape godard twee heirloom butcher pitchfork food truck freegan occupy marfa normcore chia waistcoat biodiesel tousled wolf kale chips.	4	2020-06-05 23:17:48.717664	2020-06-05 23:17:48.717664	435
25407	Jerry Atrics	Tousled venmo organic cardigan pinterest brooklyn wolf intelligentsia farm-to-table humblebrag heirloom ugh irony kickstarter cleanse retro health 90's.	3	2020-06-05 23:17:48.721217	2020-06-05 23:17:48.721217	435
25408	Chris Coe	+1 craft beer jean shorts lumbersexual kogi hashtag distillery you probably haven't heard of them direct trade etsy kale chips celiac kickstarter pabst fanny pack pour-over.	5	2020-06-05 23:17:48.726925	2020-06-05 23:17:48.726925	436
25409	Bill Ng	Vinyl 90's schlitz kickstarter quinoa ramps keytar drinking tilde green juice five dollar toast actually synth intelligentsia thundercats poutine carry yuccie.	5	2020-06-05 23:17:48.729808	2020-06-05 23:17:48.729808	436
25410	Brandy Anne Koch	Umami fanny pack crucifix pickled bicycle rights thundercats brunch scenester pitchfork narwhal fixie banh mi truffaut semiotics organic literally kale chips.	5	2020-06-05 23:17:48.732517	2020-06-05 23:17:48.732517	436
25411	Justin Inch	Hammock phlogiston bicycle rights humblebrag church-key pbr&b lo-fi ugh art party microdosing paleo deep v kinfolk tote bag marfa schlitz flannel normcore.	4	2020-06-05 23:17:48.735263	2020-06-05 23:17:48.735263	436
25412	Ed Jewcation	Portland tofu food truck authentic meggings seitan actually kickstarter hashtag five dollar toast kogi vice ethical 3 wolf moon distillery taxidermy church-key green juice.	4	2020-06-05 23:17:48.737996	2020-06-05 23:17:48.737996	436
25413	Robin Meeblind	Flexitarian shabby chic portland meh tattooed celiac franzen cliche knausgaard freegan health retro ethical quinoa chicharrones ennui.	3	2020-06-05 23:17:48.743686	2020-06-05 23:17:48.743686	437
25414	Rose Gardner	Paleo vhs mlkshk retro hashtag organic narwhal keffiyeh readymade tilde vice literally salvia leggings cliche franzen portland synth gentrify gluten-free.	4	2020-06-05 23:17:48.746647	2020-06-05 23:17:48.746647	437
25415	Park A. Studebaker	Forage next level post-ironic cray seitan 3 wolf moon celiac dreamcatcher wes anderson hashtag vhs gentrify banh mi helvetica asymmetrical knausgaard pug kombucha.	1	2020-06-05 23:17:48.749384	2020-06-05 23:17:48.749384	437
25416	Ray Gunn	Gastropub truffaut semiotics mlkshk marfa pug dreamcatcher celiac ennui echo leggings next level chillwave migas before they sold out goth tacos.	3	2020-06-05 23:17:48.805954	2020-06-05 23:17:48.805954	437
25417	Ty Coon	Mustache cray mumblecore cleanse irony narwhal food truck chia kinfolk lomo selvage roof waistcoat sriracha five dollar toast next level.	3	2020-06-05 23:17:48.809717	2020-06-05 23:17:48.809717	437
25418	Ilene West	Kombucha gastropub vinyl you probably haven't heard of them bespoke fashion axe tofu cred chartreuse crucifix quinoa literally xoxo chambray art party normcore helvetica celiac.	4	2020-06-05 23:17:48.816421	2020-06-05 23:17:48.816421	438
25419	Rory Storm	Hammock drinking knausgaard pabst schlitz butcher lomo gastropub blog flexitarian beard chambray gentrify neutra salvia chartreuse pork belly scenester banh mi.	5	2020-06-05 23:17:48.819176	2020-06-05 23:17:48.819176	438
25420	Tom A. Toe	Try-hard occupy banh mi williamsburg loko microdosing bespoke flexitarian raw denim small batch umami ugh asymmetrical kogi blog disrupt taxidermy letterpress plaid.	4	2020-06-05 23:17:48.82218	2020-06-05 23:17:48.82218	438
25421	Sally Mander	Skateboard yolo health poutine disrupt meh austin schlitz chicharrones sartorial distillery mlkshk twee umami vegan brooklyn tofu.	3	2020-06-05 23:17:48.824947	2020-06-05 23:17:48.824947	438
25422	Macon Paine	Vice wolf kale chips letterpress green juice chillwave bicycle rights put a bird on it diy tumblr etsy slow-carb microdosing celiac echo.	4	2020-06-05 23:17:48.827805	2020-06-05 23:17:48.827805	438
25423	Maurice Minor	Stumptown mumblecore literally marfa street food truck cred iphone raw denim fanny pack offal cornhole park forage fashion axe.	1	2020-06-05 23:17:48.833315	2020-06-05 23:17:48.833315	439
25424	Vlad Tire	Tacos flexitarian fashion axe polaroid carry ugh squid 8-bit paleo deep v vhs next level lumbersexual etsy pour-over tofu.	1	2020-06-05 23:17:48.836252	2020-06-05 23:17:48.836252	439
25425	May K. Fist	Hashtag cornhole hammock photo booth vhs narwhal franzen carry phlogiston selvage pitchfork tattooed tofu flexitarian polaroid artisan yr ethical.	2	2020-06-05 23:17:48.839221	2020-06-05 23:17:48.839221	439
25426	Al O'Moaney	Gastropub food truck gentrify vhs vice ramps hashtag leggings lumbersexual 8-bit ennui disrupt pickled cold-pressed everyday chambray plaid health.	2	2020-06-05 23:17:48.842369	2020-06-05 23:17:48.842369	439
25427	Tamara Knight	Loko venmo pug ramps knausgaard tilde 8-bit meditation green juice butcher bespoke tacos listicle messenger bag 3 wolf moon offal mumblecore mixtape roof.	1	2020-06-05 23:17:48.845004	2020-06-05 23:17:48.845004	439
25428	Sandy Banks	Kombucha paleo offal cronut pour-over occupy irony master retro mlkshk swag tumblr venmo yr 3 wolf moon put a bird on it.	4	2020-06-05 23:17:48.853057	2020-06-05 23:17:48.853057	440
25429	Hugo First	Authentic freegan sriracha humblebrag narwhal brooklyn selfies celiac migas bitters pitchfork vinegar vegan twee gastropub scenester.	3	2020-06-05 23:17:48.856186	2020-06-05 23:17:48.856186	440
25430	Ben Dover	Crucifix paleo distillery brooklyn 3 wolf moon banh mi listicle single-origin coffee poutine bitters health tumblr kale chips cliche aesthetic jean shorts plaid brunch venmo synth.	2	2020-06-05 23:17:48.858988	2020-06-05 23:17:48.858988	440
25431	Ty Tass	Plaid messenger bag waistcoat offal keffiyeh echo authentic squid neutra diy crucifix normcore pinterest goth vinyl wolf meggings post-ironic.	5	2020-06-05 23:17:48.862764	2020-06-05 23:17:48.862764	440
25432	Abe Rudder	Pour-over deep v put a bird on it chia godard tilde plaid you probably haven't heard of them normcore umami muggle magic austin mumblecore blue bottle cray drinking crucifix seitan health loko.	1	2020-06-05 23:17:48.86552	2020-06-05 23:17:48.86552	440
25433	Dustin D. Furniture	Vegan retro scenester cardigan cornhole kogi forage salvia portland yuccie jean shorts listicle quinoa shoreditch banh mi pop-up.	3	2020-06-05 23:17:48.871185	2020-06-05 23:17:48.871185	441
25434	Yule B. Sari	Taxidermy slow-carb meh roof crucifix knausgaard neutra godard narwhal meditation lumbersexual flexitarian farm-to-table wes anderson vegan.	3	2020-06-05 23:17:48.873979	2020-06-05 23:17:48.873979	441
25435	Brandon Irons	Tumblr hoodie viral shabby chic beard cardigan vinegar wes anderson listicle craft beer bespoke vinyl cold-pressed tacos normcore drinking bicycle rights blue bottle intelligentsia.	2	2020-06-05 23:17:48.876647	2020-06-05 23:17:48.876647	441
25436	Jay Bird	Bitters etsy xoxo roof sustainable chia banjo williamsburg selvage keytar selfies pabst mixtape before they sold out pop-up forage.	1	2020-06-05 23:17:48.879516	2020-06-05 23:17:48.879516	441
25437	Justin Sane	Cornhole brooklyn literally poutine fingerstache put a bird on it migas dreamcatcher semiotics godard fixie echo messenger bag bicycle rights tilde meh occupy retro ramps distillery.	1	2020-06-05 23:17:48.882821	2020-06-05 23:17:48.882821	441
25438	Tish Hughes	Pug meditation hashtag iphone five dollar toast put a bird on it cardigan direct trade literally yolo banjo flannel post-ironic ennui williamsburg street trust fund food truck tumblr.	4	2020-06-05 23:17:48.888387	2020-06-05 23:17:48.888387	442
25439	Justin Casey Howells	Sustainable loko meditation tacos squid master listicle ramps 8-bit organic godard iphone pour-over pinterest freegan five dollar toast typewriter carry.	4	2020-06-05 23:17:48.891284	2020-06-05 23:17:48.891284	442
25440	Dinah Soares	Small batch vhs umami photo booth meggings +1 cardigan hashtag keytar meh put a bird on it schlitz tofu normcore stumptown street asymmetrical locavore.	3	2020-06-05 23:17:48.894029	2020-06-05 23:17:48.894029	442
25441	Duane DeVane	Portland chia microdosing marfa bicycle rights twee church-key tacos selfies mlkshk vice hella vinegar taxidermy ugh deep v thundercats five dollar toast.	2	2020-06-05 23:17:48.896724	2020-06-05 23:17:48.896724	442
25442	Kurt Remarque	Umami dreamcatcher quinoa tilde pbr&b normcore pour-over ennui flannel bitters wolf everyday farm-to-table fingerstache diy sartorial etsy.	2	2020-06-05 23:17:48.899643	2020-06-05 23:17:48.899643	442
25443	Kenney C. Strait	Post-ironic shabby chic marfa actually pug next level cleanse everyday banjo quinoa pitchfork food truck 3 wolf moon venmo deep v mlkshk fixie gastropub humblebrag slow-carb.	3	2020-06-05 23:17:48.905216	2020-06-05 23:17:48.905216	443
25444	Eaton Wright	Gentrify kale chips butcher poutine quinoa street hella portland twee literally williamsburg tofu schlitz single-origin coffee loko pop-up semiotics truffaut meditation.	3	2020-06-05 23:17:48.908333	2020-06-05 23:17:48.908333	443
25445	Emile Eaton	Food truck hella offal distillery sartorial shabby chic pour-over williamsburg squid literally schlitz stumptown pitchfork neutra fingerstache.	5	2020-06-05 23:17:48.911215	2020-06-05 23:17:48.911215	443
25446	Adam Zapel	Green juice craft beer portland tote bag pork belly hammock helvetica shoreditch scenester brunch put a bird on it offal meh selfies pug humblebrag pabst.	1	2020-06-05 23:17:48.913907	2020-06-05 23:17:48.913907	443
25447	Curt N. Rodd	Vhs pitchfork farm-to-table next level flexitarian disrupt dreamcatcher bitters polaroid echo wayfarers whatever mumblecore master aesthetic.	4	2020-06-05 23:17:48.916612	2020-06-05 23:17:48.916612	443
25448	Harry R. M. Pitts	Seitan bicycle rights 90's vhs leggings flannel cred umami meh pug brunch franzen humblebrag gentrify helvetica chicharrones farm-to-table.	2	2020-06-05 23:17:48.923103	2020-06-05 23:17:48.923103	444
25449	Jane Linkfence	Paleo chillwave yolo park messenger bag bespoke trust fund asymmetrical sriracha meh lumbersexual gentrify skateboard williamsburg locavore brooklyn shoreditch irony.	2	2020-06-05 23:17:48.925891	2020-06-05 23:17:48.925891	444
25450	Bess Eaton	Everyday marfa bitters readymade shabby chic organic photo booth blog blue bottle migas bespoke tacos umami tilde 90's.	3	2020-06-05 23:17:48.928681	2020-06-05 23:17:48.928681	444
25451	Zeke N. Yeshallfind	Blue bottle vinyl tilde lomo cliche direct trade butcher asymmetrical poutine gluten-free flannel occupy tousled viral organic.	5	2020-06-05 23:17:48.931569	2020-06-05 23:17:48.931569	444
25452	Carl Arm	Gastropub hashtag salvia put a bird on it marfa direct trade irony listicle schlitz kale chips tumblr seitan retro bitters blog next level.	1	2020-06-05 23:17:48.934262	2020-06-05 23:17:48.934262	444
25453	Justin Sane	Skateboard farm-to-table drinking viral pinterest chicharrones goth iphone selfies bitters wolf 3 wolf moon heirloom ennui franzen yolo migas.	5	2020-06-05 23:17:48.940662	2020-06-05 23:17:48.940662	445
25454	Lee Nover	Irony tilde pug helvetica plaid microdosing franzen pour-over ennui mumblecore raw denim heirloom freegan you probably haven't heard of them sriracha cardigan asymmetrical pbr&b meggings church-key.	5	2020-06-05 23:17:48.943508	2020-06-05 23:17:48.943508	445
25455	Molly Kuehl	Paleo tacos gentrify messenger bag polaroid deep v seitan microdosing locavore celiac next level migas vegan brunch pbr&b plaid cornhole.	4	2020-06-05 23:17:48.946572	2020-06-05 23:17:48.946572	445
25456	Sue Shi	Pug cronut schlitz 3 wolf moon celiac kickstarter aesthetic mlkshk occupy actually microdosing irony paleo roof +1 pbr&b.	2	2020-06-05 23:17:48.949295	2020-06-05 23:17:48.949295	445
25457	Cara Van	Vhs vinyl brunch asymmetrical art party tousled kickstarter pug kale chips ugh everyday tote bag keffiyeh pitchfork yr hammock leggings cray typewriter.	4	2020-06-05 23:17:48.952146	2020-06-05 23:17:48.952146	445
25458	Ann B. Dextrous	Direct trade selvage artisan typewriter pork belly brooklyn whatever you probably haven't heard of them chicharrones vinyl sriracha yr kale chips vegan crucifix helvetica flexitarian.	5	2020-06-05 23:17:48.957642	2020-06-05 23:17:48.957642	446
25459	Bjorn Free	Plaid thundercats sartorial etsy 8-bit normcore park hashtag five dollar toast schlitz try-hard gastropub quinoa keytar before they sold out.	4	2020-06-05 23:17:48.960776	2020-06-05 23:17:48.960776	446
25460	Rufus Leaking	Keffiyeh yolo bespoke selvage literally deep v truffaut 90's lomo cronut pop-up you probably haven't heard of them shabby chic hoodie tattooed freegan.	1	2020-06-05 23:17:48.963736	2020-06-05 23:17:48.963736	446
25461	Sandy Banks	Fingerstache cred selvage +1 pug blog seitan poutine flannel sartorial pinterest meditation roof brooklyn selfies cardigan vegan five dollar toast keffiyeh tumblr.	1	2020-06-05 23:17:48.966722	2020-06-05 23:17:48.966722	446
25462	Nick Ovtime	Marfa chartreuse asymmetrical 3 wolf moon cronut pbr&b pour-over intelligentsia franzen carry pabst gastropub bitters readymade yolo messenger bag letterpress post-ironic.	2	2020-06-05 23:17:48.969628	2020-06-05 23:17:48.969628	446
25463	Hayden Seek	Hoodie disrupt kombucha street fanny pack organic lo-fi franzen cred jean shorts blog beard single-origin coffee roof portland plaid chambray five dollar toast.	4	2020-06-05 23:17:48.975642	2020-06-05 23:17:48.975642	447
25464	Sarah Bellum	Hashtag yolo semiotics hoodie polaroid twee letterpress hella venmo selfies asymmetrical selvage stumptown green juice banjo occupy xoxo 3 wolf moon.	4	2020-06-05 23:17:48.9785	2020-06-05 23:17:48.9785	447
25465	Sonny Day	Listicle godard echo small batch etsy kinfolk disrupt letterpress hashtag plaid chicharrones vinyl williamsburg meggings taxidermy semiotics.	5	2020-06-05 23:17:48.981555	2020-06-05 23:17:48.981555	447
25466	Sid Down	Sartorial raw denim kinfolk lo-fi wayfarers banjo lomo organic ugh green juice cornhole fanny pack tattooed celiac viral knausgaard crucifix.	3	2020-06-05 23:17:48.984197	2020-06-05 23:17:48.984197	447
25467	Dusty Storm	Single-origin coffee cold-pressed authentic freegan pug chia deep v synth selvage kale chips thundercats venmo tofu vhs salvia.	1	2020-06-05 23:17:48.98765	2020-06-05 23:17:48.98765	447
25468	Winnie Dipoo	Vinegar cronut next level knausgaard pinterest phlogiston hoodie migas godard etsy readymade neutra +1 vegan artisan semiotics food truck celiac chia.	5	2020-06-05 23:17:48.993441	2020-06-05 23:17:48.993441	448
25469	Adam Sapple	Irony typewriter hashtag listicle try-hard tacos knausgaard selfies vegan kombucha aesthetic blog chillwave crucifix plaid sriracha green juice twee.	5	2020-06-05 23:17:48.996236	2020-06-05 23:17:48.996236	448
25470	Bill Lowney	Stumptown quinoa scenester microdosing disrupt swag fanny pack literally lo-fi mixtape meh viral 3 wolf moon synth loko banjo taxidermy blog hashtag whatever.	1	2020-06-05 23:17:48.999028	2020-06-05 23:17:48.999028	448
25471	Penny Wise	Mixtape lo-fi wolf selvage ramps polaroid godard vinegar park yr roof meditation sriracha microdosing gastropub aesthetic.	2	2020-06-05 23:17:49.002532	2020-06-05 23:17:49.002532	448
25472	Gene Poole	Bicycle rights everyday swag meh green juice yuccie direct trade post-ironic kogi biodiesel banjo scenester single-origin coffee carry shabby chic dreamcatcher.	1	2020-06-05 23:17:49.005219	2020-06-05 23:17:49.005219	448
25473	Will Wynn	Austin heirloom cray +1 kickstarter hashtag yuccie wes anderson swag cred asymmetrical kitsch raw denim sartorial twee selfies echo.	5	2020-06-05 23:17:49.010955	2020-06-05 23:17:49.010955	449
25474	Isadore Bell	Williamsburg mixtape venmo lumbersexual echo intelligentsia flexitarian blue bottle pbr&b umami disrupt bushwick fashion axe stumptown direct trade pork belly gentrify letterpress cold-pressed.	4	2020-06-05 23:17:49.01381	2020-06-05 23:17:49.01381	449
25475	Jack Hammer	90's food truck marfa vegan cronut whatever you probably haven't heard of them meggings post-ironic carry cray semiotics mumblecore polaroid art party tofu normcore locavore scenester.	3	2020-06-05 23:17:49.016493	2020-06-05 23:17:49.016493	449
25476	Clara Sabell	Slow-carb drinking tofu organic forage post-ironic yr hoodie yuccie 3 wolf moon bespoke dreamcatcher farm-to-table cronut lomo listicle.	1	2020-06-05 23:17:49.019516	2020-06-05 23:17:49.019516	449
25477	Curt Zee	Fanny pack literally wes anderson mixtape cliche yr authentic drinking single-origin coffee microdosing fixie post-ironic shabby chic salvia pork belly aesthetic lumbersexual.	1	2020-06-05 23:17:49.023069	2020-06-05 23:17:49.023069	449
25478	U. P. Freehly	Crucifix biodiesel pop-up brooklyn heirloom raw denim brunch etsy organic marfa semiotics salvia ennui gastropub hashtag deep v ramps next level intelligentsia trust fund.	3	2020-06-05 23:17:49.029344	2020-06-05 23:17:49.029344	450
25479	Mary Ann Bright	Tacos thundercats mustache cardigan roof yolo distillery viral muggle magic hella trust fund cred jean shorts ramps skateboard disrupt austin williamsburg.	3	2020-06-05 23:17:49.032227	2020-06-05 23:17:49.032227	450
25480	Ivan Oder	Chambray bespoke gentrify kitsch kinfolk chia dreamcatcher biodiesel selfies yolo humblebrag fanny pack paleo quinoa yuccie meditation everyday.	2	2020-06-05 23:17:49.03507	2020-06-05 23:17:49.03507	450
25481	Xavier Breath	Biodiesel flannel aesthetic meditation listicle brooklyn fanny pack master kickstarter banjo authentic mustache occupy wolf kinfolk everyday.	1	2020-06-05 23:17:49.037791	2020-06-05 23:17:49.037791	450
25482	Bill Loney	Readymade you probably haven't heard of them cardigan chia truffaut squid marfa meh drinking vegan five dollar toast artisan park godard literally bicycle rights kale chips flexitarian.	5	2020-06-05 23:17:49.056474	2020-06-05 23:17:49.056474	450
25483	Misty C. Shore	Freegan keffiyeh banjo blue bottle ennui bespoke readymade normcore synth heirloom before they sold out ugh bushwick marfa cornhole craft beer kogi pitchfork iphone pinterest.	4	2020-06-05 23:17:49.066592	2020-06-05 23:17:49.066592	451
25484	Nida Lyte	Trust fund literally williamsburg lomo neutra letterpress skateboard umami poutine squid godard church-key mlkshk pitchfork tote bag loko waistcoat kogi listicle.	4	2020-06-05 23:17:49.069637	2020-06-05 23:17:49.069637	451
25485	Bill Dollar	Microdosing hella pitchfork listicle fixie swag umami cornhole franzen twee selfies locavore vegan roof carry migas.	2	2020-06-05 23:17:49.073092	2020-06-05 23:17:49.073092	451
25486	Mike Rohsopht	Thundercats fashion axe health vegan etsy yolo flexitarian trust fund gastropub chartreuse scenester photo booth sriracha synth kombucha.	5	2020-06-05 23:17:49.075908	2020-06-05 23:17:49.075908	451
25487	Chris Ko	Slow-carb franzen ugh pour-over tousled try-hard hashtag whatever umami vinegar muggle magic brunch godard listicle cliche hoodie flannel williamsburg tilde tattooed.	2	2020-06-05 23:17:49.078639	2020-06-05 23:17:49.078639	451
25488	Wanda Rinn	Normcore marfa poutine humblebrag butcher hoodie cliche +1 helvetica pbr&b pour-over sustainable waistcoat green juice 8-bit scenester.	1	2020-06-05 23:17:49.085002	2020-06-05 23:17:49.085002	452
25489	Robin Andis Merryman	Photo booth meggings cardigan lomo actually cliche chicharrones tote bag fanny pack skateboard selvage seitan fixie crucifix meditation irony 3 wolf moon.	1	2020-06-05 23:17:49.087791	2020-06-05 23:17:49.087791	452
25490	Jerry Atrics	Shabby chic ennui whatever tousled humblebrag forage next level synth austin waistcoat goth vhs normcore craft beer cleanse stumptown banh mi.	4	2020-06-05 23:17:49.090519	2020-06-05 23:17:49.090519	452
25491	Barb E. Dahl	Scenester thundercats kombucha flannel green juice listicle typewriter messenger bag sartorial salvia semiotics photo booth tacos crucifix migas craft beer post-ironic tilde park 3 wolf moon.	1	2020-06-05 23:17:49.093489	2020-06-05 23:17:49.093489	452
25492	Rip Torn	Single-origin coffee bicycle rights food truck diy green juice freegan wes anderson +1 viral cornhole forage park craft beer post-ironic next level waistcoat wayfarers disrupt master.	2	2020-06-05 23:17:49.096347	2020-06-05 23:17:49.096347	452
25493	Chris Cross	Vinegar biodiesel trust fund umami tousled cold-pressed meditation celiac church-key put a bird on it pug lo-fi goth keytar street.	3	2020-06-05 23:17:49.102288	2020-06-05 23:17:49.102288	453
25494	Ferris Wheeler	Knausgaard tattooed swag food truck drinking cleanse street whatever migas kale chips keytar bushwick park cray blog.	2	2020-06-05 23:17:49.105292	2020-06-05 23:17:49.105292	453
25495	Rusty Fossat	Yuccie etsy plaid godard fixie deep v actually microdosing biodiesel single-origin coffee yr readymade fingerstache five dollar toast gastropub.	1	2020-06-05 23:17:49.107946	2020-06-05 23:17:49.107946	453
25496	Jean Poole	Scenester +1 five dollar toast 3 wolf moon brunch chicharrones sartorial pabst franzen keytar biodiesel chartreuse vice cardigan etsy messenger bag fingerstache.	5	2020-06-05 23:17:49.110704	2020-06-05 23:17:49.110704	453
25497	Bill Loney	Fingerstache celiac brunch etsy kickstarter photo booth readymade jean shorts pour-over cliche franzen banh mi artisan mustache gastropub brooklyn.	2	2020-06-05 23:17:49.113396	2020-06-05 23:17:49.113396	453
25498	M. Balmer	Austin farm-to-table roof locavore organic banjo flexitarian master skateboard yuccie neutra bespoke chicharrones 90's microdosing bicycle rights.	2	2020-06-05 23:17:49.118956	2020-06-05 23:17:49.118956	454
25499	Nick L. Andime	Locavore shoreditch pickled brunch single-origin coffee roof diy paleo taxidermy organic sustainable photo booth tattooed artisan bitters meditation.	5	2020-06-05 23:17:49.122565	2020-06-05 23:17:49.122565	454
25500	Lowden Clear	Sriracha fingerstache salvia franzen bushwick disrupt small batch jean shorts whatever locavore raw denim tote bag post-ironic helvetica distillery ethical asymmetrical skateboard normcore.	4	2020-06-05 23:17:49.125402	2020-06-05 23:17:49.125402	454
25501	Harrison Fire	Cornhole etsy messenger bag banjo kickstarter selvage loko portland gentrify selfies synth art party street +1 yuccie fixie.	2	2020-06-05 23:17:49.128355	2020-06-05 23:17:49.128355	454
25502	Roman Holiday	Cardigan locavore drinking mlkshk chillwave meggings lo-fi church-key normcore everyday green juice stumptown readymade dreamcatcher freegan kale chips sriracha.	3	2020-06-05 23:17:49.131315	2020-06-05 23:17:49.131315	454
25503	Chris Mass	Tousled cleanse mlkshk leggings ethical meditation twee humblebrag plaid mumblecore typewriter migas tacos scenester paleo 3 wolf moon wes anderson banh mi cronut seitan.	1	2020-06-05 23:17:49.137183	2020-06-05 23:17:49.137183	455
25504	Lucy Fer	Hoodie helvetica blue bottle neutra brooklyn trust fund small batch skateboard pop-up letterpress deep v mustache sriracha kinfolk franzen meggings portland lo-fi.	5	2020-06-05 23:17:49.140489	2020-06-05 23:17:49.140489	455
25505	Jim Nasium	Microdosing schlitz scenester tattooed heirloom chicharrones humblebrag craft beer loko vegan artisan cliche tilde beard selfies small batch cronut master.	4	2020-06-05 23:17:49.143176	2020-06-05 23:17:49.143176	455
25506	Tommy Hawk	Biodiesel master microdosing typewriter ethical cliche chillwave scenester put a bird on it waistcoat mumblecore intelligentsia yuccie hashtag seitan loko franzen.	5	2020-06-05 23:17:49.146471	2020-06-05 23:17:49.146471	455
25507	M. Balmer	Crucifix fashion axe schlitz health disrupt cred meditation roof butcher distillery squid green juice artisan pbr&b letterpress lo-fi gentrify polaroid park.	4	2020-06-05 23:17:49.149257	2020-06-05 23:17:49.149257	455
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.schema_migrations (version) FROM stdin;
20200529153029
20200529153811
20200529155142
20200605165104
20200605190331
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: tylerbowerman
--

COPY public.users (id, email, password_hash, password_salt, admin) FROM stdin;
2	blahblah@yahoo.com	$2a$12$mRsMyCebEeweU5NEUYmjXufsDMZMlnKgLwEY7z4jNEsz2Pof5ma9G	$2a$12$mRsMyCebEeweU5NEUYmjXu	f
3	b@b.com	$2a$12$jureeWFp1I26O7DQ/Piq.OlHmJft.ab5AzokCt0dWFNVXsRu3FH4a	$2a$12$jureeWFp1I26O7DQ/Piq.O	f
1	tylerbowerman@yahoo.com	$2a$12$7gv5X4Phosr25hkVkF/W9.7RqnIOxuTO1n/N6G1nUhD7uNwpHi6fG	$2a$12$7gv5X4Phosr25hkVkF/W9.	t
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tylerbowerman
--

SELECT pg_catalog.setval('public.products_id_seq', 455, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tylerbowerman
--

SELECT pg_catalog.setval('public.reviews_id_seq', 25507, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tylerbowerman
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: reviews fk_rails_bedd9094d4; Type: FK CONSTRAINT; Schema: public; Owner: tylerbowerman
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_bedd9094d4 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- PostgreSQL database dump complete
--

