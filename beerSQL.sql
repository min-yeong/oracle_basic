--------------------------------------------------------
--  파일이 생성됨 - 목요일-2월-27-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_BEERS
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_BEERS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21781 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_BLIKE_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_BLIKE_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 76 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_REVIEW_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_REVIEW_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 15 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_TAG_NO
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_TAG_NO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 75 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BEER
--------------------------------------------------------

  CREATE TABLE "BEER" 
   (	"BEERNO" NUMBER, 
	"BEERNAME" VARCHAR2(100 BYTE), 
	"BEERPIC" VARCHAR2(100 BYTE), 
	"COUNTRY" VARCHAR2(100 BYTE), 
	"COMPANY" VARCHAR2(200 BYTE), 
	"TYPE" VARCHAR2(100 BYTE), 
	"ABV" NUMBER, 
	"RATING" NUMBER DEFAULT 0, 
	"RATINGBA" NUMBER, 
	"RATINGCNT" NUMBER DEFAULT 0, 
	"NOTE" VARCHAR2(2000 BYTE), 
	"BEERCNT" NUMBER DEFAULT 0, 
	"BEERKO" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BEER_LIKE
--------------------------------------------------------

  CREATE TABLE "BEER_LIKE" 
   (	"BLIKENO" NUMBER, 
	"UUID" VARCHAR2(200 BYTE), 
	"BEERNO" NUMBER, 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BEER_SAMPLE
--------------------------------------------------------

  CREATE TABLE "BEER_SAMPLE" 
   (	"BEERNO" NUMBER, 
	"BEERNAME" VARCHAR2(100 BYTE), 
	"BEERPIC" VARCHAR2(100 BYTE), 
	"COUNTRY" VARCHAR2(100 BYTE), 
	"COMPANY" VARCHAR2(200 BYTE), 
	"TYPE" VARCHAR2(100 BYTE), 
	"ABV" NUMBER, 
	"RATING" NUMBER, 
	"RATINGBA" NUMBER, 
	"NOTE" VARCHAR2(2000 BYTE), 
	"BEERCNT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HASHTAG
--------------------------------------------------------

  CREATE TABLE "HASHTAG" 
   (	"TAGNO" NUMBER, 
	"TAGNAME" VARCHAR2(100 BYTE), 
	"BEERNO" NUMBER, 
	"REVIEWNO" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "REVIEW" 
   (	"REVIEWNO" VARCHAR2(200 BYTE), 
	"UUID" VARCHAR2(200 BYTE), 
	"BEERNO" NUMBER, 
	"REVIEWCONTENT" VARCHAR2(4000 BYTE), 
	"REVIEWPIC" VARCHAR2(100 BYTE), 
	"RATING" NUMBER, 
	"REGDATE" DATE, 
	"LIKECNT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEARCHDB
--------------------------------------------------------

  CREATE TABLE "SEARCHDB" 
   (	"BEERNO" NUMBER, 
	"BEERIMG" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "USERS" 
   (	"UUID" VARCHAR2(200 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"NICKNAME" VARCHAR2(100 BYTE), 
	"KAKAOID" VARCHAR2(100 BYTE), 
	"USERPIC" VARCHAR2(200 BYTE), 
	"JOINDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into BEER
SET DEFINE OFF;
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1904,'Celebration Fresh Hop IPA','/img/1904.png','미국','Sierra Nevada Brewing Co.','IPA',6.8,0,4.17,10686,'Fresh Hop Ale; no spices.

We first brewed Celebration IPA in the winter of 1981. Each year, we use only the first fresh hops of the growing season to create this complex and robust ale. Layered pine and citrus hop aromas balance delicately against rich, malt sweetness to shape this bold wintertime classic.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (34,'La Fin Du Monde','/img/34.png','캐나다','Unibroue','스트롱 에일',9,3,4.36,10463,'La Fin du Monde was developed through 18 months of research on a unique strain of yeast originating from Europe. It is brewed in honor of the intrepid European explorers who believed they had reached the “end of the world” when they discovered North America ‘the new world’. This triple-style golden ale recreates the style of beer originally developed in the Middle Ages by trappist monks for special occasions and as such it was the first of its kind to be brewed in North America.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (74986,'Lagunitas Sucks','/img/74986.png','미국','Lagunitas Brewing Company','IPA',7.85,0,4.35,10450,'This sad holiday season we didn’t have the brewing capacity to make our favorite seasonal brew, the widely feared BrownShugga’ Ale. You see we had a couple of really good years (thank you very much) and so heading into this season while we are awaiting the January delivery of a new brewhouse we are jammin’ along brewing 80 barrels of IPA and PILS and such every 3 hours. A couple of months back we realized that since we can only brew a mere 60 barrels of Shugga’ every 5 hours, that we were seriously screwed. For every case of Shugga’ brewed, we’d short 3 cases of our favorite daily beers. It’s a drag. This year, we brewed something that we think is also cool and brews more like our daily brews. The new brewhouse will help insure this kind of failure never happens again. It’s a mess that we can not brew our BrownShugga’ this year and we suck for not doing it. There is nothing cool about screwing this up this badly and we know it. Maybe we can sue our own sorry selves. There is no joy in our hearts this holiday and the best we can hope for is a quick and merciful end. F*@& us. This totally blows. Whatever. We freaking munch moldy donkey butt and we just want it to be all over... 
So this substitute beer is a ‘Cereal Medley’ of Barley, Rye, Wheat, and Oats…. Full of complexishness from the 4 grains, and weighing in at 7.85% abv, Then joyously dry-hopped for that big aroma and resinous hop flavor.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (34483,'Ten FIDY','/img/34483.png','미국','Oskar Blues Grill & Brew','스타우트',10.5,0,4.4,10160,'This titanic, immensely viscous stout is loaded with inimitable flavors of chocolate-covered caramel and coffee and hide a hefty 98 IBUs underneath the smooth blanket of malt. It is made with enormous amounts of two-row malt, chocolate malt, roasted barley, flaked oats and hops.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1708,'Abt 12','/img/1708.png','벨기에','Brouwerij St. Bernardus NV','스트롱 에일',10,0,4.5,10015,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (645,'Trappistes Rochefort 10','/img/645.png','벨기에','Brasserie de Rochefort','스트롱 에일',11.3,0,4.55,9685,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (104,'Samuel Adams Boston Lager','/img/104.png','미국','Boston Beer Company (Samuel Adams)','다크 라거',5,0,3.76,9669,'Four Ingredients. Painstakingly Chosen. Every year, we travel to Bavaria to hand-select Hallertau Mittelfrüh hops, and the high American plains for the finest two-row summer barley. We cultivate our own lager yeast and I personally sample every batch. All our hard work goes into brewing this distinctly flavorful and complex beer for you. Cheers!',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (916,'Lagunitas IPA','/img/916.png','미국','Lagunitas Brewing Company','IPA',6.2,0,3.91,9356,'Thanks for choosing to spend the next few minutes with this special homicidally hoppy ale. Savor the moment as the raging hop character engages the Imperial Qualities of the Malt Foundation in mortal combat on the battlefield of your palate!


45.6 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (49789,'A Little Sumpin'' Sumpin'' Ale','/img/49789.png','미국','Lagunitas Brewing Company','IPA',7.5,0,4.22,9339,'Brewed with 50% wheat malt; Willamette, Santiam, Amarillo, Cascade, Centennial, Chinook, and Columbus hops. This special ale is something fairly new under the sun. It''s got a lot of wheat, it''s rich with hops, it finishes dry. We''ve watched with some amusement as the internet beer rating sites argues over how to ''classify'' it. We''re in the camp with Japhy Ryder when he declares to Ray Smith that "Comparisons are odious!" You ever notice how everything has to be today''s version of yesterday''s whatever. Well, whatEver. Sometimes we wonder what the world would be like if everything was perceived for what it is, and not what it reminds you of. The sun would rise everyday as if for the first time, you''d wake as if newly born, you''d see your lover next to you anew, the air would smell like flowers, work would be like the first day back in school, a beer would make your eyes roll back in your head in ecstasy... well, maybe not... but you get the idea.....

Way smooth and silky with a nice wheatly-esque-ish-ness. A truly unique style featuring a strong hop finish on a silky body. A hoppy pale wheat ale that is great for IPA fans but so smooth that the hefeweizen fans dig it too.

64 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (607,'Fat Tire Amber Ale','/img/607.png','미국','New Belgium Brewing Company','페일 에일',5.2,0,3.61,9175,'Fat Tire Amber is the easy-drinking Amber Ale born in Colorado from New Belgium Brewing Company, a certified B-Corp.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (731,'Hefeweissbier','/img/731.png','독일','Bayerische Staatsbrauerei Weihenstephan','밀 맥주',5.4,0,4.45,8861,'Our golden-yellow wheat beer, with its fine-poured white foam, smells of cloves and impresses consumers with its refreshing banana flavour. It is full bodied and with a smooth yeast taste. To be enjoyed at any time,goes excellently with fish and seafood, with spicy cheese and especially with the traditional Bavarian veal sausage. Brewed according to our centuries-old brewing tradition on the Weihenstephan hill.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (46363,'Jai Alai IPA','/img/46363.png','미국','Cigar City Brewing','IPA',7.5,0,4.29,8806,'Pours copper in color with notes of citrus and tropical fruit in the aroma. Flavor has upfront citrus bitterness with a hint of caramel and citrus and tropical fruit hop notes in the finish.

70 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (15881,'Nugget Nectar','/img/15881.png','미국','Tröegs Brewing Company','스트롱 에일',7.5,0,4.33,8752,'Squeeze those hops for all they''re worth! Nugget Nectar will take hopheads to nirvana with a heady collection of American hops. Our Imperial Amber Ale is further intensified with whole flower Nugget hops added to our hopback vessel, resulting in an explosion of citrus, resin and pine.

93 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (5441,'Centennial IPA','/img/5441.png','미국','Founders Brewing Company','IPA',7.2,0,4.15,8721,'Get ready to bask in the glory of the frothy head’s floral bouquet. Relish the citrus accents from the abundance of dry hopping. This one’s sweet, yet balanced. Malty undertones shake hands with the hop character for a finish that never turns too bitter.

65 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (3457,'Three Philosophers','/img/3457.png','미국','Brewery Ommegang','스트롱 에일',9.7,0,4.18,6715,'Three Philosophers is a unique blend of a Belgian-style dark ale and Liefmans Kriek, an authentic cherry ale from Belgium. Cherry chestnut in color, it''s opaque but not cloudy with full carbonation topped by a smooth, tan head. Flavors and aromas of roasted malt, molasses and brown sugar, dark fruits, brandied raisins and chocolate, Three Philosophers has notable sweetness with low hop bitterness. The mid-palate shows a soft malt center which gives way to a dry, warm, wine-like finish.

The complexity of this beer make it a good candidate for ageing gracefully, as spicy sherry and port notes should intensify.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1545,'Trappist Westvleteren 12 (XII)','/img/1545.png','벨기에','Brouwerij Westvleteren (Sint-Sixtusabdij van Westvleteren)','스트롱 에일',10.2,0,4.66,6707,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (34146,'Double Trouble','/img/34146.png','미국','Founders Brewing Company','IPA',9.4,0,4.21,6655,'An imperial IPA that was brewed to turn your world upside down. Hops will get you coming and going. Pungent aromatics up front pair with a malt-balanced backbone and a smooth, bitter finish.

86 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (65,'Budweiser','/img/65.png','미국','Anheuser-Busch','필스너/페일 라거',5,0,2.34,6654,'Brewed using a blend of imported and classic American aroma hops, and a blend of barley malts and rice. Budweiser is brewed with time-honored methods including “kraeusening” for natural carbonation and Beechwood aging, which results in unparalleled balance and character.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (22227,'Supplication','/img/22227.png','미국','Russian River Brewing Company','와일드/사워 맥주',7.75,0,4.6,6615,'Brown Ale aged in used Pinot Noir barrels from local Sonoma County wineries. It is aged for about 12 months with sour cherries, brettanomyces, lactobacillus, and pediococcus added to each barrel. Flavors from the cherries, Pinot Noir and oak balance each other nicely with a little funk from the brett.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (198,'Black Butte Porter','/img/198.png','미국','Deschutes Brewery','포터',5.2,0,4.19,6493,'30

192 calories per 12 oz serving',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1444,'Expedition Stout','/img/1444.png','미국','Bell''s Brewery - Eccentric Café & General Store','스타우트',10.5,0,4.29,6489,'Expedition Stout offers immensely complex flavors crafted specifically with vintage aging in mind, as its profile will continue to mature and develop over the years. A huge malt body is matched to a heady blend of chocolate, dark fruits, and other aromas. Intensely bitter in its early months, the flavors will slowly meld and grow in depth as the beer ages.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (94350,'Bomb!','/img/94350.png','미국','Prairie Artisan Ales','스타우트',13,0,4.53,6464,'Imperial stout aged on coffee, cacao nibs, vanilla beans, and ancho chili peppers.

ABV varies by batch.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (5428,'Dragon''s Milk','/img/5428.png','미국','New Holland Brewing Company','스타우트',11,0,4.08,6433,'A barrel aged Imperial Stout with roasty malt character intermingled with deep vanilla tones, all dancing in an oak bath.

2014 Bottles are 11% ABV
2016 Bottles are 11% ABV',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (47658,'CBS (Canadian Breakfast Stout)','/img/47658.png','미국','Founders Brewing Company','스타우트',11.3,0,4.7,6421,'to bring some of our most sought-after beers, which have been available primarily at the taproom or at a few select events, to a much larger audience.

Canadian Breakfast Stout is an Imperial Stout brewed with a blend of coffees and imported chocolates, then aged in spent bourbon barrels that have most recently been aging pure Michigan maple syrup.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (55939,'Hoptimum','/img/55939.png','미국','Sierra Nevada Brewing Co.','IPA',9.6,0,4.21,6413,'Citra, Chinook, Simcoe.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1320,'Bud Light','/img/1320.png','미국','Anheuser-Busch','필스너/페일 라거',4.2,0,1.78,6333,'Bud Light is brewed using a blend of premium aroma hop varieties, both American-grown and imported, and a combination of barley malts and rice. Its superior drinkability and refreshing flavor makes it the world’s favorite light beer.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (89174,'Sculpin - Grapefruit','/img/89174.png','미국','Ballast Point Brewing Company','IPA',7,0,4.34,6313,'Our Award-winning IPA, with a citrus twist.
Our Grapefruit Sculpin is the latest take on our signature IPA. Some may say there are few ways to improve Sculpin’s unique flavor, but the tart freshness of grapefruit perfectly complements our IPA’s citrusy hop character. Grapefruit’s a winter fruit, but this easy-drinking ale tastes like summer.

The Sculpin IPA is a testament to our humble beginnings as Home Brew Mart. It showcases bright flavors and aromas of apricot, peach, mango & lemon. The lighter body also brings out the crispness of the hops. The Sculpin fish has poisonous spikes on its fins that can give a strong sting. Ironically, the meat from a Sculpin fish is considered some of the tastiest. Something that has a sting but tastes great; sounds like a Ballast Point India Pale Ale. This version of our Sculpin IPA has grapefruit added; the grapefruit flavor really enhances the citrus aroma of the hops.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (63,'Anchor Steam Beer','/img/63.png','미국','Anchor Brewing Company','Hybrid Beers',4.9,2.5,3.87,6265,'a blend of pale and caramel malts, fermentation with lager yeast at warmer ale temperatures in shallow open-air fermenters, and gentle carbonation in our cellars through an all-natural process called kräusening.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1161,'Indian Brown Ale','/img/1161.png','미국','Dogfish Head Craft Brewery','브라운 에일',7.2,0,4.12,6260,'the color of an American Brown, the caramel notes of a Scotch Ale, and the hopping regiment of an India Pale Ale. We dry-hop the Indian Brown Ale in a similar fashion to our 60 Minute IPA and 90 Minute IPA. This beer is brewed with Aromatic barley and organic brown sugar.

50 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (101,'Samuel Adams Winter Lager','/img/101.png','미국','Boston Beer Company (Samuel Adams)','복스',5.6,0,3.6,6256,'Festive Bock with Spices.

Winter Lager''s rich malt notes and accents of cinnamon, ginger, and orange peel are just the right companion for decking the halls, your holiday table, your fridge, your hand... You get the picture, no matter what or how you celebrate, do it with a Winter Lager.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (141,'Hennepin','/img/141.png','미국','Brewery Ommegang','페일 에일',7.7,0,4.18,6143,'Hoppy, farmhouse saison with champagne like effervescence; flavors include ginger, spice, orange and toasted grain.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (9478,'Gumballhead','/img/9478.png','미국','3 Floyds Brewing Co.','밀 맥주',5.6,0,4.21,6135,'An American wheat beer with a refreshing, crisp citrus finish. This delicious session beer is brewed with boatloads of Amarillo hops.

35 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1558,'Dreadnaught IPA','/img/1558.png','미국','3 Floyds Brewing Co.','IPA',9.5,0,4.42,6134,'An Imperial India Pale Ale with an intense citrus hop aroma, a huge malt body and a crisp finish.

100 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1385,'Delirium Tremens','/img/1385.png','벨기에','Brouwerij Huyghe','스트롱 에일',8.5,0,4.16,6104,'Feels like the sound shot of alcohol is igniting the mouth. In reality the tongue and palate are warmed. The taste is characterized by its roundness. The aftertaste is strong, long-lasting and dry bitter.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (35036,'Backwoods Bastard','/img/35036.png','미국','Founders Brewing Company','스트롱 에일',11.2,0,4.38,8713,'Expect lovely, warm smells of single malt scotch, oaky bourbon barrels, smoke, sweet caramel and roasted malts, a bit of earthy spice and a scintilla of dark fruit. It’s a kick-back sipper made to excite the palate.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (9086,'120 Minute IPA','/img/9086.png','미국','Dogfish Head Craft Brewery','IPA',18,0,4.18,8674,'Too extreme to be called beer? 120 Minute IPA is brewed to a colossal 45-degree plato, boiled for a full two hours while being continuously hopped with high-alpha American hops, then dry-hopped daily in the fermenter for a month and aged for another month on whole-leaf hops!

120 IBU
ABV varies from 15-20%.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (754,'Guinness Draught','/img/754.png','아일랜드','Guinness Ltd.','스타우트',4.2,0,3.59,8307,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (695,'Duvel Belgian Golden Ale','/img/695.png','벨기에','Brouwerij Duvel Moortgat NV','스트롱 에일',8.5,0,4.29,8248,'A Duvel is still seen as the reference among strong golden ales. Its bouquet is lively and tickles the nose with an element of citrus which even tends towards grapefruit thanks to the use of only the highest-quality hop varieties. This is also reflected in the flavour, which is beautifully balanced with a hint of spiciness. Thanks to its high CO2 content, this beer has a wonderful roundness in the mouth. A Duvel is both the perfect thirst quencher and the ideal aperitif.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2512,'Grande Réserve (Blue)','/img/2512.png','벨기에','Bières de Chimay','스트롱 에일',9,0,4.33,8112,'Originally brewed as a Christmas beer in 1948, this dark ale has rich flavors of mulling spices and caramel, with a smooth palate and warming finish.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (22505,'West Coast IPA','/img/22505.png','미국','Green Flash Brewing Co.','IPA',8.1,0,4.24,8035,'As craft beer pioneers, we embarked on an expedition to brew the benchmark West Coast IPA. We ventured into the unknown and struck gold, discovering a tantalizing menagerie of hops. Simcoe for tropical and grapefruit zest, Columbus for hop pungency, Centennial for pine notes, Citra for citrus zest and Cascade for floral aroma are layered throughout the brewing process. West Coast IPA® exemplifies the Green Flash spirit of adventure and discovery.

95 IBU

Prior to 2014 7.3% ABV
2014 and later 8.1% ABV',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (21822,'Imperial Stout','/img/21822.png','미국','Founders Brewing Company','스타우트',10.5,0,4.38,8000,'75 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (7463,'Dirty Bastard','/img/7463.png','미국','Founders Brewing Company','스트롱 에일',8.5,0,4.07,7981,'So good it’s almost wrong. Dark ruby in color and brewed with seven varieties of imported malts. Complex in finish, with hints of smoke and peat, paired with a malty richness and a right hook of hop power to give it the bad attitude that a beer named Dirty Bastard has to live up to. Ain’t for the wee lads. Brewed with 7 varieties of malt (varies over the years).

50 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (102,'Samuel Adams Octoberfest','/img/102.png','미국','Boston Beer Company (Samuel Adams)','다크 라거',5.3,0,3.68,7970,'In 1810, the Oktoberfest tradition was born when Munich celebrated the Crown Prince''s wedding with a special beer and 16-day party. Our version of this classic style blends hearty malts for a deep, smooth flavor of caramel, creating a brew that''s perfect for the season, or whatever you''re celebrating. Smooth with a roasty sweetness, and light hop character.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (35738,'Hop Stoopid','/img/35738.png','미국','Lagunitas Brewing Company','IPA',8,0,4.21,7964,'Clean this mess up or else we''ll all end up in jail...those test tubes and the scale...just get ''em all outta here..." He was referring to the complex super-critical-CO2 hop extraction equipment set up on the table in the lab across from the brewhouse. Hop extracts are for the BIG brewers, he thought - suitable only for crummy sub-standard and barely-passable industrial lagers, not the subtle and elegant craft beer made here. But wrong he was. The New Brewer does not eschew any possible inputs. In this case the mountain of extracts will replace the mountain of hop vegetative material in the kettle thus creating cleaner hop flavors and preventing the otherwise spinach-like mess of a kettle full of super-hopped wort from clogging up a pump or worse. The sensuous honey-like amber ooze was administered intravenously to the wort kettle and the sacrament was complete. Another kettle of Hop Stoopid is once again raised up and fermented on high.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2751,'Racer 5','/img/2751.png','미국','Bear Republic Brewing Co.','IPA',7.5,0,4.2,7929,'This hoppy American IPA is a full bodied beer brewed with American pale and crystal malts, and heavily hopped with Chinook, Cascade, Columbus and Centennial. There''s a trophy in every glass.

2009 Great American Beer Festival® American-Style Strong Pale Ale – GOLD
2009 Colorado State Fair – Best of Show
2006 Great American Beer Festival® American-Style Strong Pale Ale – SILVER
2005 Great American Beer Festival® American-Style Strong Pale Ale – SILVER
1999 Great American Beer Festival® India Pale Ale - GOLD',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (355,'Dead Guy Ale','/img/355.png','미국','Rogue Ales','복스',6.8,0,3.96,7917,'2-Row, C15, Munich, Rogue Farms Dare™, Risk™ Malts; Rogue Farms Revolution™ & Independent™ Hops; Free Range Coastal Water & Pacman Yeast.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (7348,'Porter','/img/7348.png','미국','Founders Brewing Company','포터',6.5,0,4.27,7797,'No absence of hops gives Founders'' robust porter the full flavor you deserve and expect. 

45 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (38394,'Pumking','/img/38394.png','미국','Southern Tier Brewing Company','Specialty Beers',8.6,0,4.13,7771,'Sterling',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (58914,'All Day IPA','/img/58914.png','미국','Founders Brewing Company','IPA',4.7,0,3.89,7769,'The beer you’ve been waiting for. Keeps your taste satisfied while keeping your senses sharp. An all-day IPA naturally brewed with a complex array of malts, grains and hops. Balanced for optimal aromatics and a clean finish. The perfect reward for an honest day’s work and the ultimate companion to celebrate life’s simple pleasures.

Formerly Endurance - All Day IPA.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2671,'Bigfoot','/img/2671.png','미국','Sierra Nevada Brewing Co.','스트롱 에일',9.6,0,4.17,7742,'Bigfoot is a beast of a beer, brimming with bold flavors of bittersweet malt and heaps of aggressive whole-cone Pacific Northwest hops. First introduced in the winter of 1983, Bigfoot is a cult-classic beer brewed in the barleywine style, meaning a strong, robust, bruiser of a beer with the refined intensity of a wine. Bigfoot is prized by beer collectors for its supreme cellarability. Under the proper conditions, it can age like a fine wine, developing new flavors and character as it matures in the bottle. Each new release or “expedition” is vintage dated. Collect your own and see the flavors develop and progress.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (6518,'Dale''s Pale Ale','/img/6518.png','미국','Oskar Blues Grill & Brew','페일 에일',6.5,0,3.9,7678,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (50697,'Double Jack','/img/50697.png','미국','Firestone Walker Brewing Co.','IPA',9.5,0,4.35,7604,'A dangerously drinkable Double IPA. Double Jack opens up with bright grapefruit and tangerine American hop aromas. Beautifully crafted undertones of stone fruit are revealed upon first sip, followed by the essence of blue basil and pine. A sturdy pale and crystal malt backbone brings balance to high hop intensity. Complex and aggressively hopped, and flawlessly balanced.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1005,'HopDevil','/img/1005.png','미국','Victory Brewing Company - Downingtown','IPA',6.7,0,4.08,7576,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1212,'Blue Moon Belgian White','/img/1212.png','미국','Coors Brewing Company (Molson-Coors)','밀 맥주',5.4,0,3.43,7514,'Also know as Belgian Moon in Alberta & British Columbia',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (34420,'The Abyss','/img/34420.png','미국','Deschutes Brewery','스타우트',11.4,0,4.51,7450,'A deep, dark Imperial Stout, The Abyss has almost immeasurable depth and complexity. Hints of molasses, licorice and other alluring flavors make it something not just to quaff, but contemplate.

As for the great “drink it now or let it age” debate, we stand clearly on the fence. Distinct and delicious on release, the flavors meld and fuse into an entirely different pleasure after a year or more in the cellar.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1094,'Oberon Ale','/img/1094.png','미국','Bell''s Brewery - Eccentric Café & General Store','밀 맥주',5.8,0,3.84,7213,'Oberon is a wheat ale fermented with Bell''s signature house ale yeast, mixing a spicy hop character with mildly fruity aromas. The addition of wheat malt lends a smooth mouthfeel, making it a classic summer beer. Made with only 4 ingredients, and without the use of any spices or fruit, Oberon is the color and scent of sunny afternoon.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (3833,'Speedway Stout','/img/3833.png','미국','AleSmith Brewing Company','스타우트',12,0,4.4,7128,'Jet Black, with an off-white head. Starts with a strong coffee and dark chocolate sensation, then fades to a multitude of toasty, roasty and caramel malt flavors. Clean and crisp, full- bodied. Warmth from the high alcohol content lightens up the feel. You won''t fool your taste buds - this beer is HUGE!',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (48505,'Victory At Sea - Coffee And Vanilla','/img/48505.png','미국','Ballast Point Brewing Company','포터',10,0,4.41,7127,'Our Victory at Sea Imperial Porter is a bold, smooth brew with just the right amount of sweetness. We infused this robust porter with whole vanilla beans and San Diego’s own Caffe Calabria coffee beans. The subtle roasted notes and minimal acidity of the cold brewed coffee, balances perfectly with the sweet caramel undertones of the malt, creating a winning combination for your palate.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (3434,'Milk Stout','/img/3434.png','미국','Left Hand Brewing Company','스타우트',6,0,4,7045,'Lactose',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (41815,'Parabola','/img/41815.png','미국','Firestone Walker Brewing Co.','스타우트',13,0,4.65,7010,'This Russian imperial oatmeal stout is aged for a full year in a blend of bourbon barrels from Elijah Craig, Four Roses, Pappy Van Winkle, Woodford Reserve, and Buﬀalo Trace.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (38180,'Union Jack IPA','/img/38180.png','미국','Firestone Walker Brewing Co.','IPA',7,0,4.24,6997,'This aggressively hopped West Coast IPA showcases stunning pineapple, citrus and piney aromas along with exceptional dry hop flavors of grapefruit and tangerine. This intense brew finds its balance in honey-like pale malt sweetness. The name Union Jack is a nod to the colonial origins of the IPA style, and to the British expatriate who co­‐founded our brewery.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1351,'Yuengling Traditional Lager','/img/1351.png','미국','Yuengling Brewery','다크 라거',4.5,0,3.42,6917,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (571,'Oatmeal Stout','/img/571.png','영국','Samuel Smith Old Brewery (Tadcaster)','스타우트',5,0,4.23,6916,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (680,'Black Chocolate Stout','/img/680.png','미국','Brooklyn Brewery','스타우트',10,0,4.17,6898,'perhaps the body will smooth out, notes of vanilla, oak, and tannins will come to the front, or hints of leather and soy sauce will make themselves known. No matter what, remember that beer is meant for drinking, so don’t keep it to yourself for too long.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1056,'Double Bastard Ale','/img/1056.png','미국','Arrogant Consortia','스트롱 에일',11,0,4.29,6804,'November 1998
Originally brewed to celebrate the one-year anniversary of Arrogant Bastard Ale, Double Bastard Ale debuted in November 1998 as an amped-up version of that already aggressive beer. A huge malt bill and an unreasonable amount of hops make this ale one that will be appreciated by only a few, and that’s just fine with us. We didn’t brew this dark amber monster to please anyone other than ourselves.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (39,'Alpha King','/img/39.png','미국','3 Floyds Brewing Co.','페일 에일',6.66,0,4.26,6803,'A bold yet balanced American Pale Ale with slight caramel sweetness and aggressive citrus hoppiness. This is our flagship beer.

68 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (99873,'DirtWolf','/img/99873.png','미국','Victory Brewing Company - Downingtown','IPA',8.7,0,4.3,6801,'earthy and mildly floral, with notes of sweet citrus and spice.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (6260,'Punkin Ale','/img/6260.png','미국','Dogfish Head Craft Brewery','Specialty Beers',7,0,3.95,6796,'Also known as Punkin Brown Ale

A full-bodied brown ale with smooth hints of pumpkin and brown sugar. We brew our Punkin Ale with pumpkin meat, brown sugar and spices. As the season cools, this is the perfect beer to warm up with.

Punkin Ale is named after the seriously off-centered southern Delaware extravaganza Punkin Chunkin (check out some of these Discovery Channel videos of Punkin Chunkin, you gotta see it to believe it!). In fact, Punkin Ale made its debut as it claimed first prize in the 1994 Punkin Chunkin Recipe Contest. Yes, that was a full 6 months before we even opened our doors for business! 

28 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (131,'Celebrator','/img/131.png','독일','Privatbrauerei Franz Inselkammer KG / Brauerei Aying','복스',6.7,0,4.37,6792,'“Almost black with a very slight red tone, a sensational, festive foam and truly extraordinary fragrance that at first summons up visions of greaves lard. The first taste is of mild fullness with an accompanying coffee tone, which becomes more dominant with the aftertaste. There is very little of the sweetness that is frequently to be tasted with doppelbock beer.” The Ayinger Celebrator has been ranked among the best beers of the world by the Chicago Testing Institute several times and has won numerous medals.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (226,'Edmund Fitzgerald','/img/226.png','미국','Great Lakes Brewing Co.','포터',6,0,4.26,6761,'Robust and complex, our porter is a bittersweet tribute to the legendary freighter''s fallen crew--taken too soon when the gales of November came early.

37 IBUs',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (18862,'Burton Baton','/img/18862.png','미국','Dogfish Head Craft Brewery','IPA',10,0,4.25,6719,'an English-style old ale and an imperial IPA.

After fementating the beers separately in our stainless tanks, they''re transferred and blended together in one of our large oak tanks. Burton Baton sits on the wood for about a month.

When enjoying the Burton Baton, you''ll find an awesome blend of the citrus notes from Northwestern hops melding with woody, vanilla notes from the oak. The wood also tends to mellow the 10% ABV of Burton, so tread cautiously!

70 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (11757,'Breakfast Stout','/img/11757.png','미국','Founders Brewing Company','스타우트',8.3,0,4.55,17545,'The coffee lover’s consummate beer. Brewed with an abundance of flaked oats, bitter and imported chocolates, and two types of coffee, this stout has an intense fresh-roasted java nose topped with a frothy, cinnamon-colored head that goes forever.

60 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2093,'90 Minute IPA','/img/2093.png','미국','Dogfish Head Craft Brewery','IPA',9,0,4.3,16220,'Esquire Magazine calls our 90 Minute IPA "perhaps the best IPA in America." An imperial IPA best savored from a snifter, 90 Minute has a great malt backbone that stands up to the extreme hopping rate.

90 Minute IPA was the first beer we continuously hopped, allowing for a pungent -- but not crushing -- hop flavor.

90 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1093,'Two Hearted Ale','/img/1093.png','미국','Bell''s Brewery - Eccentric Café & General Store','IPA',7,0,4.3,15335,'Brewed with 100% Centennial hops from the Pacific Northwest and named after the Two Hearted River in Michigan’s Upper Peninsula, this IPA is bursting with hop aromas ranging from pine to grapefruit from massive hop additions in both the kettle and the fermenter.

Perfectly balanced with a malt backbone and combined with the signature fruity aromas of Bell''s house yeast, this beer is remarkably drinkable and well suited for adventures everywhere.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (7971,'Pliny The Elder','/img/7971.png','미국','Russian River Brewing Company','IPA',8,0,4.69,15262,'Pliny the Elder is brewed with Amarillo, Centennial, CTZ, and Simcoe hops. It is well-balanced with malt, hops, and alcohol, slightly bitter with a fresh hop aroma of floral, citrus, and pine. Best enjoyed FRESH! That is why we make it in such limited supply. Actual bottling date is printed on each bottle!',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (16814,'Heady Topper','/img/16814.png','미국','The Alchemist','IPA',8,0,4.76,14664,'An American Double IPA. Drink from the can.

75 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (29619,'Sculpin','/img/29619.png','미국','Ballast Point Brewing Company','IPA',7,0,4.41,14502,'Originally named Northstar IPA. Debuted in 2005.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (19960,'KBS (Kentucky Breakfast Stout)','/img/19960.png','미국','Founders Brewing Company','스타우트',12.3,0,4.65,13780,'What we’ve got here is an imperial stout brewed with a massive amount of coffee and chocolates, then cave-aged in oak bourbon barrels for an entire year to make sure wonderful bourbon undertones come through in the finish. Makes your taste buds squeal with delight.

Now labeled as "KBS."

ABV varies by batch.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (17112,'Hopslam Ale','/img/17112.png','미국','Bell''s Brewery - Eccentric Café & General Store','IPA',10,0,4.49,13756,'Starting with six different hop varietals added to the brew kettle & culminating with a massive dry-hop addition of Simcoe hops, Bell''s Hopslam Ale possesses the most complex hopping schedule in the Bell''s repertoire. Selected specifically because of their aromatic qualities, these Pacific Northwest varieties contribute a pungent blend of grapefruit, stone fruit, and floral notes. A generous malt bill and a solid dollop of honey provide just enough body to keep the balance in check, resulting in a remarkably drinkable rendition of the Double India Pale Ale style.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (10672,'Bourbon County Brand Stout','/img/10672.png','미국','Goose Island Beer Co.','스타우트',14.7,0,4.66,13047,'60 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (412,'Old Rasputin','/img/412.png','미국','North Coast Brewing Co.','스타우트',9,0,4.33,12766,'Produced in the tradition of 18th Century English brewers who supplied the court of Russia’s Catherine the Great, Old Rasputin seems to develop a cult following wherever it goes. It’s a rich, intense brew with big complex flavors and a warming finish.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (6108,'60 Minute IPA','/img/6108.png','미국','Dogfish Head Craft Brewery','IPA',6,0,4.1,11962,'60 Minute IPA is continuously hopped -- more than 60 hop additions over a 60-minute boil. (Getting a vibe of where the name came from?)

60 Minute is brewed with a slew of great Northwest hops. A powerful but balanced East Coast IPA with a lot of citrusy hop character, it''s the session beer for hardcore enthusiasts!

60 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (276,'Pale Ale','/img/276.png','미국','Sierra Nevada Brewing Co.','페일 에일',5.6,0,4.05,11907,'Generous quantities of premium Cascade hops give the Pale Ale its fragrant bouquet and spicy flavor.

37 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (88,'Stone IPA','/img/88.png','미국','Stone Brewing','IPA',6.9,0,4.22,11544,'August 1997

By definition, an India pale ale is hoppier and higher in alcohol than its little brother, pale ale—and we deliver in spades. Now one of the most well-respected and best-selling IPAs in the country, this golden beauty explodes with citrusy, piney hop flavors and aromas, all perfectly balanced by a subtle malt character. This crisp, extra hoppy brew is hugely refreshing on a hot day, but will always deliver no matter when you choose to drink it.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (30420,'Torpedo Extra IPA','/img/30420.png','미국','Sierra Nevada Brewing Co.','IPA',7.2,0,4.17,11452,'From the brewery ... Sierra Nevada Torpedo Ale is a big American IPA; bold, assertive and full of flavor and aromas highlighting the complex citrus, pine and herbal character of whole-cone American hops.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (84596,'Enjoy By IPA','/img/84596.png','미국','Stone Brewing','IPA',9.4,0,4.44,11132,'You have in your hands a devastatingly fresh double IPA. While freshness is a key component of many beers - especially big, citrusy, floral IPAs - we''ve taken it further, a lot further, in this IPA. You see, we specifically brewed it NOT to last. We''ve not only gone to extensive lengths to ensure that you''re getting this beer in your hands within an extraordinarily short window, we made sure that the Enjoy By date isn''t randomly etched in tiny text somewhere on the label, to be overlooked by all but the most attentive of retailers and consumers. Instead, we''ve sent a clear message with the name of the beer itself that there is no better time than right now to enjoy this IPA.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (92,'Arrogant Bastard Ale','/img/92.png','미국','Arrogant Consortia','스트롱 에일',7.2,0,4.18,10979,'At Arrogant Bastard Brewing Co., we believe that pandering to the lowest common denominator represents the height of tyranny—a virtual form of keeping the consumer barefoot and stupid. Brought forth upon an unsuspecting public in 1997, Arrogant Bastard Ale openly challenged the tyrannical overlords who were brazenly attempting to keep Americans chained in the shackles of poor taste. As the progenitor of its style, Arrogant Bastard Ale has reveled in its unprecedented and uncompromising celebration of intensity. There have been many nods to Arrogant Bastard Ale...even outright attempts to copy it...but only one can ever embody the true nature of Liquid Arrogance!',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (64228,'Zombie Dust','/img/64228.png','미국','3 Floyds Brewing Co.','페일 에일',6.2,0,4.63,10773,'A medium bodied single hop beer showcasing Citra hops from the Yakima Valley, USA.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (17141,'312 Urban Wheat','/img/17141.png','미국','Goose Island Beer Co.','밀 맥주',4.2,0,3.4,4766,'Crisp, bright flavor shines like city lights on Lake Michigan. Hazy and unfiltered, our award-winning Urban Wheat Ale''s flavor flows from start to finish.

18 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (646,'Westmalle Trappist Tripel','/img/646.png','벨기에','Brouwerij Westmalle','스트롱 에일',9.5,0,4.33,4747,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (3158,'Hop Rod Rye','/img/3158.png','미국','Bear Republic Brewing Co.','Specialty Beers',8,0,4.24,4741,'A high gravity IPA brewed with 18% rye malt. Hop Rod Rye has a floral hop aroma and subtle caramel notes with a slightly earthy and spicy rye character.

2009 California State Fair – GOLD
2003 California State Fair – GOLD
2002 Real Ale Festival (Chicago) – GOLD',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (57908,'2XIPA','/img/57908.png','미국','Southern Tier Brewing Company','IPA',8.2,0,4.04,4738,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (142,'Abbey Ale','/img/142.png','미국','Brewery Ommegang','다크 에일',8.2,0,4.19,4715,'Abbey was Ommegang''s first beer and was styled after Dubbels produced by Belgian Trappist monks. A deep, rich and malty ale, Abbey uses several Belgian specialty malts and spices resulting in a very aromatic, flavorful beer.

Deep burgundy in color, topped by a dense tan head, Abbey Ale is rich on the palate but with a dry finish. Suitable for cellaring, Abbey develops wonderful caramel, fig, and currant notes with age.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (46849,'Abrasive Ale','/img/46849.png','미국','Surly Brewing Company','IPA',9.2,0,4.52,4707,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (43687,'Crème Brûlée Imperial Milk Stout (Blackwater Series)','/img/43687.png','미국','Southern Tier Brewing Company','스타우트',10,0,3.99,4697,'The brewer suggests a serving temperature of 42 °F for this beer.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (224,'Schneider Weisse Tap 6 Unser Aventinus','/img/224.png','독일','Weisses Bräuhaus G. Schneider & Sohn GmbH','복스',8.2,3.5,4.35,4671,'"Mein Aventinus" - the wholehearted, dark ruby coloured wheat beer, intensive and fiery, warming, well-balanced and tender. Bavaria''s oldest wheat "Doppelbock" - brewed since 1907! Its sturdy body in combination with its sweet malty aroma is an invitation to profound indulgence - an ingenious blend with a strong body. Perfectly matches rustic dishes, dark roasts and sweet desserts.

Hallertauer Herkules
wheat malt, barley malt
open fermentation, genuine bottle fermentation
non-filtrated, non-pasteurized
16 IBU
7 g/l carbon dioxide
18,5 % original gravity',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (48824,'Sofie','/img/48824.png','미국','Goose Island Beer Co.','페일 에일',6.5,0,4.12,4658,'80% Belgian Style Ale, 20% Belgian Style Ale aged in wine barrels with citrus peel. Champagne color, white pepper aroma, citrus & vanilla flavor, sparkling body.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (20478,'Harvest Ale','/img/20478.png','미국','Founders Brewing Company','IPA',7.6,0,4.26,4650,'Each fall, our brewhouse looks more like a greenhouse as thousands of pounds of wet hop cones arrive within hours of being picked by some of our favorite local hop growers. Acting quickly, we then load up these wet hops into what will become Harvest Ale – an impossibly aromatic and bright IPA bursting with fresh pine, melon and citrus notes. Our ode to the beauty that is the wet, American hop.

70 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (19216,'Oak Aged Yeti Imperial Stout','/img/19216.png','미국','Great Divide Brewing Company','스타우트',9.5,0,4.28,4642,'Imperial stout aged on new French and American oak chips.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1117,'Kalamazoo Stout','/img/1117.png','미국','Bell''s Brewery - Eccentric Café & General Store','스타우트',6,0,4,4580,'Named after the city where it all began, Kalamazoo Stout is one of our most classic recipes. This smooth, full-bodied stout offers a blend of aromas and flavors of dark chocolate and freshly roasted coffee, balanced with a significant hop presence.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1346,'Tripel (White)','/img/1346.png','벨기에','Bières de Chimay','스트롱 에일',8,0,4.16,4566,'Labeled Chimay Cinq Cents in 750ml bottle.

This blonde ale is dry and floral with a slight hop bitterness. The hoppiest Chimay ale, Cinq Cents was created by famed brewmaster Father Theodore in 1966.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (20445,'Cappuccino Stout','/img/20445.png','미국','Lagunitas Brewing Company','스타우트',9.2,0,3.97,4551,'and I will dwell in the house of Cappuccino forever... Let us sip... or whatever...',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (650,'Guinness Extra Stout (Original)','/img/650.png','아일랜드','Guinness Ltd.','스타우트',5.6,0,3.75,4550,'Distinctively black full bodied liquid with a rich creamy head',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (48385,'Undercover Investigation Shut-down Ale','/img/48385.png','미국','Lagunitas Brewing Company','스트롱 에일',9.6,0,4.09,4545,'Our malty and rich beer with a snappy hop finish truly defies style…Imperial Mild?...Uber ESB?... We do know for sure that it is Unforgiven and Unrepentant.

In remembrance of the 2005 St. Patrick''s Day massacre and in commemoration of the 20-day suspension that followed, Lagunitas brewed this especially bitter ale. See, the ABC conducted an undercover investigation of our brewery, finding us guilty of operating a “Disorderly House.” We did the crime. We did the time. We got the bragging rights.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1745,'Duchesse De Bourgogne','/img/1745.png','벨기에','Brouwerij Verhaeghe','와일드/사워 맥주',6.2,0,4.22,4513,'Belgian top-fermented reddish-brown ale, a blend of 8 and 18 months old beers following the careful maturation in oak casks.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (27604,'Duet','/img/27604.png','미국','Alpine Beer Company','IPA',7,0,4.34,4503,'A soon-to-be favorite, if it''s already not. This single IPA boasts pine, citrus, and cedar notes from Simcoe and Amarillo hops.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (80291,'Imperial Biscotti Break','/img/80291.png','미국','Evil Twin Brewing','스타우트',11.5,0,4.36,4488,'The Roman Empire had a certain "je ne sais quoi" - festive food culture, extravagant architecture, and spectacular live entertainment. Some might argue the Emperors were brutal, mad, and hungry for power, and the people vain when taking baths and working out all day. Listen - that''s still all part of the secret Imperial ingredient - keep it cool, clean, confident, arrogant, and flamboyant. Forza Imperiale.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (27800,'Vanilla Porter','/img/27800.png','미국','Breckenridge Brewery','포터',5.4,0,3.68,4476,'Deep in the jungles of Papua New Guinea and Madagascar grows the perfect ingredient for an extraordinary Porter brewed in Colorado. Breckenridge Brewery’s Vanilla Porter. An ale that has all the chocolate and roasted nut flavor of a classic Porter, with an enigmatic surprise thrown in for good measure.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (50564,'Head Hunter','/img/50564.png','미국','Fat Head''s Brewery & Saloon','IPA',7.5,0,4.34,4458,'Head Hunter is an aggressively dry-hopped, West Coast-style IPA with a huge hop display of pine, grapefruit, citrus and pineapple. A punch-you-in-the-mouth brew for those who truly love their hops! Uncivilized. Aggressive. Award-Winning.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (7520,'Dark Lord Imperial Stout','/img/7520.png','미국','3 Floyds Brewing Co.','스타우트',15,0,4.36,4458,'Red wax = 2004
Orange wax = 2005
Gold wax = 2006
Silver wax = 2007
Black wax = 2008
White wax = 2009
Green wax = 2010 - 15% ABV
Yellow wax = 2011 - 15% ABV
Red wax = 2012 - 15% ABV
Orange wax = 2013 - New Label 15% ABV
Blue wax = 2014 - 15% ABV
Maroon wax = 2015 15% ABV
Black with glitter flecks wax = 2016
Green with silver glitter = 2017 - New Label
Silver wax = 2018',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1577,'Wisconsin Belgian Red','/img/1577.png','미국','New Glarus Brewing Company','Specialty Beers',4,0,4.42,3750,'You hold the marriage of wine and beer. Belgian Red is a tapestry of flavor. This beer is brewed with whole Montmorency Cherries, Wisconsin Farmed Wheat and Belgian Roasted Barleys, lagered in oak tanks and balanced by Hallertau hops we aged in our brewery one full year. 

Over a pound of Door County Cherries in every bottle makes this beer uniquely "Wisconsin." So unique, in fact, that we applied for a patent. Expect this beer to be ruby red, with a medium body that is highly carbonated and intense with cherry flavor and bouquet. Serve your friends Belgian Red in a brandy snifter or champagne flute and toast life with beer from the land of Wisconsin.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (7597,'Pure Hoppiness','/img/7597.png','미국','Alpine Beer Company','IPA',8,0,4.34,3747,'So mega-hopped it will take you to hop heaven. We’ve used hops in the boil, more hops in the giant hopback, and added to that, an incredible amount of dry-hopping for that cutting-edge “hop bite.” Once you’ve tasted this unique beer, all others pale in comparison. 1.072 OG Classified IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (71969,'Perpetual IPA','/img/71969.png','미국','Tröegs Brewing Company','IPA',7.5,0,4.08,3744,'At Tröegs, artisanal meets mechanical in a state of IPA we call Perpetual. Cycling through our HopBack vessel and dry-hopping method, this bold Imperial Pale Ale emerges rife with sticky citrus rind, pine balm and tropical fruit.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (279,'Porter','/img/279.png','미국','Sierra Nevada Brewing Co.','포터',5.6,0,3.91,3717,'Porter is a testament to roasted malts which give it a rich, bittersweet and roasted coffee-like flavor that''s a perfect complement to a variety of foods. 

Before Sierra Nevada was a reality, our nights were spent perfecting homebrews and dreaming of starting a brewery. Back then, one of our favorites was a porter made with homemade malt roasted in our kitchen. Decades later, we still love the rich, bittersweet and roasted malt flavors of that original brew.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (35625,'Vitus','/img/35625.png','독일','Bayerische Staatsbrauerei Weihenstephan','복스',7.7,0,4.29,3706,'Our light-coloured, spicy single-bock, “Vitus” is saturated with fine yeast and a creamy foam. It is a specialty with a round character based on the extra long storage time. The fruity smell of dried apricots joins aromas of citrus, cloves and hints of banana. Full-bodied and sparkling with an effervescent mouthfeel. Thus, the Vitus does not taste like a typical Bock beer but more like a noble, fruity wheat beer. Perfect with red meat, strong cheese and also able to guide desserts. Brewed according to our centuries-old brewing tradition on the Weihenstephan hill.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1493,'Sweetwater IPA','/img/1493.png','미국','SweetWater Brewing Company','IPA',6.3,0,3.98,3706,'Simcoe, US Golding

50 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (25755,'Loose Cannon','/img/25755.png','미국','Heavy Seas Beer','IPA',7.25,0,4.02,3686,'in the kettle, in the hop back, and dry hopped.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1256,'Paulaner Hefe-Weissbier Naturtrüb','/img/1256.png','독일','Paulaner Brauerei GmbH & Co. KG','밀 맥주',5.5,0,4.07,3673,'Also known as Hefe-Weizen Altbayerische Brauart',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (15813,'Blackout Stout','/img/15813.png','미국','Great Lakes Brewing Co.','스타우트',9.9,0,4.2,3647,'Turn off the lights and turn on the flavor, because Blackout Stout is back and as dark as ever. Inspired by the infamous 2003 blackout that briefly left some 55 million people without power, the bold flavors of our Imperial Stout will light up even the darkest nights. Black malt and roasted barley cast notes of chocolate, dark fruit, and coffee, while earthy hops put the lights out on this shadowy brew with a pleasantly bitter finish.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (53886,'Hopsecutioner','/img/53886.png','미국','Terrapin Beer Company','IPA',7.3,0,3.83,3638,'This Killer IPA earns its name by using six different types of hops while still remaining an aggressive well balanced beer.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (111969,'Go To IPA','/img/111969.png','미국','Stone Brewing','IPA',4.8,0,3.97,3620,'March 2014

Since Day One, we''ve been abundantly forthright and fully transparent about our lust for hops. It''s led us to craft many an IPA, most of them imperial—some intense for their time and all timeless in their intensity. For Stone Go To IPA, we embrace our hop obsession in a new way, funneling an abundance of lupulin-borne bitterness into a "session" IPA that delivers all the fruity, piney character of a much bigger IPA. To accomplish this, we employ "hop bursting," a new technique wherein an irrational amount of hops is added during the final phase of the brewing process to coax out extreme flavors and aromas while also imparting a burst of desirably pleasant bitterness. The result is an alpha-acid-rich beer that fans can enjoy more of without missing out on the assertive hop character you, like us, crave. So, sit back and go two with your new everyday go-to IPA and bask along with us in the glory of the almighty hop.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (667,'Negra Modelo','/img/667.png','멕시코','Grupo Modelo S.A. de C.V.','다크 라거',5.4,0,3.37,3617,'Negra Modelo, better known as "the cream of the beer", is a Munich-type beer with 5.3º of alcohol that offers a balanced flavor and a delicate aroma of dark malt, caramel and hops.

Today it occupies the first place in sales among dark beers in Mexico. This beer is accompanied by a bright deep amber color, which is adorned with abundant, white and compact foam.

Negra Modelo was introduced in Mexico in 1925 as the dark beer called Modelo, to begin its great tradition. In 2014 it changed its image to a more sophisticated bottle but with the same content. 

Ingredients - Water, barley malt, non-malted cereals, hops',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (52531,'Arctic Panzer Wolf','/img/52531.png','미국','3 Floyds Brewing Co.','IPA',9,0,4.28,3611,'A massive IPA that will leave your palate its hapless victim. Scorched earth is our brewery policy.

100 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (57912,'A Little Sumpin'' Wild','/img/57912.png','미국','Lagunitas Brewing Company','IPA',8.8,0,4.13,3557,'Fermented with the Westmalle yeast strain

72.51 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (665,'Anchor Liberty Ale','/img/665.png','미국','Anchor Brewing Company','IPA',5.9,0,3.9,3528,'The champagne-like bubbles, distinctive hop bouquet, and balanced character of Liberty Ale® revives centuries-old ale brewing traditions that are now more relevant than ever.	First introduced in 1975, Liberty Ale® is brewed strictly according to traditional craft brewing methods, and uses only natural ingredients — pale malted barley, fresh whole-cone Cascade hops and a special top-fermenting yeast, and water.

The yeast used during fermentation produces many of Liberty Ale''s subtle flavors and characteristics. A natural process called "bunging" creates gentle carbonation, and the practice of dry hopping (adding fresh hops to the brew during aging), revived by Anchor, creates its unique aroma.

Liberty Ale® was first brewed to celebrate the bicentennial of Paul Revere’s historic ride. As the first modern American IPA brewed after prohibition and the first modern American single-hop ale and dry-hopped ale, Anchor’s Liberty Ale® is the original craft brewed ale and the historic beer that started a revolution.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (411,'Pranqster','/img/411.png','미국','North Coast Brewing Co.','스트롱 에일',7.6,0,4.06,3525,'20',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (35720,'Festina Pêche','/img/35720.png','미국','Dogfish Head Craft Brewery','밀 맥주',4.5,0,3.72,4426,'In Festina Peche, since the natural peach sugars are eaten by the yeast, the fruit complexity is woven into both the aroma and the taste of the beer so there is no need to doctor it with woodruff or raspberry syrup. Just open and enjoy!

8 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1339,'Hazelnut Brown Nectar','/img/1339.png','미국','Rogue Ales','브라운 에일',5.6,0,4.1,4426,'Rogue''s Pacman Yeast & Free Range Coastal Water.

14 Plato
33 IBU
73.6 AA
36 L',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (3558,'Summerfest','/img/3558.png','미국','Sierra Nevada Brewing Co.','필스너/페일 라거',5,0,3.7,4421,'There''s something about a warm summer day that calls out for a cold glass of great beer, and this classic Czech-style lager is sure to fit the bill. Crisp, golden and refreshing, Summerfest is the perfect choice for soaking up the sunshine. Summerfest is a Czech-style lager featuring a slight malt sweetness, a spicy hop flavor, and the crisp finish you want on a hot summer day.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (95386,'Samuel Adams Rebel IPA','/img/95386.png','미국','Boston Beer Company (Samuel Adams)','IPA',6.5,0,3.61,4417,'COLOR	Bright Copper / 11 SRM
ALC BY VOL/WT	6.5%ABV - 5.1%ABW
IBUs	45
YEAST STRAIN	Samuel Adams Ale Yeast
MALT VARIETIES	Samuel Adams two-row pale malt blend, Caramel 60
HOP VARIETIES	American Cascade, Simcoe®, Chinook, Centennial, and Amarillo
CAL/SERVING	198 per 12oz serving
SPECIAL INGREDIENTS	N/A',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (73764,'Hop Nosh IPA','/img/73764.png','미국','Uinta Brewing Company','IPA',7.3,0,4.03,4410,'Bold and refreshing, this IPA combines an abundance of hops with a smooth malt profile.

82 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1717,'Saison Dupont','/img/1717.png','벨기에','Brasserie Dupont sprl','페일 에일',6.5,0,4.21,4406,'Brewed at one of Europe''s last farmhouse breweries, Saison Dupont is a 4-star, world classic example of the Belgian Saison style. Blond in color with a big rocky head, Saison Dupont is dry and refreshing. Great with all grilled foods.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (47022,'Hunahpu''s Imperial Stout','/img/47022.png','미국','Cigar City Brewing','스타우트',11,0,4.62,4380,'In Mayan myth, Hunahpu gave cocoa to the Mayans. An Imperial Stout Aged On Cacao Nibs, Madagascar Vanilla Beans, Ancho Chilis, Pasilla Chilis and Cinnamon.

80 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (709,'Big Eye','/img/709.png','미국','Ballast Point Brewing Company','IPA',7,0,4.07,4371,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (656,'Tripel Karmeliet','/img/656.png','벨기에','Brouwerij Bosteels','스트롱 에일',8.4,0,4.3,4365,'3 grains - barley, wheat, oat. Styrian hops.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (3916,'IPA','/img/3916.png','미국','AleSmith Brewing Company','IPA',7.25,0,4.24,4347,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1352,'Shiner Bock','/img/1352.png','미국','Spoetzl Brewery','복스',4.4,0,3.2,4345,'Tip back a bock. Brewed with rich roasted barley malt and German specialty hops, this lightly hopped American-styled dark lager always goes down easy. Originally a seasonal beer, fans have demanded it year-round since 1973.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1180,'Raison D''Être','/img/1180.png','미국','Dogfish Head Craft Brewery','스트롱 에일',8,0,3.68,4326,'A deep mahogany, Belgian-style brown ale brewed with beet sugar, raisins and Belgian-style yeast.

We began brewing this one at our pub in 1996 (we began packaging and selling it sometime in 1998) as the answer to the question, "What beer should I enjoy with a wood-grilled steak?" Raison D''Etre fits the bill. It''s as tasty and complex as a fine red wine.

In the Quick Sip Clip video, Sam talks about Raison D''Etre inside the new cellars for our 600-bbl fermentation tanks. The cellars were designed specifically to allow sterile yeast management. The system also allows us to automatically dose the yeast into the fermentation tanks. At Dogfish, we use multiple strains of yeast for our different beers, so we are acutely aware of all that can go wrong when you don''t love and protect the yeast.

25 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (311,'IPA','/img/311.png','미국','Harpoon Brewery & Beer Hall','IPA',5.9,0,3.64,4309,'We started brewing this beer as a summer seasonal in 1993. There were some great IPAs out in the Pacific Northwest, but no local IPAs on the east coast. We wanted to have a local IPA, so we brewed one. People absolutely loved it, and so did we. So we made it a year-round beer, and it’s now our bestselling beer and our flagship.

Since its introduction, Harpoon IPA has remained unique in its ability to balance hop bitterness with a strong malt backbone. Dry-hopped with Cascade hops, it has a floral hop aroma and a finish that is bitter (it is an IPA after all!) without being harsh or astringent. Combined with a malty sweetness and the fruity esters of our proprietary yeast, those hops create a beer that is wonderfully hoppy but clean and refreshing enough to enjoy a few of - and we hope you do.

42 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (11922,'Titan IPA','/img/11922.png','미국','Great Divide Brewing Company','IPA',7.1,0,4.09,4294,'Grilled lamb burger, Thai green curry, roasted zucchini & pesto, Cabot sharp cheddar, carrot cake.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1118,'Chocolate Stout','/img/1118.png','미국','Rogue Ales','스타우트',5.8,0,4.19,4286,'Great Western 2-Row, Crystal 135- 165, Chocolate & Rogue Micro Barley Farm DareTM & RiskTM Malts; Rogue Micro Hopyard Revolution & Rebel Hops, Rolled Oats, Roasted Barley, Natural Chocolate Flavoring, Free Range Coastal Waters & Pacman Yeast.

15º PLATO
69 IBU
77 AA
135º Lovibond',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (17060,'Hercules Double IPA','/img/17060.png','미국','Great Divide Brewing Company','IPA',10,0,4.15,4252,'Hercules Double IPA is not for the faint of heart. It is, however, fit for the gods. Hercules delivers a huge amount of hops from start to finish. Its hefty backbone of nutty, malty sweetness balances its aggressive hop profile.

2007 Australian International Beer Awards, Gold Medal, Imperial IPA
2008 Australian International Beer Awards, Silver Medal, Imperial IPA
2009 Australian International Beer Awards, Silver Medal, Imperial IPA
2010 BeerAdvocate “Top 100 Beers On Planet Earth,” #48',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (128500,'Xocoveza','/img/128500.png','미국','Stone Brewing','스타우트',8.1,0,4.36,4250,'This is a beloved stout. When first introduced as a limited special collaboration release with San Diego homebrewer Chris Banker (after his recipe won our annual homebrew competition) and Cerveceria Insurgente, it was an instant hit and fans began clamoring for its return. Seeing as how its amazing flavor profile is evocative of Mexican hot chocolate, featuring coffee, pasilla peppers, vanilla, cinnamon, nutmeg and a generous amount of chocolate, we concluded it was the perfect stout to re-release in celebration of the Holidays and the entire winter season. This is now a highly anticipated yearly tradition that we are pleased to present from us to you, and makes a perfect wintry gift from you to your friends, loved ones, or simply to yourself. Cheers!',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1914,'1554','/img/1914.png','미국','New Belgium Brewing Company','다크 라거',6,0,3.84,4250,'A surprisingly bright taste and a dry, chocolaty finish -- one evocotive of dark brews enjoyed in Belgian taverns 500 years ago. Not a porter, not a stout -- it''s 1554.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (32286,'Nelson','/img/32286.png','미국','Alpine Beer Company','IPA',7,0,4.46,4234,'A Golden Rye IPA - An outstanding hop from New Zealand, Nelson Sauvin, is generously used throughout the brewing and dry-hopping of this unique beer. European rye is added for a smooth, malty addition to flavor. 1.065 OG 7% AB',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (673,'Rodenbach Grand Cru','/img/673.png','벨기에','Brouwerij Rodenbach N.V.','와일드/사워 맥주',6,0,4.33,4209,'Flanders Red Ale- a blend of 1/3 young beer and 2/3 aged beer matured for 2 years in oak foeders. The original sour ale.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (90,'Smoked Porter','/img/90.png','미국','Stone Brewing','포터',5.9,0,4.03,4208,'December 1996

When first released, our smoky version of a traditional English porter was ahead of its time. Today, it''s a highly regarded staple among craft beer fans and our go-to food complement, pairing effortlessly with all kinds of cuisine, from peanut butter and banana sandwiches to braised pork belly and apple pie. This worldly libation is dark, smooth and complex, with chocolate and coffee flavors suffused with subtle smokiness from the addition of peat-smoked malt.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (429,'Pilsner Urquell','/img/429.png','체코','Plzeňský Prazdroj','필스너/페일 라거',4.4,0,3.63,4196,'While most lagers give away most of their taste profile in the front of the mouth, Pilsner Urquell only hints at its flavour there. Instead, it develops in the middle, followed by a refreshing, clean finish and balanced aftertaste, practically inviting you to have another.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (155,'Gulden Draak','/img/155.png','벨기에','Brouwerij Van Steenberge N.V.','스트롱 에일',10.5,0,4.27,4178,'Dark Triple Ale brewed with caramel malt and re-fermented with Bordeaux wine yeast',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (45175,'Palate Wrecker','/img/45175.png','미국','Green Flash Brewing Co.','IPA',9.5,0,4.18,4174,'Originally brewed to celebrate Hamilton''s Second Anniversary',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2137,'Leffe Blonde','/img/2137.png','벨기에','Abbaye de Leffe S.A.','페일 에일',6.6,0,3.6,4172,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (8919,'G''Knight','/img/8919.png','미국','Oskar Blues Grill & Brew','스트롱 에일',8.7,0,4.13,4171,'Classified by the brewery as an "Imperial Red/Double IPA" 8.7% ABV, 60 IBUs',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (52855,'Raging Bitch Belgian-Style IPA','/img/52855.png','미국','Flying Dog Brewery','IPA',8.3,0,3.89,4169,'This bitch has a lot going on. Its sweet malt body is contrasted by pine and grapefruit hop flavors and exotic fruit notes from the Belgian yeast.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (48434,'Kellerweis','/img/48434.png','미국','Sierra Nevada Brewing Co.','밀 맥주',4.8,0,4.07,4155,'Our Bavarian-style wheat beer is complex with flavors reminiscent of banana bread and spicy clove. This hazy-golden beer glows with suspended yeast, creating a velvety texture and refreshing finish.

Kellerweis is one of the few wheat beers made using the traditional Bavarian method of open fermentation, which allows the ingredients to shine and creates vast depth and character in this hazy-golden beer. To serve, pour two-thirds into a glass, swirl the bottles and add the rest.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (7531,'The Mad Elf','/img/7531.png','미국','Tröegs Brewing Company','스트롱 에일',11,0,3.91,4121,'Spicy Yeast
Pennsylvania Honey West Coast Cherries',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (33127,'Darkness','/img/33127.png','미국','Surly Brewing Company','스타우트',12,0,4.51,4115,'2007 - Grim Reaper
2008 - Devil
2009 - Mummy
2010 - Vampire
2011 - Zombie
2012 - Werewolf
2013 - Brewcifer
2014 - Harpy
2015 - Bat
2016 - Cerberus
2017 - Forest Witch
2018 - Minotaur
2019 - Tree Monster',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (51257,'Black Tuesday','/img/51257.png','미국','The Bruery','스타우트',19.5,0,4.59,4108,'19.4% ABV',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (197,'Obsidian Stout','/img/197.png','미국','Deschutes Brewery','스타우트',6.4,0,4.21,4108,'55

220 calories per 12 oz serving',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (111616,'Focal Banger','/img/111616.png','미국','The Alchemist','IPA',7,0,4.6,4096,'An American IPA, hopped judiciously with Citra and Mosaic.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (39908,'Shock Top Belgian White','/img/39908.png','미국','Anheuser-Busch','밀 맥주',5.2,0,2.97,4091,'Originally known as Spring Heat Spiced Wheat

We’ve shaken up traditional tastes by brewing a spiced Belgian-style wheat ale with real orange, lemon and lime peels,and then added a little coriander spice to the mix. This uniquely-crafted and award-winning ale is unfiltered to create a brew that is naturally cloudy with a light golden color and a smooth, refreshing finish.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (45073,'Plead The 5th Imperial Stout','/img/45073.png','미국','Dark Horse Brewing Company','스타우트',11,0,4.32,4089,'black label with logo cap, ABV of 11% in the top right corner and new government warning
2014 - white label with black logo cap, ABV of 11% in the top right corner, government warning on bottom right side of label',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (576,'Nut Brown Ale','/img/576.png','영국','Samuel Smith Old Brewery (Tadcaster)','브라운 에일',5,0,4.11,4079,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (580,'Miller High Life','/img/580.png','미국','Miller Brewing Co.','필스너/페일 라거',4.6,0,2.7,4078,'Miller High Life, also known as the Champagne of Beers, is a quintessentially classic, American-style lager. In 1903, Frederick Miller created Miller High Life because he believed that the good life, the High Life, should be accessible to everyone, not just the upper crust. To this day, Miller High Life continues to be faithfully brewed as a golden pilsner, utilizing light-stable galena hops from the Pacific Northwest and a select combination of malted barley.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2403,'Double Cream Stout','/img/2403.png','미국','Bell''s Brewery - Eccentric Café & General Store','스타우트',6.1,0,3.97,4061,'Double Cream Stout derives its name from its smooth, creamy texture, not the ingredients. Completely dairy-free, this stout blends ten different specialty malts to yield a remarkable depth of flavor. With only a touch of burnt notes, Double Cream Stout focuses on the softer, cocoa & espresso-like aspects of roasted malt.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1917,'La Folie','/img/1917.png','미국','New Belgium Brewing Company','와일드/사워 맥주',7,0,4.28,4049,'Flemish Sour Brown Ale fermented in stainless then transferred to barrels for 1-4 years of aging then blended to taste.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (21950,'Wake-n-Bake Coffee Oatmeal Imperial Stout','/img/21950.png','미국','Terrapin Beer Company','스타우트',9.4,0,4.3,4045,'Formerly known as Terrapin Coffee Oatmeal Imperial Stout.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (73618,'Big Bad Baptist','/img/73618.png','미국','Epic Brewing Company','스타우트',11.8,0,4.39,4032,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (48582,'Daisy Cutter Pale Ale','/img/48582.png','미국','Half Acre Beer Company','페일 에일',5.2,0,4.17,4019,'Daisy Cutter Pale Ale is one of the first beers we brewed at our brewery on Lincoln Ave. It began as a special release bomber beer, but caught fire both in and outside the brewery.

At the time, 2009, there were some local pale ales that hit with natural power, but not many. Daisy Cutter’s lush and dank characteristics steadily carved out a place within the Chicago brewing landscape.

Today, Daisy Cutter is a call brand that we continue to keep raw and relevant.

Blended pine, citrus, papaya and mango. Dank. Apparent biscuit, lingering, obscenely dry.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (108,'Samuel Adams Cherry Wheat','/img/108.png','미국','Boston Beer Company (Samuel Adams)','Specialty Beers',5.3,0,3.19,4005,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1157,'Honker''s Ale','/img/1157.png','미국','Goose Island Beer Co.','페일 에일',4.3,0,3.67,3975,'Golden sunset color, fruity hop aroma, biscuity malt flavor, soft body.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1585,'Raspberry Tart','/img/1585.png','미국','New Glarus Brewing Company','Specialty Beers',4,0,4.41,3968,'Treat yourself to a rare delight. The voluminous raspberry bouquet will greet you long before your lips touch your glass. Serve this Wisconsin framboise very cold in a champagne flute. Then hold your glass to a light and enjoy the jewel-like sparkle of a very special ale. 
Oregon proudly shares their harvest of mouth watering berries, which we ferment spontaneously in large oak vats. Then we employ Wisconsin farmed wheat and year old Hallertau hops to round out this extravaganza of flavor.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (16909,'Curieux','/img/16909.png','미국','Allagash Brewing Company','스트롱 에일',11,0,4.31,3959,'First brewed back in 2004, Curieux was our first foray into barrel aging. To make Curieux, we take our Tripel and let it age in bourbon barrels for seven weeks. Once that time is up, we take the beer out of our cold cellars and blend it back with a portion of fresh Tripel. The resulting rich, golden ale features smooth notes of coconut, vanilla, and a hint of bourbon.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (751,'420 Extra Pale Ale','/img/751.png','미국','SweetWater Brewing Company','페일 에일',5.4,0,3.66,3941,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (195,'Mirror Pond Pale Ale','/img/195.png','미국','Deschutes Brewery','페일 에일',5,0,3.91,3936,'40

170 calories per 12 oz serving',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (12770,'Damnation','/img/12770.png','미국','Russian River Brewing Company','스트롱 에일',7.5,0,4.13,3911,'Mild',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (782,'Imperial Stout','/img/782.png','영국','Samuel Smith Old Brewery (Tadcaster)','스타우트',7,0,4.19,3901,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1703,'Gueuze 100% Lambic','/img/1703.png','벨기에','Brasserie Cantillon','와일드/사워 맥주',5,0,4.48,3897,'This listing is for all vintages (Gueuze, Oude Gueuze, etc.).',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (148,'Lager','/img/148.png','미국','Brooklyn Brewery','다크 라거',5.2,0,3.74,3884,'In the late 1800’s Brooklyn was one of the largest brewing centers in the country, home to more than 45 breweries. Lager beer in the “Vienna” style was one of the local favorites. Brooklyn Lager is amber-gold in color and displays a firm malt center supported by a refreshing bitterness and floral hop aroma. Caramel malts show in the finish. The aromatic qualities of the beer are enhanced by “dry-hopping”, the centuries-old practice of steeping the beer with fresh hops as it undergoes a long, cold maturation. The result is a wonderfully flavorful beer, smooth, refreshing and very versatile with food. Dry-hopping is largely a British technique, which we’ve used in a Viennese-style beer to create an American original.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1963,'Spotted Cow','/img/1963.png','미국','New Glarus Brewing Company','Hybrid Beers',4.8,0,3.75,3842,'Cask conditioned ale has been the popular choice among brews since long before prohibition. We continue this pioneer spirit with our Wisconsin farmhouse ale. Brewed with flaked barley and the finest Wisconsin malts. We even give a nod to our farmers.

Naturally cloudy we allow the yeast to remain in the bottle to enhance fullness of flavors, which cannot be duplicated otherwise. Expect this ale to be fun, fruity and satisfying. You know you''re in Wisconsin when you see the Spotted Cow.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (59151,'Miles Davis'' Bitches Brew','/img/59151.png','미국','Dogfish Head Craft Brewery','스타우트',9,0,4.21,3833,'In honor of the 40th anniversary of the original release of Bitches Brew, Miles Davis'' 1970 paradigm-shifting landmark fusion breakthrough, we''ve created our own Bitches Brew -- a bold, dark beer that''s a fusion of three threads of imperial stout and one thread of honey beer with gesho root. It''s a gustatory analog to Miles'' masterpiece.

38 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (9474,'Temptation','/img/9474.png','미국','Russian River Brewing Company','와일드/사워 맥주',7.5,0,4.48,3820,'A blonde ale fermented with a special strain of yeast, then aged in French oak chardonnay barrels. Flavors of wine and oak absorb into the brew throughout twelve months of aging. During this aging process, a secondary fermentation occurs using a yeast strain disliked by most brewers and winemakers called Brettanomyces.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (57252,'Samuel Adams Latitude 48 IPA','/img/57252.png','미국','Boston Beer Company (Samuel Adams)','IPA',6,0,3.58,3812,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (61,'Anchor Porter','/img/61.png','미국','Anchor Brewing Company','포터',5.6,2.5,4.12,3809,'With deep black color, a thick, creamy head, rich chocolate, toffee and coffee flavors, and full-bodied smoothness, Anchor Porter® is the epitome of a handcrafted dark beer.

A blend of specially roasted pale, caramel, chocolate, and black malts, along with our top-fermenting yeast, creates complexity without bitterness. The brew is hopped at a high rate, and naturally carbonated. The result is dark in the glass, but surprisingly light on the palate.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (36010,'Leinenkugel''s Summer Shandy','/img/36010.png','미국','Jacob Leinenkugel Brewing Company','Specialty Beers',4.2,0,3.2,3795,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (14916,'Hop Wallop','/img/14916.png','미국','Victory Brewing Company - Downingtown','IPA',7.5,0,4.12,3794,'Citra and Simcoe Hops impart fruity and earthy notes for a new twist on a flavorful friend. This IPA packs a hoppy wallop.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (42723,'Espresso Oak Aged Yeti Imperial Stout','/img/42723.png','미국','Great Divide Brewing Company','스타우트',9.5,0,4.29,3792,'You can now have Yeti with breakfast.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1881,'Samuel Adams Old Fezziwig Ale','/img/1881.png','미국','Boston Beer Company (Samuel Adams)','다크 에일',5.9,0,3.8,3776,'Like the character that inspired it. This beer is festive and worthy of a celebration all its own. Bursting with spices of the season, its full body accompanies a deep malt character, with notes of sweet toffee and rich, dark caramel.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (23474,'Rübæus','/img/23474.png','미국','Founders Brewing Company','Specialty Beers',5.7,0,3.91,3772,'This brew achieves its unique raspberry taste by the addition of only fresh raspberries at five seperate stages in the brewing process.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (15758,'75 Minute IPA','/img/15758.png','미국','Dogfish Head Craft Brewery','IPA',7.5,0,4.13,3762,'Blend two Dogfish Head favorites, add maple syrup and carbonate the mixture naturally. What do you get? 75 Minute IPA.

The carbon dioxide trapped during bottle conditioning gives 75 Minute IPA a soft and velvety mouthfeel. Dry-hopped with whole-leaf Cascades, this complex IPA has been known to inspire pilgrimages to our brewpub.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (54904,'Samuel Adams Noble Pils','/img/54904.png','미국','Boston Beer Company (Samuel Adams)','필스너/페일 라거',4.9,0,3.8,3754,'Samuel Adams® Noble Pils is brewed with all 5 Noble hops for a distinct hop character and fresh taste. Deep golden in color with a citrusy hop aroma, Samuel Adams Noble Pils is a traditional Bohemian Pilsner. The honeyed malt character from traditional Bohemian malt is balanced by delicate yet pronounced citrus, floral, and piney notes from the Noble hops. The winner of our 2009 Beer Lover''s Choice® election, this beer was chosen by over 67,000 drinkers for its crisp complexity and refreshing taste.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (6549,'Northern Hemisphere Harvest Wet Hop IPA','/img/6549.png','미국','Sierra Nevada Brewing Co.','IPA',6.7,0,4.17,3753,'Formerly Northern Hemisphere Harvest Wet Hop Ale',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1013,'Storm King Stout','/img/1013.png','미국','Victory Brewing Company - Downingtown','스타우트',9.1,0,4.08,6050,'Emerging from the deepest shades of darkness, a rolling crescendo of flavors burst forth from this robust stout. The thundering, hoppy appeal of Storm King subsides into the mellow subtleties of roasted malt, exhibiting an espresso-like depth of character in its finish. An exquisite blend of imported malts and whole flower American hops merge harmoniously in this complex ale. Discover the dark intrigue of Storm King, as it reveals the rich, substantial flavors that it holds within.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1331,'Pabst Blue Ribbon (PBR)','/img/1331.png','미국','Pabst Brewing Company','필스너/페일 라거',4.74,0,2.95,6043,'- Pabst Blue Ribbon is brewed in the finest traditions of an American Premium Lager dating back to 1844. Brewed with a combination of 2 & 6-row malted barley, select cereal grains and American and European hops, Pabst Blue Ribbon is fermented with a proprietary lager yeast. Our unique fermentation and maturation process results in a smooth, full bodied beer with a clean, crisp finish with a fine noble hop aroma.
- ABV% 4.74
- Calories 144',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (33832,'Palo Santo Marron','/img/33832.png','미국','Dogfish Head Craft Brewery','브라운 에일',12,0,4.22,6026,'An unfiltered, unfettered, unprecedented brown ale aged in handmade wooden brewing vessels. The caramel and vanilla complexity unique to this beer comes from the exotic Paraguayan Palo Santo wood from which these tanks were crafted. Palo Santo means "holy tree," and its wood has been used in South American wine-making communities.

50 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (22790,'Blind Pig','/img/22790.png','미국','Russian River Brewing Company','IPA',6.25,0,4.37,6014,'Medium',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2264,'Brown Shugga''','/img/2264.png','미국','Lagunitas Brewing Company','스트롱 에일',10,0,4.07,5994,'IBU 51.1',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1003,'Golden Monkey','/img/1003.png','미국','Victory Brewing Company - Downingtown','스트롱 에일',9.5,0,3.75,5977,'A magical, mystical Monkey whose golden sole glows with the wisdom of the ages. This radiant ale is rich in the spirited tradition of Belgian-inspired brewing. Our Golden Monkey is both playfully delightful and profoundly satisfying. Exotic spice from the East rounds out this global journey to joy. Get on board. This Monkey''s bound for glory!',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (73,'Young''s Double Chocolate Stout','/img/73.png','영국','Eagle Brewery','스타우트',5.2,0,4.05,5946,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (299,'#9','/img/299.png','미국','Magic Hat Brewing Company','Specialty Beers',5.1,0,3.42,5886,'A beer cloaked in secrecy. An ale whose mysterious and unusual palate will swirl across your tongue and ask more questions than it answers. A sort of dry, crisp, refreshing, not-quite pale ale. #9 is really impossible to describe because there''s never been anything else quite like it.

20 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (82250,'RuinTen Triple IPA','/img/82250.png','미국','Stone Brewing','IPA',10.8,0,4.33,5861,'We first released this decidedly indelicate beer in 2012, as Stone Ruination Tenth Anniversary IPA, to celebrate the 10th anniversary of our belovedly bitter Stone Ruination IPA. Stone RuinTen IPA uses the same recklessly hoppy recipe as the 2012 release; only the name has changed, as we plan to unleash this belligerently delicious hop monster upon the public annually from now on. We packed a whopping five pounds of hops into each barrel, and cranked up the ABV to stand up to the hop onslaught. The results are glorious, and we know you''ll rejoice in tasting this audacious gem of hoppy splendor once again. You''re welcome.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (117177,'Sip Of Sunshine','/img/117177.png','미국','Lawson''s Finest Liquids','IPA',8,0,4.59,5827,'This lupulin-ladin India Pale Ale is packed with juicy tropical fruit character, bright floral aromas and delectable layers of hop flavor. Pour mindfully, inhale deeply and enjoy a tropical vacation in a glass. Always store cold, enjoy fresh and stay cool!

Sip of Sunshine IPA is brewed by Lawson’s Finest Liquids at Two Roads Brewing Co. in Stratford CT.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (28203,'Furious','/img/28203.png','미국','Surly Brewing Company','IPA',6.7,0,4.3,5823,'A tempest on the tongue, or a moment of pure hop bliss? Brewed with a dazzling blend of American hops and Scottish malt, this crimson-hued ale delivers waves of citrus, pine and caramel-toffee. For those who favor flavor, Furious has the hop-fire your taste buds have been screaming for.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (103,'Samuel Adams Summer Ale','/img/103.png','미국','Boston Beer Company (Samuel Adams)','밀 맥주',5.3,0,3.35,5771,'An American Wheat, brewed with malted wheat, lemon zest and grains of paradise - a rare pepper from Africa first used as a brewing spice in the 13th Century to create a crisp and spicy flavor and body.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (22352,'Maharaja','/img/22352.png','미국','Avery Brewing Company','IPA',10.2,0,4.25,5761,'tangy, vibrant and pungent along with an insane amount of malted barley – fashioning a dark amber hue and exquisite malt essence. Welcome to his kingdom!

The Maharaja is the second installment in our Dictator Series.

102 IBUs

ABV varies slightly batch to batch.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (68916,'Lunch','/img/68916.png','미국','Maine Beer Company','IPA',7,0,4.39,5750,'Our “East Coast” version of a West Coast-style IPA. Intense hop flavors and aromas of tropical and citrus fruits and pine dominate. A subtle malt sweetness brings the beer into balance.

Lunch is a special whale that has been spotted off the Maine coast since 1982. She has what looks like a bite taken out of her fin, which adds to her unique character. We dedicate this beer to her determination and persistence.

Keep on swimming!',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (3968,'Goose IPA','/img/3968.png','미국','Goose Island Beer Co.','IPA',5.9,0,3.72,5744,'Our India Pale Ale recalls a time when ales shipped from England to India were highly hopped to preserve their distinct taste during the long journey. The result is a hop lover’s dream with a fruity aroma, set off by a dry malt middle, and long hop finish.

55 IBUs',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (12013,'Yeti','/img/12013.png','미국','Great Divide Brewing Company','스타우트',9.5,0,4.22,5704,'Yeti Imperial Stout is an onslaught of the senses. It starts with big, roasty malt flavor that gives way to rich caramel and toffee notes. Yeti gets its bold hop character from an enormous quantity of American hops. It weighs in at a hefty 75 IBUs.

2005 Great American Beer Festival, Silver Medal, Imperial Stout
2008 Great American Beer Festival, Bronze Medal, Imperial Stout
2009 Great American Beer Festival, Silver Medal, Imperial Stout
2010 BeerAdvocate “Top 100 Beers On Planet Earth,” #36',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1372,'Maximus','/img/1372.png','미국','Lagunitas Brewing Company','IPA',8.2,0,4,5693,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (59,'White','/img/59.png','미국','Allagash Brewing Company','밀 맥주',5.1,3.5,4.18,5652,'Our interpretation of a traditional Belgian wheat beer. Brewed with a generous portion of wheat and spiced with coriander and Curacao orange peel, this beer is fruity, refreshing and slightly cloudy in appearance.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (129,'Orval Trappist Ale','/img/129.png','벨기에','Brasserie d''Orval S.A.','페일 에일',6.9,0,4.24,5631,'Orval beer is a high fermentation beer. The ageing process adds a fruity note, which strikes a subtle balance between the beer’s full-bodied yet complex flavour and bitterness.

The beer was first brewed in 1931 and owes its unparalleled taste to the quality of the water, the hops and the yeast used. The brewery has selected very aromatic and unique hop varieties, which hark back to the first brewmaster of Orval, who hailed from Bavaria. The beer’s aromas are very pronounced while maintaining the right level of bitterness thanks to the English method of dry hopping.

The various stages of fermentation – combined fermentation with the original yeast and with wild yeast, followed by fermentation in the bottle – mean the beer must age for some time and requires numerous quality controls.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (248,'Hoegaarden Original White Ale','/img/248.png','벨기에','Brouwerij van Hoegaarden','밀 맥주',4.9,0,3.81,5553,'The Original Belgian Wheat Beer. Almost 600 years ago in the Belgian village of Hoegaarden, a band of monks experimented by adding oddball botanicals from halfway around the world to their traditional wheat beer. Our recipe, inspired by their creation, is a beer with a refreshing flavor and captivating aroma, unlike any in the world. Let the refreshing citrus and earthy coriander alleviate the stresses of modern living and whisk you to another place entirely. You might call it divine inspiration... we call it Hoegaarden.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (45653,'Consecration','/img/45653.png','미국','Russian River Brewing Company','와일드/사워 맥주',10,0,4.53,5529,'Dark ale aged in Cabernet Sauvignon barrels with Brett, Lacto, Pedio, and currants',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (50570,'Tank 7','/img/50570.png','미국','Boulevard Brewing Co.','페일 에일',8.5,0,4.19,5503,'Most breweries have at least one piece of equipment that’s just a bit persnickity. Here at Boulevard we have fermenter number seven, the black sheep of our cellar family. Ironically, when our brewers were experimenting with variations on a traditional Belgian-style farmhouse ale, the perfect combination of elements came together in that very vessel. You could call it fate, but they called it Tank 7, and so it is. Beginning with a big surge of fruity aromatics and grapefruit-hoppy notes, the flavor of this complex, straw-colored ale tapers off to a peppery, dry finish.

38 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1696,'Trappistes Rochefort 8','/img/1696.png','벨기에','Brasserie de Rochefort','스트롱 에일',9.2,0,4.36,5492,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (60330,'Fresh Squeezed IPA','/img/60330.png','미국','Deschutes Brewery','IPA',6.4,0,4.26,5489,'This mouthwateringly delicious IPA gets its flavor from a heavy helping of Citra and Mosaic hops. Don''t worry, no fruit was harmed in the making of this beer.

60 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (837,'Coors Light','/img/837.png','미국','Coors Brewing Company (Molson-Coors)','필스너/페일 라거',4.2,0,1.99,5474,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (6076,'Flower Power India Pale Ale','/img/6076.png','미국','Ithaca Beer Company','IPA',7.2,0,4.24,5469,'Enjoy the clover honey hue and tropical nose. Simultaneously punchy and soothing with a big body and a finish that boasts pineapple and grapefruit. Flower Power is hopped and dry-hopped five different times throughout the brewing and fermentation process.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (246,'Heineken Lager Beer','/img/246.png','네덜란드','Heineken Nederland B.V.','필스너/페일 라거',5,0,2.73,5455,'Barley, Hops and water. 

Yeast is an important part of the brewing process, but it''s not an ingredient! Our natural A-Yeast produces a fruity flavor that is key in making the Heineken you know and love, and is filtered out after fermentation.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1010,'Prima Pils','/img/1010.png','미국','Victory Brewing Company - Downingtown','필스너/페일 라거',5.3,0,4.05,5434,'Prima! It’s a German exclamation of joy. It’s a recognition of accomplishment. It’s what escaped from our lips the first time we sampled this mighty pilsner recipe. With heaps of whole flower European hops and fine German malts, we achieved the bracing herbal bite and smooth malt flavor that we sought. Prima… an exclamation of Victory! Prost!

44 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (14712,'Old Chub - Scottish Style Ale','/img/14712.png','미국','Oskar Blues Grill & Brew','스트롱 에일',8,0,4.04,5424,'"This jaw-dropping Scottish strong ale (8% ABV) is brewed with bodacious amounts of malted barley and specialty grains, and a dash of beechwood-smoked malt."',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (41121,'§ucaba','/img/41121.png','미국','Firestone Walker Brewing Co.','스트롱 에일',12.5,0,4.55,5421,'36SRM (Dark Ruby)

Matured for 1 year in a blend of Heaven Hill, 4 Roses, and Old Fitzgerald barrels.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (16403,'Smuttynose IPA "Finest Kind"','/img/16403.png','미국','Smuttynose Brewing Company','IPA',6.9,0,4.13,5397,'You could say, then, that Smuttynose IPA is a physical salute to the glory of the American hop grower. The citrusy hop flavor coming from a mixture of Simcoe and Santiams is pleasantly balanced by a smooth bitterness from the Amarillo hops. The beer itself is light bodied and crisp with a golden color that will throw a slight haze, as we bottle it unfiltered. At 75 IBU''s, this is definitely not a training-wheels IPA, but is meant for hop lovers looking to satisfy their craving in a way that''s not easy to find. We think they’ll be quite pleased.

75 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (86149,'Narwhal Imperial Stout','/img/86149.png','미국','Sierra Nevada Brewing Co.','스타우트',10.2,0,4.18,5372,'A malt-forward monster, highlighting the depths of malt flavor.

Narwhal Imperial Stout is inspired by the mysterious creature that thrives in the deepest fathoms of the frigid Arctic Ocean. Featuring incredible depth of malt flavor, rich with notes of espresso, baker’s cocoa, roasted grain and a light hint of smoke, Narwhal is a massive malt-forward monster. Aggressive but refined with a velvety smooth body and decadent finish, Narwhal will age in the bottle for years to come.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (72170,'Pseudo Sue','/img/72170.png','미국','Toppling Goliath Brewing Company','페일 에일',5.8,0,4.53,5362,'This single hop ale showcases the Citra hop. Named for the largest T-rex fossil ever discovered, she roars with ferocious aromas of grapefruit, citrus, mango and evergreen. Delicate in body with a mild bite in the finish.

50 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (639,'Newcastle Brown Ale','/img/639.png','네덜란드','Heineken Nederland B.V.','브라운 에일',4.7,0,3.33,5355,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (232,'Corona Extra','/img/232.png','멕시코','Grupo Modelo S.A. de C.V.','필스너/페일 라거',4.6,0,2.32,5350,'Also known as Coronita Extra (small bottles) and Corona Familiar (larger bottles).',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (40058,'Choklat (Blackwater Series)','/img/40058.png','미국','Southern Tier Brewing Company','스타우트',10,0,4.29,5348,'Choklat is every bit a dessert beer, encompassing the complexity of the darkest, bittersweet candy together with that of the original frothy beverage. We combine the finest ingredients to tempt your senses & renew the power & interrelation of history in every bottle.
Cacao is a mystical bean. We''re not surprises that ancient hieroglyphs depict chocolate being poured for rulers & gods.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (10325,'Péché Mortel','/img/10325.png','캐나다','Brasserie Dieu du Ciel!','스타우트',9.5,0,4.42,5314,'Péché Mortel (French for "Mortal Sin") is an intensely black and dense beer with very pronounced roasted flavours. Fair trade coffee is infused during the brewing process, intensifying the bitterness of the beer and giving it a powerful coffee taste. Péché mortel is brewed to be savored; we invite you to drink it in moderation.

This stout style, high in alcohol and bitterness in order to favour preservation, was historically brewed to support the long and arduous voyage necessary to export the beer from England to Russia. The word Imperial comes from the fact that the beer was specially brewed for the Russian tsar’s court.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (16074,'Red''s Rye IPA','/img/16074.png','미국','Founders Brewing Company','Specialty Beers',6.6,0,4.2,5301,'Brewed with four varieties of Belgian caramel malts and 100% Amarillo hops.
70 IBU

Formerly called "Founders Red''s Rye PA"',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (8951,'OAKED Arrogant Bastard Ale','/img/8951.png','미국','Arrogant Consortia','스트롱 에일',7.2,0,4.23,5272,'Too many strive towards complacency as a goal. We grow up thinking that the ability to become complacent is the equivalence of success in life. True Arrogant Bastards know that this could not be further from the truth. The real beauty, richness and depth in life can only be found if the journey through life itself is looked upon as a constant chance to learn, live and find life’s passion. Passion threatens the complacent, and fills them with fear. We, on the other hand, seek it out. To this end we bring you OAKED Arrogant Bastard Ale. Another reward for those seeking new sources of passion, and another point of dissension for those who are not.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (76816,'Ruthless Rye IPA','/img/76816.png','미국','Sierra Nevada Brewing Co.','Specialty Beers',6.6,0,3.91,5248,'Rugged and resilient, rye has been a staple grain for ages and its spicy black pepper-like flavor has been prized by distillers and brewers for centuries. Rye thrives in the harshest conditions and comes to life in Ruthless, a rugged IPA with fruity, citrus and herbal hop notes countered by the dry spiciness of the rye. Holding a steadfast balance between contrasting malt and hop character, Ruthless is bold enough to inspire even the most brazen hop head to bear down and embrace the flavor.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (30,'Trois Pistoles','/img/30.png','캐나다','Unibroue','스트롱 에일',9,3.5,4.26,5128,'Drawing on Quebec folklore, Unibroue chose the name Trois Pistoles to honour the city’s historic importance and pay homage to the legend of the Black Horse. Conjured up by a priest to help build a new church, this incarnation of the devil ran off when its bridle was removed. Because construction was still underway when the horse vanished, a stone remains missing from the church to this day.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2392,'World Wide Stout','/img/2392.png','미국','Dogfish Head Craft Brewery','스타우트',18,0,4.28,5102,'Brewed with a ridiculous amount of barley, World Wide Stout is dark, rich, roasty and complex. This ageable ale clocks in at 15-20% ABV and has a depth more in line with a fine port than with a can of cheap, mass-marketed beer.

70 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (672,'Première (Red)','/img/672.png','벨기에','Bières de Chimay','다크 에일',7,0,4.17,5097,'This copper-colored ale boasts flavors of apricots, brown sugar and nutmeg. Brewed since 1982, Chimay Première is the first beer ever produced by the Trappist monks of Notre-Dame de Scourmont Abbey in Belgium.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (17538,'Devil Dancer','/img/17538.png','미국','Founders Brewing Company','IPA',12,0,3.94,5089,'Triple IPA. Dry-hopped for twenty-six days straight with a combination of 10 hop varieties. 112 actual IBU; although it calculates to over 200!',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (3951,'ApriHop','/img/3951.png','미국','Dogfish Head Craft Brewery','IPA',7,0,3.87,5006,'Aprihop is an American IPA brewed with Pilsner and Crystal malts. It''s massively hopped -- in the continuous fashion, of course! -- and the flavor is complemented by the addition of apricots.

After fermentation, the beer is dry hopped with irresponsible amounts of Amarillo hops. The beer has a hoppy aroma, with the apricots playing a supporting role.

The flavor is rich with late hop flavors, and its bitterness is tempered by just the right amount of malt sweetness and fruity undertones from the apricots.

50 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1587,'Midas Touch','/img/1587.png','미국','Dogfish Head Craft Brewery','Specialty Beers',9,0,3.76,5001,'This sweet yet dry beer is made with ingredients found in 2,700-year-old drinking vessels from the tomb of King Midas. Somewhere between wine and mead, Midas will please the chardonnay and beer drinker alike.

12 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (77299,'Resin','/img/77299.png','미국','Sixpoint Brewery','IPA',9.1,0,4.14,4989,'We remember our first sip of hoppy beer, do you? Nearly spit that $#!^ out. Now we fantasize about this stuff. Thinking about those hop ones...bursting with juice...ripe as all hell...makes you look forward to that first RESIN® all day long. Can''t wait.

Key Ingredients Chinook and Centennial Hops are a little old school, with tons of resin and pine notes. RESIN uses a ton of different hops, for a massively complex hop bouquet.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (4318,'Matilda','/img/4318.png','미국','Goose Island Beer Co.','스트롱 에일',7,0,4.06,4917,'Golden sunrise color, baking spice aroma, fruity biscuity malt flavor, dry body.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (37265,'Black Note Stout','/img/37265.png','미국','Bell''s Brewery - Eccentric Café & General Store','스타우트',11.2,0,4.57,4915,'malty notes of dark chocolate, espresso & dried fruits, all buoyed by the warmth and fragrance of the bourbon barrel. Aimed squarely at the stout and bourbon aficionados, Black Note makes a grand statement about the art of the dark.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (332,'Miller Lite','/img/332.png','미국','Miller Brewing Co.','필스너/페일 라거',4.17,0,2.16,4871,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (24905,'Curmudgeon','/img/24905.png','미국','Founders Brewing Company','스트롱 에일',9.8,0,4.05,4847,'Think classic seafaring ports, local pubs and weathered old fishermen. This old ale is brewed with molasses and an insane focus on the malt bill. Then Oak-Aged. The result is a rich, malty delight that''s deceptively smooth and drinkable.

50 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (33,'Maudite','/img/33.png','캐나다','Unibroue','다크 에일',8,3,4.22,4783,'Without a doubt Unibroue’s best-known beer, La Maudite is inspired by abbey beers and Belgian double-style ales. It first hit the shelves in 1992 and took the province by storm with its 8% alcohol content, making it the first strong beer available in grocery stores.

That’s where the idea came to tie its name and branding to a pact signed with the devil. The illustration of the “chasse-galerie” (or flying canoe) from a beloved Quebec legend captures the spirit of the beer.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1946,'Franziskaner Hefe-Weisse','/img/1946.png','독일','Spaten-Franziskaner-Bräu','밀 맥주',5,0,4.07,4775,'Also known as Franziskaner Weissbier and Franziskaner Hefe-Weisse Hell.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (86237,'Julius','/img/86237.png','미국','Tree House Brewing Company','IPA',6.8,0,4.68,4772,'Bursting with 1.6 oz per gallon of American hops, Julius is loaded with notes of passionfruit, mango, and citrus. At 6.8% alcohol, it is refreshing and freakishly drinkable.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (89096,'Jack Hammer','/img/89096.png','영국','BrewDog','IPA',7.2,0,4.05,357,'this beer has more bitterness than a human palate (or nipple) can detect. For freaks, craft beer junkies and stamp collectors only.

The second placed beer in our 2012 Prototype Challenge is a BrewDog staff favourite, and made a brief guest appearance in our bars last summer.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (426877,'Jeju Wit Ale','/img/426877.png','한국','Jeju Beer Company','밀 맥주',5.3,3.5,0,0,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (52083,'Kilkenny Irish Cream Ale','/img/52083.png','아일랜드','Guinness Ltd.','페일 에일',4.3,0,3.43,762,'An "Irish Cream Ale", though this style does not exist on BeerAdvocate.com, and the closest style is Irish Red Ale.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (266,'Kingfisher Premium Lager','/img/266.png','인도','United Breweries - UB Group','필스너/페일 라거',4.8,0,2.8,934,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (807,'Kirin Lager','/img/807.png','일본','Kirin Brewery Company, Limited','Japanese Rice Lager',4.9,0,2.37,301,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (120494,'Kloud Original Gravity','/img/120494.png','한국','Lotte Liquor','필스너/페일 라거',5,0,3.04,78,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1499,'Krombacher Pils','/img/1499.png','독일','Krombacher Brauerei','필스너/페일 라거',4.8,0,3.42,651,'a wonderful balance of hops and malt with a distinct crispness on the finish.

24 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (275248,'Kukmin IPA','/img/275248.png','한국','The Booth Brewing','IPA',6.5,0,3.88,13,'더부스의 대표 IPA. 엄청난 양의 홉에서 비롯된 두터운 바디감과 완만한 촉감의 밸런스. 잘 익은 꿀 맛 파인애플 풍미와 신선한 파파야 향, 상큼한 자몽과 달콤한 멜론이 느껴지는 맥주. 입문자부터 맥주 덕후까지 누구나 좋아할 스타일로 ‘국민맥주’가 되기를 꿈꾸는 IPA.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1836,'La Chouffe','/img/1836.png','벨기에','Brasserie d''Achouffe','스트롱 에일',8,0,4.23,2782,'The gnomes of Fairyland are particularly fond of this golden beer. LA CHOUFFE, with its slight hoppy taste, combining notes of fresh coriander and fruity tones, is the drink which gives them their zest for life. At least, that''s what these imps say when they are thirsty. Their secret used to be jealously guarded from one generation to the next until the day they shared the recipe with humans to seal their friendship. Of all the legends from the wonderful region of the Belgian Ardennes, the tale of LA CHOUFFE is the one which most merits re-telling.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1862,'Leffe Brune / Brown','/img/1862.png','벨기에','Abbaye de Leffe S.A.','다크 에일',6.5,0,3.82,1977,'Enjoy this delicious malt forward ale, accentuated with subtle caramel and roasted notes from dark malts',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (221,'Fuller''s London Porter','/img/221.png','영국','Fuller Smith & Turner PLC','포터',5.4,0,4.21,2782,'Fuller''s London Porter is an award-winning example of this historic English style; smooth and creamy with delicious chocolate and coffee flavors derived from the roasted malt.

The griffin Brewery is Chiswick, London, has brewing fine ales since 1654.

The Fuller, Smith & Turner partnership dating back to 1845, brews an excellent range of award-winning beers, many of which are available in the U.S. including London Pride pale ale and the Old''s original ESB.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (5328,'Longboard Island Lager','/img/5328.png','미국','Kona Brewing Co.','필스너/페일 라거',4.6,0,3.39,2961,'Longboard Island Lager is a smooth refreshing lager fermented and aged for five weeks at cold temperatures to yield its exceptionally smooth flavor. A delicate, slightly spicy hop aroma complements the malty body of this beer.

18 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (365571,'Subway Mosaic','/img/365571.png','미국','Mikkeller NYC','IPA',6,0,4.08,30,'Hopped exclusively with Mosaic and brewed with barley, wheat, oats. It’s has a light body and bright finish, while sporting notes of mango, blueberry and citrus.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2280,'Miller Genuine Draft','/img/2280.png','미국','Miller Brewing Co.','필스너/페일 라거',4.66,0,2.26,2594,'Miller Genuine Draft delivers a fresh from the tap taste through its proprietary "cold-filtered four times" brewing process. Introduced nationally in 1986, Miller Genuine Draft was born as the original cold-filtered packaged draft beer. Today, Miller Genuine Draft is reinforcing its status as the best draft beer in a bottle.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (97563,'Peanut Butter Milk Stout','/img/97563.png','미국','Belching Beaver Brewery','스타우트',5.3,0,4.13,1163,'this silky-smooth beer put us on the map. Troy came up with the idea of combining Peanut Butter with our Beaver’s Milk Stout and he nailed it. Don’t let the dark color fool you, this beer is delightfully easy to drink with cascading aromas of roasted peanuts, dark chocolate and coffee.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (410,'Ruedrich''s Red Seal Ale','/img/410.png','미국','North Coast Brewing Co.','페일 에일',5.4,0,3.92,2136,'Malt and hops are beautifully married in this full-bodied, copper-red Pale Ale. Red Seal is generously hopped for a long, spicy finish. An excellent accompaniment to grilled meats and rich sauces.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (5366,'San Miguel Pale Pilsen','/img/5366.png','필리핀','San Miguel Brewery Inc.','필스너/페일 라거',5,0,2.74,265,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (8128,'The Premium Malt''s','/img/8128.png','일본','Suntory','필스너/페일 라거',5.5,0,3.22,125,'The Premium Malt''s is a traditional pilsner proudly made by gathering Suntory''s knowledge, passion, and brewing techniques. This is a beer par excellence that gives drinkers “a floral aroma and rich, quality taste and aftertaste” thanks to carefully selected pure ingredients and exceptional brewing methods',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (10071,'Sapporo Premium Beer','/img/10071.png','일본','Sapporo Breweries Ltd.','필스너/페일 라거',4.9,0,2.88,2348,'No adjunct. All barley lager.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (275425,'Taegang Pale Ale','/img/275425.png','한국','The Booth Brewing','페일 에일',4.6,0,3.43,4,'‘한국 맥주가 북한 대동강 맥주보다 맛 없다’? 북한의 대동강 맥주보다 맛있는 대강 페일에일. 오렌지, 감귤, 청포도의 상큼한 과일향에 이은 고소한 몰트의 맛, 쌉싸래한 홉의 밸런스. 모두에게 사랑받는 맥주.',0,'대강 페일에일');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (31931,'Tangerine Wheat','/img/31931.png','미국','Lost Coast Brewery and Cafe','과일 맥주',5.5,0,3.46,961,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (767,'Tsingtao Beer','/img/767.png','중국','Tsingtao Brewery Co., Ltd.','필스너/페일 라거',4,0,2.78,1851,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1541,'Victoria Bitter (VB)','/img/1541.png','호주','Carlton & United Breweries, Ltd.','필스너/페일 라거',4.9,0,2.4,338,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1530,'XXXX Gold','/img/1530.png','호주','Castlemaine Perkins','필스너/페일 라거',3.5,0,2.43,93,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (800,'Yebisu (Premium)','/img/800.png','일본','Sapporo Breweries Ltd.','필스너/페일 라거',5,0,3.4,195,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2779,'Asahi Super Dry','/img/2779.png','일본','Asahi Breweries Ltd','Japanese Rice Lager',5,0,2.76,1700,'Asahi Super Dry was a direct result of extensive market research which indicated a consumer preference for a more palatable beer with less maltiness, relatively high alcohol content and a light aftertaste, that paired well with the changing Japanese diet. With this insight Asahi used its brewing knowledge to develop a beer with a crisp bite, refreshing taste and clear finish to satisfied this requirement. Code named project FX, Asahi engineered a highly attenuated, highly carbonated pilsner. The later renamed product, Super Dry began sales on March 17th 1987 and gave birth to the dry beer category. The market success spawned similar competitor products and initiated what was known as the “Dry Wars” in Japan and a brief marketing fad for dry beers internationally. However Asahi has stood the test of time and now years later Super Dry continues it legacy as the world’s premier dry beer. 

Special Yeast - Asahi # 318 is the proprietary ingredient used to give Super Dry its “dryness”. This special strand of yeast produces high attenuation during fermentation in conjunction with the choice grains.

Finest Ingredients – Asahi uses select grains and hops sourced worldwide based on strict criteria to maintain flavor consistency and promote sustainability. Barely with high starch content and both noble style bitter and fine aroma hops are key contributors to Super Dry’s smooth taste. 

ABV 4.9-5.2% (Depends on package type and location)
IBU 20
SRM 4',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (56973,'Shakespeare Oatmeal Stout','/img/56973.png','미국','Rogue Ales','스타우트',5.8,0,4.16,3508,'Rogue''s Pacman Yeast & Free Range Coastal Water. 

15º PLATO
69 IBU
77 AA
135º Lovibond',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (283,'Stout','/img/283.png','미국','Sierra Nevada Brewing Co.','스타우트',5.8,0,4.09,3482,'Sierra Nevada Stout s a full-bodied American version of the traditional black ale. It is perfectly balanced with big roasted malt flavors and earthy, whole-cone hops.

In 1980, when we were building our fledging brewery, we needed a beer with bold flavors to test the new, hand-built brewhouse. That first brew was a stout rich with roasted malts and earthy, whole-cone American hops. We liked that original stout so much that we''ve kept it as we''ve grown. Decades later it still reminds us of that early pioneering spirit.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (86189,'Organic Chocolate Stout','/img/86189.png','영국','Samuel Smith Old Brewery (Tadcaster)','스타우트',5,0,4.27,3480,'Brewed with well water (the original well, sunk in 1758, is still in use with the hard water is drawn from 85 feet underground), the gently roasted organic chocolate malt and real organic cocoa used in this ale impart a delicious, smooth and creamy character, with inviting deep flavours and a delightful finish - this is the perfect marriage of satisfying stout and luxurious chocolate that will lead to smiles and refills. Samuel Smith''s brews in traditional coppers, uses stone ''Yorkshire Squares'' for fermentation, and ships every bottle from the brewery with great pride.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (7,'Purple Haze','/img/7.png','미국','Abita Brewing Co.','Specialty Beers',4.2,3,3.32,3480,'Experience the magic of Purple Haze.® Clouds of real raspberries swirl in this tart and tantalizing lager inspired by the good spirits and dark mysteries of New Orleans. Brewed with pilsner and wheat malts along with Vanguard hops, let the scent of berries in the hazy purple brew put a spell on you.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1229,'Kapuziner Weissbier','/img/1229.png','독일','Kulmbacher Brauerei AG','밀 맥주',5.4,0,4.06,551,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (453324,'Heverlee Witte','/img/453324.png','벨기에','Brouwerij Martens NV','밀 맥주',4.8,0,3.58,1,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (362972,'Reeper B. Exotisches IPA','/img/362972.png','독일','Oettinger Brauerei GmbH','IPA',5,0,3.61,5,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (362983,'Reeper B. Blondes Weissbier','/img/362983.png','독일','Oettinger Brauerei GmbH','밀 맥주',5.4,0,3.66,2,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (36871,'Red Rock','/img/36871.png','한국','Hite Brewery Company LTD','다크 라거',5,0,2.53,9,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (28593,'Pilsener','/img/28593.png','독일','Kaiserdom Privatbrauerei Bamberg','필스너/페일 라거',4.8,0,3.23,70,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (90181,'Kaiserdom Kellerbier Unfiltriert','/img/90181.png','독일','Kaiserdom Privatbrauerei Bamberg','필스너/페일 라거',4.7,0,3.5,27,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (8045,'Trappist Achel 8° Bruin','/img/8045.png','벨기에','Brouwerij der St. Benedictusabdij de Achelse','다크 에일',8,0,4.14,902,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2508,'Maredsous 8 - Brune','/img/2508.png','벨기에','Brouwerij Duvel Moortgat NV','다크 에일',8,0,4.05,1477,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (175025,'Kasteel Barista Chocolate Quad Belgian Ale','/img/175025.png','벨기에','Brouwerij Van Honsebrouck N.V.','스트롱 에일',11,0,4.23,508,'with a meal, in front of an open fire or on an outdoor terrace.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (131290,'Kagua Blanc','/img/131290.png','일본','Nippon Beer Co. Ltd.','스트롱 에일',8,0,3.72,29,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (131291,'Kagua Rouge','/img/131291.png','일본','Nippon Beer Co. Ltd.','스트롱 에일',9,0,3.87,28,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (36594,'Wailua Wheat','/img/36594.png','미국','Kona Brewing Co.','밀 맥주',5.4,0,3.37,1074,'Swimming in a fresh water pool at the base of a cascading waterfall is what we all imagine we would find in paradise. On Maui, follow the old Hana Highway and you will find such a place – Wailua Falls. This plunging cascade of clear water is the inspiration for our Limited Release Wailua Wheat Ale. This golden, sun colored ale has a bright, citrus flavor that comes from the tropical passion fruit we brew into each batch. Sit back, relax and enjoy paradise anytime.

15 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2637,'Weisse Original','/img/2637.png','독일','Brauerei Gebrüder Maisel','밀 맥주',5.4,0,3.9,492,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (280,'Löwenbräu Original','/img/280.png','독일','Löwenbräu AG','필스너/페일 라거',5.2,0,3.3,896,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (26244,'St. Louis Premium Pêche','/img/26244.png','벨기에','Brouwerij Van Honsebrouck N.V.','와일드/사워 맥주',2.6,0,3.27,51,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (7451,'La Goudale','/img/7451.png','프랑스','Les Brasseurs de Gayant','페일 에일',7.2,0,3.62,274,'Its light taste of special malts, flavored with Flanders hops and its aromas of high fermentation, gives La Goudale all its character and balance.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (12738,'Van Diest Früli Strawberry Beer','/img/12738.png','벨기에','Brouwerij Huyghe','과일 맥주',4.1,0,3.53,500,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (600,'Kriek','/img/600.png','벨기에','Brouwerij Lindemans','와일드/사워 맥주',3.5,0,3.88,1327,'Also known as Kriek Foudroyante

We''ve already told you that our family never does anything the way other people do. Kriek Lindemans is a good example of that. In order to obtain a beer like no other, we have been adding whole sour cherries to our lambic for generations. Our meeting with American importer Charles Finkel in the 1970s revolutionized the fruit beer segment. Charles convinced us to export our old kriek to the United States by boat. What we had not thought of is that the movement of the waves would reactivate the fermentation process and cause the corks to pop during the trip. It was like something out of The Adventures of Tintin. To prevent that from happening, we therefore developed an alternative production method for our kriek. We use fresh, not from concentrate, unsweetened cherry filtrate which we blend with lambic that is at least one year old before fermenting & macerating for up to 3 days and pasteurizing the whole batch. So the corks don''t pop. Due to the use of filtrate and pasteurization, this kriek is sweeter and fruitier than Old Kriek Cuvée René, which undergoes a second fermentation process in the bottle. Thanks to its innovative flavour, it was a resounding success both here in Belgium as well as around the world. Nowadays, it is undoubtedly the reference kriek for consumers.

18 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (6104,'Oude Gueuze Cuvée René','/img/6104.png','벨기에','Brouwerij Lindemans','와일드/사워 맥주',5.5,0,4.13,2216,'Gueuze Cuvée René is one of the jewels of our brewery. With its golden colour, its sparkle and its beautiful sherry aromas, this is the queen of gueuzes.

This old gueuze is a blend of old and young lambic matured in large oak barrels called foudres. It is then bottled in a beautiful champagne bottle where a second fermentation takes place. After 6 months, the gueuze obtains a golden colour and is slightly carbonated and tart. But kept in a cellar for a few years, it becomes truly exceptional!
The use of a champagne bottle dates back to an uncertain time period when lambic brewers specialized in recovering empty bottles from great restaurants and other establishments where a lot of champagne was consumed. That is why we chose the most noble of bottles to hold our noblest beer.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (10482,'Monk''s Café Flemish Sour Ale','/img/10482.png','벨기에','Brouwerij Van Steenberge N.V.','와일드/사워 맥주',5.5,0,3.9,3046,'Brewed for Monk''s Café in Philadelphia, but also available for retail purchase elsewhere. Oud Bruin in style; a traditional blend of young and old beers.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (388,'Münchner Hell (Original Munich Lager)','/img/388.png','독일','Paulaner Brauerei GmbH & Co. KG','필스너/페일 라거',4.9,0,3.76,1163,'mild, elegant malts, with a hint of sweetness and a soft hint of hops in the background. This Munich beer is ideal to accompany spare ribs and spicy dishes. Just try it!',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (55207,'Kaiserdom Hefe-Weissbier Naturtrüb','/img/55207.png','독일','Kaiserdom Privatbrauerei Bamberg','밀 맥주',4.7,0,3.15,65,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (79680,'Willianbräu Weizen','/img/79680.png','벨기에','Brouwerij Martens NV','밀 맥주',5,0,3.2,10,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1944,'Spaten Münchner Hell (München/Premium Lager)','/img/1944.png','독일','Spaten-Franziskaner-Bräu','필스너/페일 라거',5.2,0,3.69,1577,'Marketed as "München" in the UK and "Premium Lager" in the USA.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (334028,'///Fear.Movie.Lions','/img/334028.png','미국','Stone Brewing','IPA',8.5,0,4.08,566,'New England-style IPAs are all the rage. Fans of Stone repeatedly ask for our take on the style, which can be met with some criticism. Rooted in West-Coast style IPAs for decades, how would we do it? Fear no more. Our brewers took the approach to deliver incredibly hoppy and aromatic flavor while keeping it very balanced, and upping the alcohol unnoticeably - nailing this astounding one-of-a-kind creation.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (258014,'Black Swan','/img/258014.png','한국','Korea Craft Brewery','스타우트',4.5,0,3.55,2,'고소하게, 블랙스완. 로스팅한 몰트의 고소하고 쌉쌀한 여운이 매력적인 흑맥주. 선명하고 아름다운 블랙컬러에 아메리카노처럼 깔끔한 피니쉬가 환상적이다.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500007,'Jeju Pellong Ale','/img/500007.png','한국','Jeju Beer Company','페일 에일',5.5,0,null,0,'‘펠롱’은 ‘반짝’ 이라는 의미의 제주 방언이다. 다양한 식물들이 조화를 이루어 제주 곶자왈을 만드는 것처럼 다양하고 개성 있는 홉을 블렌딩하여 반짝이는 시트러스향을 느낄 수 있는 제주스러운 페일 에일이다.',0,'제주 펠롱 에일');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (229743,'Hite Zero','/img/229743.png','한국','Hite Brewery Company LTD','무알콜',0,0,2.8,1,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500001,'Gangseo Mild Ale','/img/500001.png','한국','Sevenbrau','페일 에일',4.6,0,null,0,'아메리칸 페일에일을 한국식으로 재해석하여 많은 양의 홉을 사용해 열대과일과 꽃향기가 특징인 맥주이다.',0,'강서');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500002,'Han River Ale','/img/500002.png','한국','Sevenbrau','밀 맥주',5.2,0,null,0,'밀맥아를 베이스로 하여 부드럽고 조밀한 거품이 특징으로 맥아의 단맛과 오렌지 껍질의 상큼함이 청량감을 높여 편안하게 마실 수 있는 맥주이다.',0,'한강');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500004,'Jeolla Ale','/img/500004.png','한국','Sevenbrau','페일 에일',4.5,0,null,0,'맑은 색의 에일 맥주로 바디감은 가볍고, 부드러운 거품과 함께 홉 향의 산뜻하고 안정적인 맛을 즐길 수 있는 맥주이다.',0,'전라');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500003,'Seoul Soul Ale','/img/500003.png','한국','Sevenbrau','페일 에일',5,0,null,0,'미국산 홉의 깔끔한 쓴맛과 프리미엄 맥아의 은은한 단맛이 조화를 이루며 드라이 호핑 공법을 통해 입안과 코 끝에 남는 홉 향기가 특징인 맥주이다.',0,'서울');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500005,'Seocho Wheat','/img/500005.png','한국','Sevenbrau','밀 맥주',4.2,0,null,0,'맥아를 사용한 맥주로 텁텁함이나 쓴맛이 다른 맥주에 비해 덜한 편입니다. 특유의 부드럽고 밀도 높은 거품을 느낄 수 있는 맥주이다.',0,'서초');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500006,'Platinum Standard Of Ale','/img/500006.png','한국','Platinum Craft','페일 에일',5.2,0,null,0,'감귤과 자몽으로 대표되는 열대과일의 향으로 단맛과 쓴맛의 완벽한 밸런스를 가진 아메리칸 스타일 페일에일이다.',0,'에일의 정석');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500008,'Jeju Slice','/img/500008.png','한국','Jeju Beer Company','과일 맥주',4.1,0,null,0,'제주 슬라이스는 패션 프루트를 넣어 과일의 상큼한 향과 맛이 풍부하며 부드럽고 가벼운 질감이 특징인 에일이다. 기분 좋은 탄산감까지 더해져 언제나 경쾌하게 즐길 수 있다.',0,'제주 슬라이스');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500009,'Sunset Sessin IPA','/img/500009.png','한국','Platinum Craft','IPA',4.7,0,null,0,'풍부한 감귤향과 각 종 열대과일의 향의 미국 홉을 사용하고 목넘김이 좋은 가벼운 바디감이 특징이며 음용성을 극대화한 맥주이다.',0,'퇴근길 Ⅱ 선셋');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500010,'Night Cap','/img/500010.png','한국','Platinum Craft','필스너/페일 라거',4.7,0,null,0,'유럽 노블 홉들을 블랜딩, 첨가하여 옅은 황금색에 쓴맛이 적으며 밝고 경쾌한 향과 맛이 특징인 라거맥주',0,'퇴근길 나이트캡');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500016,'Fitz','/img/500016.png','한국','Lotte Liquor','필스너/페일 라거',4.5,0,null,0,'피츠  수퍼클리어는 ‘꼭 맞다, 적합하다’의 뜻을 가진 ‘Fit’를 활용해 언제, 어디서, 누구와 함께해도 부담 없이 즐길 수 있고 어떤 음식과 함께해도 언제나 최상의 궁합을 만들어내는 맥주의 ‘최적화된 깔끔함’이라는 의미를 담고 있다. 여기에 시원한 청감을 만드는 ‘z’의 결합으로 한국인 입맛에 ‘착’ 맞는 맥주, Fitz가 탄생하게 되었다. 역동적인 형태의 ‘F’로 부드럽게 넘어가는 맥주의 속성을 보여준다. ‘F-T-Z’가 간결하게 연결되는 형태로 깔끔하게 잘 맞는 속성을 표현한다.',0,'피츠');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500017,'Terra','/img/500017.png','한국','Hite Brewery Company LTD','필스너/페일 라거',4.6,0,null,0,'세계 공기질 부문 1위 호주에서 자란 청정 맥아를 사용 오직 발효공정에서 나오는 100% 리얼탄산으로 거품은 조밀하고 탄산은 오래 지속된다. 국내 레귤러 라거 최초 Green Bottle을 사용하고 토네이도 패턴으로 눈으로 보는 청량감을 구현한다.',0,'테라');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500018,'Max','/img/500018.png','한국','Hite Brewery Company LTD','필스너/페일 라거',4.5,0,null,0,'맥스 12년 내공으로 만들어진 깊고 풍부한 Cream 生 All Malt Beer',0,'맥스');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500019,'Black Beer Stout','/img/500019.png','한국','Hite Brewery Company LTD','다크 라거',5,0,null,0,'누구나 가볍게 즐길 수 있는 부드럽고 깔끔한 라거타입 흑맥주, 스타우트!',0,'스타우트');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500011,'Dancing Cown Milk Stout','/img/500011.png','한국','The Booth Brewing','스타우트',5,0,null,0,'더부스와 tvN<인생술집>의 콜라보! 오늘을 흥하게 할 ‘흥맥주’는 캐러멜과 바닐라 아이스크림의 풍미로, 달달하고 부드러운 보기 드문 흑맥주. 아이스크림을 한 스쿱 넣어 맥주 아포가토를 만들면 그 맛이 또 별미라는 후문. 흥해라 내인생!',0,'흥맥주');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500012,'Chimmeli Ale','/img/500012.png','한국','The Booth Brewing','페일 에일',5,0,null,0,'‘치킨과 가장 잘 어울리는 맥주’. 대한민국 치킨미각 1% 치믈리에를 대상으로 한 설문 및 블라인드 테스트를 통해 개발한 ‘치믈리에일‘은, 오렌지, 감귤류의 시트러스한 향에서 이어지는 청량감 있고 풍부한 맛으로, 후라이드와 양념, 매콤한 치킨까지 두루 잘 어울리는 에일맥주다. 치킨의 느끼함을 탄산감으로 잡아주고, 홉에서 비롯한 풍부한 향으로 식은 치킨의 맛도 살려준다. 또한, 밸런스 좋은 적당한 쌉싸름함으로 ‘다음 조각’을 집어들기 전 입 안을 깔끔하게 마무리해주며, 약간 높은 도수로 치킨의 감칠맛을 더욱 돋구워준다.',0,'치믈리 에일');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500013,'Geumgangsan Golden Ale','/img/500013.png','한국','Moonbear Brewing','브라운 에일',4.6,0,null,0,'눈부시게 빛나는 일만 일천가지 금강산의 아름다움에서 영감을 얻어 만든 금강산 골든 에일. 풍미 가득한 황금빛 에일 맥주로, 몰트의 달콤한 향과 청량한 쓴맛이 완벽한 밸런스를 이룬다. 은은한 꽃향기와 상큼한 시트러시 향, 그리고 깔끔한 피니쉬가 특징이다.',0,'금강산 골든 에일');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500014,'Baekdusan IPA','/img/500014.png','한국','Moonbear Brewing','IPA',6.3,0,null,0,'한반도에서 가장 높고 위엄있는 백두산처럼 백두산 인디아 페일 에일의 첫 맛은 강렬하다. 시트러스와 열대과일의 폭팔적인 향이 진하게 퍼지면서 홉 고유의 씁쓸함이 몰트향으로 이어져 진한 여운을 남긴다. 엄선된 재료를 기본으로 뚜렷한 개성을 살려 백두산 IPA, 그 이름의 가치를 완성한다.',0,'백두산 IPA');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (500015,'Hallasan Wit','/img/500015.png','한국','Moonbear Brewing','밀 맥주',5.3,0,null,0,'제주의 아이콘, 한라산에 불어오는 기분 좋은 산들바람에서 영감을 얻은 한라산 위트 에일은 친구들과 가볍게 즐기기 좋은 맥주이다. 정향과 아로마틱한 향신료가 가미된 각종 신선한 과일 향으로 시작해 산뜻한 산미로 이어지는데, 한번 맛보면 결코 멈출 수 없을 것이다.',0,'한라산 위트');
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (326018,'Ark Dong Bing Go','/img/326018.png','한국','Korea Craft Brewery','복스',8.5,0,2.65,1,'새해 복을 기원하며 만든 국내 최초 복 (BOCK) 에일. 잘 익은 바나나향과 진한 캬라멜의 풍미를 한껏 즐길 수 있는 복 에일로 편안하고 부드러운 목넘김이 인상적이다.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (255668,'Hug Me','/img/255668.png','한국','Korea Craft Brewery','밀 맥주',5.5,0,3.79,4,'포옹의 느낌처럼 부드럽고 상큼한 벨지안 위트 에일. 신선하고 부드러운 목 넘김을 즐길 수 있는 벨지안 위트 에일입니다. 국내산 생강의 싱그러움에 오렌지, 고수, 넛맥의 아로마가 더해져 허그미 특유의 상큼함을 만듭니다.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (216036,'Ark Be High IPA','/img/216036.png','한국','Korea Craft Brewery','IPA',7,0,3.67,5,'황홀한 절정의 순간처럼 진하고 강렬한 풍미의 IPA. 짙고 붉은 바디감을 지닌 IPA입니다. 카라멜 몰트에서 오는 진한 풍미와 높은 알코올 도수, 시트러스한 향기가 깊은 여운을 남깁니다.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (449,'Stella Artois','/img/449.png','벨기에','Stella Artois','필스너/페일 라거',5,0,3.11,5749,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2762,'OB Lager Beer','/img/2762.png','한국','Oriental Brewery Co., Ltd','필스너/페일 라거',4.5,0,2.33,130,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (175423,'Hoegaarden Rose''e','/img/175423.png','벨기에','Brouwerij van Hoegaarden','밀 맥주',3,0,3.13,11,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (190730,'Mocha Stout','/img/190730.png','한국','The Hand and Malt Brewing Company','스타우트',5,0,3.83,11,'Rich malt and coffee flavors highlight this milky stout with a frothy head. This is so good you may want to wake up to it in the morning * just do not drive to work after drinking this stout.

"Rich malt and coffee flavors highlight this milky, frothy stout."',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (92893,'L Weizen','/img/92893.png','독일','Brauerei zum Schwarzen Adler','밀 맥주',4.9,0,3.63,5,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (92928,'L Lager','/img/92928.png','독일','Brauerei zum Schwarzen Adler','필스너/페일 라거',4.9,0,3.2,3,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (114541,'L Dark','/img/114541.png','독일','Brauerei zum Schwarzen Adler','다크 라거',4.9,0,2.99,2,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (7511,'Orion Premium Draft Beer','/img/7511.png','일본','Orion Beer Co., Ltd.','Japanese Rice Lager',4.7,0,3.08,326,'With an even more refreshing taste, a new draft beer was born in the summer of 2015, the same year draft beer celebrated its 55th birthday. The backdrop to the primary color designs, a tradition in draft beer, is a cool, crisp color of champagne gold. The three stars and our logo proudly stand out, and the champagne gold color expresses the fine quality and refreshing sense of beer. The design incorporates the “red sun”, “blue skies”, and “navy blue seas” of Okinawa in the color scheme.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (8759,'Beerlao Lager','/img/8759.png','라오스','Lao Brewery Co.','Japanese Rice Lager',5,0,3.09,285,'Beerlao is brewed from the best local rice and overseas high quality malt giving it a unique taste. Beerlao was launched in 1973 and has become the best selling and leading brand in Laos. It was also awarded gold medals by various international competitions. Beerlao is one of the most successful exports and is currently available in 13 countries worldwide.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1432,'Bir  Pilsner','/img/1432.png','인도네시아','Bintang','필스너/페일 라거',4.7,0,2.64,152,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (23410,'Laoshan Beer','/img/23410.png','중국','Tsingtao Brewery Co., Ltd.','필스너/페일 라거',4.7,0,2.32,18,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (976,'Singha','/img/976.png','태국','Boon Rawd Brewery Co., Ltd','필스너/페일 라거',5,0,3.07,1339,'"100% barley malt beer"',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (63536,'Adnams Ghost Ship','/img/63536.png','영국','Adnams plc, Sole Bay Brewery','페일 에일',4.5,0,3.82,133,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1421,'Delirium Nocturnum','/img/1421.png','벨기에','Brouwerij Huyghe','스트롱 에일',8.5,0,4.05,2954,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (141574,'Delirium Argentum','/img/141574.png','벨기에','Brouwerij Huyghe','IPA',7,0,3.86,177,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (6906,'Clausthaler Original (Non-Alcoholic/Alkoholfrei)','/img/6906.png','독일','Binding-Brauerei AG','무알콜',0.5,0,2.88,202,'Formerly Clausthaler Premium (Non-Alcoholic/Alkoholfrei)',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1422,'Bavaria Beer','/img/1422.png','네덜란드','Swinkels Family Brewers','필스너/페일 라거',5,0,3.02,480,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (45380,'Damm Lemon','/img/45380.png','스페인','Damm S. A.','과일 맥주',3.2,0,3.05,33,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (4299,'Oettinger Hefeweissbier','/img/4299.png','독일','Oettinger Brauerei GmbH','밀 맥주',4.9,0,3.59,119,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (4291,'Oettinger Alkoholfrei','/img/4291.png','독일','Oettinger Brauerei GmbH','무알콜',0.5,0,2.82,8,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (242043,'Hanalei Island IPA','/img/242043.png','미국','Kona Brewing Co.','IPA',4.5,0,3.62,367,'This easy-drinking island-inspired IPA is Kona Brewing Co.’s homage to Kauai, “the most beautiful place on earth.” Passionfruit, orange and guava balance the subtle bitterness of aromatic Azacca and Galaxy hops to deliver a coppery laidback, session-style ale bright with tropical flavors.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (132406,'King Gose Home','/img/132406.png','미국','Hoppin'' Frog Brewery','와일드/사워 맥주',6,0,3.75,119,'When the King was crowned, fans in his home town of Akron were excited and proud! But his departure left a sour taste in their mouths, making Akron salty about losing their King, and wanting to forget. Now, to honor his return and share these sour and salty feelings, we have brewed a beer to express these feelings in flavor, which was a nearly forgotten style itself! This rare Gose style beer is refreshingly sour and salty, and was nearly forgotten - now its making a come-back, and so is our King! 

In today''s fast-paced world, its often difficult to find the quality that discriminating people deserve. For those who search for this long lost, undying commitment to the very best, let it be known that one beer wil not be compromised - Hoppin'' Frog!',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (73088,'Patagonia Weisse','/img/73088.png','아르헨티나','Cerveceria Patagonia Primitiva S.A.','밀 맥주',5,0,3.31,17,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (41091,'Schofferhofer Hefeweizen Grapefruit Bier','/img/41091.png','독일','Binding-Brauerei AG','밀 맥주',2.5,0,3.55,909,'As you might’ve guessed we’re from Germany, but what might surprise you is that we’re the world’s first Hefeweizen (wheat beer) grapefruit beer. Best served cold, it’s the perfect casual brew to cool you off during the summer, but it can be enjoyed all year round any time of the day. It’s a true 50/50 blend of total refreshment made from 50% Schofferhofer Hefeweizen blended with 50% carbonated juice of 100% natural ingredients.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (27137,'Macau Beer','/img/27137.png','마카오','Macau Beer Company Limited','필스너/페일 라거',4,0,2.52,17,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (52126,'Rinktinis','/img/52126.png','리투아니아','Volfas Engelman','필스너/페일 라거',5.2,0,3.04,21,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (50578,'Litovel Moravan','/img/50578.png','체코','Pivovar Litovel','필스너/페일 라거',4.6,0,3.14,5,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1641,'Premium Beer','/img/1641.png','독일','Bitburger Brauerei','필스너/페일 라거',4.8,0,3.49,2015,'Also known as Premium Pils

Note first the bright, fresh golden colour and rich frothy head so typical of this elegant Pilsner beer. Its refined herbal notes are delicately poised, followed by a nutty and honeyed aftertaste. The overall impression of this gently sparkling beer is one of deep harmony, with the unmistakeable bitterness of the hops balanced and contained by an agreeable, mellow sweetness in the body.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (83075,'Zahringer German Premium Hefeweizen','/img/83075.png','독일','Frankenthaler Brauhaus','밀 맥주',5,0,3.05,12,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (935,'Premium German Pilsener','/img/935.png','독일','Warsteiner Brauerei','필스너/페일 라거',4.8,0,3.46,2293,'Also known as Warsteiner Premium Verum

A refreshing, pale golden pilsener with a clean taste perfectly balanced with hints of barley malt, subtle bottom fermenting yeast tones and mild hoppy bitterness.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1317,'Staropramen Lager','/img/1317.png','체코','Pivovary Staropramen','필스너/페일 라거',5,0,3.37,885,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (115552,'Grevensteiner Original','/img/115552.png','독일','Brauerei C. & A. Veltins GmbH & Co.','필스너/페일 라거',5.2,0,3.82,251,'The beer presents itself in a palely amber colour with orange reflections and a mellow soft head. The complex flavour is firstly dominated by caramel with a slight undertone of honey, roasted almonds, and fresh fruity flavours that bring tastes of green apple to mind. Grevensteiner Original appears very crisp and elegant despite its round and malty-sweet body. A smooth toasty character paired with nutty flavours opens a distinctive finale, which unfolds impressions of butterscotch.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (52539,'Yanjing 10º Beer','/img/52539.png','중국','Beijing Yanjing Beer Group Corporation','필스너/페일 라거',3.4,0,2.4,25,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (62476,'5,0 Original Export','/img/62476.png','독일','Feldschloesschen AG','필스너/페일 라거',5.2,0,3.47,12,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2434,'Erdinger Weissbier','/img/2434.png','독일','Erdinger Weissbräu','밀 맥주',5.6,0,3.55,2091,'Every sip leaves you wanting more – our ERDINGER Weissbier with fine yeast is the crowning glory of traditional Bavarian brewing skills.

The strength of this classic wheat beer lies in the harmonious balance it achieves between the various aromas. Gently spicy wheat and yeast aromas blend with mildly bitter hops. The invigorating carbon dioxide ensures its typical liveliness. A premium beer whose full-bodied yet elegant character leaves a lasting impression of ultimate Bavarian enjoyment. A truly unique wheat beer!

ERDINGER Weissbräu allows its top-fermenting specialty to mature in the bottle in the traditional manner, just like champagne. This wheat beer from Erding offers more than just sparkling refreshment – it gives a true taste of Bavaria.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (16273,'Kozel Černý (Dark)','/img/16273.png','체코','Pivovar Velké Popovice a.s.','다크 라거',3.8,0,3.71,317,'Velkopopovický Kozel Dark beer is brewed to the original recipe using a special mix of dark malts, clean water from our own well close to the brewery, and a selection of the best hops. The caramelized malt gives this beer a unique ruby color and sweet flavor, thanks to which it is appreciated and respected all over the world.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (39435,'Punk IPA','/img/39435.png','영국','BrewDog','IPA',5.6,0,3.86,2066,'Our scene-stealing flagship is an India Pale Ale that has become a byword for craft beer rebellion; synonymous with the insurgency against mass-produced, lowest common denominator beer. Punk IPA charges the barricades to fly its colours from the ramparts – full-on, full-flavour; at full-throttle. Layered with new world hops to create an explosion of tropical fruit and an all-out riot of grapefruit, pineapple and lychee before a spiky bitter finish, this is transatlantic fusion running at the fences of lost empires. Nothing will ever be the same again.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2176,'Tiger Beer','/img/2176.png','싱가포르','Asia Pacific Breweries Limited','필스너/페일 라거',5,0,2.71,1141,'Tiger was born on the hot streets of Singapore – the tropical island city state – a busy trading destination and melting pot of Asian, Indian, and British influences and culture. The ‘tropical lagering’ process brews a bravely creative and unpretentious lager. The result is the intensely refreshing, full-bodied taste of one of the world’s fastest growing premium beers.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (24720,'Blue Label Ale','/img/24720.png','몰타','Simonds Farsons Cisk Plc.','페일 에일',4.7,0,3.45,17,'A dark brown, top-fermented ale yeast, hopped and mixed with a special type of mild malt gives this richly coloured ale a unique, surprisingly smooth and mild taste. Contains distinctive chocolate and caramel notes. The draught version is a smooth and creamy version and is also available in cans, possible through an inbuilt widget technology that releases just the right amount of nitrogen to create the perfect surge and distinct smooth and creamy finish, which has previously only been available on draught in selected outlets across the island.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (16767,'Bali Hai Premium','/img/16767.png','인도네시아','PT Bali Hai Brewery Indonesia','필스너/페일 라거',5,0,2.42,34,'Bali Hai Premium is a bright golden munich lager with a crisp, refreshing taste, brewed with European malt and finished with distinct aromatic hops.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (5798,'St. Louis Premium Kriek','/img/5798.png','벨기에','Brouwerij Van Honsebrouck N.V.','와일드/사워 맥주',3.2,0,3.43,100,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (160082,'St. Louis Fond Tradition Kriek','/img/160082.png','벨기에','Brouwerij Van Honsebrouck N.V.','와일드/사워 맥주',6.5,0,3.99,154,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (134703,'De Goudale Grand Cru','/img/134703.png','프랑스','Les Brasseurs de Gayant','스트롱 에일',7.9,0,3.74,13,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (13159,'Oude Geuze Boon','/img/13159.png','벨기에','Brouwerij Boon','와일드/사워 맥주',7,0,4,849,'Brewed with 40% unmalted wheat, 60% of barleymalt, aged hops and wild yeasts collected from a coolship and is aged for up to 3 years in oak casks.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (129878,'Paljas Blond','/img/129878.png','벨기에','Brouwerij Henricus','페일 에일',6,0,3.46,24,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1716,'Avec Les Bons Voeux','/img/1716.png','벨기에','Brasserie Dupont sprl','페일 에일',9.5,0,4.18,1468,'Les Bons Voeux means best wishes, which is what Brasserie Dupont sends with this very special saison ale brewed for the holidays. Redolently aromatic, rich and velvety. 

Rich gold color, fragrant (lemony with hints of pepper, banana and clove), as all the beers of Dupont are with a full, deep malt richness that lingers on your tongue for what seems the whole holiday season. Considered by some the finest offering from this unparalleled Brewery. “The best Belgian beer, if ever there could be such an award...a sumptuous, seductive 9.5% beer. Because of it’s intensity, I would recommend the novice graduate to this beer. However, if a saison that is starting to lean towards being a triple appeals to you, and if its in season, don’t hesitate.”',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (197183,'Citradelic Tangerine IPA','/img/197183.png','미국','New Belgium Brewing Company','IPA',6,0,3.85,1902,'Tune in and hop out with New Belgium Citradelic. Set adrift on a kaleidoscopic wave of hoppiness brought to you by a mystical marriage of Citra hops and tangerine peel, which elevates each sip onto a plane of pure tropical, fruity pleasure. Citradelic’s namesake hop and fruit combine to jam with visions of additional hops like citrusy Mandarina Bavaria, tropical Azzaca, and fruity Galaxy for a colorful explosion that’s grounded by just a touch of malty sweetness. Bored by the status quo? Expand your palate with a pour of Citradelic.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (275731,'Fat Tire Belgian White','/img/275731.png','미국','New Belgium Brewing Company','밀 맥주',5.2,0,3.72,395,'Fat Tire Belgian White. Taking inspiration from our decades of experience brewing Belgian beers, Fat Tire Belgian White is made with Seville oranges and Indian coriander, both freshly ground less than a mile from our Fort Collins brewery. It’s a fresh, perfectly sweet, natural tasting Belgian White.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (601,'Cassis','/img/601.png','벨기에','Brouwerij Lindemans','와일드/사워 맥주',3.5,0,3.88,735,'intense and sparkling with a sour-sweet finish.

5 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (100185,'Cuvee Mam''zelle','/img/100185.png','벨기에','Brouwerij De Leite','스트롱 에일',8.5,0,3.8,30,'Soured triple with gruit herbs, aged in Bordeaux barrels',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (457725,'Vintage Ale 2018 Release','/img/457725.png','호주','Coopers Brewery Limited','페일 에일',7.5,0,3.56,1,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (251571,'Tropical Torpedo Tropical IPA','/img/251571.png','미국','Sierra Nevada Brewing Co.','IPA',6.7,0,3.88,1109,'Inspired by island life, we created an IPA completely disconnected from the mainland. We used our one-of-a-kind Hop Torpedo to deliver an intense rush of hop flavor and the lush aromas of mango, papaya, and passionfruit with every sip. Enjoy our tropical twist on the American IPA.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (70471,'Chaotic Double IPA','/img/70471.png','미국','Twisted Manzanita Ales','IPA',10.1,0,3.72,147,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (20134,'Martens Pilsener','/img/20134.png','벨기에','Brouwerij Martens NV','필스너/페일 라거',5,0,3.16,141,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (13889,'Tripel Van De Garre','/img/13889.png','벨기에','Brouwerij Van Steenberge N.V.','스트롱 에일',11,0,4.39,383,'This is the house beer for the famous De Garre pub in Brugges, Belgium. Brewed using traditional Belgian triple base with three times the amount of malt allows the brewer to achieve the 11% ABV.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (55191,'5AM Saint','/img/55191.png','영국','BrewDog','페일 에일',5,0,3.84,897,'Formerly 5 A.M. Saint + Five AM

Start the car. The lights are about to turn amber. Buy the ticket, take the ride. Past the alley where thieves and pimps sell corporate brews and good men soak it up like vermin, blissful in their ignorance. Past the jackhammers who want their three and a half percent. Keep going. Towards that golden orb, the size of Zeus’s ass, that hovers over this crazy town. Sleep late, have fun, get wild, drink amber, and drive like a bastard towards that saintly light.

25 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (403,'ACME California IPA','/img/403.png','미국','North Coast Brewing Co.','IPA',6.9,0,3.64,1263,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (406,'ACME California Pale Ale','/img/406.png','미국','North Coast Brewing Co.','페일 에일',5,0,3.47,558,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (5701,'Wahoo White Beer','/img/5701.png','미국','Ballast Point Brewing Company','밀 맥주',4.5,0,3.56,652,'Previously known as Wahoo Wheat Ale

A fresh, unfiltered brew perfect for lazy summer days.
Our Wahoo White is brewed with unfiltered, un-malted wheat and oats that give it a distinctive cloudy complexity. True to the Belgian tradition, this Witbier boasts a refreshing, citrusy flavor thanks to the orange peel and coriander we add to the boil. This makes Wahoo an ideal beer for year-round beach weather.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2435,'Beck''s','/img/2435.png','독일','Brauerei Beck & Co.','필스너/페일 라거',5,0,2.78,2279,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (55287,'Benediktiner Weissbier','/img/55287.png','독일','Klosterbrauerei Ettal / Ettaler Klosterbetriebe GmbH','밀 맥주',5.4,0,3.82,360,'The top-fermented wheat beer is specially brewed to obtain a tasty but also pungent wheat beer. This special type of brewing allows a particularly full and also very tasty wheat beer. The amber color comes through special malt, which also brings a caramel-like character and other taste facets in the beer.

The cloudiness receives this Benedictine wheat beer by the fine yeast , which means an important flavor carrier for this beer type. This top-fermented yeast gives the wheat beer a very fruity note that is even reminiscent of bananas. A special taste experience is the sweetness, which is to enter into a synergy with the fine dry aroma of the hop.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (22592,'Big Wave Golden Ale','/img/22592.png','미국','Kona Brewing Co.','페일 에일',4.4,0,3.58,2180,'Big Wave is light golden ale with a subtle fruitiness and delicate hop aroma. A smooth, easy drinking refreshing ale. The lightly roasted honey malt contributes to the golden hue of this beer and also gives a slight sweetness that is balanced out by our special blend of hops.

20 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (218932,'Glug M''Glug','/img/218932.png','영국','Black Sheep Brewery PLC','다크 에일',6.2,0,3.49,15,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (25625,'Kronenbourg 1664 Blanc','/img/25625.png','프랑스','Brasseries Kronenbourg','밀 맥주',5,0,3.62,593,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (10784,'Caldera IPA','/img/10784.png','미국','Caldera Brewing Company','IPA',6.1,0,3.96,1311,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2270,'Carlsberg Beer','/img/2270.png','덴마크','Carlsberg Danmark A/S','필스너/페일 라거',5,0,3.04,1737,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (8750,'Cass Fresh','/img/8750.png','한국','Oriental Brewery Co., Ltd','필스너/페일 라거',4.5,0,2.36,177,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (7609,'Chang Beer (Domestic)','/img/7609.png','태국','Cosmos Brewery (Thai Beverage Plc.)','필스너/페일 라거',5,0,2.84,208,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (7364,'Cisk Lager','/img/7364.png','몰타','Simonds Farsons Cisk Plc.','필스너/페일 라거',4.2,0,2.9,72,'The original Cisk Lager Beer is a golden-coloured, bottom-fermented lager with a distinctive and well-balanced character. Its rich hop aroma and pleasant bitterness has made it the natural choice and thirst quencher for beer drinkers who want to savour the original brew which has remained faithful to its recipe of 1929. 

Recipient of a number of international awards since its launch in 1929, Cisk Lager Beer is popular any time of the year and consumed across the Maltese Islands, holding a strong presence at Malta’s traditional social band clubs, known as ”kazini”. On a hot summer day, it is best enjoyed chilled by the sea with friends. Just add a barbecue banquet or a selection of fresh shellfish and Cisk will be the perfect companion.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (49787,'Coedo Ruri','/img/49787.png','일본','Coedo Brewery (Kyodo Shoji Koedo Brewery)','필스너/페일 라거',5,0,3.38,60,'In Japanese, Ruri is the color of clear blue skies, and crystal clarity is what this incredibly pure premium pilsner is all about. Its flawless golden color contrasts beautifully with a soft, white head for an easy drinking brew that pairs well with almost any dish. Its delicate balance of rich flavors and hoppy bitterness is light on the palate and persistently enjoyable, providing a deliciously satisfying quaff for discriminating beer drinkers with sophisticated tastes.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (15804,'Desperados','/img/15804.png','네덜란드','Heineken Nederland B.V.','필스너/페일 라거',5.9,0,2.35,276,'Beer with tequila flavor',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (222579,'Elvis Juice','/img/222579.png','영국','BrewDog','IPA',6.5,0,3.95,484,'Amarillo, Citra, Magnum, Mosaic, Simcoe',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (14687,'Estrella Damm','/img/14687.png','스페인','Damm S. A.','필스너/페일 라거',5.4,0,2.84,775,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (5753,'Fire Rock Pale Ale','/img/5753.png','미국','Kona Brewing Co.','페일 에일',5.8,0,3.64,2469,'Fire Rock Pale Ale is crisp, refreshing “Hawaiian-style” pale ale. Its signature copper color results from the unique blend of specialty roasted malts. The pronounced citrus-floral hop aroma comes from the liberal amounts of Galena, Cascade & Mt.Hood hops added to each brew.

35 IBU',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (7813,'Ginga Kogen Weizen','/img/7813.png','일본','Ginga Kogen Beer','밀 맥주',5,0,3.7,88,'“Ginga Kougen Beer” is a “Hefeweizen” style beer a yeast wheat top-fermented beer brewed with more than 50% of wheat malt. It is unfiltered beer distinguished by its fruity aroma and pale color.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1167,'Heineken Dark Lager','/img/1167.png','네덜란드','Heineken Nederland B.V.','다크 라거',5,0,3.25,641,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (16429,'Hitachino Nest Japanese Classic Ale','/img/16429.png','일본','Kiuchi Brewery','IPA',7,0,3.81,474,'Hitachino Japanese Classic Ale is brewed following the original India Pale Ale brought to Japan in the 19th century . It is slowly matured in Cedar casks which are commonly used in the brewing of traditional Japanese sake.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (2013,'Hitachino Nest White Ale','/img/2013.png','일본','Kiuchi Brewery','밀 맥주',5.5,0,4.08,1659,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (89036,'Hite Extra Cold','/img/89036.png','한국','Hite Brewery Company LTD','필스너/페일 라거',4.3,0,2.73,81,'Formerly Hite Ice Point',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (832,'Original Honey Brown Extra Rich Lager (Beer Brewed With Honey)','/img/832.png','미국','Genesee Brewing Co. / Dundee Brewing Co.','다크 라거',4.5,0,3.14,1486,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (160538,'Hop House 13','/img/160538.png','아일랜드','Guinness Ltd.','필스너/페일 라거',5,0,3.38,190,'A golden lager with refreshing taste and a clean, crisp finish. Brewed with Irish barley and double-hopped.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (8131,'Huber Weisses Original','/img/8131.png','독일','Hofbrauhaus Freising','밀 맥주',5.6,0,3.79,88,null,0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (1670,'Indica India Pale Ale','/img/1670.png','미국','Lost Coast Brewery and Cafe','IPA',6.5,0,3.78,1282,'Indica India Pale Ale is a smooth, full-bodied, filtered beer. It’s radically hopped to give it an intense mystical aroma. Find your happy place.',0,null);
Insert into BEER (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,RATINGCNT,NOTE,BEERCNT,BEERKO) values (52429,'Estrella Damm Inedit','/img/52429.png','스페인','Damm S. A.','밀 맥주',4.8,0,3.63,518,null,0,null);
REM INSERTING into BEER_LIKE
SET DEFINE OFF;
Insert into BEER_LIKE (BLIKENO,UUID,BEERNO,REGDATE) values (55,'3d7c7732-b516-465d-a417-1eb18eb77793',30,to_date('20/02/19','RR/MM/DD'));
Insert into BEER_LIKE (BLIKENO,UUID,BEERNO,REGDATE) values (57,'3e1ba01e-a3e1-4fba-8a31-d6aead81d0d4',33,to_date('20/02/20','RR/MM/DD'));
Insert into BEER_LIKE (BLIKENO,UUID,BEERNO,REGDATE) values (56,'3e1ba01e-a3e1-4fba-8a31-d6aead81d0d4',30,to_date('20/02/20','RR/MM/DD'));
Insert into BEER_LIKE (BLIKENO,UUID,BEERNO,REGDATE) values (73,'43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce',30,to_date('20/02/24','RR/MM/DD'));
Insert into BEER_LIKE (BLIKENO,UUID,BEERNO,REGDATE) values (75,'43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce',33,to_date('20/02/27','RR/MM/DD'));
Insert into BEER_LIKE (BLIKENO,UUID,BEERNO,REGDATE) values (43,'43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce',246,to_date('20/02/14','RR/MM/DD'));
Insert into BEER_LIKE (BLIKENO,UUID,BEERNO,REGDATE) values (45,'43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce',224,to_date('20/02/14','RR/MM/DD'));
Insert into BEER_LIKE (BLIKENO,UUID,BEERNO,REGDATE) values (49,'3e1ba01e-a3e1-4fba-8a31-d6aead81d0d4',7,to_date('20/02/18','RR/MM/DD'));
REM INSERTING into BEER_SAMPLE
SET DEFINE OFF;
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (224,'Schneider Weisse Tap 6 Unser Aventinus','/img/224.jpg','Germany','Weisses Bräuhaus G. Schneider & Sohn GmbH','Bocks',8.2,0,4.35,'"Mein Aventinus" - the wholehearted, dark ruby coloured wheat beer, intensive and fiery, warming, well-balanced and tender. Bavaria''s oldest wheat "Doppelbock" - brewed since 1907! Its sturdy body in combination with its sweet malty aroma is an invitation to profound indulgence - an ingenious blend with a strong body. Perfectly matches rustic dishes, dark roasts and sweet desserts.

Hallertauer Herkules
wheat malt, barley malt
open fermentation, genuine bottle fermentation
non-filtrated, non-pasteurized
16 IBU
7 g/l carbon dioxide
18,5 % original gravity',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1008,'Moonglow Weizenbock',null,'United States','Victory Brewing Company - Downingtown','Bocks',8.7,0,4.07,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2646,'Erdinger Weissbier Pikantus',null,'Germany','Erdinger Weissbräu','Bocks',7.3,0,3.88,'ERDINGER Pikantus is already a legend during the “strong beer season”. But with its complex symphony of aromas, it also stimulates the taste buds – making it a perfect aperitif.

With an ABV of 7.3% and an original wort of 16.7°P, this bock beer is ERDINGER Weissbräu’s strongest contender.

For a true Bavarian aperitif, divide a bottle of ERDINGER Pikantus between two connoisseur glasses – with its dark color and smooth creamy head, Pikantus is already a feast for the eyes. The flavor that develops on the palate is well-rounded and malty with a hint of nutmeg and fine nougat. The sparkling nature of ERDINGER Pikantus harmonizes perfectly with its slightly sweet character, as well as its soft and delicate finish.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2743,'Ramstein Winter Wheat',null,'United States','High Point Brewing Company','Bocks',9.5,0,4.21,'Rich creamy head with bouquet of Wheat malt, black current, clove, and apple. Deep full flavors of caramel and chocolate malt balance with hops for a smooth warming character. Smooth malt leads to a subtle alcohol and dark caramel finish. The wonderful balance of this beer provides a complex profile hiding the 9.5% alcohol content. The perfect companion for a cold winter night.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1307,'Der Weisse Bock',null,'Germany','Mahr''s Bräu','Bocks',8.5,0,3.93,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3673,'Hopf Weisser Bock',null,'Germany','Weissbierbrauerei Hopf','Bocks',7,0,3.97,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7402,'Volks Weizenbock',null,'United States','Appalachian Brewing Company','Bocks',7.2,0,3.81,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7941,'Allgäuer Stifts-Weizenbock',null,'Germany','Allgäuer Brauhaus AG','Bocks',7.2,0,3.02,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9162,'Unertl Weissbier Bock',null,'Germany','Unertl Weissbier GmbH','Bocks',6.7,0,3.74,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4704,' Weizenbock',null,'Germany','Herrnbräu','Bocks',0,0,3.79,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2734,'Maibock',null,'United States','Summit Brewing Company','Bocks',6.7,0,3.64,'This traditional German style earned the nickname “liquid bread” because it was brewed by Paulaner monks in Bavaria to help them get through Lenten fasting. Moravian 37 malts and Czech Saaz hops give it a toasted sweetness with a little spice in the finish. Available in 12-oz. cans and bottles in the Spring.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (984,'Maibock',null,'United States','Capital Brewery','Bocks',6.2,0,3.8,'Brewers, Honey',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (923,'Berkshire Maibock Lager',null,'United States','Berkshire Brewing Company Inc.','Bocks',6.5,0,3.9,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9906,'Blonde Double MaiBock',null,'United States','Stoudts Brewing Co.','Bocks',7,0,3.82,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (995,'Mai Bock',null,'United States','Sprecher Brewing Company','Bocks',6,0,3.77,'2004 and 1988 Bronze Medal Winner in the Bock category at the Great American Beer Festival (GABF).',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (136,'Ayinger Maibock',null,'Germany','Privatbrauerei Franz Inselkammer KG / Brauerei Aying','Bocks',6.8,0,4.07,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6724,'Andechser Bergbock Hell',null,'Germany','Klosterbrauerei Andechs','Bocks',7,0,3.9,'With its firm, fine pored head, luminous gold and clear gleaming look, it cannot fail to awaken expectations of pure pleasure.

Strong malty nuances and floral hoppiness are imbued with accents of slight fruitiness. Despite its strength, Bergbock is pleasantly mouthcoating, with a powerful, but unobtrusive body. A highly discrete, finely bitter hoppiness transforms into a slight honey sweetness to conclude on a soft, harmonious aftertaste.

A harmonious light bock of character that cannot be put down after the first drink.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9540,'Ramstein Maibock',null,'United States','High Point Brewing Company','Bocks',7,0,3.99,'Rich Amber bock beer brewed with imported Munich and Pilsner Malts and fermented with a rare lager yeast. This beer has a deep malt character and body with a hint of toffee in the aroma. The Noble hops balance the richness of the malts and provide a complex profile that hides the 7% abv.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8693,'Carolina Spring Bock',null,'United States','Carolina Brewing Company','Bocks',6.5,0,3.79,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9707,'Anniversary Maibock',null,'United States','Appalachian Brewing Company','Bocks',7.2,0,3.78,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6236,'Einbecker Ur-Bock Hell',null,'Germany','Einbecker Brauhaus AG','Bocks',6.5,0,3.69,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3623,'Grolsch Lentebok',null,'Netherlands','Grolsch Bierbrouwerij N.V.','Bocks',7,0,3.03,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9829,'Maibock',null,'United States','The Schlafly Tap Room','Bocks',6.4,0,3.63,'Our Maibock is a golden, malty lager with a hint of sweetness. This festival Bock is balanced by German Noble hops, giving the beer a slightly dry finish.

Bavarian brewers made Maibock for Maifest, the annual celebration of the arrival of spring. Accordingly, the festival beer has a medium body and gravity, thus bridging the divide between the stronger, darker bocks of winter and the lighter, paler lagers of summer.

25 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3608,'Maibock',null,'United States','Blind Tiger Brewery & Restaurant','Bocks',6.3,0,3.85,'This beer is gold in color, very malty, full-bodied and has an increased hopping rate over the rest of our brews. Traditionally brewed for a May release date.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (443,'Lobkowicz Prince',null,'Czech Republic','Brewery Lobkowicz','Bocks',5.7,0,3.66,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7926,'Park Pirminator',null,'Germany','Parkbrauerei / Park & Bellheimer AG','Bocks',6.9,0,3.53,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6367,'Town Hall Maibock',null,'United States','Minneapolis Town Hall Brewery','Bocks',6.7,0,4.11,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (355,'Dead Guy Ale','/img/355.jpg','United States','Rogue Ales','Bocks',6.8,0,3.96,'2-Row, C15, Munich, Rogue Farms Dare™, Risk™ Malts; Rogue Farms Revolution™ & Independent™ Hops; Free Range Coastal Water & Pacman Yeast.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1565,'Andygator',null,'United States','Abita Brewing Co.','Bocks',8,0,3.57,'Andygator, a creature of the swamp, is a unique high-gravity brew made with pale malt, German lager yeast, and German Perle hops. Unlike other high-gravity brews, Andygator is fermented to a dry finish with a slightly sweet flavor and subtle fruit aroma. Reaching an alcohol strength of 8% by volume, it is a Helles Dopplebock.

25 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3001,'Mardi Gras Bock',null,'United States','Abita Brewing Co.','Bocks',6.5,0,3.48,'Abita Bock is brewed with pale, pilsner, and caramel malts and German Perle hops. Our bock is similar to German maibocks with its rich malt flavor and full body. A perfect choice during Carnival season in New Orleans.

25 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3505,'Willimantic Mail Carrier Maybock',null,'United States','Willimantic Brewing Co.','Bocks',6.3,0,3.41,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5902,'Budels Meibock',null,'Netherlands','Budelse Brouwerij B.V.','Bocks',7.5,0,3.82,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3681,'Gottfried Jakobs Blonder Bock',null,'Germany','Forschungsbrauerei','Bocks',7.6,0,4.33,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5918,'Spring Bok',null,'Netherlands','Burg Bier Brouwerij','Bocks',6,0,3.9,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9793,'Fruhlingzeit Maibock',null,'United States','Delafield Brewhaus','Bocks',7,0,3.74,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9958,'Maibock',null,'United States','Krogh''s Restaurant And Brewpub','Bocks',0,0,3.67,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5231,'Brewer''s Alley Maibock',null,'United States','Brewer''s Alley Restaurant & Brewery','Bocks',6.8,0,3.6,'A very malty beer with a fair amount of residual sweetness. The hop character is subdued, with a delicate aroma and just enough bitterness to balance the sweet finish. This beer is intended to be consumed at a leisurely pace, since it has some strength.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9941,'Black Forest MaiBock',null,'United States','Black Forest Brew Haus','Bocks',7.5,0,3.98,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5853,'Alfa Lentebok',null,'Netherlands','Alfa Bierbrouwerij B.V.','Bocks',6.5,0,3.53,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8450,'Kalinkin',null,'Russian Federation','Stepan Razin Brewery','Bocks',7,0,3.54,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3084,'Copper Mtn Maibock',null,'United States','Silver City Brewing Co. / Silver City Restaurant & Ale House','Bocks',7.2,0,3.92,'22',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9886,'Spring Bock',null,'United States','Kutztown Tavern','Bocks',6.2,0,3.68,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9648,'Landwehr Heller Bock',null,'Germany','Landwehr-Bräu - Privatbrauerei Wörner','Bocks',6.6,0,3.97,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (131,'Celebrator','/img/131.jpg','Germany','Privatbrauerei Franz Inselkammer KG / Brauerei Aying','Bocks',6.7,0,4.37,'“Almost black with a very slight red tone, a sensational, festive foam and truly extraordinary fragrance that at first summons up visions of greaves lard. The first taste is of mild fullness with an accompanying coffee tone, which becomes more dominant with the aftertaste. There is very little of the sweetness that is frequently to be tasted with doppelbock beer.” The Ayinger Celebrator has been ranked among the best beers of the world by the Chicago Testing Institute several times and has won numerous medals.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (387,'Salvator Doppel Bock',null,'Germany','Paulaner Brauerei GmbH & Co. KG','Bocks',7.9,0,3.95,'This unfiltered bottom fermented double bock beer has been brewed for over 375 years--always adhering to the original recipe. The taste is unmistakable, with its smooth chocolate flavor, robust dark caramel maltiness and a light note of hops--providing a nice intensity on the palate.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (779,'Korbinian',null,'Germany','Bayerische Staatsbrauerei Weihenstephan','Bocks',7.4,0,4.21,'Our Korbinian, the full-bodied, dark Doppelbock with light brown foam, wins beer-lovers over with a balance of fruity hints of plums and figs, a dark malt aroma - reminiscent of toffee, nuts and chocolate. Its roasted flavour goes well with smoked meat and fish as well as venison and poultry. Brewed according to our centuries-old brewing tradition on the Weihenstephan hill.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (871,'Birra Moretti La Rossa',null,'Italy','Birra Moretti (Heineken)','Bocks',7.2,0,3.66,'Formerly Moretti La Rossa Birra Doppio Malto',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1230,'EKU 28',null,'Germany','Kulmbacher Brauerei AG','Bocks',11,0,4,'A super-strong Bock, but not an Eisbock.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (115,'Butthead Doppelbock',null,'United States','Tommyknocker Brewery','Bocks',8.2,0,3.69,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (991,'Autumnal Fire',null,'United States','Capital Brewery','Bocks',7.8,0,4.07,'With a deep copper hue and rich malty flavor this renowned doppelbock warms like burning embers of a mid-autumn fire as the nights grow cooler. You may be tempted to share, but keep this Fire for yourself. It’s that good!',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3606,'Weltenburger Kloster Asam-Bock',null,'Germany','Klosterbrauerei Weltenburg','Bocks',6.9,0,4.13,'The Weltenburger Asam Bock owes its name to the ingenious, baroque painter and master builder Cosmas Damian Asam. The malt-stressed goat exudes light roasted aromas that give a hint of coffee. Friends and connoisseurs appreciate it especially for its strong-sweet, very aromatic and persistent taste until the finish. With its 6.9% alcohol content, it is the strongest beer from the Weltenburger family.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1012,'St. Victorious',null,'United States','Victory Brewing Company - Downingtown','Bocks',7.6,0,4.08,'Limited seasonal draft only release. Doppelbock brewed w/ smoked 2-row German malt from Bamberg.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2214,'Urbock 23°',null,'Austria','Brauerei Schloss Eggenberg','Bocks',9.6,0,3.65,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2963,'Blonde Doppelbock',null,'United States','Capital Brewery','Bocks',7.8,0,3.87,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (932,'Tucher Bajuvator Doppelbock',null,'Germany','Brauerei Tucher Brau','Bocks',7.2,0,4.13,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6149,'Deep Water Dopplebock',null,'United States','Thomas Creek Brewery','Bocks',7,0,3.54,'30 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2890,'Sled Dog Dopplebock',null,'United States','Wagner Valley Brewing Co.','Bocks',8.5,0,3.72,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (998,'Dopple Bock',null,'United States','Sprecher Brewing Company','Bocks',7.85,0,3.86,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (989,'Dark Doppelbock',null,'United States','Capital Brewery','Bocks',7.8,0,4.08,'Dark Doppelbock pays tribute with an assortment of smooth toasted malt flavors brewed for a rich brown colored, full-flavored experience.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5702,'Navigator',null,'United States','Ballast Point Brewing Company','Bocks',8.9,0,3.81,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9131,'Sled Dog Trippel Bock',null,'United States','Wagner Valley Brewing Co.','Bocks',10,0,4.09,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1080,'Sudwerk Doppel Bock',null,'United States','Sudwerk Brewing Company','Bocks',8,0,3.79,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3690,'Sixtus',null,'Italy','Brauerei Forst AG','Bocks',6.5,0,3.71,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3397,'Hofbräu Maibock (Urbock)',null,'Germany','Hofbräuhaus München','Bocks',7.2,0,3.91,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (202,'Mai-Ur-Bock',null,'Germany','Einbecker Brauhaus AG','Bocks',6.5,0,3.8,'“Ready for May?” In spring, the Einbecker brew-masters brew a particular special beer, the Einbecker Mai-Ur-Bock. This pleasantly-bitter refreshment is only available in the spring – as long as supplies last.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3744,'Spaten Maibock / Premium Bock',null,'Germany','Spaten-Franziskaner-Bräu','Bocks',6.5,0,3.79,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7359,'Holsten Maibock',null,'Germany','Hanseatische Getränke-Industrie (HGI) Holsten-Brauerei AG','Bocks',7,0,2.86,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2413,'Bock-Bier',null,'Germany','Mahr''s Bräu','Bocks',6.5,0,3.8,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9392,'Altenmünster Maibock',null,'Germany','Allgäuer Brauhaus AG','Bocks',7.5,0,3.73,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1610,'Mad Brewer Maibock',null,'United States','Church Brew Works','Bocks',7,0,4.01,'The Mad Brewer Maibock was the Silver Medal winner at the 1999 and 2000 Great American Beer FestivalÔ in the German Bock category. In celebration of our second silver medal in a row f or this beer, we are bringing the Mad Brewer Maibock out at an unseasonal time. A bock beer is required by German law to start at 17°Plato. For those who are interested, °Plato is a measurement of the sugar content before fermentation. It is a very malty lager beer with medium hop bitterness. A maibock is a light colored bock beer. A Maibock is very similar to a Helles/pale bock,. Maibocks we originally brewed for the coming of spring, hence the name Mai (German for May). The Mad Brewer Maibock is fairly light in color. It is similar in color to our Pipe Organ Pale Ale, but very different in character. Don''t let it get you though, it''s a very strong beer at about 7% alcohol. It has a very clean and malty nose. The hop bitterness is evident, but not dominant. The Mad Brewer Maibock will finish quite full and have a delicate sweetness.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7532,'St. Magnus Heller Bock',null,'Germany','Allgäuer Brauhaus AG','Bocks',7,0,3.4,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2969,'Klosterbräu Maibock Hell',null,'Germany','Brauerei-Gaststätte Klosterbräu','Bocks',7,0,4.46,'Diese Spezialität wird im Februar/März eingebraut und kann vom Kenner ab April genossen werden. Gezapft wird ein heller, untergäriger Bock, ausgeprägt vollmundig und süffig im Geschmack.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7025,'Non-Denominator Doppel Bock',null,'United States','Church Brew Works','Bocks',8.1,0,3.93,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7556,'Arbor Brewing Terminator Doppelbock',null,'United States','Arbor Brewing Company','Bocks',8.5,0,3.78,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9754,'Taps Doppelbock',null,'United States','Taps Fish House & Brewery','Bocks',7.5,0,3.87,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1887,'Invigorator Doppelbock',null,'United States','Free State Brewing Co.','Bocks',0,0,3.92,'This doppel is started with a base of Pilsen malt. It is colored and flavored by caravienne, caramunich and special-B malts. A large portion of Munich malt is used for its distinctly German flavor and aroma, as well as a little aromatic malt. Finally, there is some carapils to add to the full body. It is also flavored with moderate amounts of Yakima Perle and German Hallertau hops to balance the malty sweetness. Though the IBU level is pretty high, this is not a hoppy beer. It''s just that it takes a lot of hops to balance out such a malty beer. (O.G. 20.5P/1082. Hops - 46 IBUs)',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7860,'Dopplebock',null,'United States','Morgan Street Brewery','Bocks',6.3,0,3.76,'Our version has a very strong maltiness, with very little to no hop aroma. There are very toasty notes in this darker bock version. The mouth feel is full bodied, with moderately low carbonation. This beer is available late in the year until early spring. It is definitely a winter warmer. Doppelbock is brewed especially for those that love a nice roasty beer, through and through.

25 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3201,'Aviator Dobbelbock',null,'United States','Anacortes Brewery & Rockfish Grill','Bocks',8.4,0,3.83,'This bold and big bodied double strong bock is dark and malty with good hop character from German Tettnang and Hallertau varieties. A meal in a glass!',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7985,'Hancock Old Gambrinus Beer Dark',null,'Denmark','Hancock Bryggerierne','Bocks',9.8,0,3.18,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4531,'St. Martin Dunkler Doppelbock',null,'Germany','Aktienbrauerei Kaufbeuren AG','Bocks',7.5,0,4.03,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1435,'Brand Dubbelbock',null,'Netherlands','Brand Bierbrouwerij','Bocks',7.5,0,3.72,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4037,'Elevator Procrastinator Dopplebock',null,'United States','Elevator Brewery & Draught Haus','Bocks',7.5,0,3.75,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2769,'Storyteller Doppelbock',null,'United States','Oak Pond Brewing Company','Bocks',6,0,3.73,'Storyteller Doppelbock is brewed with the same attention to detail, consistency and love of tradition that weaves through generations that the revered storytellers of German culture nurtured. We use a blend of North American and European malts, delicately hopped with an imported variety. It is cold conditioned for a full ten weeks for flavor that is rich in complexity yet smooth and clean. Like a good tale told before the warm hearth as the sun burns down the day, the nutty and toasted flavors of this brew eases the transition from hectic day to satisfied night. At 6% alcohol by weight, it’s a surprisingly smooth lager and goes down easily.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3047,'Invader Dopplebock',null,'United States','Valkyrie Brewing','Bocks',0,0,3.61,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8650,'Lunator',null,'Sweden','Grebbestad Bryggeri','Bocks',7.9,0,3.67,'Brewed during the first full moon night of the year. Then it is slowly matured for some months before the release, which is a sign of spring.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3088,'Schmucker Doppel-Bock Dunkel',null,'Germany','Privat Brauerei Schmucker Ober-Mossau KG','Bocks',8,0,3.92,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6528,'Monteith''s Doppelbock',null,'New Zealand','Monteith''s Brewing Co.','Bocks',7,0,3.57,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7578,'Carolus, Der Starke',null,'Germany','Binding-Brauerei AG','Bocks',7.5,0,4.07,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8806,'Steiner Dunkler Doppelbock',null,'Germany','Schlossbrauerei Stein Wiskott GmbH & Co. KG','Bocks',7,0,0,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4109,'Troegenator',null,'United States','Tröegs Brewing Company','Bocks',8.2,0,3.96,'Monks had fasting figured out. No food? No problem. Just drink a Double Bock. Thick and chewy with intense notes of caramel, chocolate and dried stone fruit, ‘Nator (as we call him) serves as a tribute to this liquid bread style.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (99,'Spaten Optimator',null,'Germany','Spaten-Franziskaner-Bräu','Bocks',7.6,0,3.91,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (776,'Samichlaus Classic Bier',null,'Austria','Brauerei Schloss Eggenberg','Bocks',14,0,4.09,'The once strongest beer in the world is back! Brewed only once a year on December 6. Samichlaus is aged for 10 months before bottling. This beer is perhaps the rarest in the world. Samichlaus may be aged for many years to come. Older vintages become more complex with a creamy warming finish. Serve with hardy robust dishes and desserts, particulary with chocolates, or as an after dinner drink by itself. Brewed under the exclusive licence of Feldschlösschen-Hürlimann-Holding, Switzerland.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2732,'Consecrator Doppelbock',null,'United States','Bell''s Brewery - Eccentric Café & General Store','Bocks',8,0,3.85,'A traditional doppelbock fermented with an old world lager yeast. Reddish brown in color, with a mild hop profile, Consecrator is a well balanced, full bodied beer with a smooth, malty finish.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2899,'Andechser Doppelbock Dunkel',null,'Germany','Klosterbrauerei Andechs','Bocks',7.1,0,4.31,'mouthcoating and velvety, strong and yet pleasantly malty – a powerful, robust body. At the same time, it develops an easily recognisable sweetness, embraced in roasted cocoa and a light, bitter hoppiness.

Concluding with a powerful punch, this Doppelbock departs with a lingering aftertaste of quality plain chocolate. A strong Doppelbock that embodies the centuries old Benedictine brewing tradition, sip by delicious sip.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2864,'Augustiner Bräu Maximator',null,'Germany','Augustiner-Bräu Wagner KG','Bocks',7.5,0,3.95,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1661,'Doppel-Hirsch',null,'Germany','Der HirschBrau/Privatbrauerei Höss','Bocks',7.2,0,3.87,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2863,'Allgäuer Cambonator Doppelbock',null,'Germany','Allgäuer Brauhaus AG','Bocks',7.2,0,3.89,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6584,'Löwenbräu Triumphator',null,'Germany','Löwenbräu AG','Bocks',7.6,0,3.91,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7904,'Schokolade Bock',null,'United States','Millstream Brewing Company','Bocks',6,0,3.99,'Just in time for the holidays is our special treat. A dark and chewy bock beer. Around November you''ll find ''chocolate bock'' on tap down at the brewery.

No other beer has a more pure and intense malt character as a true Bock. Many large breweries in the U.S. have diluted the original strength of this beer, but we make the real thing. The body of this beer is rich, making it a good beer to warm up to during those "special" Iowa winters. The blackened malt that we use in it gives the brew a slight hint of chocolate. Its a smooth brew, having been lagered for over a month in our cellars, in true bock style.

25 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2250,'Creemore Springs UrBock',null,'Canada','Creemore Springs Brewery Limited','Bocks',6,0,3.65,'Bock beers gained notoriety in Munich back in 1612. All the Bavarian nobles were drinking fashionable northern ales known as Einbeck Bier. So Duke Maximillian I of Munich hired his own northern brewmaster, who created a lager similar in character but superior in taste. It won back the local aristocrats. Inspired by his entrepreneurial spirit we started brewing our own urBock – rich, ruby-hued beer with subtle, dark roasted flavours. It’s an aristocratic beer but rest assured, you needn’t be a Duke to enjoy it.

28 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5119,'Holsten Festbock',null,'Germany','Hanseatische Getränke-Industrie (HGI) Holsten-Brauerei AG','Bocks',7,0,3.34,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6340,'Huber Bock Beer',null,'United States','Minhas Craft Brewery','Bocks',5.5,0,3.17,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1934,'Schneider Aventinus Weizen-Eisbock',null,'Germany','Weisses Bräuhaus G. Schneider & Sohn GmbH','Bocks',8.2,0,4.29,'Aventinus has been known to be the most intense and complex Wheat-Doppelbock in the world. This was the case in the past, but not anymore... Recently, Hans Peter Drexler, Brewmaster at G. Schneider & Sohn, heard some stories about some extra special Aventinus resulting from some partial freezing during a cold winter transport in the 1930''s. He decided to recreate this classic "mistake" to further concentrate Aventinus in a modern, controlled facility. Thus, the Aventinus Eisbock was reborn. Prost!

Georg Schneider VI, 6th Generation Brewer',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1401,'Hermannator',null,'Canada','Vancouver Island Brewing','Bocks',9.5,0,3.98,'Brewed in limited batches each year, Hermannator Ice Bock was first introduced by Hermann, one of our original Brewmasters, during the holiday as a unique gift to his closest friends and customers. Crafted at 9.5% abv, using a signature blend of chocolate and caramel malts, this German Eisbock is slowly cold aged in our cellar for over 3 months.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9966,'Double Ice Bock',null,'United States','Southampton Publick House','Bocks',18,0,4.01,'Southampton Double Ice Bock is based off of a traditional German-style Bock beer. This German lager beer is rich and malty and brewed to an alcohol strength of 6-7%. “Ice Bock” is produced when a Bock beer is partially frozen in order to increase it’s alcohol content. In this process, some of the water content turns to ice, effectively strengthening the flavor and alcohol of the beer. We take this process one step further. After the initial freezing, the beer is decanted off the ice and frozen a second time. The resulting beer is a deceptively smooth and amazingly strong lager.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (101,'Samuel Adams Winter Lager','/img/101.jpg','United States','Boston Beer Company (Samuel Adams)','Bocks',5.6,0,3.6,'Festive Bock with Spices.

Winter Lager''s rich malt notes and accents of cinnamon, ginger, and orange peel are just the right companion for decking the halls, your holiday table, your fridge, your hand... You get the picture, no matter what or how you celebrate, do it with a Winter Lager.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1352,'Shiner Bock','/img/1352.jpg','United States','Spoetzl Brewery','Bocks',4.4,0,3.2,'Tip back a bock. Brewed with rich roasted barley malt and German specialty hops, this lightly hopped American-styled dark lager always goes down easy. Originally a seasonal beer, fans have demanded it year-round since 1973.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1252,'Michelob AmberBock',null,'United States','Anheuser-Busch','Bocks',5.2,0,2.89,'Michelob AmberBock is brewed using 100% malt including dark-roasted black and caramel malts and all-imported hops.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2565,'Uff-da',null,'United States','New Glarus Brewing Company','Bocks',6.7,0,3.84,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2272,'St. Nikolaus Bock Bier',null,'United States','Pennsylvania Brewing Company','Bocks',6,0,3.97,'Munich and various roasted malts give it a very malty, rich flavor with a hint of burnt flavor. 100% imported Hallertau hops, moderate bitterness and aroma.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1070,'Spring Bock',null,'United States','Saint Arnold Brewing Company','Bocks',6.9,0,3.63,'An authentic, copper colored, German-style Bock, celebrating the coming of spring. This big, deeply flavored lager has been aged to create a smooth, malty taste with a hint of sweetness. A light addition of German hops balances the malt flavor.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3835,'Pandora''s Bock',null,'United States','Breckenridge Brewery','Bocks',7.5,0,3.45,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1873,'Ur-Bock Dunkel',null,'Germany','Einbecker Brauhaus AG','Bocks',6.5,0,3.72,'At the first sip it is smooth and full-bodied, at the second sip the true rich, strong roasted malt aroma of Einbecker Ur-Bock unfolds. The dark barley-malt brewed refreshment from the Einbecker original recipe.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7714,'Noche Buena',null,'Mexico','Cervecería Cuauhtémoc Moctezuma, S.A. de C.V.','Bocks',5.9,0,3.39,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9175,'Flötzinger Bräu Josefi Bock',null,'Germany','Flötzinger Bräu/Privatbrauerei Franz Steegmüller','Bocks',7.5,0,3.84,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (872,'Chouffe-Bok 6666',null,'Belgium','Brasserie d''Achouffe','Bocks',6.66,0,3.78,'CHOUFFE BOK 6666 is a seasonal beer brewed especially for the Netherlands. The "Bok" beers traditionally appear on the Dutch market at the end of September. CHOUFFE BOK 6666 stands out thanks to its coppery robe, its fresh, fruity nose and a pleasant roundness in the mouth, ending with a hint of bitterness.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (664,'Aass Bock',null,'Norway','Aass Brewery','Bocks',6.5,0,4.01,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9465,'Dreher Bak',null,'Hungary','Dreher Brewery','Bocks',7.3,0,3.76,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2809,'Moza Bock Beer',null,'Guatemala','Cervecería Centro Americana, S.A.','Bocks',5,0,3.08,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1418,'Amstel Bock',null,'Netherlands','Amstel Brouwerij B. V.','Bocks',7,0,3.34,'1983 - Amstel Bockbier
1996 - Amstel Herfstbock
2003 - Amstel Bock',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8416,'Faxe Fest Bock',null,'Denmark','Royal Unibrew A/S','Bocks',7.7,0,3.41,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8814,'Split Rock Bock',null,'United States','Lake Superior Brewing Company','Bocks',6.2,0,3.61,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6160,'Velvet Hammer Bock',null,'United States','Great Dane Pub & Brewing Company (Downtown)','Bocks',6.8,0,3.93,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1408,'IJBok',null,'Netherlands','Brouwerij ''t IJ','Bocks',6.5,0,3.66,'Our bokbier that rings in the autumn every year. Dark and full-bodied, but not as sweet as you might expect. The fine, light brown head holds for a long time while the dark, black-brown beer releases aromas of the roasted grains, a bit of coffee and dark fruit. The aftertaste is pleasantly dry.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5864,'Hertog Jan Bockbier',null,'Netherlands','Arcense Stoombierbouwerij (Hertog Jan Brouwerij)','Bocks',6.5,0,3.61,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5888,'Brand Imperator',null,'Netherlands','Brand Bierbrouwerij','Bocks',6.5,0,3.49,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5904,'Budels Bock',null,'Netherlands','Budelse Brouwerij B.V.','Bocks',6.5,0,3.51,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6582,' Bock Bier',null,'Germany','Hofbrauhaus Berchtesgaden','Bocks',0,0,3.95,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6445,'Hartmann Bockbier',null,'Germany','Brauerei Gasthof Hartmann','Bocks',7,0,4.63,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7383,'Urbock',null,'Namibia','Namibia Breweries Limited','Bocks',7,0,3.92,'Hansa Urbock',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2727,'Point Bock',null,'United States','Stevens Point Brewery','Bocks',5.2,0,3.27,'The origin of Point Bock beer can be traced back to 1938. Production was discontinued in 1942 to be returned after WWII in 1945. Since that time, for more than 55 years, Point Bock was brewed yearly.
This recipe was discovered in the archives by brewmaster Gabe Hopkins – a traditional bock with toasty malt sweetness, full-bodied flavor, and a rich roasted aroma.

Enjoy this unique taste of history…Bock is Back!',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7759,'Will-Brau Ur-Bock',null,'Germany','Hochstiftliches Brauhaus','Bocks',6.2,0,3.81,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3029,'Capricator Bock',null,'United States','Smoky Mountain Brewery & Restaurant','Bocks',6.3,0,3.84,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5852,'Alfa Bokbier',null,'Netherlands','Alfa Bierbrouwerij B.V.','Bocks',6.5,0,3.37,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6168,'Kaiser Bock',null,'Brazil','Cervejaria Kaiser','Bocks',6,0,3.04,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7562,'Sidewinder Holiday Bock',null,'United States','Sweetwater Tavern & Brewery','Bocks',7.5,0,3.93,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9929,'Porpora',null,'Italy','Birrificio Lambrate','Bocks',8,0,3.71,'Hoppy bock beer, bright red in colour with ruby – red tinge. Taste of caramel and herbal hoppy notes are followed by scents dried fruit and a well balanced sweetness of malt and bitterness of a big amount of hops.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4650,'Berliner Kindl Bockbiere',null,'Germany','Berliner Kindl Brauerei','Bocks',6.5,0,2.96,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3223,'Boundary Bay Dunkles Bock',null,'United States','Boundary Bay Brewery & Bistro','Bocks',0,0,4.13,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9944,'Lambrate',null,'Italy','Birrificio Lambrate','Bocks',7,0,3.22,'Its name comes from Lambrate district, so called because it originally rose along the bank of the Lambro river.

Bock beer, with amber colour and ruby–red tinge. Aroma has floral notes followed by chestnut honey and caramel. Taste is slightly fruity with honey aftertaste ,sweet and slightly bitter finish.

INGREDIENTS
Water
Malt (Pilsner, Munich, CaraMunich)
Hop (Centennial, Willamette)
Yeast',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6855,'Bock',null,'Germany','Klosterbrauerei Neuzelle GmbH','Bocks',6.2,0,3.16,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8673,'Raspberry Brown',null,'United States','Lost Coast Brewery and Cafe','Bocks',6.5,0,3.48,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1086,'Kodiak Brown Ale',null,'United States','Midnight Sun Brewing Co.','Bocks',5,0,3.68,'Rugged yet smooth, Kodiak Brown Ale balances caramel and roasted malts with enticing Northwest hops. Perle and Willamette hops accent without overpowering this American brown ale''s intrepid maltiness. The result is uniquely delicious.

24 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (649,'Ipswich Dark Ale',null,'United States','Ipswich Ale Brewery','Bocks',6.3,0,3.89,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4541,'Kick-Ass Brown',null,'United States','C.H. Evans Brewing Company','Bocks',5,0,4.01,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5522,'Diamond Knot Brown Ale',null,'United States','Diamond Knot Brewery','Bocks',5.6,0,3.52,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9532,'Doryman''s Dark Ale',null,'United States','Pelican Pub & Brewery','Bocks',6.2,0,3.81,'33 lovibond',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1161,'Indian Brown Ale',null,'United States','Dogfish Head Craft Brewery','Bocks',7.2,0,4.12,'the color of an American Brown, the caramel notes of a Scotch Ale, and the hopping regiment of an India Pale Ale. We dry-hop the Indian Brown Ale in a similar fashion to our 60 Minute IPA and 90 Minute IPA. This beer is brewed with Aromatic barley and organic brown sugar.

50 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1339,'Hazelnut Brown Nectar','/img/1339.jpg','United States','Rogue Ales','Bocks',5.6,0,4.1,'Rogue''s Pacman Yeast & Free Range Coastal Water.

14 Plato
33 IBU
73.6 AA
36 L',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1924,'Best Brown Ale',null,'United States','Bell''s Brewery - Eccentric Café & General Store','Bocks',5.8,0,3.85,'A smooth, toasty brown ale, Best Brown is a mainstay in our fall lineup. With hints of caramel and cocoa, the malt body has the depth to stand up to cool weather, but does not come across as heavy. This balancing act is aided by the generous use of American hops.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2296,'Moose Drool Brown Ale',null,'United States','Big Sky Brewing Company','Bocks',5.1,0,3.72,'It''s chocolate brown in color with a creamy texture. A malty beer with just enough hop presence to keep it from being too sweet. The aroma mostly comes from the malt with a hint of spice added by the hops. Moose Drool is brewed with pale, caramel, chocolate, and whole black malts; and Kent Goldings, Liberty, and Willamette hops.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (184,'Old Brown Dog',null,'United States','Smuttynose Brewing Company','Bocks',6.7,0,3.94,'Old Brown Dog has been cited as a classic example of the “American Brown Ale” style of beer. Compared to a typical English Brown Ale, Old Brown Dog is fuller-bodied and more strongly hopped.

18 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (146,'Brown Ale',null,'United States','Brooklyn Brewery','Bocks',5.6,0,3.65,'This is the award-winning original American brown ale, first brewed as a holiday specialty, and now one of our most popular beers year-round. Northern English brown ales tend to be strong and dry, while southern English brown ales are milder and sweeter. Brooklyn Brown Ale combines the best of those classic styles and then adds an American accent in the form of a firm hop character and roasty palate. A blend of six malts, some of them roasted, give this beer its deep russet-brown color and complex malt flavor, fruity, smooth and rich, with a caramel, chocolate and coffee background. Generous late hopping brings forward a nice hop aroma to complete the picture. Brooklyn Brown Ale is full-flavored but retains a smoothness and easy drinkability that has made it one of the most popular dark beers in the Northeast.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2894,'Ellie''s Brown Ale',null,'United States','Avery Brewing Company','Bocks',5.5,0,3.9,'17',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3914,'Cabin Fever',null,'United States','New Holland Brewing Company','Bocks',6.5,0,3.7,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (117,'Maple Nut Brown Ale',null,'United States','Tommyknocker Brewery','Bocks',4.5,0,3.44,'A touch of Maple Syrup is added to each barrel of our award winning Maple Nut Brown Ale to impart a roasted sweetness. This addition balances the nut flavor produced by Munich, caramel and chocolate malts used in the brewhouse, producing a drinkable brown ale.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4536,'20" Brown',null,'United States','Cascade Lakes Brewing Co.','Bocks',5.3,0,3.63,'5.3',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7497,'Missouri Brown Dark Ale',null,'United States','Trailhead Brewing Co','Bocks',0,0,3.49,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5200,'Anniversary Ale',null,'United States','Charlie & Jake''s Brewery & Grille','Pale Ales',0,0,3.54,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3721,'Sunnyside Pale',null,'United States','Snipes Mountain Microbrewery & Restaurant','Pale Ales',4.6,0,3.61,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3080,'Clear Creek Pale Ale',null,'United States','Silver City Brewing Co. / Silver City Restaurant & Ale House','Pale Ales',5,0,3.44,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1199,'Old Inlet Pale Ale',null,'United States','Homer Brewing','Pale Ales',5,0,3.61,'An American-style pale ale with hints of fruit and flowers from Cascade hops.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (954,'Islander Pale Ale Dry-Hopped',null,'United States','Maritime Pacific Brewing Company','Pale Ales',0,0,4.17,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4564,'Southampton Pale Ale',null,'United States','Southampton Publick House','Pale Ales',5.2,0,4.1,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7960,'Electra Lite',null,'United States','Red Car Brewery and Restaurant','Pale Ales',4.42,0,3.46,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8490,'Gold Dollar Pale Ale',null,'United States','The Brew Brothers','Pale Ales',0,0,3.4,'A full bodied, American-Style pale ale. Dry & crisp, this beer has a distinct hop flavor with citrus & tropical overtones.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7852,'Yellowjacket Pale Ale',null,'United States','Skagit River Brewery','Pale Ales',3.5,0,3.39,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8550,'7 "C''s" American Pale Ale',null,'United States','Great Dane Pub & Brewing Company (Downtown)','Pale Ales',0,0,4.1,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4711,'Burton-on-Trent Pale Ale',null,'United States','Faultline Brewing Company','Pale Ales',4.3,0,3.66,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9835,'Old Fort Howard Pale Ale',null,'United States','Titletown Brewing Company','Pale Ales',6.5,0,3.95,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7912,'Downtown Lites Honey Ale',null,'United States','Milwaukee Ale House','Pale Ales',4.8,0,3.06,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6425,'Olde Peninsula Tornado Pale Ale',null,'United States','Olde Peninsula Brewpub & Restaurant','Pale Ales',0,0,3.9,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8749,'Pleasanton Pale Ale',null,'United States','Main Street Brewery','Pale Ales',5.3,0,3.74,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8092,'JT Schmid''s Honey Ale',null,'United States','JT Schmid''s Restaurant & Brewery','Pale Ales',5.8,0,3.12,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8506,'Liberty Pole Pale Ale',null,'United States','The Grumpy Troll Restaurant and Brewery','Pale Ales',6,0,3.67,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4412,'Pinnacle Peak Pale Ale',null,'United States','Pinnacle Peak Patio Steakhouse & Microbrewery','Pale Ales',0,0,3.65,'A real American Pale Ale, golden-copper in color, with an assertive hoppiness and a floral, citrusy aroma, medium body and a slightly dry finish.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5589,'Ginseng Pale Ale',null,'United States','KettleHouse Brewing Co. (Southside Taproom)','Pale Ales',5.5,0,3.6,'Ginseng Pale Ale is the beer most likely to fly under the radar. Those who love it become loyal drinkers, unable to choke down anything other. Around here we say drink one of these and it’ll keep you up all night. Interpretation is strictly personal. Larry Evans, one of Missoula’s own, supplies us with the ginseng.

20 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6738,'Cold Shivers Pale Ale',null,'United States','Rockslide Brewery & Pub','Pale Ales',6.2,0,3.28,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3810,'Utah Pale Ale',null,'United States','Desert Edge Brewery','Pale Ales',4,0,3.63,'A very light amber colored, unfiltered ale, balanced bitterness and an extreme amount of hop flavor and aroma.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4070,'Thompson Pale Ale',null,'United States','Snowshoe Brewing Company','Pale Ales',5.5,0,3.23,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6832,'Krook''s Mill',null,'United States','Manayunk Brewery and Restaurant','Pale Ales',5.3,0,3.55,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8216,'Augusta Tannhauser Pale Ale',null,'United States','Augusta Brewing Company','Pale Ales',0,0,3.45,'This copper colored ale is our flagship beer, made primarily from American hops. Quite possibly the perfect Pale Ale.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4150,'Max Pale',null,'United States','Max Lager''s Wood-Fired Grill & Brewery','Pale Ales',0,0,3.95,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4424,'Prescott Pale Ale',null,'United States','Prescott Brewing Company','Pale Ales',0,0,3.48,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7886,'Katy Trail Pale Ale',null,'United States','Flat Branch Pub & Brewery','Pale Ales',0,0,3.67,'Katy Trail is named after the trail paralleling the Missouri River. This is an American pale ale that is amber colored, with a balance of malt and hop flavor. The subtle citrus aroma is from the American Cascade hop.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3917,'Harvest Pale Ale',null,'United States','Ice Harbor Brewing Company','Pale Ales',6.3,0,3.77,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4207,'V.F.W. Light',null,'United States','Beach Chalet Brewery and Restaurant','Pale Ales',4.8,0,2.85,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7023,'Grove St. Pale Ale',null,'United States','Harper''s Restaurant & Brewpub','Pale Ales',5.6,0,3.7,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4370,'Pinnacle Peak Pale Ale',null,'United States','Harmon Restaurant & Brewery','Pale Ales',4.2,0,3.4,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7687,'Hopgarden Pale Ale',null,'United States','J.J. Bitting Brewing Company','Pale Ales',6,0,4.12,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5320,'Pale Ale',null,'United States','Oasis Brewing Co.','Pale Ales',0,0,3.72,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4389,'Elysian Fields Pale Ale',null,'United States','Elysian Brewing Company','Pale Ales',4.8,0,3.92,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6473,'Bonaventure Pale Ale',null,'United States','Bonaventure Brewing','Pale Ales',5.5,0,3.48,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4165,'Park Trail Ale',null,'United States','Park Tavern','Pale Ales',0,0,2.94,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5928,'Holy Grail Pale Ale',null,'United States','Blind Tiger Brewery & Restaurant','Pale Ales',0,0,3.67,'This light copper-colored ale has a floral aroma from dry hopping, medium-high bitterness, medium body and finishes slightly malty.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3785,'Red Rock Pale Ale',null,'United States','Red Rock Brewing Company','Pale Ales',4,0,3.53,'American style Pale Ale, medium body, copper colored, medium bitterness, medium to low maltiness, very sessionable, brilliantly filtered, very well balanced with hops and malts. Columbus Hops give our moderately bitter Pale Ale an outstanding finish making it the perfect bittersweet partner to our burgers, pizzas or sausage grinder.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5714,'Minocqua Pale Ale (MPA)',null,'United States','Minocqua Brewing Company','Pale Ales',5.4,0,3.41,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2517,'Colonel Paris Pale Ale',null,'United States','The Blue Ridge Brewing Co.','Pale Ales',4.5,0,3.57,'Colonel Paris Pale Ale is our take on an Englsh Style medium bodied offering. We use strong hop bitters combined with low malt to bring you a brew with ''sweet character''. To round out the smooth process we combine a secret blend of English and American Hops.

37 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4826,'Pale Rider Ale',null,'United States','Capitol City Brewing Company','Pale Ales',0,0,3.6,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8142,'Peninsula Pale Ale',null,'United States','Mackinaw Brewing Company','Pale Ales',0,0,3.53,'Don’t let it’s light looks fool you, this American Style Pale Ale is a connoisseur’s delight with it’s bold hop and floral aroma. Great with BBQ or Buffalo wings, it’s a match made in heaven…',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3285,'Bumbl''n Bubbas Buzz''n Brew',null,'United States','Northwoods Brewpub and Grill','Pale Ales',5.5,0,2.44,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2021,'Boundary Bay Harvest Ale',null,'United States','Boundary Bay Brewery & Bistro','Pale Ales',5.6,0,3.47,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7711,'Sandstone Pale Ale',null,'United States','Lake Superior Brewing','Pale Ales',0,0,3.68,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7648,'Biscuit City Pale Ale',null,'United States','Martha''s Exchange','Pale Ales',0,0,3.7,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8726,'400 Honey Ale',null,'United States','Titletown Brewing Company','Pale Ales',5,0,3.33,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6240,'American Pale Ale',null,'United States','Back Road Brewery','Pale Ales',5,0,3.38,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4534,'Rooster Tail Ale',null,'United States','Cascade Lakes Brewing Co.','Pale Ales',5.2,0,3.41,'5.2',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4814,'St. Croix Maple Ale',null,'United States','St. Croix Brewing Company, LLC','Pale Ales',6,0,2.78,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3290,'Prairie Pale Ale',null,'United States','Little Apple Brewing Company','Pale Ales',6.6,0,3.56,'Brewer favorite! This is our hoppiest beer of our flagships. English hops are used with a dash of American hops creating a wonderful hint of citrus complexity. Complimented by a mild, sweet yet full body with the slightest hint of caramel. A well-balanced IPA. Cheers!

62 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5645,'Brogden Meadow Pale Ale',null,'United States','Krogh''s Restaurant And Brewpub','Pale Ales',5.3,0,3.46,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9775,'American Pale Ale',null,'United States','Copper Creek Brewing Co.','Pale Ales',0,0,3.34,'This beer is pale copper in color with a medium-light body. Brewed with five different hop varieties, its aroma is very floral and inviting. The mildly malty flavor of this beer is nicely rounded by its complex hoppy finish.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3225,'Alembic Pale Ale',null,'United States','Elliott Bay Brewing Co.','Pale Ales',0,0,3.68,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3532,'Firehouse Pale Ale',null,'United States','Vino''s Brewpub','Pale Ales',5,0,3.6,'Medium-bodied amber ale, lightly fruity with hop aroma.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2179,'Grand Canyon Rattlesnake Beer',null,'United States','Oak Creek Brewing Co.','Pale Ales',5,0,2.86,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4503,'McGuire''s Light Ale',null,'United States','McGuire''s Irish Pub','Pale Ales',4.2,0,2.76,'This popular light ale is the lightest of the McGuire''s beers. McGuire''s Old Fashioned Ale is similar to but a step up from ordinary American factory beer.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9903,'Table Rock Pale Ale',null,'United States','Amos Howard''s Brew Pub','Pale Ales',4.4,0,3.97,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6191,'Precision Pale Ale',null,'United States','Main Street Brewery & Lamppost Pizza','Pale Ales',4.6,0,3.66,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8765,'Powder Day Pale Ale',null,'United States','Gore Range Brewery','Pale Ales',0,0,3.35,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (946,'Prime Time Pale Ale',null,'United States','Big Time Brewery & Alehouse','Pale Ales',0,0,3.87,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7476,'California Kind Pale Ale',null,'United States','Beach Chalet Brewery and Restaurant','Pale Ales',5.3,0,3.22,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1109,'Polar Pale Ale',null,'United States','Broken Tooth Brewing','Pale Ales',5.6,0,3.9,'Polar Pale is honey-golden in color and capped with a persistent white head. Its aroma whispers softly of hops...in tones of apricot, citrus and spice. Dry and balanced in body, lots of late addition hops keep the bitterness down but the hop aroma and flavor high. It finishes clean and dry with the lingering interplay of mild malt body and citrusy dry hops.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5063,'Houdini ESP',null,'United States','Asheville Pizza and Brewing Co.','Pale Ales',5.9,0,3.83,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4674,'Tipperary Pale Ale',null,'United States','Moylan''s Brewery','Pale Ales',5,0,3.75,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1593,'Pipe Organ Pale Ale',null,'United States','Church Brew Works','Pale Ales',4.3,0,3.22,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2914,'Prickly Pear Pale Ale',null,'United States','Lewis & Clark Brewing Company','Pale Ales',5.5,0,4,'Brewed with an emphasis on hops, the combination of Montana pale ale , crystal, and dextrin malts provide the setting for a smooth, balanced pale with great body. The addition of plenty of Northwest hops both in the kettle and a nice dose of dry hopping create a virtuoso hop performance. Named for the Prickly Pear Cactus found in the North Helena Valley and encountered by Lewis & Clark as they portaged around the Great Falls of the Missouri, this beer is actually brewed with real Prickly Pear Cactus.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9222,'Ape Hanger Ale',null,'United States','Middle Ages Brewing Co., Ltd.','Pale Ales',4.7,0,3.41,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3359,'Copperhead American Pale Ale',null,'United States','Snoqualmie Falls Brewing Company & Taproom','Pale Ales',5.3,0,3.94,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8942,'Colorado Kind Ale',null,'United States','Mountain Sun Pub & Brewery','Pale Ales',0,0,3.76,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (324,'McNeill''s Champ Ale',null,'United States','McNeill''s Brewery','Pale Ales',5.5,0,3.66,'Champ Ale is a West Coast style pale ale. Also somewhat citrusy, it has notes of concord grapes both in the flavor and the nose. Made from a blend of British and domestic malts, it has a light red or pale rose color and very high drinkability.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (953,'Islander Pale Ale',null,'United States','Maritime Pacific Brewing Company','Pale Ales',5,0,3.74,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4708,'Oliver''s Ironman Pale Ale',null,'United States','Pratt Street Ale House','Pale Ales',6.2,0,3.69,'A bronze colored ale made with pale ale malt and fine English hops. High alcohol can stand up to a hearty Ploughman''s Lunch.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4861,'Blind Tiger Pale Ale',null,'United States','Barley Island Brewing Company','Pale Ales',4.8,0,3.44,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6687,'Pull Chain Pail Ale',null,'United States','Milwaukee Ale House','Pale Ales',5,0,3.6,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9477,'Punjabi Pale Ale',null,'United States','Coopersmith''s Pub & Brewing','Pale Ales',7.2,0,3.77,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1001,'Carrabassett Pale Ale',null,'United States','Casco Bay Brewing Co.','Pale Ales',4.2,0,3.73,'Our flagship, this beer defines the classic, American-Style Pale Ale. We looked to the Pacific Northwest, rather than England, for our inspiration and our ingredients. Utilizing malt, hops, water, and most importantly yeast from the USA allowed us to create a balanced, highly drinkable beer. It''s no accident that the Carrabassett Pale Ale is our top-selling beer, year after year.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1399,'Piper''s Pale Ale',null,'Canada','Vancouver Island Brewing','Pale Ales',5,0,3.41,'Piper’s Pale Ale was named in honour of Canadian war hero Piper James C. Richardson who was lost during the battle of the Somme during WWI. Awarded a Victoria Cross for his acts of bravery, we were inspired by his dedication and sacrifice to our country. Piper Richardson braved the trenches and began to play his bagpipes, inspiring the troops into battle with fury and determination. After assisting a wounded comrade back to safety and escorting enemy prisoners, he realized he had left his pipes behind and was lost in action while attempting to retrieve them. In Piper’s memory, we salute his bravery and toast in his honour!',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2896,'Extra Pale Ale',null,'United States','Dillon Dam Brewery','Pale Ales',0,0,3.48,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7397,'Pump Station Pale Ale',null,'United States','C.H. Evans Brewing Company','Pale Ales',5.2,0,3.73,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5742,'Scorpion Pale Ale',null,'United States','Moab Brewery','Pale Ales',4,0,3.39,'Although this pale ale is mild in color, look out! It has six hop additions to tantalize the senses. But beware, it is known as "The Ale That Stings!"',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8375,'Triple 7 Marker Pale Ale',null,'United States','Triple 7 Restaurant and Brewery','Pale Ales',5.6,0,3.66,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5828,'Flying Pig Extra Pale Ale',null,'United States','Blue Star Brewing Company','Pale Ales',5,0,3.37,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4871,'JP Ale',null,'United States','South Street Brewery','Pale Ales',5.2,0,3.72,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5172,'Grizzly Peak Pale Ale',null,'United States','Grizzly Peak Brewing Company','Pale Ales',5.2,0,3.7,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4391,'Barley''s Pale Ale',null,'United States','Barley''s Brewing Company','Pale Ales',0,0,3.82,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1064,'Pale Ale',null,'United States','Live Oak Brewing Company','Pale Ales',5,0,3.83,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5582,'Fresh Bongwater Hemp Ale',null,'United States','KettleHouse Brewing Co. (Southside Taproom)','Pale Ales',5,0,3.76,'Formerly Fresh Bongwater Pale Ale

Fresh Bongwater Hemp Ale is made with Montana grown barley and Canadian grown industrial hemp making it a smooth drinking light ale. The hemp seeds lend a slight nutty flavor to the beer but don’t worry; there is no measurable THC in this brew (a local Missoula lab actually sat around and tested this). Caramel malts are added to enhance head retention and contribute sweetness. Great for parties where mass appeal is desired.

22 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7483,'Dicks Pale Ale',null,'United States','Dick''s Brewing Company','Pale Ales',5,0,3.44,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6521,'Al''s Cask Ale',null,'Canada','C''est What?','Pale Ales',4.6,0,3.86,'A balanced pale ale with citrus aromas dominated by Cascade hops.

38 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4363,'Golden Ale',null,'United States','Climax Brewing Company','Pale Ales',0,0,3.67,'According to the brewery "a creamy American pale ale." (Whatever that means.)',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6176,'Full Moon Pale Ale',null,'United States','Harvest Moon Brewery & Cafe','Pale Ales',5.6,0,3.67,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4743,'Redeye Ale',null,'United States','Tampa Bay Brewing Co.','Pale Ales',5.5,0,3.55,'American amber ale made using 2-row, Munich, Crystal, and a touch of Roasted malt for the signature reddish hue. This ale is seasoned with Columbus boiling hops and Cascade in the finish.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4752,'One Night Stand Pale Ale',null,'United States','Tampa Bay Brewing Co.','Pale Ales',5.2,0,3.5,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7505,'Quarrymen Pale Ale',null,'United States','Bloomington Brewing Company','Pale Ales',5.5,0,3.5,'A classic, American-style pale ale. Cascade finishing hops contribute to this beer’s well-defined hop flavor and aroma.

34 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3470,'City Pale Ale',null,'United States','City Brewing Company, LLC','Pale Ales',5.5,0,3.27,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4573,'Prescription Pale',null,'United States','Magnolia Pub & Brewery','Pale Ales',5.1,0,3.68,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7328,'Paradise Pale Ale',null,'United States','Oggi''s Pizza & Brewing Co.','Pale Ales',4.8,0,3.29,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7446,'Molson Stock Ale',null,'Canada','Molson Coors Canada','Pale Ales',5,0,2.81,'A traditional all malt ale with a fairly strong ale taste.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3297,'Wild Fly Ale',null,'United States','Yellowstone Valley Brewing Co.','Pale Ales',5.9,0,3.34,'The Wild Fly is a full-bodied malty light amber-colored beer.

Like the popular Adams fly, the Wild Fly beer shares its wide-spread appeal, distinctive and gentle appearance, and overall elegance.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (276,'Pale Ale','/img/276.jpg','United States','Sierra Nevada Brewing Co.','Pale Ales',5.6,0,4.05,'Generous quantities of premium Cascade hops give the Pale Ale its fragrant bouquet and spicy flavor.

37 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6518,'Dale''s Pale Ale','/img/6518.jpg','United States','Oskar Blues Grill & Brew','Pale Ales',6.5,0,3.9,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (39,'Alpha King','/img/39.jpg','United States','3 Floyds Brewing Co.','Pale Ales',6.66,0,4.26,'A bold yet balanced American Pale Ale with slight caramel sweetness and aggressive citrus hoppiness. This is our flagship beer.

68 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (751,'420 Extra Pale Ale','/img/751.jpg','United States','SweetWater Brewing Company','Pale Ales',5.4,0,3.66,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (195,'Mirror Pond Pale Ale','/img/195.jpg','United States','Deschutes Brewery','Pale Ales',5,0,3.91,'40

170 calories per 12 oz serving',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (225,'Burning River',null,'United States','Great Lakes Brewing Co.','Pale Ales',6,0,3.96,'A toast to the Cuyahoga River Fire! For rekindling an appreciation of the Great Lakes region’s natural resources (like the malt and hops illuminating this fresh Pale Ale). Crisp and bright, with refreshing flickers of citrus and pine that ignite the senses (not our local waterways).',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5753,'Fire Rock Pale Ale','/img/5753.jpg','United States','Kona Brewing Co.','Pale Ales',5.8,0,3.64,'Fire Rock Pale Ale is crisp, refreshing “Hawaiian-style” pale ale. Its signature copper color results from the unique blend of specialty roasted malts. The pronounced citrus-floral hop aroma comes from the liberal amounts of Galena, Cascade & Mt.Hood hops added to each brew.

35 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1213,'Doggie Style',null,'United States','Flying Dog Brewery','Pale Ales',5.5,0,3.66,'Northern Brewer, Cascade, Citra, Simcoe

35 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1158,'Pride & Joy Mild Ale',null,'United States','3 Floyds Brewing Co.','Pale Ales',5,0,3.89,'A smooth, medium-bodied session beer with bright citrus hop aroma and finish. Our interpretation of an American Mild Ale.

42 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6590,'Hazed Hoppy Session Ale',null,'United States','Boulder Beer / Wilderness Pub','Pale Ales',5,0,3.66,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5114,'Great American Restaurants Pale Ale',null,'United States','Sweetwater Tavern & Brewery','Pale Ales',5.5,0,3.54,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2300,'Extra Pale Ale',null,'United States','SLO Brew','Pale Ales',5,0,3.52,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (959,'Pike Pale Ale',null,'United States','Pike Brewing Company','Pale Ales',5.3,0,3.52,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3393,'Carolina Pale Ale',null,'United States','Carolina Brewing Company','Pale Ales',5.6,0,3.42,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2913,'Mt. Tam Pale Ale',null,'United States','Marin Brewing Company','Pale Ales',5.4,0,3.7,'Mt. Tam Pale Ale is our best-selling flagship brew! It has a bright golden color, a medium body and a smooth taste.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3577,'Fish Tale Wild Salmon Pale Ale',null,'United States','Fish Brewing Company / Fishbowl Brewpub','Pale Ales',5.5,0,3.34,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (914,'Saranac American Pale Ale',null,'United States','Matt Brewing Company / Saranac Brewery','Pale Ales',5.5,0,3.44,'32',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3451,'Equinox Ale',null,'United States','Lagunitas Brewing Company','Pale Ales',8.4,0,4.05,'A creamy, pale oat ale hopped up with a huge charge of Equinox and Simcoe hops for a piney, eucalyptusy, cedary, sprucey, foresty blast.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2094,'Pale Ale',null,'United States','Boulevard Brewing Co.','Pale Ales',5.4,0,3.63,'Our Original Beer 1st Keg - Nov. 17, 1989

Boulevard Pale Ale is a smooth, fruity, well-balanced beer with year-round appeal. A variety of caramel malts impart a rich flavor and amber color, while liberal use of whole hops adds zest and aroma. Pale Ale is the first beer we brewed, and continues to be a perennial favorite.

30 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (538,'Fenway Pale Ale',null,'United States','Boston Beer Works - Canal Street','Pale Ales',5.5,0,3.61,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3033,'Appalachian Pale Ale',null,'United States','Smoky Mountain Brewery & Restaurant','Pale Ales',5,0,3.61,'A hoppy, dry ale featuring a fantastic bouquet of Cascade hops. Deep gold in color with a tight, snow white head and pronounced hop flavor.

40 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7952,'Hammerhead Ale',null,'United States','McMenamins','Pale Ales',5.93,0,3.62,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5845,'American Ale',null,'United States','Cricket Hill Brewing Co.','Pale Ales',5,0,3.55,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (513,'Tall Tale Pale Ale',null,'United States','Cambridge Brewing Company','Pale Ales',5.9,0,3.79,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4831,'Pale Ale',null,'United States','Legend Brewing Co.','Pale Ales',6,0,3.59,'Our American style Pale Ale is a hop lover''s dream. We craft this copper colored ale to supply a moderate bitterness and an aggressive hop flavor and aroma. Willamette hops pitched early in the boil give a clean, soft bitterness. Late kettle hops include Northern Brewer, Simcoe, and Chinook for plenty of pungent pine and citrus character. Judicious amounts of four specialty malts add counter and depth. Expect a medium bodied brew with an assertive, complex flavor and a dry finish.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3714,'Philadelphia Pale Ale',null,'United States','Yards Brewing Co.','Pale Ales',4.6,0,3.71,'Not to be boastful, but we honestly believe all others pale in comparison to this one. Crisp and hoppy, Philadelphia Pale Ale is brewed with Pilsner malt and American hops, which impart a surprising citrus aroma.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1370,'X',null,'United States','AleSmith Brewing Company','Pale Ales',5,0,3.94,'This refreshing, light-golden Extra Pale Ale embodies drinkability. AleSmith X pushes the limits by offering a level of flavor not often found in this classic style. Fresh American hops are abundant but carefully balanced by a light, crisp body and smooth bitterness. Notes of citrus and pine combine with a delicate malt sweetness to create a flavorful drinking experience.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2842,'Lord Chesterfield Ale',null,'United States','Yuengling Brewery','Pale Ales',5.4,0,2.95,'One of our heritage beers, Yuengling Lord Chesterfield Ale has as much rich heritage as it does flavor and appeal. Crafted in a unique two-stage European brewing style for enhanced bitterness, it utilizes both conventional kettle hopping and dry hopping after fermentation resulting in a dry sharp finish. Its distinct robust flavor is derived from a delicate combination of sweet maltiness and lingering herbal bitterness.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2185,'Thomas Hooker American Pale Ale',null,'United States','Thomas Hooker Brewing Company','Pale Ales',5.3,0,3.38,'Thomas Hooker American Pale Ale is an extremely vivid, medium-bodied brew. Hooker Pale Ale stresses the crisp bitterness, lingering resin flavor, and aroma of American hops which are characteristic of the most distinctive West Coast Ales. The caramel sweetness of the malt balances the chock-full-of-hops flavor to yield a complex but quite refreshing brew.

35 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1560,'Hurricane Reef Pale Ale',null,'United States','Florida Beer Company','Pale Ales',5.1,0,3.19,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3188,'Gnaw Bone Pale Ale',null,'United States','Oaken Barrel Brewing Company','Pale Ales',6.9,0,3.76,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1079,'Shelter Pale Ale',null,'United States','Dogfish Head Craft Brewery','Pale Ales',5,0,3.39,'Brewed with a premium barley and northwestern Williamette and Columbus hops, Shelter Pale Ale has a fine malt backbone and a slightly nutty flavor. It''s a versatile and quaffable beer.

We named this beer Shelter Pale Ale because we think of a shelter as being a place you come home to. It just made sense for this Dogfish original.

30 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4307,'The Bitter End Pale Ale',null,'United States','Two Brothers Brewing Company','Pale Ales',5.2,0,3.76,'13.5 Plato and 30 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5716,'Sweetgrass American Pale Ale (APA)',null,'United States','Grand Teton Brewing Co.','Pale Ales',6,0,3.75,'Sweetgrass APA is a Pale Ale of distinction! 2009 Great American Beer Festival Gold Medal winner in the American Pale Ale category, this crisp and fragrant beer is hopped and dry-hopped with plenty of Amarillos and Cascades. Try it with any bold, flavorful food to complement its citrusy, resinous spiciness.

60 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (93,'Steel Rail Extra Pale Ale',null,'United States','Berkshire Brewing Company Inc.','Pale Ales',5.3,0,3.56,'Berkshire Brewing Company''s flagship brew is a light colored, medium bodied ale exhibiting exceptional freshness through its 2-Row Pale malt backbone and signature hop flavor and aroma. In the words of renowned beer writer Lew Bryson, Steel Rail EPA is “what the water in heaven oughta taste like.”',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1550,'American Pale Ale',null,'United States','Stoudts Brewing Co.','Pale Ales',5,0,3.72,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (944,'Ruth',null,'United States','Hair Of The Dog Brewing Company / Brewery And Tasting Room','Pale Ales',5,0,3.58,'A light and refreshing American Ale, made with pale malt and crystal hops. She was inspired by my Mother''s Mother, Granny Ruth because of her love and support. Don''t be Ruthless. Have one on Granny.

40 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2065,'Full Moon Pale Ale',null,'Canada','Alley Kat Brewing Company','Pale Ales',5,0,4.06,'Full Moon is a West Coast style pale ale that is both kettle hopped and dry hopped with Centennial and Cascades.The hops provide this ale with a nice citrus-like taste to balance out the caramel malts.

West Coast style pale ales are from a larger category of brews called American Pale Ale (APA). The APA is a cleaner and slightly hoppier version of British Pale Ales using North American hop varieties but everything else remains the same, right down to the balance between malts and hops to the medium body. With the additional hops APA tends to produce nice fruit-like flavours while balancing out the bitterness from the hops used in the process.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4941,'Golden Ale',null,'United States','The St. George Brewing Company','Pale Ales',5.5,0,3.66,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1983,'Pale Ale',null,'United States','Ellicottville Brewing Co.','Pale Ales',5.5,0,3.71,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7513,'Vermont Maple Wheat Ale',null,'United States','Rock Art Brewery','Pale Ales',5.4,0,3.61,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2984,'Hale''s Pale American Ale',null,'United States','Hale''s Ales Brewery & Pub','Pale Ales',4.7,0,3.59,'Formerly Hale''s Pale Ale',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3432,'Ironbound Ale',null,'United States','Iron Hill Brewery & Restaurant','Pale Ales',5.1,0,3.82,'Brewed as a medium-bodied American pale ale with significant hop additions. This celebration of American hop varieties includes Cascade, Columbus, Centennial and Chinook hops.

30 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4947,'Saint Terese''s Dry-Hopped Pale Ale',null,'United States','Highland Brewing','Pale Ales',5.1,0,3.64,'A whole-cone Cascade dry-hop shines with a malty body in our balanced pale ale. The result, a citrusy aroma backed with malt that pairs beautifully with subtle flavors, especially with citrus dressings and seafood.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (608,'Poleeko Pale Ale',null,'United States','Anderson Valley Brewing Company','Pale Ales',5,0,3.82,'Poleeko Pale Ale is an exceptionally flavorful and well-balanced beer. With a bright, citrus hop profile and mild malt flavors reminiscent of English biscuits, the aromas of pink grapefruit and lemon zest compliment the brisk, balanced finish to create a truly refined American Pale Ale.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (406,'ACME California Pale Ale','/img/406.jpg','United States','North Coast Brewing Co.','Pale Ales',5,0,3.47,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2298,'Rio Blanco Pale Ale',null,'United States','Real Ale Brewing Company','Pale Ales',5.2,0,3.44,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5996,'Phoenix Pale Ale',null,'United States','Sly Fox Brewing Company','Pale Ales',5.1,0,3.72,'A bold American Pale Ale brewed with Pale and Crystal malts and hopped with Centennial and Cascade hops from the Pacific Northwest. Copper in color, medium-bodied and spicy.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (630,'Blue Heron Pale Ale',null,'United States','Mendocino Brewing Company','Pale Ales',6.1,0,3.41,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1958,'Extra Pale Ale',null,'United States','Flying Fish Brewing Company','Pale Ales',4.7,0,3.35,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2710,'Black Oak Pale Ale',null,'Canada','Black Oak Brewing Co.','Pale Ales',5,0,3.75,'Our Pale Ale is a cross between a traditional British Pale Ale and the modern American Pale Ale. We use premium Canadian two row malt, three select specialty imported malts and lots of hops. This brew pours a golden amber colour with an aroma blend of citrus and breadiness. It has a medium body, mild carbonation and a refreshing hop finish. This brew was one of the flagship Black Oak beers back when Ken opened up the brewery in 1999.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8170,'Draught Style Pale Ale',null,'United States','Sierra Nevada Brewing Co.','Pale Ales',5,0,3.89,'Our popular draught version of the classic Pale Ale. Lighter in flavor and a little less robust than our Pale Ale. The Draught Style Pale Ale is a very drinkable and flavorful ale. ABV 5.0%',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6202,'Arena Premium Pale Ale',null,'United States','Lake Louie Brewery Company','Pale Ales',5.6,0,3.84,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5559,'Pipers Pale Ale',null,'United States','Dunedin Brewery','Pale Ales',6,0,3.51,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1668,'Tuckerman''s Pale Ale',null,'United States','Tuckerman Brewing Co.','Pale Ales',5.3,0,3.47,'Our flagship Pale Ale, released in 1998, is brewed with specialty malts, some grown in Maine, and four types of hops. After fermentation, it is cold conditioned and dry-hopped in lagering tanks for maximum taste and quality. It is naturally carbonated in the bottle or keg using a German process called “krausening”, where a small amount of fresh fermenting wort is added. This produces a delicate carbonation and superior flavor. From the Mash Tun to store shelves is a 30 day process.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (824,'Steelhead Extra Pale Ale',null,'United States','Mad River Brewing Company','Pale Ales',5.6,0,3.6,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2703,'St-Ambroise Pale Ale',null,'Canada','McAuslan Brewing','Pale Ales',5,0,3.89,'35',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5656,'Special Ale',null,'United States','Lake Superior Brewing Company','Pale Ales',0,0,3.72,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2207,'Paleooza',null,'United States','New Holland Brewing Company','Pale Ales',4.4,0,3.66,'Our classic Pale Ale, with Michigan grown, cascade hops. Bright hoppiness and pleasant aromatics framed with balancing sweetness of pale malts.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6477,'Mad Anthony''s American Pale Ale',null,'United States','Erie Brewing Co.','Pale Ales',5.5,0,3.44,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4733,'Dominion Hop Mountain Pale Ale',null,'United States','Fordham & Dominion Brewing Company','Pale Ales',6.3,0,3.66,'A rich, red ale made in the American Pale Ale style, our Pale Ale has strong hop character, medium, dry finish and floral hop aroma.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3327,'Little Creatures Pale Ale',null,'Australia','Little Creatures Brewing Company','Pale Ales',5.2,0,4.03,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2177,'Singletrack Copper Ale',null,'United States','Boulder Beer / Wilderness Pub','Pale Ales',4.9,0,3.42,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5202,'Ol Woody Pale Ale',null,'United States','Mad Anthony Brewing Company','Pale Ales',0,0,3.51,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8790,'Tavern Ale',null,'United States','Fordham Brewing Company','Pale Ales',6.1,0,3.66,'This American Pale Ale’s hop profile is complimented with an ample amount of malt flavor. It’s cold-conditioned on Fresh whole leaf Cascade hops creating an unmistakable citrus-like aroma.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2206,'Palmetto Pale Ale',null,'United States','Palmetto Brewing Company','Pale Ales',5.2,0,3.51,'The hop flavor and aroma of the truly American Cascade hop distinguishes this beer.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4798,'Pale Ale',null,'United States','Santa Fe Brewing Company','Pale Ales',5.4,0,3.5,'Anything but a typical American Pale, Santa Fe Pale Ale is as full bodied as its most robust English counterparts, while asserting its American origin with a healthy nose resplendent with Cascade and Willamette hops. It finishes with a well-balanced combination of the subtle, almost Pilsner-like maltiness accentuated by the German yeast used to brew this Santa Fe classic, and a hop bite sufficient to leave a lingering smile on the face of any fan of American Pale Ales.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1783,'Pale Ale',null,'United States','Ithaca Beer Company','Pale Ales',5.8,0,3.56,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3805,'Pale Ale',null,'United States','Uinta Brewing Company','Pale Ales',4,0,3.59,'Formerly Cutthroat Pale Ale

This traditional style pale ale has a rich amber color, full malt body and a clean hop finish.

34 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (912,'Berkshire Ale Traditional Pale Ale',null,'United States','Berkshire Brewing Company Inc.','Pale Ales',6.3,0,3.93,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2987,'Hale''s O''Brien''s Harvest Ale',null,'United States','Hale''s Ales Brewery & Pub','Pale Ales',6.5,0,3.72,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4130,'Old Glory American Pale Ale',null,'United States','Great Dane Pub & Brewing Company (Downtown)','Pale Ales',5.5,0,3.74,'In true pioneer spirit we offer this brew as our translation of the British pale-ale style. The full flavor of American Cascade hops pours out at you from every angle, the result of adding hops 5 different times to the brew, including "dry-hopping". An underlying, rich malt flavor supports the crisp and floral hop bitterness to produce a thirst-quenching, flavorful brew.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (592,'Snake River Pale Ale',null,'United States','Snake River Brewing Company & Brewpub','Pale Ales',5.2,0,3.75,'Snake River Pale is an American pale brewed with domestic malt and plenty of Cascade hops. Golden in color, it has a citrusy hop flavor which is followed by a crisp, firmly bitter finish. Pale ale is a great foil to spicy ethnic foods and can also complement a salad well.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5279,'Lost Coast Pale Ale',null,'United States','Lost Coast Brewery and Cafe','Pale Ales',5.2,0,3.59,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1238,'Pale Ale',null,'United States','Pyramid Breweries, Inc.','Pale Ales',5.8,0,3.5,'Brewed only with Cascade hops and styled in the tradition of English Pale Ales, Pyramid’s Pale Ale is sweet and malty, with floral hop aromas.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (328,'Syracuse Pale Ale',null,'United States','Middle Ages Brewing Co., Ltd.','Pale Ales',5,0,3.41,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4850,'Pemi Pale Ale',null,'United States','Woodstock Inn Brewery','Pale Ales',5.7,0,3.32,'Best Pale Ale in the Northeast and second overall in the Country at the United States Beer Tasting Championships. Pale amber in color.

56.4 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2708,'Pale Ale',null,'United States','Blue Point Brewing Company','Pale Ales',5,0,3.74,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8652,'Pale Ale',null,'Canada','Okanagan Spring Brewery','Pale Ales',5,0,3.27,'Clear and copper coloured, it is fruity on the palate and hearty in hops with a nice, round finish. We are honoured that Pale Ale continues to be BC’s most popular craft brew.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1598,'Old Slugger',null,'United States','Cooperstown Brewing Company','Pale Ales',5.5,0,3.47,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4629,'Rabbid Rabbit',null,'United States','3 Floyds Brewing Co.','Pale Ales',7.4,0,3.79,'7.4% ABV, 25 IBUs - This Franco-Belgian style Farmhouse Ale has an effervescent body and a light straw color. Rabbid Rabbit, with it’s light malt body, augmented by spices, is a complex and frothy beverage with a deceptively high alcohol content. March release.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8486,'Saison Dupont Biologique',null,'Belgium','Brasserie Dupont sprl','Pale Ales',5.5,0,3.83,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9074,'Saison',null,'Belgium','Brasserie Ellezelloise','Pale Ales',6.5,0,3.78,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2027,'Saison Elysee',null,'United States','Elysian Brewing Company','Pale Ales',6.72,0,3.92,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2430,'Foret',null,'Belgium','Brasserie Dupont sprl','Pale Ales',7.5,0,4.04,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3564,'BruRm Pale Ale',null,'United States','The Brü Room at BAR','Pale Ales',4.8,0,3.67,'This beer emphasizes hops from beginning to end. The clean herbal aroma comes from dry hopping, that is adding hops after fermentation. For this we chose a variety of hops grown in the Yakima Mountains of Washington. The flavor starts with a delicious malty character and builds quickly to a big hop finish. There is no harsh lingering aftertaste, we have carefully crafted this brew so that the assertive dryness at the end starts to fade just as you are ready for another sip.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1510,'Yards Saison',null,'United States','Yards Brewing Co.','Pale Ales',6.5,0,3.57,'Saisons were originally brewed to keep farmhands happy and hydrated during the warm summer months. True to the style, Yards’ Saison is a semi-unfiltered Belgian style ale brewed with distinctive Belgian yeast. It’s delicate and fruity with a subtle spiciness. Styrian Goldings in the kettle lend a touch of hop to the palate, balancing out this highly drinkable version of the classic style.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3918,'Rivière Rouge',null,'Canada','Micro-brasserie Saint-Arnould','Pale Ales',5.5,0,3.53,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7369,'Saison VOS',null,'United States','Sly Fox Brewing Company','Pale Ales',6.9,0,3.91,'A Belgian style Saison (or Farmhouse Ale) brewed with German Pils malt and hopped with East Kent Goldings. Fermented with a special proprietary yeast which imparts its dry, spicy character. Golden orange in color.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6436,'La Moneuse',null,'Belgium','Brasserie de Blaugies','Pale Ales',8,0,4.11,'La Moneuse is named for A. J. Moneuse (b. 1768), a famous local bandit and gang leader, and ancestor of the brewers’ family. It is a classic "saison" beer by virtue of its strength and its earthy, aged quality. It has a hardy, semi-dry malt character, a fresh but not overpowering hoppiness, abundant yeasty, fruity flavors and a fairly strong, but pleasant and enticing mustiness.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3587,'Saison D''Epeautre',null,'Belgium','Brasserie de Blaugies','Pale Ales',6,0,4.03,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2493,'Saison De Silly',null,'Belgium','Brasserie de Silly S.A.','Pale Ales',5.3,0,3.32,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8529,'Saison Regal',null,'Belgium','Brasserie Du Bocq','Pale Ales',5.5,0,3.59,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (141,'Hennepin','/img/141.jpg','United States','Brewery Ommegang','Pale Ales',7.7,0,4.18,'Hoppy, farmhouse saison with champagne like effervescence; flavors include ginger, spice, orange and toasted grain.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1717,'Saison Dupont','/img/1717.jpg','Belgium','Brasserie Dupont sprl','Pale Ales',6.5,0,4.21,'Brewed at one of Europe''s last farmhouse breweries, Saison Dupont is a 4-star, world classic example of the Belgian Saison style. Blond in color with a big rocky head, Saison Dupont is dry and refreshing. Great with all grilled foods.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8052,'Wayan',null,'Italy','Birrificio Le Baladin','Pale Ales',5.8,0,3.77,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8801,'Jack Russell Jack''s Farmhouse Ale',null,'United States','Jack Russell Brewing Company','Pale Ales',6.7,0,3.97,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1716,'Avec Les Bons Voeux',null,'Belgium','Brasserie Dupont sprl','Pale Ales',9.5,0,4.18,'Les Bons Voeux means best wishes, which is what Brasserie Dupont sends with this very special saison ale brewed for the holidays. Redolently aromatic, rich and velvety. 

Rich gold color, fragrant (lemony with hints of pepper, banana and clove), as all the beers of Dupont are with a full, deep malt richness that lingers on your tongue for what seems the whole holiday season. Considered by some the finest offering from this unparalleled Brewery. “The best Belgian beer, if ever there could be such an award...a sumptuous, seductive 9.5% beer. Because of it’s intensity, I would recommend the novice graduate to this beer. However, if a saison that is starting to lean towards being a triple appeals to you, and if its in season, don’t hesitate.”',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8502,'Buzzin'' Honey Ale',null,'United States','Fox River Brewing Co. at Fratellos Waterfront Restaurant','Pale Ales',0,0,4.11,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1546,'Anglers Ale',null,'United States','Kelleys Island Brewery Restaurant & Bar','Pale Ales',6,0,3.2,'"Tighten your lines, Anglers." This is one brew worth reeling in. A Standard English Bitters, which possesses a medium body, dark copper in color and thick creamy head. Mild and pale ale malts blended with wheat and then dry hopped.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5643,'Pale 31 California Pale Ale',null,'United States','Firestone Walker Brewing Co.','Pale Ales',4.9,0,3.85,'Pale 31 is brewed to exemplify the classic California pale ale style, hence the name honoring the Golden State as the 31st state to be admitted to the Union. Beautiful ﬂoral and citrus hop aromas greet the nose with undertones of lightly toasted malt. Crisp pale and crystal malts oﬀer a hint of sweetness. Subtle hop bitterness oﬀers a refreshing ﬁnish. Perfect for a sunny day at the beach or barbecue with friends, Pale 31 represents the bold yet approachable spirit that embodies our state.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3811,'Third Coast Beer',null,'United States','Bell''s Brewery - Eccentric Café & General Store','Pale Ales',4.8,0,3.47,'Named after our favorite coastline and a tribute to the Great Lakes region, Third Coast Beer is a crisply dry-hopped American Pale Ale. Floral and herbal hop aromas combine with a refreshing bitterness, resulting in a truly quaffable beer.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1657,'XP Pale Ale',null,'United States','Bear Republic Brewing Co.','Pale Ales',5.4,0,3.86,'XP is short for Exception Pale Ale. This light golden pale ale balances the malt and hops for a smooth, drinkable beer that compliments any meal.

2009 California State Fair – SILVER
2008 Colorado State Fair - GOLD
2006 California State Fair – 1st
2003 Real Ale Fest (Chicago) – BRONZE',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1766,'Copperhead Pale Ale',null,'United States','Free State Brewing Co.','Pale Ales',6,0,3.79,'Silver Medal Winner 1997 World Beer Championships - India Pale Ales. 

While walking through a field and enjoying a lazy summer evening, our head brewer Steve stepped on a stick that popped up and nicked his leg. 

Or so he thought, until he found two puncture marks on his ankle. The copperhead bite may have caused a trip to the hospital for Steve, but it also provided just the inspiration he and Chuck needed to name their new beer – yep, one lowly snake in the grass is the namesake of one of our most popular beers. 

53 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1789,'City Steam Blonde On Blonde',null,'United States','City Steam Brewery Café','Pale Ales',6.6,0,3.67,'What can we say about the Blonde on Blonde? Is it the upright way she holds that tray that makes us love her? Or is it the humongous hops sitting on top that gets our bubbles bursting? This PALE ALE was our 2nd beer made available for statewide distribution, and has been a growing hit among Connecticut consumers since 2010. In November of 2012, Blonde on Blonde won 1st place in the Pale Ale catrgory at the Great International Beer Festival in Providence, R.I. It is brewed with German hops for bitterness, Zythos and Cascade hops for aroma. Come try out this award-winning beer fresh on tap, or find it where you can locate it in the region by clicking here. Served short or tall. Oh Mama!',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4964,'Cogsman Ale',null,'United States','Woodstock Inn Brewery','Pale Ales',5.6,0,3.35,'Deep golden in color. Clean, crisp, ale hopped with traditional English hops. A slight fruitiness gives way to hop assertiveness.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6922,'Hooker Pale Ale',null,'United States','Gritty McDuff''s Brewing Company','Pale Ales',0,0,3.95,'Brewed for Rosie''s Restaurant and Pub.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8937,'Saison 1900',null,'Belgium','Brasserie Lefèbvre SA','Pale Ales',6.7,0,3.6,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7980,'Blonde De Noël',null,'Belgium','Brasserie Caulier','Pale Ales',10,0,3.66,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5057,'Fantôme Saison',null,'Belgium','Brasserie Fantôme','Pale Ales',8,0,4.33,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7978,'Fantôme Saison D''Erezée - Hiver',null,'Belgium','Brasserie Fantôme','Pale Ales',8,0,4.03,'Fantome''s winter offering, available December through March or so. Brewer Dany Prignon changes his receipes every year, so we can''t so for sure what this year''s beer will be like, but it is sure to please lovers of Dany''s beers.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2204,'Fantôme De Noel',null,'Belgium','Brasserie Fantôme','Pale Ales',10,0,3.97,'This ever-evolving offering is said to be spiced with honey, caramel, black pepper, coriander and (per usual with Fantôme) a number of other special secret ingredients. A rich, dark-flavored beer with lots of deep-roasted chocolate malt, but still fairly dry, with a hint of sourness at the core. It is very spicy, with some winter spruce flavor in the bargain. The wild yeast sourness also adds to its welcoming character.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6424,'Fantôme Saison D''Erezée - Printemps',null,'Belgium','Brasserie Fantôme','Pale Ales',8,0,4.07,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5051,'Fantôme Pissenlit',null,'Belgium','Brasserie Fantôme','Pale Ales',8,0,4.09,'Saison brewed with dandelions.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1715,'Bière De Miel Biologique',null,'Belgium','Brasserie Dupont sprl','Pale Ales',8,0,3.91,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3392,'Saison De Pipaix',null,'Belgium','Brasserie à Vapeur','Pale Ales',6,0,3.75,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3588,'Bière Darbyste',null,'Belgium','Brasserie de Blaugies','Pale Ales',5.8,0,3.87,'Traditional Belgian ale brewed with fig juice.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9077,'Saison Voisin',null,'Belgium','Brasserie Des Légendes','Pale Ales',5,0,3.36,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5964,'Fantôme Strange Ghost',null,'Belgium','Brasserie Fantôme','Pale Ales',8,0,3.97,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8984,'Fantôme Saison D''Erezée - Été',null,'Belgium','Brasserie Fantôme','Pale Ales',8,0,4.22,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2614,'La Moneuse Spéciale Noël',null,'Belgium','Brasserie de Blaugies','Pale Ales',8,0,3.87,'A special edition of la Moneuse, extra rich for the winter season.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6671,'Chelsea Sunset Red',null,'United States','Chelsea Craft Brewing Company','Pale Ales',5,0,3.59,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (947,'Atlas Amber Ale',null,'United States','Big Time Brewery & Alehouse','Pale Ales',0,0,3.54,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5900,'Budels Oud Bruin',null,'Netherlands','Budelse Brouwerij B.V.','Dark Largers',3.5,0,3.14,'Doesn''t fit to Flanders Oud Bruin beer style category. Fits to Oud Bruin from Netherlands. It means uncomplicated in aroma and taste, low alcohol (usually 2,5% to 3,5% by ABV), semi-dark (amber) to dark lager with dominant sweetness.
Micheal Jackson translates Oud Bruin from Netherlands like Old Brown Lager.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (35,'Twisted Pine Amber Ale',null,'United States','Twisted Pine Brewing Company','Pale Ales',5.3,0,3.41,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9790,'Amber Ale',null,'United States','Triumph Brewing Company','Pale Ales',5,0,3.59,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8034,'Belle Gueule Rousse',null,'Canada','Brasseurs R.J.','Pale Ales',5.2,0,3.35,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5509,'Bozone Select Amber Ale',null,'United States','Bozeman Brewing Company','Pale Ales',5.4,0,3.68,'Bozone Select is the flagship offering from Bozeman Brewing Company. A light amber ale that has a medium malt body gently balanced by a hint of hops for a clean, refreshing finish. Dry hopped with Cascade hops for a pleasant aroma. Made with Pale, Crystal & Vienna malts.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (955,'Nightwatch Dark Amber Ale',null,'United States','Maritime Pacific Brewing Company','Pale Ales',5.5,0,3.58,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9269,'Stony Face Red Ale',null,'United States','Hoppy Brewing Co.','Pale Ales',5.6,0,3.41,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4423,'Liquid Amber',null,'United States','Prescott Brewing Company','Pale Ales',0,0,3.54,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3925,'Mesabi Red',null,'United States','Lake Superior Brewing Company','Pale Ales',6.5,0,3.66,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2693,'North Star Amber',null,'United States','Rock Bottom Restaurant & Brewery','Pale Ales',5,0,3.65,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5173,'Steelhead Red',null,'United States','Grizzly Peak Brewing Company','Pale Ales',5.5,0,3.56,'Malty + smooth with caramel bouquet, light roastiness and mellow finish.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7729,'Hitachino Nest Amber Ale',null,'Japan','Kiuchi Brewery','Pale Ales',6,0,3.86,'A red brown ale brewed with high-kilned malts. The toasty malt sweetness and fragrant aroma hops make this beer a deeper and pleasant brew.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6729,'Trailhead Red',null,'United States','Trailhead Brewing Co','Pale Ales',0,0,3.24,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4725,'Agate Pass Amber',null,'United States','Hood Canal Brewing','Pale Ales',0,0,3.51,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8694,'Old Credit Amber Ale',null,'Canada','Old Credit Brewing Co.','Pale Ales',5,0,3.14,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9519,'Snake Eye Canyon Red Ale',null,'United States','Great Baraboo Brewing Company','Pale Ales',5.2,0,3.55,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2484,'Oak Creek Amber',null,'United States','Oak Creek Brewing Co.','Pale Ales',5.5,0,3.16,'A Silver Medal Winner at the North American Brewers'' Association competition. A deep- copper colored medium-bodied American amber ale. Its fresh flavor is smooth and carefully balanced with a nice mellowness and hint of caramel malt balanced by medium hop bitterness. lt is an all malt beer that is naturally carbonated.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4679,'Red Wing Red Ale',null,'United States','Rohrbach Brewing Company (Brewpub)','Pale Ales',4.6,0,3.46,'13 IBU, 18 SRM',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5741,'Derailleur Ale',null,'United States','Moab Brewery','Pale Ales',4,0,3.75,'Change gears for a smooth downhill ride! This well-balanced ale has six types of malt and four hearty hop additions. The end result - a deep amber color with a rich and complex profile.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5927,'Amber',null,'United States','Blind Tiger Brewery & Restaurant','Pale Ales',0,0,3.43,'This is the fastest selling beer style in the U.S. Our version is dark copper in color, with a fruity aroma and a slightly happy finish. One very popular favorite!',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8771,'Fire Boat Amber',null,'United States','Fire Station 5 Brewing Company','Pale Ales',5.5,0,2.92,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1046,'Amber Ale',null,'United States','Glacier Brewhouse','Pale Ales',5.67,0,3.86,'Our Amber is malty, medium bodied, and balanced out with hints of chocolate and caramel from the crystal malt, Munich malt, and roast barley. Cascade hops complement the malt sweetness perfectly.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6651,'Annie''s Amber Ale',null,'United States','Grinders High Noon','Pale Ales',5.5,0,3.02,'The first beer produced here, and it’s still a favorite! A smooth, malty amber taste highlighted with caramel notes and just the right amount of hops.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5642,'Squatters Emigration Amber Ale',null,null,'Utah Brewers Cooperative','Pale Ales',4,0,3.52,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5591,'Lake Missoula Amber',null,'United States','KettleHouse Brewing Co. (Southside Taproom)','Pale Ales',5.5,0,3.75,'Lake Missoula® Amber is “In Search of Cooler Times” with our efforts to continually use less energy as a brewery. It was a bronze medal winner at the 2000 & 2009 NABA awards and is a robust “beer drinker’s” amber. Amber in color with slight residual sweetness from caramel malts balanced well with Golding hops.

24 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9236,'Amber Ale',null,'United States','Thunderhead Brewing Company','Pale Ales',0,0,3.52,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4166,'Olmsted Amber',null,'United States','Park Tavern','Pale Ales',0,0,3.23,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6230,'Amber Ale',null,'United States','District ChopHouse & Brewery','Pale Ales',5.4,0,3.63,'The fiery color and unique thirst-quenching hop profile gives this Amber Ale a flavor all its own. Hand-selected Cascade hops from the Yakima Valley provide a distinct citrus flavor, while still allowing a subtle malty sweetness to show through.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6837,'Albion Amber',null,'United States','Marin Brewing Company','Pale Ales',5.4,0,3.17,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4929,'PGA (Perfectly Great Amber)',null,'United States','Snoqualmie Falls Brewing Company & Taproom','Pale Ales',4,0,3.6,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7493,'Red Thistle Ale',null,'United States','Golden Valley Brewery and Pub','Pale Ales',5.4,0,3.28,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8368,'Ellis Island Amber',null,'United States','Ellis Island Casino & Brewery','Pale Ales',6,0,3.01,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8143,'Red 8 Ale',null,'United States','Mackinaw Brewing Company','Pale Ales',0,0,3.1,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8697,'Redhawk Ale',null,'United States','Rockyard Brewing','Pale Ales',5,0,3.32,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4095,'Amber Ale',null,'United States','SLO Brew','Pale Ales',0,0,3.55,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8066,'JT Schmid''s Emil''s Amber Ale',null,'United States','JT Schmid''s Restaurant & Brewery','Pale Ales',5.2,0,3.18,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8870,'Fly Fisher Red',null,'United States','Gore Range Brewery','Pale Ales',5.5,0,3.44,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4275,'Reel Amber',null,'United States','Port Townsend Brewing Company','Pale Ales',5.2,0,3.47,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4442,'Manzanita Red',null,'United States','Prescott Brewing Company','Pale Ales',5.1,0,3.47,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (607,'Fat Tire Amber Ale','/img/607.jpg','United States','New Belgium Brewing Company','Pale Ales',5.2,0,3.61,'Fat Tire Amber is the easy-drinking Amber Ale born in Colorado from New Belgium Brewing Company, a certified B-Corp.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3711,'Censored',null,'United States','Lagunitas Brewing Company','Pale Ales',6.75,0,3.75,'35 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1655,'Red Rocket Ale',null,'United States','Bear Republic Brewing Co.','Pale Ales',6.8,0,4.07,'Red Rocket Ale is a bastardized Scottish style red ale that traces it''s origins to our homebrew roots. This full bodied and hoppy brew finishes on the palate with sweet, caramel malt flavors.

2009 California State Fair - SILVER
1999 Great American Beer Festival® Other Strong Ales or Lagers - SILVER
1998 Great American Beer Festival® Other Strong Ales - SILVER',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (410,'Ruedrich''s Red Seal Ale','/img/410.jpg','United States','North Coast Brewing Co.','Pale Ales',5.4,0,3.92,'Malt and hops are beautifully married in this full-bodied, copper-red Pale Ale. Red Seal is generously hopped for a long, spicy finish. An excellent accompaniment to grilled meats and rich sauces.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (623,'Boont Amber Ale',null,'United States','Anderson Valley Brewing Company','Pale Ales',5.8,0,3.86,'rich, crystal malts give this beer a deep copper hue and contribute a slight caramel sweetness while the herbal, spicy bitterness from carefully selected whole-cone hops impart a crisp, clean finish. Hints of sun toasted grain, toffee, and fruity esters compliment the mellow, noble hop aroma.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2526,'Gaelic Ale',null,'United States','Highland Brewing','Pale Ales',5.8,0,3.83,'Chinook, Willamette and Cascade

32 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (691,'California Amber',null,'United States','Ballast Point Brewing Company','Pale Ales',5.5,0,3.8,'Formerly Calico Copper Amber Ale',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (363,'American Amber Ale',null,'United States','Rogue Ales','Pale Ales',5.3,0,3.85,'Rogue''s Pacman Yeast and Free Range Coastal Water.

13º PLATO
53 IBU
73.1 AA
33º Lovibond',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (213,'Full Sail Amber',null,'United States','Full Sail Brewing Company','Pale Ales',6,0,3.77,'Our Amber is a sweet, malty, medium-bodied ale with a spicy, floral hop finish. It''s brewed with 2-row Pale, Crystal and Chocolate malts. And we hop it with Mt. Hoods and Cascades. We''re as proud of it today as we were back in ''89. And over the years it''s earned more than 25 Gold Medals. Not that we''re keeping track or anything.

IBU 31',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1597,'St. Rogue Red',null,'United States','Rogue Ales','Pale Ales',5.1,0,3.8,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3453,'Revolution Red',null,'United States','Martha''s Exchange','Pale Ales',0,0,3.72,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4734,'J. Paul''s 1889 Amber Ale',null,'United States','Fordham & Dominion Brewing Company','Pale Ales',4.7,0,3.44,'J.Paul''s 1889 Amber Ale is brewed exclusively for Capital Management and Development which owns J. Paul''s, Paolos, Old Glory, Cin Cin, Georgetown Seafood and Sweet Georgia Brown restaurants where this beer is featured on draft.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8613,'Reggie''s French River Red',null,'United States','Lily''s Seafood & B.C.','Pale Ales',5.8,0,3.56,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3276,'Red Cedar Ale',null,'United States','Northwoods Brewpub and Grill','Pale Ales',0,0,3,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (987,'Winter Skål',null,'United States','Capital Brewery','Dark Largers',5.8,0,3.67,'A full bodied beer with a warm amber hue showing off its rich malt heritage. Mildly bittered featuring a hop presence that compliments and rounds out the malt overtones.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1964,'Schell''s Dark',null,'United States','August Schell Brewing Company','Dark Largers',4.8,0,3.37,'This beer is dark because the barley is roasted longer– a flavorful lager that everyone will enjoy.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (631,'Red Tail Ale',null,'United States','Mendocino Brewing Company','Pale Ales',6.1,0,3.48,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1663,'Red Nectar',null,'United States','Humboldt Brewing Co.','Pale Ales',5.4,0,3.64,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1065,'Amber Ale',null,'United States','Saint Arnold Brewing Company','Pale Ales',6.2,0,3.57,'Saint Arnold Amber Ale is the brewery''s flagship product and first official brew. A well balanced, full flavored, amber ale, it has a rich, malty body with a pleasant caramel character derived from a specialty Caravienne malt. A complex hop aroma, with a hint of floral and citrus comes from a combination of Cascades and Liberty hops. It has a rich, creamy head with a fine lace. The light fruitiness, characteristic of ales, is derived from a proprietary yeast strain.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (735,'Jamaica Red Ale',null,'United States','Mad River Brewing Company','Pale Ales',6.5,0,3.85,'Columbus, Chinook, Cascade, Willamette, Summit',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1351,'Yuengling Traditional Lager','/img/1351.jpg','United States','Yuengling Brewery','Dark Largers',4.5,0,3.42,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (148,'Lager',null,'United States','Brooklyn Brewery','Dark Largers',5.2,0,3.74,'In the late 1800’s Brooklyn was one of the largest brewing centers in the country, home to more than 45 breweries. Lager beer in the “Vienna” style was one of the local favorites. Brooklyn Lager is amber-gold in color and displays a firm malt center supported by a refreshing bitterness and floral hop aroma. Caramel malts show in the finish. The aromatic qualities of the beer are enhanced by “dry-hopping”, the centuries-old practice of steeping the beer with fresh hops as it undergoes a long, cold maturation. The result is a wonderfully flavorful beer, smooth, refreshing and very versatile with food. Dry-hopping is largely a British technique, which we’ve used in a Viennese-style beer to create an American original.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (909,'George Killian''s Irish Red',null,'United States','Coors Brewing Company (Molson-Coors)','Dark Largers',4.9,0,3.06,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2318,'Toasted Lager',null,'United States','Blue Point Brewing Company','Dark Largers',5.5,0,3.54,'Our flagship and most popular brew, Toasted Lager is the best American amber Lager you’ll ever taste.

To back up that claim, we use six different grains to perfect a balanced flavor of malt and hops, and a special proprietary lager yeast to give Toasted Lager an exceptional, long-lasting smooth finish that’s meant to be enjoyed year-round. Pairs perfectly with fresh seafood...or any food for that matter.

28 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5,'Amber',null,'United States','Abita Brewing Co.','Dark Largers',4.5,2.31,3.48,'Amber is a Munich style lager brewed with crystal malt and Perle hops. It has a smooth, malty, slightly caramel flavor and a rich amber color. Abita Amber was the first beer offered by the brewery and continues to be our leading seller.

17 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (832,'Original Honey Brown Extra Rich Lager (Beer Brewed With Honey)','/img/832.jpg','United States','Genesee Brewing Co. / Dundee Brewing Co.','Dark Largers',4.5,0,3.14,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2219,'Riverwest Stein Beer',null,'United States','Lakefront Brewery, Inc.','Dark Largers',5.68,0,3.8,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2544,'ZiegenBock Amber',null,'United States','Anheuser-Busch','Dark Largers',4.9,0,2.86,'Brewed in Houston, ZiegenBock is a beer of the South. Only available in Texas, this American-style amber lager, offers notes of roasted grains in the aroma and a sweet, smooth taste with a hop finish. The select imported hops and specialty malts create a taste worthy of a 2006 Great American Beer Festival Bronze Medal.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (977,'Wisconsin Amber',null,'United States','Capital Brewery','Dark Largers',5.2,0,3.55,'This rich amber lager is the perfect balance of roasted caramel malts and clean hops flavors, making it a perfect choice for any occasion.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2037,'Rickard''s Red',null,'Canada','Molson Coors Canada','Dark Largers',5.2,0,3.14,'Crafted using three different malted barleys, Pacific Northwest hops and the finest Brewer''s Caramel, Rickard''s Red is exceptionally flavorful with a smooth finish. Enjoy Canada''s favorite red beer with its proud pub heritage served cold in a pint glass.

Brewed using three different malt barleys, Pacific Northwest hops, and the finest Brewer''s Caramel.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1654,'Creemore Springs Premium Lager',null,'Canada','Creemore Springs Brewery Limited','Dark Largers',5,0,3.85,'Lager is made the world over, but Creemore Springs Premium Lager is one of a kind. In all our travels, we''ve never found another like it. From the start, we''ve fire-brewed our flagship beer to be unique. It’s always made with the best ingredients and a strict adherence to traditional brewing methods. It’s just different up here, and so is our lager.

Our unique lager has a brilliant copper colour, overtones of sweet caramel malt and an appealing, well-balanced floral hop character. It''s fire-brewed using the best ingredients and our own spring water.

24 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7330,'Red Oak Amber',null,'United States','Red Oak Brewery','Dark Largers',5,0,3.77,'Red Oak Amber is a Munich Urtyp (Old Style) Lager. We begin the brewing process with custom kilned imported Munich Malt. Red Oak is then hopped with Spalt Noble Hops imported from Bavaria, the oldest hop growing region in the world. Before fermentation we add a yeast strain from Weihenstephen, the oldest brewery in the world, founded before 1040 AD. Weeks of aging gives Red Oak the smooth taste it is known for.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3921,'Point Classic Amber',null,'United States','Stevens Point Brewery','Dark Largers',4.9,0,3.29,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1323,'Sleeman Honey Brown Lager',null,'Canada','Sleeman Breweries Ltd.','Dark Largers',5.2,0,2.97,'Smooth Sleeman Honey Brown Lager is brewed in the tradition of cottage breweries at the turn of the century. Some might think the tradition is outdated; we just think we got it right the first time.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7983,'T.N.T. 6% Strong Malt',null,'Canada','Pacific Western Brewing Company','Dark Largers',6,0,2.53,'Strong malty aroma with sweet notes. If you like an explosion of taste in your mouth, TNT Strong Malt is an amber-coloured manly brew and it is a long-time favourite in B.C. – guaranteed to blow away any thirst.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1914,'1554','/img/1914.jpg','United States','New Belgium Brewing Company','Dark Largers',6,0,3.84,'A surprisingly bright taste and a dry, chocolaty finish -- one evocotive of dark brews enjoyed in Belgian taverns 500 years ago. Not a porter, not a stout -- it''s 1554.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2940,'Leinenkugel''s Creamy Dark',null,'United States','Jacob Leinenkugel Brewing Company','Dark Largers',4.9,0,3.36,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1186,'Blackened Voodoo',null,'United States','Dixie Beer','Dark Largers',5.5,0,3.4,'Rich, malty and smooth like the great German dunkels that inspired it. Dixie Blackened Voodoo Lager balances premium roasted barley malts with Mt. Hood and Cascade hops. The result is a dark, mysterious brew known for its bewitching character and magical spirit!',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1167,'Heineken Dark Lager','/img/1167.jpg','Netherlands','Heineken Nederland B.V.','Dark Largers',5,0,3.25,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2235,'Baltika #4 Original (Dark)',null,'Russian Federation','Baltika Breweries','Dark Largers',5.6,0,3.4,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (698,'St. Pauli Girl Special Dark',null,'Germany','St. Pauli Brauerei C.L. Wilh. Brandt Gmbh & Co.','Dark Largers',4.8,0,3.05,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (710,'Fischer Tradition Amber',null,'France','Brasserie Fischer / Fischer Biere d'' Alsace','Dark Largers',6,0,2.94,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7102,'San Miguel Dark Lager',null,'Philippines','San Miguel Brewery Inc.','Dark Largers',5,0,3.47,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3239,'Snowshoe Red Ale',null,'United States','New Glarus Brewing Company','Pale Ales',5.7,0,3.67,'Settle in with Wisconsin''s Snowshoe Ale. This beer is brewed with a blend of American and German malts. We also infuse generous amounts of hops from Slovenia and the Great Pacific Northwest to add a special note of warmth for your winter evening''s enjoyment. 

Expect this beer to be a beautiful copper-red, with a fruity ale body and a spiced hop finish. Then sit back and rejoice in the season because it''s these Wisconsin winters that keep the whiners out.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6502,'Cinder Cone Red',null,'United States','Deschutes Brewery','Pale Ales',5.5,0,3.91,'55',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6343,'Sundog Amber Ale',null,'United States','New Holland Brewing Company','Pale Ales',5.25,0,3.55,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2350,'Key West Sunset Ale',null,'United States','Florida Beer Company','Pale Ales',4.8,0,3.09,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3589,'African Amber',null,'United States','Mac and Jack''s Brewery','Pale Ales',5.2,0,3.89,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8917,'Drop Top Amber',null,'United States','Widmer Brothers Brewing Company','Pale Ales',5,0,3.41,'Alchemy, Simcoe',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2819,'Winter Ale',null,'United States','Blue Point Brewing Company','Pale Ales',7.7,0,3.5,'Our Winter Ale is a hearty, robust amber ale. We use pale, Vienna, crystal and chocolate malts to create a balanced character of malt and hops with just the right amount of spice to warm you up during the colder months.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4923,'Alleycat Amber',null,'United States','Lost Coast Brewery and Cafe','Pale Ales',5.5,0,3.61,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (737,'Odell Levity Amber Ale',null,'United States','Odell Brewing Company','Pale Ales',5,0,3.8,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3153,'Newport Storm Hurricane Amber Ale',null,'United States','Newport Craft Brewing & Distilling Co.','Pale Ales',5.2,0,3.24,'This first beer from Newport Storm continues to be one of its most popular. The goal was to create a flavorful ale where delicate malt and hop flavor were in perfect balance. To meet this goal, the brewing crew uses North American crystal malt for color and sweetness, and Munich Malt for body and mouthfeel. The perfect amount of spicy Tettenang hops are added for flavor and aroma which compliment the bittering properties of the Magnum hops to round out this session brew.

23 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3148,'Pinstripe Red Ale',null,'United States','Ska Brewing Co.','Pale Ales',5.15,0,3.55,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2417,'Michelob Honey Lager',null,'United States','Anheuser-Busch','Dark Largers',4.9,0,2.48,'We brew our Michelob Honey Lager with European aromatic hops and toasted caramel barley malt for a balanced taste.
What makes this beer really special, however, is the addition of a touch of natural wildflower honey. It all adds up to a just slightly sweet and uniquely soft beer.

21 IBU',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2294,'Ornery Amber',null,'United States','Tommyknocker Brewery','Dark Largers',5.4,0,3.17,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7052,'Rochester Red',null,'United States','Rochester Mills Beer Co.','Dark Largers',6.3,0,3.53,'This deep red colored English-style ale features a rich, malty flavor profile, medium body, and a low level of hop bitterness for a smooth, great tasting, easy to drink beer that pairs well with a wide range of popular food dishes.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9963,'Mojave Red',null,'United States','Indian Wells Brewing Company','Dark Largers',0,0,2.84,'A smooth red lager without the bite. We use four types of specialty-malted barley and two types of hops, Hallertau and Cascade, which are added at the exact point in the brewing cycle to create the ideal quality blend of aroma and taste. We use our own proprietary strain of lager yeast, and all of our beers are brewed with our own on-site natural artesian spring water from the historic Indian Wells Spring. Mojave Red is lagered for several weeks, then finished to our exacting standards.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5196,'Dark Lager',null,'Canada','Waterloo Brewing','Dark Largers',5,0,3.11,'Looks dark, tastes light. It''s Ontario''s favourite dark lager. A dark beer that is slowly brewed with Canadian grown malted barley, specialty coloured malts, imported hops and pure cultured brewers yeast.

Dark lagers are enjoyed all year long, and they''re not as filling as ales. Waterloo Dark will cut some of the heaviness in sauce-based meat dishes. Waterloo Dark is an equally perfect beer to go with appetizers suitable for watching sports games, or used as an actual ingredient when preparing a meal.

Experience what this great dark "light tasting" lager has to offer and why it has won multiple awards at the World Cup of Beer, Canadian Brewing Awards, Ontario Brewing Awards and the Monde Selection International Institute For Quality Selections.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8689,'Staropramen Černý',null,'Czech Republic','Pivovary Staropramen','Dark Largers',4.4,0,3.68,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6187,'Sagres Cerveja Preta (Dark)',null,'Portugal','Sociedade Central de Cervejas','Dark Largers',4.1,0,3.16,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (6614,'U Fleku Dark Lager',null,'Czech Republic','U Fleků Pivovar a Restaurace','Dark Largers',4.6,0,4.26,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (7078,'Bohemia',null,'Portugal','Sociedade Central de Cervejas','Dark Largers',6.2,0,3.33,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (9395,'Lev Black Lion',null,'Czech Republic','Měšťanský pivovar Havlíčkův Brod','Dark Largers',4.5,0,3.43,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4087,'Heineken Oud Bruin',null,'Netherlands','Heineken Nederland B.V.','Dark Largers',2.5,0,2.79,'Doesn''t fit to Flanders Oud Bruin beer style category. Fits to Oud Bruin from Netherlands. It means uncomplicated in aroma and taste, low alcohol (usually 2,5% to 3,5% by ABV), semi-dark (amber) to dark lager with dominant sweetness.

Micheal Jackson translates Oud Bruin from Netherlands like Old Brown Lager.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2532,'Lobster Ale',null,'United States','Belfast Bay Brewing Co.','Pale Ales',5,0,3.49,'Lobster Ale is a copper "Red" ale with a medium hop flavor and aroma. It offers all the qualities of "Red Ale" with subtle levels of fruity-ester flavor and hint of caramel. A slight yeast haze and chill gives Lobster Ale a clear. foamy. rich head. Belfast Bay Brewing Co, is near tile Canadian provinces of New Brunswick and Nova Scotia known for it Red Ale breweries.

When Pat Mullen''s wife suggested that a brewery from Maine should make a beer called Lobster Ale. a user-friendly red ale seemed to be the perfect brew, We scaled back on the heavily hopped formulas our neighbors produce. We then added slight amounts of black and dark crystal grains to produce a smooth. medium hopped brew. The result is a very flavorful and drinkable red ale with an extremely smooth finish.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3997,'Ouisconsing',null,'United States','Central Waters Brewing Co.','Pale Ales',5.4,0,3.58,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (179,'Old Yankee Ale',null,'United States','Cottrell Brewing Co.','Pale Ales',5,0,3.83,'Our flagship brew, a medium bodied, American Amber Ale, that has a great up-front malt taste with a refreshing hop finish. Drown yourself in New England with this outstanding session beer.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2665,'Palmetto Amber',null,'United States','Palmetto Brewing Company','Pale Ales',5.5,0,3.5,'A complex malt character is balanced with just the right amount of hops, resulting in a clean full flavored beer.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (461,'MacTarnahan''s Amber Ale',null,'United States','Portland Brewing Company','Pale Ales',5.1,0,3.48,'Cascade

Still called MacTarnahan''s Amber Ale.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (8579,'German Valley Amber',null,'United States','Long Valley Pub & Brewery','Pale Ales',0,0,3.5,'The town of Long Valley was originally called German Valley after the German immigrants that first settled in and cultivated it''s fertile land. Evidence of these first settlers can still be seen in the skillful stone construction of many of the Valley''s buildings and barns, including the Long Valley Pub and Brewery. The original walls and graves of a 16th century Lutheran church can still be found just across the bridge on Fairview Avenue. The German Valley Amber Ale derives its firebrick red color from a combination of crystal and specially roasted malts. This is an assertive beer with a notable bitterness and respectable strength. Willamette hops are used in generous quantities to make this pleasantly hop-flavored ale.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2895,'Aruba Red',null,'United States','Anheuser-Busch','Dark Largers',4,0,3.08,'Brewed exclusively for the Bahama Breeze Caribbean style restaurant chain.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (1603,'Amber',null,'United States','Bayern Brewing, Inc. / Edelweiss Bistro','Dark Largers',5.3,0,3.46,'Bayern Amber is the beer that started it all in 1987. The beer that put Bayern on the map and had customers asking for more. This Marzen style beer has the rich malt flavor you look for in traditional German beers with a smooth balance of hops on the end.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4677,'Highland Lager',null,'United States','Rohrbach Brewing Company (Brewpub)','Dark Largers',5,0,3.63,'11',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5606,'Gila Monster Amber Lager',null,'United States','Steinhaus Brewing Co.','Dark Largers',0,0,3.28,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (5241,'Auburn Lager',null,'United States','Mad Anthony Brewing Company','Dark Largers',4.6,0,3.4,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3165,'Safari Amber',null,'United States','Anheuser-Busch','Dark Largers',5,0,3.03,'Lager brewed exclusively for the Walt Disney World Resort.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (3460,'Genesee Red Lager',null,'United States','Genesee Brewing Co. / Dundee Brewing Co.','Dark Largers',4.9,0,3.23,null,0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (4131,'Devils Lake Red Lager',null,'United States','Great Dane Pub & Brewing Company (Downtown)','Dark Largers',5.5,0,3.56,'This one-of-a-kind red lager is the unique creation of our brewmaster. Special hop characteristics are brought out through a process called "dry-hopping", where raw hops are added directly to the lagering brew. Experience this smooth blend of slightly sweet malt flavors balanced by the full taste and aroma of the renowned Hallertau hop.',0);
Insert into BEER_SAMPLE (BEERNO,BEERNAME,BEERPIC,COUNTRY,COMPANY,TYPE,ABV,RATING,RATINGBA,NOTE,BEERCNT) values (2084,'Pocono Lager',null,'United States','Lion Brewery, Inc.','Dark Largers',0,0,3.13,null,0);
REM INSERTING into HASHTAG
SET DEFINE OFF;
Insert into HASHTAG (TAGNO,TAGNAME,BEERNO,REVIEWNO) values (71,'해시감자',59,'e8b2df32-8265-466f-a875-70e6d7e97538');
Insert into HASHTAG (TAGNO,TAGNAME,BEERNO,REVIEWNO) values (73,'미쿸맥주',224,'0eb5648b-c0f6-4080-a443-8c81dab40dda');
Insert into HASHTAG (TAGNO,TAGNAME,BEERNO,REVIEWNO) values (56,'해시태그',5,'0e6c913e-e028-49fb-aafc-da7ebd0949b6');
Insert into HASHTAG (TAGNO,TAGNAME,BEERNO,REVIEWNO) values (58,'해시감자',5,'0e6c913e-e028-49fb-aafc-da7ebd0949b6');
Insert into HASHTAG (TAGNO,TAGNAME,BEERNO,REVIEWNO) values (57,'해시태그',5,'0e6c913e-e028-49fb-aafc-da7ebd0949b6');
Insert into HASHTAG (TAGNO,TAGNAME,BEERNO,REVIEWNO) values (59,'존맛탱',5,'0e6c913e-e028-49fb-aafc-da7ebd0949b6');
Insert into HASHTAG (TAGNO,TAGNAME,BEERNO,REVIEWNO) values (69,'미쿸맥주',7,'6828068e-638f-441f-b549-85f381284bb8');
Insert into HASHTAG (TAGNO,TAGNAME,BEERNO,REVIEWNO) values (70,'해시태그',59,'e8b2df32-8265-466f-a875-70e6d7e97538');
Insert into HASHTAG (TAGNO,TAGNAME,BEERNO,REVIEWNO) values (72,'해시감자',224,'0eb5648b-c0f6-4080-a443-8c81dab40dda');
Insert into HASHTAG (TAGNO,TAGNAME,BEERNO,REVIEWNO) values (74,'독일맥주',224,'0eb5648b-c0f6-4080-a443-8c81dab40dda');
Insert into HASHTAG (TAGNO,TAGNAME,BEERNO,REVIEWNO) values (67,'해시태그',30,'6b495ea1-15c8-489e-8974-c870e0579916');
Insert into HASHTAG (TAGNO,TAGNAME,BEERNO,REVIEWNO) values (68,'해시감자',30,'6b495ea1-15c8-489e-8974-c870e0579916');
REM INSERTING into REVIEW
SET DEFINE OFF;
Insert into REVIEW (REVIEWNO,UUID,BEERNO,REVIEWCONTENT,REVIEWPIC,RATING,REGDATE,LIKECNT) values ('e8b2df32-8265-466f-a875-70e6d7e97538','43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce',59,'줄바꿈 개행 테스트<div>개</div><div>행</div><div>테</div><div>스</div><div>트</div><div>입</div><div>니</div><div>다</div><div><a href="/beer/searchbytag?keyword=해시태그">#해시태그</a> <a href="/beer/searchbytag?keyword=해시감자">#해시감자</a>&nbsp;</div><div>해</div><div>시</div><div>태</div><div>그</div><div><br></div><div><br></div>','default',3.5,to_date('20/02/24','RR/MM/DD'),0);
Insert into REVIEW (REVIEWNO,UUID,BEERNO,REVIEWCONTENT,REVIEWPIC,RATING,REGDATE,LIKECNT) values ('0eb5648b-c0f6-4080-a443-8c81dab40dda','43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce',224,'<a href="/beer/searchbytag?keyword=해시감자">#해시감자</a> <a href="/beer/searchbytag?keyword=미쿸맥주">#미쿸맥주</a> <a href="/beer/searchbytag?keyword=독일맥주">#독일맥주</a><br>개행<br>테스트','default',3.5,to_date('20/02/24','RR/MM/DD'),0);
Insert into REVIEW (REVIEWNO,UUID,BEERNO,REVIEWCONTENT,REVIEWPIC,RATING,REGDATE,LIKECNT) values ('6828068e-638f-441f-b549-85f381284bb8','3d7c7732-b516-465d-a417-1eb18eb77793',7,'맛있어요🔥 <a href="/beer/searchbytag?keyword=미쿸맥주">#미쿸맥주</a>','default',3,to_date('20/02/19','RR/MM/DD'),0);
Insert into REVIEW (REVIEWNO,UUID,BEERNO,REVIEWCONTENT,REVIEWPIC,RATING,REGDATE,LIKECNT) values ('ed24be76-db45-45e0-ac29-011d8c02c6e2','43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce',33,null,'default',3,to_date('20/02/21','RR/MM/DD'),0);
Insert into REVIEW (REVIEWNO,UUID,BEERNO,REVIEWCONTENT,REVIEWPIC,RATING,REGDATE,LIKECNT) values ('6a28f859-c2b8-4c09-8701-7758e2a3739c','43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce',34,null,'default',3,to_date('20/02/21','RR/MM/DD'),0);
Insert into REVIEW (REVIEWNO,UUID,BEERNO,REVIEWCONTENT,REVIEWPIC,RATING,REGDATE,LIKECNT) values ('aa848184-071b-41e0-a7b3-8300f7ade0db','43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce',426877,'여러줄 테스트!!<div>여</div><div>러</div><div>줄이</div><div>달</div><div>렸을</div><div>때&nbsp;</div><div>어떻게</div><div>뜨나여</div>','default',3.5,to_date('20/02/24','RR/MM/DD'),0);
Insert into REVIEW (REVIEWNO,UUID,BEERNO,REVIEWCONTENT,REVIEWPIC,RATING,REGDATE,LIKECNT) values ('a6af1268-406e-41de-8de4-e787437cc7e3','43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce',61,'리뷰 개행테스트개<br>행<br>테<br>스<br>트<br>안<br>녕<br>헬<br>로<br>우<br>','default',2.5,to_date('20/02/24','RR/MM/DD'),0);
Insert into REVIEW (REVIEWNO,UUID,BEERNO,REVIEWCONTENT,REVIEWPIC,RATING,REGDATE,LIKECNT) values ('fdf46afc-0977-480f-9c0d-0009c957c277',null,7,null,'default',3,to_date('20/02/14','RR/MM/DD'),0);
Insert into REVIEW (REVIEWNO,UUID,BEERNO,REVIEWCONTENT,REVIEWPIC,RATING,REGDATE,LIKECNT) values ('2f67d77e-b949-4385-abee-0c8cda9ecc4e','3e1ba01e-a3e1-4fba-8a31-d6aead81d0d4',7,'ㅎㅎ 조아요','default',2.5,to_date('20/02/18','RR/MM/DD'),0);
Insert into REVIEW (REVIEWNO,UUID,BEERNO,REVIEWCONTENT,REVIEWPIC,RATING,REGDATE,LIKECNT) values ('b66025e1-1d43-4dca-a3f9-f2d0b15a7e2f','43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce',7,'맛나여','default',3.5,to_date('20/02/18','RR/MM/DD'),0);
Insert into REVIEW (REVIEWNO,UUID,BEERNO,REVIEWCONTENT,REVIEWPIC,RATING,REGDATE,LIKECNT) values ('6b495ea1-15c8-489e-8974-c870e0579916','43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce',30,'<a href="/beer/searchbytag?keyword=해시태그">#해시태그</a> 맛나여 <a href="/beer/searchbytag?keyword=해시감자">#해시감자</a>&nbsp;','default',3.5,to_date('20/02/18','RR/MM/DD'),0);
Insert into REVIEW (REVIEWNO,UUID,BEERNO,REVIEWCONTENT,REVIEWPIC,RATING,REGDATE,LIKECNT) values ('1a58fa5b-4fef-4901-91b8-fde67640688d','43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce',63,'개<br>행<br>테<br>스<br>트','default',2.5,to_date('20/02/24','RR/MM/DD'),0);
REM INSERTING into SEARCHDB
SET DEFINE OFF;
Insert into SEARCHDB (BEERNO,BEERIMG) values (807,'kirin.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (120494,'kloud.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (16273,'kozel.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1499,'kukmin.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1836,'lachouffe.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1862,'leffebrown.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (221,'londonPorter.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (5328,'longboard.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (365571,'subwaymosaicipa.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (2280,'miller.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (412,'oldrasputin.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1256,'paulaner.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (97563,'peanutbuttermilkstout.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (429,'pilsner.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (39435,'punkipa.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (410,'redsealale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (102,'samuel.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (5366,'sanmiguel.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (8128,'suntory.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (10071,'sapporo.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (276,'sierranevada_paleale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (449,'stella.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (88,'stone_ipa.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (275425,'taedonggang.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (31931,'tangerine.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (2176,'tiger.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (767,'tsingtao.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (17141,'urbanwheatale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1541,'victoriabitter.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1530,'xxxx.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (800,'yebisu.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (2762,'OB.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (175423,'hoegaardenRose.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (190730,'mochastout.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (7511,'okinawa.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (8759,'beerlao.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (92928,'llager.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (92893,'lweizen.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (114541,'ldark.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (50578,'litovalmoravan.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1641,'premiumbeer.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (83075,'zahringerhefeweizen.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (935,'warsteiner.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1317,'staropramenlager.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (115552,'grevensteineroriginal.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (52539,'yanjingbeer.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (62476,'5,0originalexport.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (24720,'bluelabelale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (280,'lowenbrau.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (16767,'balihai.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (5798,'louiskriek.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (26244,'louispeche.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (160082,'louisfond.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (7451,'lagoudale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (134703,'degoudalegrandcru.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (13159,'oudegeuzeboon.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (129878,'paljasblond.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1716,'aveclesbonsvoeux.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (12738,'VanDiestFruliStrawberryBeer.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (197183,'citradelictangerineipa.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (275731,'fattirebelgianwhite.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (751,'sweetwater420extrapaleale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (600,'lindemanskriek.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (601,'lindemanscassis.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (6104,'lindemansgueuzecuveerene.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (10482,'monkscafeflemishsourale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (100185,'cuveemamzelle.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (457725,'coopersvintageale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (251571,'sierranevadapaleale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (70471,'chaoticdoubleipa.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (20134,'martenspilsener.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (13889,'tripelvandegarre.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1229,'kapuzinerweissbier.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (388,'paulaner.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (453324,'heverleewitte.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (362972,'reeperbexotischesipa.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (362983,'reeperbblondesweissbier.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (28593,'kaiserdompilsener.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (55207,'kaiserdomhefeweissbiernaturtrub.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (90181,'kaiserdomkellerbierunfiltriert.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (8045,'achelbruintrappist.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (2508,'maredsousbrune.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (175025,'baristachocolatequad.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (131290,'kaguablanc.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (131291,'kaguarouge.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (79680,'willianbrauweizen.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1944,'spatenmunchnerhell.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (334028,'fearmovieloins.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (55191,'5amsaint.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (403,'acmeipa.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (406,'acmepaleale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (2779,'asahi.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (709,'ballastpointbigeye.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (29619,'ballastpointsculpin.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (5701,'ballastpointwahoo.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (2435,'beck.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (55287,'benediktiner.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (22592,'bigwave.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (50423,'blacksheep.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (25625,'blanc.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1212,'bluemoon.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (65,'budweiser.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (10784,'calderaipa.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (2270,'carlsberg.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (8750,'cass.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (7609,'chang.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (2512,'chimayblue.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (7364,'cisk.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (49787,'coedoruri.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (232,'corona.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (15804,'desperados.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (695,'duvel.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (222579,'elvisjuice.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (2434,'erdinger.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (14687,'estrelladamn.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (5753,'firerock.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1946,'franziskaner.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (7813,'gingakogen.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (3968,'goose.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (246,'heineken.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1167,'heinekendark.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (16429,'hitachinoclassicale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (2013,'hitachinonestwhiteale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (89036,'hite.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (248,'hoegaarden.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (832,'honeyBrown.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (160538,'hophouse13.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (8131,'huberweisses.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1670,'indica.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (52429,'inedit.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (89096,'jackhammer.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (426877,'jejuwitale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (52083,'kilkenny.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (266,'kingfisher.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (216036,'arkbehighipa.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (255668,'hugme.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (326018,'dongbinggo.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (258014,'blackswan.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500001,'gangseomildale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500002,'hanriver.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500003,'seoul.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500004,'jeolla.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500005,'seocho.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500006,'standardale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500007,'pellongale.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500008,'slice.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500009,'sunset.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500010,'night.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500011,'HeungBeer.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500012,'ChimliAle.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500013,'Keumgangsan.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500014,'Beakdusan.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500015,'Hallasan.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500016,'fitz.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500017,'terra.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500018,'max.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (500019,'stout.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (36871,'redrock.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1432,'bintang.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (23410,'laoshan.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (976,'singha.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (63536,'adnamsghostship.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1421,'deliriumnocturnum.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (36594,'wailuawheat.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (6906,'clausthaleroriginal.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (1422,'bavaria.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (45380,'dammlemon.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (4299,'oettingerHefeweissbier.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (4291,'oettingerAlkoholfrei.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (229743,'hiteZero.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (242043,'hanaleIislandIpa.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (132406,'kingGoseAle.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (2637,'weisseOriginal.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (41091,'schofferhoferhefeweizengrapefruit.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (27137,'macaubeer.jpg');
Insert into SEARCHDB (BEERNO,BEERIMG) values (52126,'volfasengelmanrinktinis.jpg');
REM INSERTING into USERS
SET DEFINE OFF;
Insert into USERS (UUID,EMAIL,NICKNAME,KAKAOID,USERPIC,JOINDATE) values ('43a0fdb8-4d08-4e07-9b7d-cfbfca4c58ce','pransowaz@nate.com','계란도른자계란도른자','1258694636','/beer/upload/158254184061860e4cefac1c37069576affe0c68a7ad38bf714f3.jpg',to_date('20/02/05','RR/MM/DD'));
Insert into USERS (UUID,EMAIL,NICKNAME,KAKAOID,USERPIC,JOINDATE) values ('3d7c7732-b516-465d-a417-1eb18eb77793','blurryblah@gmail.com','JJH🌊HJD','1272003635','http://k.kakaocdn.net/dn/t8b42/btqA1iLcFpm/h5W0hwtCKwJNXrZ7BgMFv0/img_640x640.jpg',to_date('20/02/11','RR/MM/DD'));
Insert into USERS (UUID,EMAIL,NICKNAME,KAKAOID,USERPIC,JOINDATE) values ('3e1ba01e-a3e1-4fba-8a31-d6aead81d0d4','1janet1@naver.com','ㅇ','1285401854','http://k.kakaocdn.net/dn/ba6AbN/btqAQM7fPXL/k1Pu0EKeVpyhmCI24xJzK0/img_640x640.jpg',to_date('20/02/18','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index SYS_C0011059
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0011059" ON "USERS" ("UUID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011229
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0011229" ON "HASHTAG" ("TAGNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011233
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0011233" ON "REVIEW" ("REVIEWNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011245
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0011245" ON "BEER" ("BEERNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011257
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0011257" ON "BEER_LIKE" ("BLIKENO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011316
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0011316" ON "SEARCHDB" ("BEERNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BEER
--------------------------------------------------------

  ALTER TABLE "BEER" MODIFY ("BEERNAME" NOT NULL ENABLE);
 
  ALTER TABLE "BEER" MODIFY ("COUNTRY" NOT NULL ENABLE);
 
  ALTER TABLE "BEER" MODIFY ("COMPANY" NOT NULL ENABLE);
 
  ALTER TABLE "BEER" MODIFY ("TYPE" NOT NULL ENABLE);
 
  ALTER TABLE "BEER" ADD PRIMARY KEY ("BEERNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BEER_LIKE
--------------------------------------------------------

  ALTER TABLE "BEER_LIKE" MODIFY ("UUID" NOT NULL ENABLE);
 
  ALTER TABLE "BEER_LIKE" MODIFY ("BEERNO" NOT NULL ENABLE);
 
  ALTER TABLE "BEER_LIKE" MODIFY ("REGDATE" NOT NULL ENABLE);
 
  ALTER TABLE "BEER_LIKE" ADD PRIMARY KEY ("BLIKENO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BEER_SAMPLE
--------------------------------------------------------

  ALTER TABLE "BEER_SAMPLE" MODIFY ("BEERNAME" NOT NULL ENABLE);
 
  ALTER TABLE "BEER_SAMPLE" MODIFY ("RATING" NOT NULL ENABLE);
 
  ALTER TABLE "BEER_SAMPLE" MODIFY ("BEERCNT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HASHTAG
--------------------------------------------------------

  ALTER TABLE "HASHTAG" MODIFY ("TAGNAME" NOT NULL ENABLE);
 
  ALTER TABLE "HASHTAG" MODIFY ("BEERNO" NOT NULL ENABLE);
 
  ALTER TABLE "HASHTAG" MODIFY ("REVIEWNO" NOT NULL ENABLE);
 
  ALTER TABLE "HASHTAG" ADD PRIMARY KEY ("TAGNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" MODIFY ("RATING" NOT NULL ENABLE);
 
  ALTER TABLE "REVIEW" MODIFY ("REGDATE" NOT NULL ENABLE);
 
  ALTER TABLE "REVIEW" MODIFY ("LIKECNT" NOT NULL ENABLE);
 
  ALTER TABLE "REVIEW" ADD PRIMARY KEY ("REVIEWNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SEARCHDB
--------------------------------------------------------

  ALTER TABLE "SEARCHDB" MODIFY ("BEERIMG" NOT NULL ENABLE);
 
  ALTER TABLE "SEARCHDB" ADD PRIMARY KEY ("BEERNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("NICKNAME" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("USERPIC" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" MODIFY ("JOINDATE" NOT NULL ENABLE);
 
  ALTER TABLE "USERS" ADD PRIMARY KEY ("UUID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
