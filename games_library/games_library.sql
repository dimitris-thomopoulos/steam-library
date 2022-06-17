-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2022 at 02:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `games_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `game_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table for TEC610 Demo 2014';

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `created`, `game_id`, `fullname`, `email`, `comments`) VALUES
(62, '2022-06-15 04:30:12', 6, 'Cooper', 'cooper@email.com', 'Really fun game! Always enjoying it with my friends even if we end up fighting haha'),
(63, '2022-06-15 04:31:16', 6, 'Tony', 'tony@email.com', 'It gets on my nerves sometimes but you gotta love this game! I definitely recommend it'),
(64, '2022-06-15 04:32:16', 6, 'Saske', 'saske@email.com', 'You get to practice your communication skills with this game, really interesting!\r\n\r\n'),
(65, '2022-06-15 04:33:30', 6, 'George', 'george@email.com', 'I like this game but I think it would be better if they added a voice chat option instead of messaging, this is what makes the whole game fun..'),
(66, '2022-06-15 04:34:37', 6, 'George', 'george@email.com', 'I like this game but I think it would be better if they added a voice chat option instead of messaging, this is what makes the whole game fun..'),
(67, '2022-06-15 04:36:12', 7, 'Michael', 'michael@email.com', 'Mine, craft, build. This game is amazing, it has tons of mechanisms, places and items to discover! It\'s always fun to start a new world in singleplayer but it\'s much more fun when playing with friends! Definitely would recommend!\r\n'),
(68, '2022-06-15 04:38:06', 7, 'Anna', 'anna@email.com', 'I love this game! Probably one of my favorite ever games, I remember playing it like 6 years ago and I still enjoy it to the same amount to this day! You should get it now!'),
(69, '2022-06-15 04:40:23', 7, 'Pepe', 'pepe@email.com', 'Not everyone understands why this game is so special. It has amazing music, unique gameplay and it\'s an all-time classic. It has been probably one of the first real indie games that lead the way for the newer games of the genre.'),
(70, '2022-06-15 04:42:34', 10, 'Kostas', 'kostas@email..com', 'This game is one of the best games in my library. It has amazing storyline and the gameplay just puts you into an immersive experience, everything that makes a good game good!'),
(71, '2022-06-15 04:44:21', 20, 'Penny', 'penny@email.com', 'I swear I have spent so many hours on this game and I still don\'t feel bored when playing it. Every match feels like the first, except for my aiming skills of course :P'),
(72, '2022-06-15 04:46:20', 20, 'Daniel', 'daniel@email.com', 'Every night me and the boys hop on our discord server and get some W on every match, we have probably mastered this one. Time to seek a new battle royale game, maybe we\'ll try something like Fortnite. joking it sucks haha we love COD'),
(73, '2022-06-15 04:48:39', 20, 'Cultum', 'cultum@emaill.com', 'As far as I\'ve played this game, I think it\'s the best battle royale game right now. It\'s free, it has loads of weapon choices, different play styles and a lot of customizables. It isn\'t as slow as PUBG is neither as bad as Fortnite is, so I believe this game is the most balanced one'),
(74, '2022-06-15 04:49:24', 21, 'Petrov', 'petrov@email.com', 'Cyka blyat. 10/10 would play again'),
(75, '2022-06-15 04:49:54', 21, 'Mimi', 'mimi@email.com', 'Rush B and all your problems shall be solved..'),
(76, '2022-06-15 04:50:56', 22, 'John', 'john@email.com', 'I think this is the most realistic battle royale I\'ve ever played. I love its realism, harshness and tough mechanics. Really impressive!'),
(77, '2022-06-15 04:51:40', 26, 'Dimitris', 'dimitris@email.com', 'Really scary, boo!'),
(78, '2022-06-15 04:55:33', 27, 'Emma@email.com', 'emma@email.com', 'I love this game\'s art, backstory and jumpscares! Everything horrific, just like it should be!'),
(79, '2022-06-15 05:09:38', 28, 'Jack', 'jack@email.com', 'I really hope they improve the optimization, i run this on my RTX3060 and only get around 40fps @ 2K... Hope it gets better soon'),
(80, '2022-06-15 05:10:58', 17, 'Yohrn', 'yohrn@email.com', 'This game is just SICK! Miyazaki at one of its best ever creations. The world, the dark fantasy, the characters, the gameplay, the bosses, the music, everything in this game is a MASTERPIECE!'),
(81, '2022-06-15 05:12:06', 17, 'Nick', 'nick@email.com', 'My all-time favorite. Dark souls 3 is my favorite from the soulsborne series, it has amazing game design, boss fights, majestic music and mesmerizing locations, I just love this game'),
(82, '2022-06-15 05:13:50', 18, 'Laura', 'laura@email.com', 'Thou shall kneel! I think this game is the best game Miyazaki has ever made. This is basically an open-world dark souls, with a huge amount of bosses, enriched weapon variety and game mechanics, smoother gameplay and an overall polished experience. Just amazing!!'),
(83, '2022-06-15 05:14:58', 18, 'Jonas', 'jonas@email.com', 'Prepare to spend your rest 100 hours in this masterpiece called Elden Ring. You will die, and die, and die again and again. But don\'t you dare give up, don\'t you dare go hollow!'),
(84, '2022-06-15 05:19:13', 19, 'Shinobi', 'shinobi@email.com', 'It fairly is the game of the year for 2019, Sekiro is a masterpiece in RPG games. Very fast gameplay, amazing bosses and very hard to master. Only for hardcore gamers!'),
(86, '2022-06-15 05:21:49', 29, 'Nikos', 'nikos@email.com', 'I think that FIFA games got really repetitive through the years. The only thing that they change from title to title are the players and the graphics.. They really need a refresh!'),
(87, '2022-06-15 05:22:55', 30, 'Soap', 'soap@email.com', 'The only thing that keeps me from playing this game right now are the exams. I really enjoy this game, especially the career mode!'),
(88, '2022-06-15 05:23:31', 31, 'Panos', 'panos@email.com', 'What a save!\r\nWhat a save!\r\nWhat a save!\r\nWow!'),
(89, '2022-06-15 05:24:11', 11, 'Jane', 'jane@email.com', 'What a horrific survival game! It is so realistic but also very scary to play alone. Try playing with friends, really fun!'),
(90, '2022-06-15 05:25:16', 15, 'Miltos', 'miltos@email.com', 'I enjoy this game so much! You can build your own base, raid others\' bases, make allies and enemies, explore, loot and discover new things every update! The developers really care for this game and it shows. Hope the community improves a little bit more!'),
(91, '2022-06-15 05:26:38', 16, 'Dave', 'dave@email.com', 'I remember playing this game alone during the quarantine. It is so beautiful and so terrifying at the same time! You can find very beautiful moments and very scary ones. Make sure you have somewhere to settle down before the night comes!'),
(92, '2022-06-15 05:27:49', 23, 'Jelly', 'jelly@email.com', 'Probably one of the best platformers I\'ve ever played! It reminds me a lot of dark souls, it has amazing aesthetics, music, gameplay and overall it\'s a really fun game!'),
(93, '2022-06-15 05:28:47', 24, 'Bless', 'bless@email.com', 'I find this game a true masterpiece. It has so many messages and the game design is just SICK. I love this.'),
(94, '2022-06-15 05:29:15', 25, 'Rex', 'rex@email.com', 'Reminds me of minecraft! Woohoo!');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `url_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `trailer` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table for TEC610 Demo 2014';

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`game_id`, `category`, `url_name`, `title`, `trailer`, `website`, `description`, `image`) VALUES
(6, 'indie', 'among-us', 'Among Us', 'NSJ4cESNQfE', 'https://buy.among.us/', 'An online and local party game of teamwork and betrayal for 4-15 players...in space! Play with 4-15 player online or via local WiFi as you attempt to prepare your spaceship for departure, but beware as one or more random players among the Crew are Impostors bent on killing everyone!\r\n\r\nOriginally created as a party game, we recommend playing with friends at a LAN party or online using voice chat. Enjoy cross-platform play between Android, iOS, Nintendo Switch, and PC. Coming soon to Xbox and PlayStation, which will also feature crossplay.', 'amongus.jpeg'),
(7, 'indie', 'minecraft', 'Minecraft 2', 'MmB9b5njVbA', 'https://www.minecraft.net/pl-pl', 'Minecraft is a 3-D computer game where players can build anything. The game which has been described as like an \'online Lego\' involves building blocks and creating structures across different environments and terrains. Set in a virtual world the game involves resource gathering, crafting items, building, and combat.', 'minecraft.jpeg'),
(10, 'indie', 'stardew-valley', 'Stardew Valley', 'ot7uXNQskhs', 'https://www.stardewvalley.net/', 'You\'ve inherited your grandfather\'s old farm plot in Stardew Valley. Armed with hand-me-down tools and a few coins, you set out to begin your new life. Can you learn to live off the land and turn these overgrown fields into a thriving home? It won\'t be easy. Ever since Joja Corporation came to town, the old ways of life have all but disappeared. The community center, once the town\'s most vibrant hub of activity, now lies in shambles. But the valley seems full of opportunity. With a little dedication, you might just be the one to restore Stardew Valley to greatness!\r\n', 'stardew-valley.jpg'),
(11, 'survival', 'green-hell', 'Green Hell', 'DmDLagkxe_Q', 'https://greenhell-game.com/', 'GREEN HELL is an Open World Survival Simulator set in the uncharted unique setting of the Amazonian rainforest.\r\n\r\nYou are left alone in the jungle without any food or equipment, trying to survive and find your way out. Clinging to life, the player is set on a journey of durability as the effects of solitude wear heavy not only on the body but also the mind. How long can you survive against the dangers of the unknown?\r\n\r\nOn this journey, you won’t get any help from the outside world. Equipped only with your bare hands you’ll have to learn actual survival techniques to build shelters, make tools, and craft weapons in order to hunt and defend yourself. Constantly threatened by the jungle you’ll fight with both wild animals and tropical sicknesses. Players will also have to face the traps set by your own mind and fears that crawl in the darkness of the endless jungle.\r\n\r\nSTORY\r\nYou are thrown deep into the emerald and impenetrable Amazonian rain forest. The green hell. Your goal is to survive in the depths of a nightmarish environment using truly intuitive means to escape. Having only a radio at your disposal you will follow the familiar voice of a loved one through this endless and inhospitable jungle, unveiling bit by bit how you got there in the first place. What you discover will be worse than what you fought so hard against to survive.\r\n\r\nTHE QUESTION\r\nWhere can the human mind wander?\r\n', 'green-hell.jpg'),
(15, 'survival', 'rust', 'Rust', 'LGcECozNXEw', 'https://rust.facepunch.com/', 'The only aim in Rust is to survive. Everything wants you to die - the island’s wildlife and other inhabitants, the environment, other survivors. Do whatever it takes to last another night.\r\n\r\nRust is in its 8th year and has now had over 300 content updates, with a guaranteed content patch every month. From regular balance fixes and improvements to AI and graphics updates to adding content like new maps, musical instruments, trains and drones, as well as regular seasons and events, there’s always something interesting or dangerous (or both) happening on the island.', 'rust.jpg'),
(16, 'survival', 'the-forest', 'The Forest', '7mwn5U2PNvk', 'https://endnightgames.com/games/the-forest', 'As the lone survivor of a passenger jet crash, you find yourself in a mysterious forest battling to stay alive against a society of cannibalistic mutants.\r\n\r\nBuild, explore, survive in this terrifying first person survival horror simulator.\r\n\r\nEnter a living, breathing world, where every tree and plant can be chopped down. Below ground explore a vast network of caves and underground lakes.\r\n\r\nChop down trees to build a camp, or start a fire to keep warm. Scavenge food to keep yourself from starving.\r\nBuild a small shelter or a large ocean side fortress. Lay traps and defences to keep a safe perimeter. Explore and build during the day. Defend your base at night. Craft weapons and tools. Bunker down during the evening or bring the fight directly to the enemy. Defend yourself against a clan of genetic mutant enemies that have beliefs, families, morals and that appear almost human. Use stealth to evade enemies, or engage them directly with crude weapons built from sticks and stones.', 'the-forest.jpg'),
(17, 'rpg', 'dark-souls-3', 'Dark Souls III', 'zDZYrIUgKE', 'https://en.bandainamcoent.eu/dark-souls/dark-souls-iii', 'DARK SOULS™ III continues to push the boundaries with the latest, ambitious chapter in the critically-acclaimed and genre-defining series.\r\n\r\nAs fires fade and the world falls into ruin, journey into a universe filled with more colossal enemies and environments. Players will be immersed into a world of epic atmosphere and darkness through faster gameplay and amplified combat intensity. Fans and newcomers alike will get lost in the game hallmark rewarding gameplay and immersive graphics.\r\nNow only embers remain… Prepare yourself once more and Embrace The Darkness!', 'ds3.jpg'),
(18, 'rpg', 'elden-ring', 'Elden Ring', 'qqiC88f9ogU', 'https://en.bandainamcoent.eu/elden-ring/elden-ring', 'HE NEW FANTASY ACTION RPG.\r\nRise, Tarnished, and be guided by grace to brandish the power of the Elden Ring and become an Elden Lord in the Lands Between.\r\n\r\n• A Vast World Full of Excitement\r\n\r\nA vast world where open fields with a variety of situations and huge dungeons with complex and three-dimensional designs are seamlessly connected. As you explore, the joy of discovering unknown and overwhelming threats await you, leading to a high sense of accomplishment.\r\n\r\n• Create your Own Character\r\n\r\nIn addition to customizing the appearance of your character, you can freely combine the weapons, armor, and magic that you equip. You can develop your character according to your play style, such as increasing your muscle strength to become a strong warrior, or mastering magic.\r\n\r\n• An Epic Drama Born from a Myth\r\nA multilayered story told in fragments.\r\n\r\nAn epic drama in which the various thoughts of the characters intersect in the Lands Between.\r\n\r\n• Unique Online Play that Loosely Connects You to Others\r\n\r\nIn addition to multiplayer, where you can directly connect with other players and travel together, the game supports a unique asynchronous online element that allows you to feel the presence of others.', 'elden-ring.jpg'),
(19, 'rpg', 'sekiro', 'Sekiro: Shadows Die Twice', 'rXMX4YJ7Lks', 'https://www.sekirothegame.com/', 'Game of the Year - The Game Awards 2019\r\nBest Action Game of 2019 - IGN\r\nOver 50 awards and nominations\r\n\r\nCarve your own clever path to vengeance in the critically acclaimed adventure from developer FromSoftware, creators of the Dark Souls series.\r\n\r\nIn Sekiro™: Shadows Die Twice you are the \'one-armed wolf\', a disgraced and disfigured warrior rescued from the brink of death. Bound to protect a young lord who is the descendant of an ancient bloodline, you become the target of many vicious enemies, including the dangerous Ashina clan. When the young lord is captured, nothing will stop you on a perilous quest to regain your honor, not even death itself.\r\n\r\nExplore late 1500s Sengoku Japan, a brutal period of constant life and death conflict, as you come face to face with larger than life foes in a dark and twisted world. Unleash an arsenal of deadly prosthetic tools and powerful ninja abilities while you blend stealth, vertical traversal, and visceral head to head combat in a bloody confrontation.\r\n\r\nTake Revenge. Restore Your Honor. Kill Ingeniously.', 'sekiro.jpg'),
(20, 'action', 'call-of-duty-warzone', 'Call of Duty: Warzone', '0E44DClsX5Q', 'https://www.callofduty.com/warzone', 'Warzone allows online multiplayer combat among 150 players, although some limited-time game modes support 200 players. Other modes include Plunder, Rebirth: Resurgence, Buy Back, Payload and Clash. The game features both cross-platform play and cross-platform progression between three games.', 'call-of-duty-warzone.jpg'),
(21, 'action', 'cs-go', 'Counter-Strike: Global Offensive', 'edYCtaNueQY', 'https://store.steampowered.com/app/730/CounterStrike_Global_Offensive/', 'Counter-Strike: Global Offensive (CS: GO) expands upon the team-based action gameplay that it pioneered when it was launched 19 years ago.\r\n\r\nCS: GO features new maps, characters, weapons, and game modes, and delivers updated versions of the classic CS content (de_dust2, etc.).\r\n\r\n\"Counter-Strike took the gaming industry by surprise when the unlikely MOD became the most played online PC action game in the world almost immediately after its release in August 1999,\" said Doug Lombardi at Valve. \"For the past 12 years, it has continued to be one of the most-played games in the world, headline competitive gaming tournaments and selling over 25 million units worldwide across the franchise. CS: GO promises to expand on CS\' award-winning gameplay and deliver it to gamers on the PC as well as the next gen consoles and the Mac.\"', 'cs-go.jpg'),
(22, 'action', 'pubg', 'Player Unknown\'s Battlegrounds', 'OUeQjwzSbc4', 'https://store.steampowered.com/app/578080/PUBG_BATTLEGROUNDS/', 'LAND, LOOT, SURVIVE!\r\nPlay PUBG: BATTLEGROUNDS for free.\r\nLand on strategic locations, loot weapons and supplies, and survive to become the last team standing across various, diverse Battlegrounds.\r\nSquad up and join the Battlegrounds for the original Battle Royale experience that only PUBG: BATTLEGROUNDS can offer.', 'pubg.jpg'),
(23, 'platformers', 'hollow-knight', 'Hollow Knight', 'UAO2urG23S4', 'https://www.hollowknight.com/', 'Brave the Depths of a Forgotten Kingdom\r\nBeneath the fading town of Dirtmouth sleeps a vast, ancient kingdom. Many are drawn beneath the surface, searching for riches, or glory, or answers to old secrets.\r\n\r\nAs the enigmatic Knight, you’ll traverse the depths, unravel its mysteries and conquer its evils.\r\n\r\nUse Your Skills and Reflexes to Survive\r\nHollow Knight is a challenging 2D action-adventure. You’ll explore twisting caverns, battle tainted creatures and escape intricate traps, all to solve an ancient long-hidden mystery.\r\n\r\nExplore vast, interconnected worlds.\r\n\r\nEncounter a bizarre collection of friends and foes.\r\n\r\nEvolve with powerful new skills and abilities.', 'hollow-knight.jpg'),
(24, 'platformers', 'little-nightmares-2', 'Little Nightmares II', 'MlX3kh1Y7Cg', 'https://en.bandainamcoent.eu/little-nightmares/little-nightmares-ii', 'Return to a world of charming horror in Little Nightmares II, a suspense adventure game in which you play as Mono, a young boy trapped in a world that has been distorted by the humming transmission of a distant tower.\r\n\r\nWith Six, the girl in the yellow raincoat, as his guide, Mono sets out to discover the dark secrets of The Signal Tower. Their journey won\'t be easy; Mono and Six will face a host of new threats from the terrible residents of this world.\r\n\r\nWill you dare to face this collection of new, little nightmares?', 'little-nightmares.jpg'),
(25, 'platformers', 'terraria', 'Terraria', 'w7uOhFTrrq0', 'https://terraria.org/', 'The very world is at your fingertips as you fight for survival, fortune, and glory. Delve deep into cavernous expanses, seek out ever-greater foes to test your mettle in combat, or construct your own city - In the World of Terraria, the choice is yours!\r\n\r\nBlending elements of classic action games with the freedom of sandbox-style creativity, Terraria is a unique gaming experience where both the journey and the destination are as unique as the players themselves!', 'terraria.jpg'),
(26, 'horror', 'outlast-2', 'Outlast 2', 'W73XZ1WHuLQ', 'https://store.steampowered.com/app/414700/Outlast_2/', 'Outlast 2 is the sequel to the acclaimed survival horror game Outlast. Set in the same universe as the first game, but with different characters and a different setting, Outlast 2 is a twisted new journey into the depths of the human mind and its dark secrets.\r\n\r\nOutlast 2 introduces you to Sullivan Knoth and his followers, who left our wicked world behind to give birth to Temple Gate, a town, deep in the wilderness and hidden from civilization. Knoth and his flock are preparing for the tribulations of the end of times and you’re right in the thick of it.\r\n\r\nYou are Blake Langermann, a cameraman working with your wife, Lynn. The two of you are investigative journalists willing to take risks and dig deep to uncover the stories no one else will dare touch.\r\n\r\nYou\'re following a trail of clues that started with the seemingly impossible murder of a pregnant woman known only as Jane Doe.\r\nThe investigation has lead you miles into the Arizona desert, to a darkness so deep that no one could shed light upon it, and a corruption so profound that going mad may be the only sane thing to do.', 'outlast.jpg'),
(27, 'horror', 'resident-evil-village', 'Resident Evil Village', 'Udnu2LBPdRc', 'https://store.steampowered.com/app/1196590/Resident_Evil_Village/', 'Experience survival horror like never before in the eighth major installment in the storied Resident Evil franchise - Resident Evil Village.\r\n\r\nSet a few years after the horrifying events in the critically acclaimed Resident Evil 7 biohazard, the all-new storyline begins with Ethan Winters and his wife Mia living peacefully in a new location, free from their past nightmares. Just as they are building their new life together, tragedy befalls them once again.\r\n\r\nFirst-Person Action\r\n\r\nPlayers will assume the role of Ethan Winters and experience every up-close battle and terrifying pursuit through a first-person perspective.\r\n\r\nFamiliar Faces and New Foes\r\n\r\nChris Redfield has typically been a hero in the Resident Evil series, but his appearance in Resident Evil Village seemingly shrouds him in sinister motives. A host of new adversaries inhabiting the village will relentlessly hunt Ethan and hinder his every move as he attempts to make sense of the new nightmare he finds himself in.', 'resident-evil-village.jpg'),
(28, 'horror', 'soma', 'Soma', 'cO8PLDh8UbE', 'https://store.steampowered.com/app/282140/SOMA/', 'SOMA is a sci-fi horror game from Frictional Games, the creators of Amnesia: The Dark Descent. It is an unsettling story about identity, consciousness, and what it means to be human.\r\n\r\nThe radio is dead, food is running out, and the machines have started to think they are people. Underwater facility PATHOS-II has suffered an intolerable isolation and we’re going to have to make some tough decisions. What can be done? What makes sense? What is left to fight for?\r\n\r\nEnter the world of SOMA and face horrors buried deep beneath the ocean waves. Delve through locked terminals and secret documents to uncover the truth behind the chaos. Seek out the last remaining inhabitants and take part in the events that will ultimately shape the fate of the station. But be careful, danger lurks in every corner: corrupted humans, twisted creatures, insane robots, and even an inscrutable omnipresent A.I.\r\nYou will need to figure out how to deal with each one of them. Just remember there’s no fighting back, either you outsmart your enemies or you get ready to run.', 'soma.jpg'),
(29, 'sports', 'fifa-22', 'FIFA 22', 'o1igaMv46SY', 'https://www.ea.com/games/fifa/fifa-22', 'Powered by Football™, EA SPORTS™ FIFA 22 brings the game even closer to the real thing with fundamental gameplay advances and a new season of innovation across every mode.\r\n\r\nWhat is FIFA?\r\n\r\nPlay The World’s Game with 17,000+ players, over 700 teams in 90+ stadiums and more than 30 leagues from all over the globe.\r\n\r\nGAME MODES\r\n\r\nCareer Mode\r\n\r\nLive out your dreams as both a manager and a player in FIFA 22. Create the newest club in FIFA, design your kits, style your stadium, and choose whether to compete with the elite or rise up from the lower divisions as you manage your club to glory. Or test your skills as a player, with a more immersive Player Career mode that gives you more ways to progress, achieve, and immerse yourself in your Pro’s journey through the game.\r\n\r\nVOLTA FOOTBALL\r\n\r\nTake it back to the streets with VOLTA FOOTBALL. Build a player, pick your gear, and express your style on the streets alone or with your squad in football playgrounds all around the world. Get rewarded for your skill on the ball with restyled gameplay, and play unique events in special locations each season as you unlock new gear through a new seasonal progression system that lets you earn XP towards all of the rewards on offer in VOLTA FOOTBALL, whichever mode you play.\r\n\r\nFIFA Ultimate Team\r\n\r\nGet involved with the most popular mode in FIFA, FIFA Ultimate Team. Build your dream squad from thousands of players from across the world of football, make your club your own on and off the pitch with custom kits, badges, and a whole FUT Stadium to leave your mark on, and take your team into matches against the AI or other players in the FUT Community. Plus, welcome back some of the game’s most memorable players as new FUT Heroes, as some of football’s most memorable players return to the pitch.\r\n\r\nUnrivaled Authenticity\r\n\r\nPlay with the world’s biggest players in the world’s biggest competitions, including the iconic UEFA Champions League, UEFA Europa League, brand new UEFA Europa Conference League, CONMEBOL Libertadores, CONMEBOL Sudamericana, Premier League, Bundesliga, LaLiga Santander, and many more!', 'fifa-22.jpg'),
(30, 'sports', 'nba-2k22', 'NBA 2K22', 'OcUzwnA569M', 'https://nba.2k.com/', 'A WORLD OF BASKETBALL.\r\nNBA 2K22 puts the entire basketball universe in your hands. PLAY NOW in real NBA and WNBA environments against authentic teams and players. Build your own dream team in MyTEAM with today’s stars and yesterday’s legends. Live out your own pro journey in MyCAREER and experience your personal rise to the NBA. Flex your management skills as a powerful Executive in MyGM and MyLEAGUE. Anyone, anywhere can hoop in NBA 2K22.\r\n\r\nSTEP YOUR GAME UP.\r\nNew tactical offense meets an overhauled defense for a more competitive and immersive NBA 2K22. Add skill-based dribbling, shooting, dunking, and alley-oops to your bag of moves, and counter them with ferocious new blocks and contests on the other end of the court.\r\n\r\nALL ABOARD THE CRUISE.\r\nSet sail for the high seas in the all-new 2K22 Neighborhood, made for PC. Create your perfect MyPLAYER, level up for rewards, and express yourself through both your game and your style.\r\n\r\nYOUR DREAM TEAM.\r\nCollect, craft, and hoop in the ultimate NBA fantasy competition: NBA 2K22 MyTEAM. Build your dream lineup of NBA stars and legends across any era, and explore game-changing evolutions to the MyTEAM experience – each addition introduced Season after Season.\r\n\r\nNEW SEASONS, NEW DISCOVERIES.\r\nThe NBA Playoffs are the ultimate battleground for heroes in the making, putting players through a gauntlet of grueling challenges. Those worthy of greatness embrace the moment. NBA 2K22’s Season 7: Return of Heroes takes things to a new level, marking the dawn of a new era. Headlined by MVP candidate and scoring champion Joel Embiid, Season 7 is setting the stage for what’s sure to be an unbelievable conclusion to the 2021-2022 NBA Season.', 'nba-2k22.jpg'),
(31, 'sports', 'rocket-league', 'Rocket League', 'SgSX3gOrj60', 'https://www.rocketleague.com/', 'Rocket League is a high-powered hybrid of arcade-style soccer and vehicular mayhem with easy-to-understand controls and fluid, physics-driven competition.\r\n\r\nDownload and compete in the high-octane hybrid of arcade-style soccer and vehicular mayhem! customize your car, hit the field, and compete in one of the most critically acclaimed sports games of all time! Download and take your shot!\r\n\r\nHit the field by yourself or with friends in 1v1, 2v2, and 3v3 Online Modes, or enjoy Extra Modes like Rumble, Snow Day, or Hoops. Unlock items in Rocket Pass, climb the Competitive Ranks, compete in Competitive Tournaments, complete Challenges, enjoy cross-platform progression and more! The field is waiting. Take your shot!', 'rocket-league.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
