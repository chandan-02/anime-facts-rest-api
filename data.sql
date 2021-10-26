CREATE DATABASE anime_facts_api ;
\c anime_facts_api

CREATE TABLE animes(
    anime_id SERIAL PRIMARY KEY NOT NULL,
    anime_name VARCHAR(69) NOT NULL UNIQUE,
    anime_img TEXT NOT NULL
); 

INSERT INTO animes (anime_name,anime_img) VALUES('bleach','https://m.media-amazon.com/images/M/MV5BZjE0YjVjODQtZGY2NS00MDcyLThhMDAtZGQwMTZiOWNmNjRiXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_FMjpg_UX1000_.jpg') ON CONFLICT (anime_name) DO NOTHING;
INSERT INTO animes (anime_name,anime_img) VALUES('black_clover','https://m.media-amazon.com/images/M/MV5BNTAzYTlkMWEtOTNjZC00ZDU0LWI5ODUtYTRmYzY0MTAzYWZlXkEyXkFqcGdeQXVyMzgxODM4NjM@._V1_FMjpg_UX1000_.jpg') ON CONFLICT (anime_name) DO NOTHING;
INSERT INTO animes (anime_name,anime_img) VALUES('dragon_ball','https://m.media-amazon.com/images/M/MV5BMGMyOThiMGUtYmFmZi00YWM0LWJiM2QtZGMwM2Q2ODE4MzhhXkEyXkFqcGdeQXVyMjc2Nzg5OTQ@._V1_FMjpg_UX1000_.jpg') ON CONFLICT (anime_name) DO NOTHING;
INSERT INTO animes (anime_name,anime_img) VALUES('jujutsu_kaisen','https://m.media-amazon.com/images/M/MV5BNzQyYzU3Y2MtOWY2Yy00ZGM2LTg3ZTUtMDJkZTJiMmEzMjYxXkEyXkFqcGdeQXVyMTI2NTY3NDg5._V1_.jpg') ON CONFLICT (anime_name) DO NOTHING;
INSERT INTO animes (anime_name,anime_img) VALUES('fma_brotherhood','https://m.media-amazon.com/images/M/MV5BZmEzN2YzOTItMDI5MS00MGU4LWI1NWQtOTg5ZThhNGQwYTEzXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg') ON CONFLICT (anime_name) DO NOTHING;
INSERT INTO animes (anime_name,anime_img) VALUES('naruto','https://m.media-amazon.com/images/M/MV5BZmQ5NGFiNWEtMmMyMC00MDdiLTg4YjktOGY5Yzc2MDUxMTE1XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg') ON CONFLICT (anime_name) DO NOTHING;
INSERT INTO animes (anime_name,anime_img) VALUES('gintama ','https://m.media-amazon.com/images/M/MV5BMDkxZTJjZTEtMDRjMy00Yzk1LWI5YjItMjIwYmVlYzhlZWZhXkEyXkFqcGdeQXVyNDQxNjcxNQ@@._V1_FMjpg_UX1000_.jpg') ON CONFLICT (anime_name) DO NOTHING;
INSERT INTO animes (anime_name,anime_img) VALUES('itachi_uchiha','https://comicvine.gamespot.com/a/uploads/scale_small/0/378/859934-god2vj0xj3.jpg') ON CONFLICT (anime_name) DO NOTHING;
INSERT INTO animes (anime_name,anime_img) VALUES('one_piece','https://m.media-amazon.com/images/M/MV5BODcwNWE3OTMtMDc3MS00NDFjLWE1OTAtNDU3NjgxODMxY2UyXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg') ON CONFLICT (anime_name) DO NOTHING;
INSERT INTO animes (anime_name,anime_img) VALUES('demon_slayer','https://m.media-amazon.com/images/M/MV5BZjZjNzI5MDctY2Y4YS00NmM4LTljMmItZTFkOTExNGI3ODRhXkEyXkFqcGdeQXVyNjc3MjQzNTI@._V1_.jpg') ON CONFLICT (anime_name) DO NOTHING;
INSERT INTO animes (anime_name,anime_img) VALUES('attack_on_titan','https://flxt.tmsimg.com/assets/p10701949_b_v8_ah.jpg') ON CONFLICT (anime_name) DO NOTHING;
INSERT INTO animes (anime_name,anime_img) VALUES('hunter_x_hunter','https://m.media-amazon.com/images/M/MV5BZjNmZDhkN2QtNDYyZC00YzJmLTg0ODUtN2FjNjhhMzE3ZmUxXkEyXkFqcGdeQXVyNjc2NjA5MTU@._V1_FMjpg_UX1000_.jpg') ON CONFLICT (anime_name) DO NOTHING;
INSERT INTO animes (anime_name,anime_img) VALUES('boku_no_hero_academia','https://i.pinimg.com/736x/0f/7f/ee/0f7feeb4655ffc029d1b9823bafb2ff8.jpg') ON CONFLICT (anime_name) DO NOTHING;


