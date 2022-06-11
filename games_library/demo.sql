-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2018 at 09:25 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `url_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table for TEC610 Demo 2014';

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`game_id`, `category`, `url_name`, `title`, `video`, `website`, `bio`, `image`) VALUES
(6, 'hard', 'ac_dc', 'AC/DC', 'pAgnJDJN4VA', 'http://www.acdc.com/us/home', 'AC/DC underwent several line-up changes before releasing their first album, High Voltage, on 17 February 1975. Membership subsequently stabilised until bassist Mark Evans was replaced by Cliff Williams in 1977 for the album Powerage. Within months of recording the album Highway to Hell, lead singer and co-songwriter Bon Scott died on 19 February 1980 after a night of heavy alcohol consumption. The group briefly considered disbanding, but buoyed by support from Scott\\\'s parents, decided to continue and set about finding a new vocalist. Ex-Geordie singer Brian Johnson was auditioned and selected to replace Scott. Later that year, the band released the new album, Back in Black, which was made as a tribute to Bon Scott. The album launched them to new heights of success and became their all time best-seller, selling over 10,000 copies a day in its first week.\r\n\r\nThe band\\\'s next album, For Those About to Rock We Salute You, was their first album to reach number one in the United States. AC/DC declined in popularity soon after drummer Phil Rudd was fired in 1983 and was replaced by future Dio drummer Simon Wright. The band experienced a resurgence in the early 1990s with the release of The Razors Edge. Phil Rudd returned in 1994 after Chris Slade, who was with the band from 1989 to 1994, was asked to leave in favour of him, and contributed to the band\\\'s 1995 album Ballbreaker. Since then, the band\\\'s line-up has remained the same. Stiff Upper Lip was released in 2000 and was well received by critics, and the band\\\'s latest studio album, Black Ice, was released on 20 October 2008 and was the second-highest-selling album of that year. It was their biggest hit on the charts since For Those About to Rock, eventually reaching No.1 on all charts worldwide.\r\n\r\nAs of 2010, AC/DC had sold more than 200 million albums worldwide, including 71 million albums in the United States alone, making them the fifth-best-selling band in the United States. Back in Black has sold an estimated 50 million units worldwide, making it the fifth-highest-selling album by any artist â€“ and the third-highest-selling album by any band. The album has sold 22 million units in the US alone, where it is the sixth-highest-selling album of all time. AC/DC ranked fourth on VH1\\\'s list of the \\\"100 Greatest Artists of Hard Rock\\\" and were named the seventh \\\"Greatest Heavy Metal Band of All Time\\\" by MTV. In 2004, AC/DC ranked No. 72 on the Rolling Stone list of the \\\"100 Greatest Artists of All Time\\\". Legendary producer Rick Rubin, who wrote an essay on the band for the Rolling Stone list, referred to AC/DC as \\\"the greatest rock and roll band of all time.\\\" In 2010, AC/DC were ranked number 23 in the VH1 list of the \\\"100 Greatest Artists of All Time\\\".', 'ac_dc.jpg'),
(7, 'hard', 'black_sabbath', 'Black Sabbath', 'MeZ8uVIOIhM', 'http://www.blacksabbath.com/', 'Black Sabbath are an English rock band, formed in Birmingham in 1968, by guitarist Tony Iommi, bassist Geezer Butler, singer Ozzy Osbourne, and drummer Bill Ward. The band has since experienced multiple line-up changes, with Tony Iommi the only constant presence in the band through the years. Originally formed in 1968 as a heavy blues rock band named Earth, the band began incorporating occult themes with horror-inspired lyrics and tuned-down guitars. Despite an association with occult and horror themes, Black Sabbath also composed songs dealing with social instability, political corruption, the dangers of drug abuse and apocalyptic prophecies of the horrors of war.\r\n\r\nOsbourne\'s heavy drug use led to his dismissal from the band in 1979. He was replaced by former Rainbow vocalist Ronnie James Dio. After a few albums with Dio\'s vocals and songwriting collaborations, Black Sabbath endured a revolving line-up in the 1980s and 1990s that included vocalists Ian Gillan, Glenn Hughes, Ray Gillen and Tony Martin, as well as multiple members of Deep Purple and Rainbow. In 1992, Iommi and Butler rejoined Dio and drummer Vinny Appice to record Dehumanizer. The original line-up reunited with Osbourne in 1997 and released a live album Reunion. Black Sabbath\'s 19th studio album, 13, which features three of the original members, was released in June 2013.\r\n\r\nBlack Sabbath are cited as pioneers of heavy metal. The band helped define the genre with releases such as Black Sabbath (1970), Paranoid (1970) and Master of Reality (1971). They were ranked by MTV as the \"Greatest Metal Band\" of all time, and placed second in VH1\'s \"100 Greatest Artists of Hard Rock\" list. Rolling Stone magazine ranked them number 85 in their \"100 Greatest Artists of All Time\". They have sold over 70 million records worldwide. Black Sabbath were inducted into the UK Music Hall of Fame in 2005 and the Rock and Roll Hall of Fame in 2006. They have also won two Grammy Awards for Best Metal Performance.', 'black_sabbath.jpg'),
(10, 'classic', 'deep_purple', 'Deep Purple', 'JyAZ4oEQkTs', 'http://www.deeppurple.com/', 'Deep Purple are an English rock band formed in Hertford in 1968. They are considered to be among the pioneers of heavy metal and modern hard rock, although their musical approach changed over the years. Originally formed as a progressive rock band, the band\'s sound shifted to hard rock in 1970. Deep Purple, together with Led Zeppelin and Black Sabbath, have been referred to as the \"unholy trinity of British hard rock and heavy metal in the early to mid-Seventies\". They were listed in the 1975 Guinness Book of World Records as \"the globe\'s loudest band\" for a 1972 concert at London\'s Rainbow Theatre, and have sold over 100 million albums worldwide, including 8,5 million certified units in the US.\r\n\r\nThe band has gone through many line-up changes and an eight-year hiatus (1976-1984). The 1968-1976 line-ups are commonly labelled Mark I, II, III and IV. Their second and most commercially successful line-up featured Ian Gillan (vocals), Jon Lord (organ), Roger Glover (bass), Ian Paice (drums), and Ritchie Blackmore (guitar). This line-up was active from 1969 to 1973, and was revived from 1984 to 1989, and again from 1992 to 1993. The band achieved more modest success in the intervening periods between 1968 and 1969 with the line-up including Rod Evans (vocals) and Nick Simper (bass, backing vocals), between 1974 and 1976 (Tommy Bolin replacing Blackmore in 1975) with the line-up including David Coverdale (vocals) and Glenn Hughes (bass, vocals), and between 1989 and 1992 with the line-up including Joe Lynn Turner (vocals). The band\'s line-up (currently featuring Ian Gillan, and guitarist Steve Morse from 1994) has been much more stable in recent years, although organist Jon Lord\'s retirement from the band in 2002 (being succeeded by Don Airey) left Ian Paice as the only original Deep Purple member still in the band.\r\n\r\nDeep Purple were ranked number 22 on VH1\'s Greatest Artists of Hard Rock programme and a British radio station Planet Rock poll ranked them 5th among the \"most influential bands ever\". At the 2011 Classic Rock Awards in London, they received the Innovator Award. In October 2012, Deep Purple were nominated for the first time for the Rock and Roll Hall of Fame, but were not voted in the following March. In October 2013, the band was announced as a Hall of Fame nominee for a second time.', 'deep_purple.jpg'),
(11, 'metal', 'metallica', 'Metallica', 'DDGhKS6bSAE', 'https://www.metallica.com/', 'Metallica is an American heavy metal band from Los Angeles, California. The band\'s fast tempos, instrumentals, and aggressive musicianship placed them as one of the founding \"big four\" of thrash metal alongside Slayer, Megadeth, and Anthrax. Metallica was formed in 1981 when James Hetfield responded to an advertisement that drummer Lars Ulrich had posted in a local newspaper. The current line-up features founders Hetfield (vocals, rhythm guitar) and Ulrich (drums), longtime lead guitarist Kirk Hammett and bassist Robert Trujillo, who joined the band in 2003. Previous members of the band are lead guitarist Dave Mustaine, who went on to found Megadeth, bassists Ron McGovney (demos only), Cliff Burton (the first three records, died in 1986), and Jason Newsted. The band also had a long collaboration with producer Bob Rock, who produced all of its albums from 1990 to 2003 and served as a temporary bassist between the departure of Newsted and the hiring of Trujillo. \r\n\r\nThe band earned a growing fan-base in the underground music community and critical acclaim with its first four albums, with their third, Master of Puppets (1986), described as one of the most influential and \"heavy\" thrash metal albums. Metallica achieved substantial commercial success with their eponymous fifth album (also known as The Black Album), which debuted at number one on the Billboard 200. With this release the band expanded its musical direction resulting in an album that appealed to a more mainstream audience. \r\n\r\nIn 2000, Metallica was among a number of artists who filed a lawsuit against Napster for sharing the band\'s copyright-protected material for free without any band member\'s consent. A settlement was reached, and Napster became a pay-to-use service. Despite reaching number one on the Billboard 200, the release of St. Anger (2003) alienated many fans with the exclusion of guitar solos and the \"steel-sounding\" snare drum. A film titled Some Kind of Monster documented the recording process of St. Anger and the tensions within the band during that time. In 2009, Metallica was inducted into the Rock and Roll Hall of Fame. \r\n\r\nMetallica has released nine studio albums, four live albums, five extended plays, 25 music videos, and 37 singles. The band has won nine Grammy Awards, and has had five consecutive albums debut at number one on the Billboard 200, making Metallica the first band to do so. The band\'s eponymous 1991 album has sold over 16 million copies in the United States, making it the best-selling album of the SoundScan Era. Metallica ranks as one of the most commercially successful bands of all time, having sold over 110 million records worldwide. Metallica has been listed as one of the greatest artists of all time by many magazines, including Rolling Stone, which ranked them 61st on its list of The 100 Greatest Artists of All Time. As of December 2012, Metallica is the fourth best-selling music artist since Nielsen SoundScan began tracking sales in 1991, selling a total of 53,642,000 albums in the United States alone. \r\n\r\nIn 2012, Metallica formed the independent record label Blackened Recordings, and took ownership of all of their albums and videos.', 'metallica.jpg'),
(15, 'metal', 'Maiden', 'Iron Maiden', 'jgLPF3t9TUs', 'http://www.ironmaiden.com/', 'Iron Maiden\r\n\r\n\r\nIron Maiden are an English heavy metal band formed in Leyton, east London, in 1975 by bassist and primary songwriter Steve Harris. The band\'s discography has grown to thirty-seven albums, including fifteen studio albums, eleven live albums, four EPs, and seven compilations. \r\n\r\nPioneers of the New Wave of British Heavy Metal, Iron Maiden achieved initial success during the early 1980s. After several line-up changes, the band went on to release a series of US and UK platinum and gold albums, including 1982\'s The Number of the Beast, 1983\'s Piece of Mind, 1984\'s Powerslave, 1985\'s live release Live After Death, 1986\'s Somewhere in Time and 1988\'s Seventh Son of a Seventh Son. Since the return of lead vocalist Bruce Dickinson and guitarist Adrian Smith in 1999, the band have undergone a resurgence in popularity,[1] with their latest studio offering, The Final Frontier, peaking at No. 1 in 28 different countries and receiving widespread critical acclaim. \r\n\r\nDespite little radio or television support,[2] Iron Maiden are considered one of the most successful heavy metal bands in history, with The New York Times reporting in 2010 that they have sold over 85 million records worldwide.[3] The band won the Ivor Novello Award for international achievement in 2002. As of October 2013, the band have played over 2000 live shows throughout their career. For the past 35 years, the band have been supported by their famous mascot, \"Eddie\", who has appeared on almost all of their album and single covers, as well as in their live shows.', 'iron_maiden.jpg'),
(16, 'classic', 'led_zeppelin', 'Led Zeppelin', 'iP9xMobANJM', 'http://www.ledzeppelin.com/', 'Led Zeppelin were an English rock band formed in London in 1968. The band consisted of guitarist Jimmy Page, singer Robert Plant, bassist and keyboardist John Paul Jones, and drummer John Bonham. The group\'s heavy, guitar-driven sound, rooted in blues on their early albums, has drawn them recognition as one of the progenitors of heavy metal, though their unique style drew from a wide variety of influences, including folk music. \r\n\r\nAfter changing their name from the New Yardbirds, Led Zeppelin signed a deal with Atlantic Records that afforded them considerable artistic freedom. Although the group was initially unpopular with critics, they achieved significant commercial success with albums such as Led Zeppelin (1969), Led Zeppelin II (1969), Led Zeppelin III (1970), their untitled fourth album (1971), Houses of the Holy (1973), and Physical Graffiti (1975). Their fourth album, which features the track \"Stairway to Heaven\", is among the most popular and influential works in rock music, and it helped to cement the popularity of the group. \r\n\r\nPage wrote most of the music early in Led Zeppelin\'s career, while Plant generally supplied the songs\' lyrics. Jones\' keyboard-based compositions later became central to the group\'s music, and their later albums featured greater experimentation. The latter half of the band\'s career saw a series of record-breaking tours that earned them a reputation for excess and debauchery. Although they remained commercially and critically successful, their output and touring schedule were limited in the late 1970s, and the group disbanded following Bonham\'s death from alcohol-related asphyxia in 1980. In the decades since, the surviving members have sporadically collaborated and participated in one-off Led Zeppelin reunions. The most successful of these was at the 2007 Ahmet Ertegun Tribute Concert in London, with Jason Bonham taking his late father\'s place behind the drums. \r\n\r\nLed Zeppelin are widely considered one of the most successful, innovative and influential rock groups in history. They are one of the best-selling music artists in the history of audio recording; various sources estimate the group\'s record sales at 200 to 300 million units worldwide. With 111.5 million RIAA-certified units, they are the second-best-selling band in the United States. Each of their nine studio albums placed on the Billboard Top 10 and six reached the number-one spot. Rolling Stone magazine described them as \"the heaviest band of all time\", \"the biggest band of the \'70s\" and \"unquestionably one of the most enduring bands in rock history\". They were inducted into the Rock and Roll Hall of Fame in 1995; the museum\'s biography of the band states that they were \"as influential in that decade [the 1970s] as the Beatles were in the prior one\".', 'led_zeppelin.jpg');

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
(1, '2018-05-23 09:25:25', 7, 'Andreas', 'andreas@test.con', 'Δοκιμαστικό σχόλιο.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