CREATE TABLE dragon_ball (fact_id SERIAL PRIMARY KEY NOT NULL,fact TEXT NOT NULL UNIQUE);
CREATE TABLE bleach (fact_id SERIAL PRIMARY KEY NOT NULL,fact TEXT NOT NULL UNIQUE);
CREATE TABLE black_clover (fact_id SERIAL PRIMARY KEY NOT NULL,fact TEXT NOT NULL UNIQUE);
CREATE TABLE jujutsu_kaisen (fact_id SERIAL PRIMARY KEY NOT NULL,fact TEXT NOT NULL UNIQUE);
CREATE TABLE fma_brotherhood (fact_id SERIAL PRIMARY KEY NOT NULL,fact TEXT NOT NULL UNIQUE);
CREATE TABLE naruto (fact_id SERIAL PRIMARY KEY NOT NULL,fact TEXT NOT NULL UNIQUE);
CREATE TABLE gintama (fact_id SERIAL PRIMARY KEY NOT NULL,fact TEXT NOT NULL UNIQUE);
CREATE TABLE itachi_uchiha (fact_id SERIAL PRIMARY KEY NOT NULL,fact TEXT NOT NULL UNIQUE);
CREATE TABLE one_piece (fact_id SERIAL PRIMARY KEY NOT NULL,fact TEXT NOT NULL UNIQUE);
CREATE TABLE demon_slayer (fact_id SERIAL PRIMARY KEY NOT NULL,fact TEXT NOT NULL UNIQUE);
CREATE TABLE attack_on_titan (fact_id SERIAL PRIMARY KEY NOT NULL,fact TEXT NOT NULL UNIQUE);
CREATE TABLE hunter_x_hunter (fact_id SERIAL PRIMARY KEY NOT NULL,fact TEXT NOT NULL UNIQUE);
CREATE TABLE boku_no_hero_academia (fact_id SERIAL PRIMARY KEY NOT NULL,fact TEXT NOT NULL UNIQUE);

INSERT INTO boku_no_hero_academia (fact) VALUES('The My Hero one-shot does have quite a few differences from what would later become the main series, but the biggest difference was the fact that the one-shot centered around an adult, named Jack Midoriya') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('Aside from Izuku, the only character from the original My Hero one-shot to make it into the main series with little to no changes was the hero Snipe.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('Originally, Bakugo was supposed to be a genius who was extremely kind and gentle towards others; however, he would have been slightly socially awkward, in the sense that he would unintentionally say things that were very hurtful to others.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('Aside from being the fourth most popular hero, Best Jeanist runs the fashion industry that is marketed towards young and adult men.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('When asked about the possibility of a time-skip, Horikoshi explained that at some point he does intend to have a time-skip for the series, however he is not sure when.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('Shiozaki was originally going to be a member of class 1-A, but at some point Horikoshi moved her over to class 1-B.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('At one point Himiko Toga is seen wearing a gas mask that has a striking resemblance to a certain villain from The Dark Knight Rises.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('Apparently Tamaki s anxiety problem is based on a real-life situation Horikoshi went through') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('The character Bubble Girl was actually created by a fan, rather than by Horikoshi.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('Tsuyu Asui & Toro Hagakure Were Originally Men') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('Ochaco Uraraka Used To Be Mt. Lady') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('When it comes to the character Horikoshi relates to the most, he claims it has to be Izuku because he cries easily and cowers. Horikoshi claims that the two are very similar in that regard.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('It is still unknown whether Principal Nezu is a dog, a mouse, a bear, or a mixture of all three.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('Momo Yaoyorozu Is The Smartest Student In Class 1-A') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('At one point in the series, the students point out that All Might is wearing a silver age costume, which is a reference to what is known as the Silver Age of comics which took place from 1956 to 1977.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO boku_no_hero_academia (fact) VALUES('In chapter 34 of the manga, there s one panel where the reader can see The Flash from DC Comics sitting in the stands cheering Todoroki on!') ON CONFLICT (fact) DO NOTHING;


INSERT INTO hunter_x_hunter (fact) VALUES('The words on Zeno Zoldyk s clothing say either A Kill A Day or Never Retire') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('The Phantom Troupe has an arm wrestling rank among themselves to determine their physical strength. The order from strongest to weakest of this arm wrestling is Uvogin, Phinks, Hisoka, Franklin, Feitan, Machi, Chrollo, Bonolenov, Nobunaga, Shalnark, Pakunoda, Shizuku, and Kortopi.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('All four main protagonists share the same birthday characteristics – having the same number of birth month and day. And coincidentally, Hisoka too shares the same birthday characteristic. This is the reason why some fans consider him as the fifth protagonist.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('A character from Yu Yu Hakusho, Suzaku appeared in Chrollo s book as one of his victims.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('60 out of the 100 Richest characters in the series are Hunters.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('The very first character to have appeared in Hunter x Hunter Manga is Kite.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Knuckle, Shoot, Palm, and Gyro are named after different baseball pitches Knuckleball, Shoot Ball, Palm ball, and Gyroball.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Sui Ishida, the creator of Tokyo Ghoul, is a big fan of Hunter X Hunter. Especially Hisoka.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('In 1999 Hunter x Hunter anime, Killua watched porno during his stay in a Yorknew City hotel. He even asked Gon to join him. Thankfully, Gon refused the offer.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Togashi is married to the author of Sailor Moon, Naoko Takeuchi. She even helped him in earlier chapters.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Kurapika is the only known character in the entire HxH series with two Nen types – Conjuration and Specialization.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Morel s technique Deep Turtle is a reference to the rock band of the same name.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('With a 3,250 feet tall,251 floors, Heavens Arena is the 4th tallest building in the Hunter x Hunter series.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Hunter x Hunter has its own alphabets which can be translated directly to Japanese then to English.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Dwun s room in greed island arc is a reference to a photo of the author s room. Togashi has similar seas of Trash scattered around him while playing the game Dragon Quest.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('It is shown in the series that Pituo has the biggest En range extending up to 2.2 Kilometers.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Killua s favorite food is ChocoRobo-Kun chocolate balls and he hates red peppers. He also has a gambling addiction.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Our bald Ninja, Hanzo, is named after Hatori Hanzo, a famous Japanese ninja.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Gon shares the same birthday with Monkey D. Luffy, the main protagonist of One Piece.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Only Ging Freecss passed the 267th Hunter Examination and it was the same case with Killua but on 288th.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Despite his appearances, Kalluto is a boy and is the youngest member of Phantom Troupe.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('The Greed Island arc is created out of Togashi s desire to draw a card battle manga like Yugioh.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Hina s hat imitates her emotions.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('All Silver-haired members of the Zoldyck family (Zeno, Silva, and Killua) have transmutation type of Nen. On the other hand, the dark-haired members of their family use the Manipulation type.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO hunter_x_hunter (fact) VALUES('Did you know? Bungee gum has properties of both rubber and gum.') ON CONFLICT (fact) DO NOTHING;


INSERT INTO attack_on_titan (fact) VALUES('Hajime Isyama s favorite character is Jean Kirschtein. Cause Isayma admires how Jean says what he wants without worrying about what other people think. But it was all in the past.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Originally, Eren was going to know that he is a titan all along. But thankfully, Isayama scrapped the idea.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Levi came on top in the 1st character popularity poll, Eren took the second place, While our favorite girl, Mikasa took the 3rd place.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Isayama has said that Mikasa will choose not to wear her precious scarf if it s too hot outside.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Isayama has revealed that Eren s titan form is based on Yushin Okami, a mixed Japanese martial artist. Isayama felt that he had the ideal physique of a middleweight mixed martial artist.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Moblit is Hange s second in command as well as her assistant. But thats not all. He is also the heaviest drinker in the survey corps. Isayama has said that this is due to his unfortunate position.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Marnia Inoue, the voice actor of Armin, is also the voice of the show s narrator.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Mikasa translates to 3 bamboo hats.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Isayama has said he received a strange phone call from his following the success of his series. They were curious about the sudden increase of funds in his savings. He postulated they probably thought I was running some bank transfer scam') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Armin s Birthday is on November 3rd, and It suits him. Cause in Japan, The day is celebrated as culture day, promoting academics, culture, and the fine arts.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Isayama made the theme of AOT cause he thought, Giants are kind of Gross.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('In the Simpsons episode Treehouse of Horror xxv, Lisa was shown dressed as Mikasa. She even used 3D Maneuver Gear.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Mike is the tallest human character in the series at a looming 6.5.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('It is most likely possible that Erwin Rommel, known as Desert Fox, was served as the main source of inspiration for Erwin Smith.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Aspects of Levi s design and personality are were based on Rorshach from Watchmen.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('On average, Levi only sleeps around 2 to 3 hours a day.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Some titans are modeled after friends and acquaintances of Isayama. Sometimes he even takes requests.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Eren has the highest kill rate of any of the 104 Trainee squad.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Eren s voice actor Yuki Kaji cried while reading the script of the final season.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('According to Isayama, Erwin stays single because he doesn t know when he ll die. Lucky for the Nile because they were in love with the same woman.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Isayama revealed that Levi sometimes wishes that he was a bit taller.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Attack On Titan has 7 episodes rated 9.9 or above. While Breaking Bad and Game Of Thrones have 7 combined.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Mikasa was the first character Isayama came up with when he was initially developing Attack On Titan.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Based on statistics from Attack On Titan guide book, Hange and Zeke are the two smartest characters in the series.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO attack_on_titan (fact) VALUES('Levi is a Tea enthusiast. He enjoys collecting Tea leaves and is fond of black tea. Isayama has even said that Levi once wanted to open a tea shop.') ON CONFLICT (fact) DO NOTHING;


INSERT INTO demon_slayer (fact) VALUES('Kagaya and Muzan are from same family') ON CONFLICT (fact) DO NOTHING;
INSERT INTO demon_slayer (fact) VALUES('Some demon slayers have some sort of mark on their bodies') ON CONFLICT (fact) DO NOTHING;
INSERT INTO demon_slayer (fact) VALUES('The cost of the mark is pretty high, which is death of the demon slayer when he/she turns 25 due to the strain on the body') ON CONFLICT (fact) DO NOTHING;
INSERT INTO demon_slayer (fact) VALUES('The mark grants power to the slayer like strenght, speed and (crimson red nichirin blade in some cases)') ON CONFLICT (fact) DO NOTHING;
INSERT INTO demon_slayer (fact) VALUES('Yoriichi Tsugikuni had the first mark') ON CONFLICT (fact) DO NOTHING;
INSERT INTO demon_slayer (fact) VALUES('Each of the Corps has their own various breathing styles') ON CONFLICT (fact) DO NOTHING;
INSERT INTO demon_slayer (fact) VALUES('Each Hashira has their own region to protect') ON CONFLICT (fact) DO NOTHING;
INSERT INTO demon_slayer (fact) VALUES('The qualifications for becoming a Hashira are pretty high') ON CONFLICT (fact) DO NOTHING;
INSERT INTO demon_slayer (fact) VALUES('The Demon Slayer Corps has a strict hierarchy') ON CONFLICT (fact) DO NOTHING;
INSERT INTO demon_slayer (fact) VALUES('It takes a long time to become a Hashira') ON CONFLICT (fact) DO NOTHING;


INSERT INTO one_piece (fact) VALUES('Even though Luffy is the main character of One Piece, Nami appears on screen before Luffy in the anime making her first main character to be seen.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('The only way Luffy will part from his crew is either if he becomes the Pirate King or if he dies.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Zoro was the first crew member recruited by Luffy. However, in early drafts Zoro was drawn as part of the Buggys crew.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('One of Zoro s hobbies is flipping through picture guides of weapons and bounty heads.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('One Piece was supposed to run for a maximum of 5 years but Oda continued the series on because he really enjoys writing it.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Eiichiro Oda spends 3 days a week writing One Pieces story. He then spends another 3 days drawing it. He barely gets time off which is kinda funny since he pursued a career in manga as he said "You dont have to get a real job') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Sanji was originally supposed to be named Naruto but Oda changed it since there was a Naruto series coming out at the same time.') ON CONFLICT (fact) DO NOTHING;                                               
INSERT INTO one_piece (fact) VALUES('Dadan was originally a man. Dadan s early design showed him wearing a hat, shades and smoking a pipe.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('The Strawhat crew is the only pirate crew known to have all its members with bounties on their heads.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Speed ​​Jiru is the fastest man in the Whitebeard Pirates.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('"Ax Hand" Morgan and "Iron Mace" Alvida are also names after famous pirates. Morgan is named after Henry Morgan.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Sabo is based off of Oliver Twist, from the top hat to the slightly dirty look.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Of the original Shichibukai, the 48 year old Gecko Moria is the tallest and oldest. Whereas Boa Hancock is only 29 years old.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Monkey D. Luffy is the first and only pirate in existence to ever enter and escape the top 3 government facilities.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('If you pay attention to a creature called Pandaman can be seen frequently in the manga and anime.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Shanks got his 3 scars from battles with Blackbeard when he was still under Whitebeard.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Luffys favorite passtime is eating watermelons at night in the summer.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Nico Robin always carries around Choppers favorite candies.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Monet s design was based on Harpies from Greek Mythology since they were known to abduct people.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Monet is the first female character to die in the series.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Oda says that the hardest character to draw is Boa Hancock.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Boa Hancock is the only known female character to possess the Conqueror s Haki') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('None of the males in the Strawhats knew how to tie a tie untill they met Sanji') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('At age 19 Luffy is the youngest member of all 12 members of the Worst Generation.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO one_piece (fact) VALUES('Its said that during Zoro s fight with Mr 1 its the first instance of Zoro using observation haki.') ON CONFLICT (fact) DO NOTHING;



INSERT INTO dragon_ball (fact) VALUES('Dragon Ball drew most of its influences from the classic Chinese story, Journey to the West.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('In Dragon Ball Z, not counting movies or specials, Goku only killed two villains, Yakon and Kid Buu.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Goku Has Only Died Twice') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Vegeta was originally intended to be a disposable villain who would be killed off fairly quickly after being defeated.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Sonic the Hedgehog Was Heavily Inspired by Dragon Ball Z') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('DB Voice Actors Have Fainted from Exertion') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Goku and Frieza s First Fight Was the Longest in Anime History') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('There are no Female Super Saiyans in DBZ') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Piccolo is actually only four years older than Gohan.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('The Saiyans and the Tuffles waged a 10 year war for Planet Plant known as the Saiyan-Tuffle war.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Vegeta would technically be the "King" of all Saiyans instead of the "Prince" because his father was killed by Frieza, thus making him the rightful heir to the throne. However, he most likely does not call himself King out of respect for his fallen father.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Broly, the Legendary Super Saiyan was born with a power level of 10,000. This is comparable to most Saiyan elite warriors!') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Goku is terribly afraid of needles.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('The popular internet meme Its Over 9000! was actually a dubbing mistake. It was originally over 8,000 but in the Ocean Dub, they accidentally say 9000.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('After he fuses with Kami, Piccolo temporarily becomes the most powerful Z Fighter in the series. He surpasses the Super Saiyan powers of Goku, Vegeta, and Future Trunks.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Bulma goes through 17 hair style changes through out the Dragon Ball series.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Cell is the only main villain that Goku never bites during battle.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('There are over twenty five variants of the Kamehameha.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Majin Buu is over 5 million years old.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Goku never actually came face to face with Dr. Gero in Dragon Ball. In fact, he was never mentioned until in Dragon Ball Z.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Future Gohan, was the only Saiyan character to ever battle with one arm.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('King Kais pet monkey, Bubbles, is a reference to Michael Jacksons pet monkey, who is also named Bubbles.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('In the Funimation dub of Dragon Ball, Tambourine, a spawned warrior of King Piccolo arc sounds almost exactly like the Dragon Ball Z super villain Cell in his "Imperfect" form as they both have the same voice actor') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Counting movie specials and Dragon Ball GT, the Spirit Bomb has been used exactly eight times in all of the Dragon Ball series.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Gohan, the son of Goku, was officially born on May 11th, 757 Age (A.D.).') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Goku s home address is actually given, it is 439 East District.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Kid Buu would technically have the highest body count in the entire Dragon Ball series, as he killed millions if not billions of beings before his introduction in the latter half of Dragon Ball Z.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Vegeta says the name "Goku" only eight times.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Bulma s last name is "Brief".') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Nappa originally did have hair, as seen in the special, Dragon Ball Z: Bardock - The Father of Goku.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Master Roshi is 354 years old at the end of Dragon Ball Z.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Future Trunks is one of the few primary Z Fighters to have never used the Kamehameha wave, a trait he shares with his father.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Old Kai is approximately 15 Million years old during the events of the Majin Buu Saga.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('There are three types of Android. They are: Cyborg, Total artificial construct types, and Bio-mechanical.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Pui Pui is named Pocus in the manga, another reference to "Cinderella".') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Kai and Kaioshin are born as Shin-jin.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Piccolo is one of the only two characters in the Dragon Ball universe to have killed the main character Goku (the other being Cell). Although in both cases, Goku sacrificed himself to save the world.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Akira Toriyama stated his favorite character to be Piccolo.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Zarbon is responsible for advising Frieza to eradicate the Saiyan race, thus causing the ensuing genocide and setting the plot in motion for future wars and conflicts.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Ginyu Force mercenary squadron member Guldo s official alien race is Bas-jin.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Dragon Ball Z and One Piece had a cross-over known as "Cross Epoch", which was created by both Akira Toriyama and Eiichiro Oda.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Goku and company appeared in a special known as Goku s Fire Fighting Regiment, which taught fire safety to kids in Japan.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Vegeta was born in 732 Age.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Akira Toriyama created the concept art for the Super Saiyan 4 transformation seen in Dragon Ball GT.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Future Gohan is killed instantly in the manga, while in the anime his fight and death is shown in great detail.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Yamcha is either severely injured, killed, or already dead in every saga of Dragon Ball Z.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Saiyan s hair styles never change from the day they are born.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Goku s death in the Cell Games Saga was an attempt to shift the focus of the series onto Gohan') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('In the Original Manga that Chi-Chi originally has blue hair and that Bulma had purple hair.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO dragon_ball (fact) VALUES('Android 17 and Android 18 were originally Human before Dr. Gero turned them into Androids.') ON CONFLICT (fact) DO NOTHING;


INSERT INTO bleach (fact) VALUES('Ichigo wasnt the first character that Kubo created. It was Rukia. Kubo felt like drawing a shinigami wearing a kimono, thus, Rukia was created.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO bleach (fact) VALUES('Ichigo s English Voice Actor Was A Power Ranger') ON CONFLICT (fact) DO NOTHING;
INSERT INTO bleach (fact) VALUES('When Shonen Jump initially turned down Bleach, Kubo grew discouraged. The creator of DBZ, Akira Toriyama, sent a letter of encouragement and Bleach was later accepted.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO bleach (fact) VALUES('Out of the 366 episode in Bleach, 165 episodes(45%) are filler.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO bleach (fact) VALUES('Tite Kubo Incorporated His Love Of Fashion Into Bleach') ON CONFLICT (fact) DO NOTHING;
INSERT INTO bleach (fact) VALUES('Ichigo Only Truly Killed One Major Enemy: the Fullbringer Ginjo') ON CONFLICT (fact) DO NOTHING;
INSERT INTO bleach (fact) VALUES('Ichigo claims his name come from "Ichi" meaning first prize and "Go" meaning guardian angel. However, his dad told him, his name means "He who protects".') ON CONFLICT (fact) DO NOTHING;
INSERT INTO bleach (fact) VALUES('The word Bleach is said to refer to the color "white," evincing monochrome vibes in contrast with the Shinigami s black garments. This is the direct, and most believable, explanation for the origin of the name, but there remains another possibility.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO bleach (fact) VALUES('Originally, Kisuke Urahara was meant to be the villain of bleach with Aizen being killed off when he was faking his death.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO bleach (fact) VALUES('Orihime has said "Kurosaki-kun" roughly over 800 times in the whole anime. She s said "kun" over 1000 times.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO bleach (fact) VALUES('Yoruichi s character original name was going to be Kuroneko, which means "Black cat". However, Kubo didnt want to take any risks of sparking racial comments, so he changed the name.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO bleach (fact) VALUES('In Bleach a shinigami s life force is equal to their spirit energy, it s the reason they live so long and can survive fatal wounds.') ON CONFLICT (fact) DO NOTHING;


INSERT INTO black_clover (fact) VALUES('Asta can sense Ki') ON CONFLICT (fact) DO NOTHING;
INSERT INTO black_clover (fact) VALUES('Yuno Is The Youngest Manazone Master') ON CONFLICT (fact) DO NOTHING;
INSERT INTO black_clover (fact) VALUES('Asta s Original Name Is Staria') ON CONFLICT (fact) DO NOTHING;
INSERT INTO black_clover (fact) VALUES('Yuno is the Reincarnation of Light s child') ON CONFLICT (fact) DO NOTHING;
INSERT INTO black_clover (fact) VALUES('Asta Was Trained By an Enemy Soldier') ON CONFLICT (fact) DO NOTHING;
INSERT INTO black_clover (fact) VALUES('Black Clover Manga Is Considered To Be Better Than The Anime') ON CONFLICT (fact) DO NOTHING;
INSERT INTO black_clover (fact) VALUES('Captain Yami Sukehiro is a foreigner in the clover kingdom') ON CONFLICT (fact) DO NOTHING;
INSERT INTO black_clover (fact) VALUES('Every member of black bulls was selected on purpopse') ON CONFLICT (fact) DO NOTHING;
INSERT INTO black_clover (fact) VALUES('Black bulls is the smallest guild ') ON CONFLICT (fact) DO NOTHING;
INSERT INTO black_clover (fact) VALUES('Black bulls hideout is a mobile castle and the castle is contantly changing') ON CONFLICT (fact) DO NOTHING;


INSERT INTO jujutsu_kaisen (fact) VALUES('Gojo can cast domain expansion multiple times a day, while others are limited to only once a day') ON CONFLICT (fact) DO NOTHING;
INSERT INTO jujutsu_kaisen (fact) VALUES('According to the author of Jujutsu Kaisen, Ryomen Sukuna never had a wife or children') ON CONFLICT (fact) DO NOTHING;
INSERT INTO jujutsu_kaisen (fact) VALUES('So far there are only 4 Shamans or Jujutsu users who are on a special level. That is Gojo Satoru, Geto Suguru, Yuta Okkotsu and Tsukumo Yuki') ON CONFLICT (fact) DO NOTHING;
INSERT INTO jujutsu_kaisen (fact) VALUES('Gege Sensei had planned to kill Yuji after Sukuna ripped out his heart in the manga if Shonen Jump didn t go smoothly') ON CONFLICT (fact) DO NOTHING;
INSERT INTO jujutsu_kaisen (fact) VALUES('The Zenin family home is derived from an architectural museum in Tokyo called Kodakarayu') ON CONFLICT (fact) DO NOTHING;
INSERT INTO jujutsu_kaisen (fact) VALUES('At a young age, Toji would get thrown into a group of cursed spirits, the scar on his lip is a result of that') ON CONFLICT (fact) DO NOTHING;
INSERT INTO jujutsu_kaisen (fact) VALUES('The eye within Gojo s domain expansion is that of a black hole, or at the least, resembles a black hole') ON CONFLICT (fact) DO NOTHING;
INSERT INTO jujutsu_kaisen (fact) VALUES('Ever since Gojo was born, cursed spirits and cursed users hid in the shadows due to Gojo possessing both the six eyes and the limitless cursed technique') ON CONFLICT (fact) DO NOTHING;
INSERT INTO jujutsu_kaisen (fact) VALUES('Mahito likes Perry the Platypus from the animated series Phineas and Ferb that s why he made Junpei like that') ON CONFLICT (fact) DO NOTHING;
INSERT INTO jujutsu_kaisen (fact) VALUES('Gojo s six eyes, also known as Rikugan, reduces Gojo s cursed energy consumption allowing him to never run out of cursed energy') ON CONFLICT (fact) DO NOTHING;


INSERT INTO fma_brotherhood (fact) VALUES('Ishvalans And Ametris Conflict Is Based On Hokkaido s Ainu People') ON CONFLICT (fact) DO NOTHING;
INSERT INTO fma_brotherhood (fact) VALUES('Arakawa Actually Bought Military Prop Guns For Drawing References') ON CONFLICT (fact) DO NOTHING;
INSERT INTO fma_brotherhood (fact) VALUES('Arakawa Interviewed WWII Japanese Veterans For The Ishval War Arc') ON CONFLICT (fact) DO NOTHING;
INSERT INTO fma_brotherhood (fact) VALUES('Law Of Equivalent Exchange Is Not Strictly Based On Eastern Or Western Alchemy') ON CONFLICT (fact) DO NOTHING;
INSERT INTO fma_brotherhood (fact) VALUES('The Military Officers Are Named After Military Vehicles') ON CONFLICT (fact) DO NOTHING;
INSERT INTO fma_brotherhood (fact) VALUES('Arakawa s First Name Is Hiromi') ON CONFLICT (fact) DO NOTHING;
INSERT INTO fma_brotherhood (fact) VALUES('Truth Is A Mirrored Version Of Whoever Enters The Gate') ON CONFLICT (fact) DO NOTHING;
INSERT INTO fma_brotherhood (fact) VALUES('There Is Only One Known Photo Of Hiromu Arakawa') ON CONFLICT (fact) DO NOTHING; 


INSERT INTO naruto (fact) VALUES('Zabuza s name means never cut twice') ON CONFLICT (fact) DO NOTHING;
INSERT INTO naruto (fact) VALUES('Sakura was supposed to die in episdoe 26') ON CONFLICT (fact) DO NOTHING;
INSERT INTO naruto (fact) VALUES('Chouji s dad was part of the group that wanted to kill Naruto in Chapter 1.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO naruto (fact) VALUES('Naruto s favorite ramen shop Ichiraku exists in real life.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO naruto (fact) VALUES('Shikamaru s IQ is above 200.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO naruto (fact) VALUES('Kakuzu s techniques are named after the series Mobile Suit Gundam.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO naruto (fact) VALUES('Neji s forehead marks are different in the anime and manga.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO naruto (fact) VALUES('The tallest shinobi in Hidden Leaf is Ibiki Morino') ON CONFLICT (fact) DO NOTHING; 
INSERT INTO naruto (fact) VALUES('Sanji from One Piece was supposed to be named Naruto.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO naruto (fact) VALUES('Canonically, Naruto s RasenShuriken is a reddish-orange color.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO naruto (fact) VALUES('Naruto and Kurama s Bijuu Bomb is not the same color as the other bijuus.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO naruto (fact) VALUES('Sarutobi was supposed to be a monkey, but the creator of Naruto changed his mind and make him human like other Shinobis. Maybe that is why lord third was able to summon Enma.') ON CONFLICT (fact) DO NOTHING;


INSERT INTO gintama (fact) VALUES('The original title of the series was Yorozuya Gin-chan.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO gintama (fact) VALUES('Sakata Gintoki had a completely different last name and character design in original drafts.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO gintama (fact) VALUES('For Sakata Gintoki s creation Hideaki Sorachi also used a popular Japanese folk tale.') ON CONFLICT (fact) DO NOTHING;       
INSERT INTO gintama (fact) VALUES('Sakata Gintoki wore scooter goggles all the time.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO gintama (fact) VALUES('Shimura Shinpachi was planned to be part of the Shinsengumi.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO gintama (fact) VALUES('Shimura Shinpachi s name contains "Hachi" which means 8.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO gintama (fact) VALUES('Kagura knows Chinese.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO gintama (fact) VALUES('Kagura is the first Shonen Jump heroine to vomit.') ON CONFLICT (fact) DO NOTHING; 
INSERT INTO gintama (fact) VALUES('Sadaharu s voice actor voices another Gintama character.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO gintama (fact) VALUES('Hideaki Sorachi wanted to do the series based on the Shinsengumi.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO gintama (fact) VALUES('Kondo Isao has a weak anal sphincter.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO gintama (fact) VALUES('Hijikata Toushirou s voice actor voices a couple of swordsmen.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO gintama (fact) VALUES('Okita Sougo is based on a captain of the first unit of the Shinsengumi') ON CONFLICT (fact) DO NOTHING;
INSERT INTO gintama (fact) VALUES('Gintoki has the same birthday with the famous Naruto Uzumaki of Naruto.') ON CONFLICT (fact) DO NOTHING;


INSERT INTO itachi_uchiha (fact) VALUES('Itachi was Masashi Kishimoto s Favourite Member Of Akatsuki') ON CONFLICT (fact) DO NOTHING;
INSERT INTO itachi_uchiha (fact) VALUES('Itachi s Original Concept Was Given to Danzo"') ON CONFLICT (fact) DO NOTHING;
INSERT INTO itachi_uchiha (fact) VALUES('Itachi is Proficient At One-Handed Seals') ON CONFLICT (fact) DO NOTHING;
INSERT INTO itachi_uchiha (fact) VALUES('Itachi Was The 2nd Best Student Of All Time At The Academy') ON CONFLICT (fact) DO NOTHING;
INSERT INTO itachi_uchiha (fact) VALUES('Kisame Wasnt His First Partner In The Akatsuki') ON CONFLICT (fact) DO NOTHING;
INSERT INTO itachi_uchiha (fact) VALUES('Itachi is responsible For Naruto Taking A Life') ON CONFLICT (fact) DO NOTHING;
INSERT INTO itachi_uchiha (fact) VALUES('Itachi s name actually means a weasel.') ON CONFLICT (fact) DO NOTHING;
INSERT INTO itachi_uchiha (fact) VALUES('Itachi in total has completed 340 official ninja missions in general. These include 53 D ranks ,152 C ranks,134 B Ranks,0 A ranks and 1 S rank.') ON CONFLICT (fact) DO NOTHING;      







