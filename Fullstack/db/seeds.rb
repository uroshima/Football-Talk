# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Story.destroy_all

demoUser = User.new({
  email: "email",
  # username: "user",
  password: "password"
})

demoUser.save!

urosh = User.new({
  email: "urosh",
  # username: "user",
  password: "password"
})

urosh.save!

cherry = User.new({
  email: "cherry",
  # username: "user",
  password: "password"
})

cherry.save!

darko = User.new({
  email: "darko",
  # username: "user",
  password: "password"
})

darko.save!

ucko = User.new({
  email: "ucko",
  # username: "user",
  password: "password"
})

ucko.save!

urosh_story = Story.new({
  title: "A shirt sold every minute and six million new followers - The mind-blowing Cristiano Ronaldo effect",
  subtitle: "The Portuguese superstar has yet to make his Serie A debut but he has already made a huge impact on the Italian game off the field",
  content: (<<-UROSH
  "What is the 'Cristiano Ronaldo Effect'?

 It is now everywhere in Italy. It is all around us. It is both real and virtual.


 You can see it when you look out your window and there are kids with 'CR7' shaved into their heads all wearing the same Juventus jersey.
 Or when you turn on your television and are inundated with ads hailing ' Il colpo del secolo ' (The deal of the century).

 It is evident on the front page of every newspaper at every news stand in every city up and down the peninsula, but it can also be found at the gelateria, where one can buy a 'CR7' ice cream.

 'The Cristiano Ronaldo Effect' transcends sport. It dominates social media and even influences the stock market.

 It is why Juventus ultimately decided to pay over €100 million for a 33-year-old forward on July 10.
 When Cristiano Ronaldo's agent, Jorge Mendes, first informed Juventus in the spring of this year that his client wanted to move to Turin, the Bianconeri did not immediately rush to make it happen.

 Club president Andrea Agnelli, CEO Beppe Marotta and the rest of Juve's directors met several times to carefully consider the financial merits of putting together a package worth a grand total of €341m (a €117m transfer fee plus an estimated €224m in wages over the next four years) for a man who will be 34 by the time the next Champions League knockout stage rolls around.

 In the end, the Bianconeri board deemed Ronaldo worth the colossal investment, both from a sporting and financial perspective.

 Juve's directors, players and supporters had seen first hand that the Portuguese remains in excellent physical condition when, on April 3, he netted an incredible, acrobatic overhead kick in Real Madrid's 3-0 Champions League win in Turin.

 His impressive mental fortitude was also on show eight days later at the Santiago Bernabeu when he nervelessly converted the injury-time spot-kick that decided the quarter-final tie in the Spanish club's favour.

 Less than a year after his double in the final in Cardiff, Ronaldo's goals had once again killed Juve's hopes of winning a first Champions League since 1996. Now, he has revived them.
 However, as Timothy Bridge, author of Deloitte 's 'Football Money League' explains, Juve haven't just signed Ronaldo to help them on the field.

 "The reasoning behind signing Ronaldo will have been two-fold," he tells Goal . "Firstly, it will be about trying to ensure that they not just maintain but raise the level of their on-field performances over the past few years.

 "They believe that, even at 33, Ronaldo can win them the Champions League. Anyone who's watched Juve's Netflix documentary will know that European success is their primary aim.

 "They've won Serie A seven years in a row; now they want the Champions League. And they, quite understandably, believe that Ronaldo can help them do it.

 "At the same time, though, in an era in which Serie A wasn't providing Juventus with the global exposure that clubs in the Premier League and the top two in Spain are enjoying, I think Ronaldo's signing has to be read as a key part of an internationalisation strategy on the part of Juve.

 "This transfer is about making Juve as attractive as possible to both fans across the world and potential commercial partners.

 "Ronaldo is still one of the best players in the world, if not the best, and that brings credibility. But he's also undeniably the biggest draw in world football and that brings with it greater commercial revenue opportunities, which is where Juve still lag behind the game's superpowers: Barcelona, Real Madrid and Manchester United.

 "So, fans want to follow him and, consequently, companies want to be associated with him. New commercial opportunities – that's where the real value lies for Juve because, as we've already seen, they've experienced a massive spike in their social media following over the past month."
 There is an old adage in football that 'Nobody is bigger than the club' but, in terms of social media, Ronaldo is bigger than Juventus.

 At the time of writing, the five-time Ballon d'Or winner has approximately 334.9m followers across Twitter, Facebook and Instagram; Juve have 55.1m – and Ronaldo's arrival is responsible for six million of those.

 In addition, according to Deportes & Finanzas , Juve ranked no.1 among football clubs for YouTube views in July (as well as Instagram and Facebook interactions), with 36.3m. When one considers that the club had just 3.07m views the month before, the staggering scale of Ronaldo's pulling power can be fully appreciated.

 Of course, internet increases do not equate to an immediate monetary boost for the Old Lady but they are far more significant than the much-discussed rise in share price (from 0.627 cents on June 11 to 0.861 by August 10) or the surge in shirt sales (one a minute the day after his arrival).

 It has been suggested that Ronaldo will repay his transfer fee in jerseys alone but that is simply not the case, given Juve 'only' receive between 20 and 25 per cent of the money that kit supplier adidas make from every unit shifted.

 That share of the spoils is nothing to be scoffed at but it is the social media spike that is potentially of far greater value to Juve."
 UROSH
),
 author_id: urosh.id
  })

#   paragraph_length = rand(10..30)
# paragraph_number = rand(3..15)
# body = ""
#
# (paragraph_number).times do |i|
#   body += (Faker::Lorem.paragraphs(paragraph_length).join(" ") + "\n")
#   end

  urosh_story.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/cristiano-ronaldo-juventus_1xn2okpz3lm9v13oeqarpzi9j7.jpg')), filename: "urosh_story.jpg")
  urosh_story.save!

cherry_story = Story.new({
  title: "Mourinho vs Pogba: How a ‘special’ relationship unravelled at Man Utd",
  subtitle: "An outspoken Portuguese coach and a flamboyant French midfielder appeared to be a match made in heaven, but they are now in danger of drifting apart",
  content: (<<-UROSH
  "Manchester United star Paul Pogba reportedly has his heart set on joining Barcelona and wants to make the switch even if his soured relationship with manager Jose Mourinho shows signs of healing.

 The Daily Mail's Chris Wheeler wrote that Pogba's wish to join the Blaugrana is now United's main concern, not his fractious relationship with Mourinho.

 The Red Devils chief was said to have been "angered and surprised" by the France international's comments following the 2-1 league win over Leicester on Friday, when he told the press: "There are things I can't say, otherwise I will get fined."

 According to Wheeler, Pogba has already told team-mates and United executive vice-chairman Ed Woodward he wants to leave the club. His agent, Mino Raiola, is also understood to have terms agreed with Barca, who had a bid for the midfielder rejected this summer and aren't expected to complete a move before La Liga's transfer window shuts on August 31.

 Pogba's reported Barca intentions could alter the approach of United, who had previously been anticipating a choice between player and manager, as it was framed on BBC 5 Live Sport.

 Not for the first time, the relationship between Pogba and Mourinho is described as being at an all-time low. Wheeler traced the degradation of their relationship back to last September, when it's alleged the midfielder ignored medical advice to treat a hamstring injury with his own trainer.

 The former Juventus talisman was dropped by Mourinho at one point last year and missed out on a starting place in each leg of their UEFA Champions League exit to Sevilla in the round of 16.

 TalkSport presenters Alan Brazil and Ally McCoist reacted to Thursday's reports of Pogba's attraction towards the Camp Nou, and the former referred to the 2018 FIFA World Cup winner as "arrogant and aloof":
 For all the criticism Mourinho has come in for during his time at United, there have been games that one might have expected Pogba to take by the scruff of the neck, only to fall short. Two years on from spending £89 million to bring their ex-academy star back and United may have expected more.

 Wheeler mentioned that Pogba "would have loved" a move to Spain at the time of his transfer back to Old Trafford, but neither Barca nor Real Madrid showed the same interest as United.

 Mourinho may not be Pogba's primary cause for wanting to join the Blaugrana, but their declining relationship is unlikely to have helped his ambition to stay.

 Goal's Kris Voakes stipulated that harmony between the two would, however, be crucial to the club's success moving forward.

 United's inability to sign a replacement means Barcelona are unlikely to complete a signing this summer, but Pogba's motivation to move will give the Catalan giants hopes of renewing their interest in future."
 UROSH
 ),
 author_id: cherry.id
  })
  cherry_story.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/Mourinho-and-Paul-Pogba-File-Photo.jpg')), filename: "cherry_story.jpg")
  cherry_story.save!

ucko_story = Story.new({
  title: "No Ronaldo, no Zidane, no trophy! Costa mauls Madrid's defence in Super Cup shocker",
  subtitle: "Julen Lopetegui's reign as Real Madrid manager got off to a historically bad start, as the European champions were beaten 4-2 in Tallinn by Atletico",
  content: (<<-UROSH
    "No Ronaldo, no Zidane, and no trophy!

 We knew before Wednesday's UEFA Super Cup final that Real Madrid would face Atletico Madrid without both Zinedine Zidane and Cristiano Ronaldo.
 What we did not know was that the reigning European champions would also turn up in Tallinn without a defence.

 Madrid's back four were wretched, badly beaten up by the brilliant Diego Costa, but ultimately undone by their own ineptitude.

 Every goal Real conceded in their 4-2 defeat at the A. Le Coq Arena featured at least one horrendous error from a defensive perspective.

 In that context, it would be wrong to apportion too much of the blame to Julen Lopetegui, especially given the usual pre-season rustiness and post-World Cup fatigue could well have been factors in his players’ shocking sloppiness, but this was a disconcerting debut for the Blancos' new boss.

 Indeed, not since Michael Keeping in 1948 had a Real coach seen his side concede four times in his first game at the helm and that the defeat came at the hands of their city rivals only made the experience all the more galling.

 Death, taxes and beating Atletico in European finals: they are the three constants in life, as far as Real fans are concerned. As a result, this loss will only heighten the sense of unease among the Bernabeu faithful ahead of the new season.

 The build-up had been shrouded in enough uncertainty, as far as they were concerned. How would Real play without Zidane? How would they fare without Ronaldo? Why had their been no stellar summer signings?

 The last thing Madrid supporters wanted to see, then, was such a horribly disjointed, disorganised display.

 The strange and unsettling lack of solidity was evident from the off, too, with Real conceding the fastest goal in Super Cup history. Costa required just 49 seconds to open the scoring, taking advantage of not one, not two, but three Real errors.

 Sergio Ramos cut an uncharacteristically passive figure as the Atleti striker brushed him aside to win his own knock-on, while Raphael Varane got his footwork all wrong as he rushed across in a desperate attempt to snuff out the danger, thus allowing Costa to nod the ball past him.

 Even then, though, Costa had no right to score from such an acute angle. His shot was fiercely struck but Keylor Navas was unforgivably beaten at his near post.

 It was a goal that would have hit the Costa Rican hard. With new signing Thibaut Courtois ineligible to play in Estonia, the Super Cup represented an excellent opportunity for him to show that he will not give up his starting berth without a fight.

 Instead, he merely gave Lopetegui a convenient excuse for dropping him for this weekend's Liga opener against Getafe. The goalkeeper may not be the only one benched either.

 Varane got worse the longer the game went on and it was he who was dispossessed in the lead-up to Atletico’s third goal, from Koke.

 Of course, Ramos, who had put Real ahead with a penalty, had done his central defensive partner no favours at all by needlessly putting him under pressure while facing his own goal and stood on the edge of his own box.

 Dani Carvajal was also barged far too easily off the ball by Costa in the lead-up to Atletico’s killer fourth goal, while quite what Marcelo was trying to achieve by keeping the ball in play before Costa’s earlier equaliser is anyone’s guess.

 Before the game, the question had been whether Real would carry the same cutting edge without Ronaldo but Marco Asensio did enough to suggest that he has a big season in him, while Gareth Bale and Karim Benzema combined for a terrific goal that served as a scintillating reminder of their enduring class.

 However, they were unable to make up for the deficiencies of those at the back as Madrid conceded four goals against Atletico in a final for the first time.

 The scary thing was that they could have conceded more than goals, with Real's dismal defence having been left completely exposed by Casemiro's withdrawal 15 minutes before the end of normal time.

 Lopetegui had spoken beforehand about forgetting the past in order to continue making history in the future. Real losing a first final in 18 years was most certainly not what he had in mind, though.

 Consequently, his present will not be about making more history but simply ensuring that his new Madrid side kick off their Liga campaign on Sunday looking something like their old selves."
 UROSH
 ),
 author_id: ucko.id
  })
  ucko_story.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/saul-niguez-atletico-madrid-real-madrid-uefa-super-cup-2018_182jbk94fwjjy1nzxbdzp6wdlc.jpg')), filename: "cherry_story.jpg")
  ucko_story.save!

darko_story = Story.new({
  title: "Captain Messi promises to do 'everything possible' to guide Barcelona to the Champions League",
  subtitle: "The Argentine is proud to pull on the armband and hopes he can fill the big shoes left by the departing Andres Iniesta, while leading Barca to glory",
  content: (<<-UROSH
    "Lionel Messi says following in the footsteps of Andres Iniesta, Xavi and Carles Puyol is an honour and being taught by the trio stands him in good stead as Barcelona's new captain, with the aim of bringing the Champions League trophy back to Camp Nou.

 Messi, already captain for Argentina although reports have suggested he could step down from international duty, takes over the role after Iniesta departed for Japanese club Vissel Kobe.

 The Barca forward gave the traditional captain's address to the Camp Nou crowd ahead of Wednesday's Joan Gamper Trophy clash with Boca Juniors.

 "First of all, I want to say that for me it is a great pride to be the captain," Messi said.

 "I know what it means to be the captain of Barca, but I had great teachers like Puyol, Xavi and the great Andres, who we will miss this year."
 Messi said making up for last term's shock loss to Roma in the Champions League is top of his agenda, Barca having collapsed from 4-1 up after the first leg to exit on away goals at the quarter-final stage.

 "Regarding this year, I think we have set a platform to get excited, the signings that came will help us a lot to be better than we were.

 "Although last year we won La Liga and the Copa del Rey, we all got stung in the Champions League.

 "We promise that we will do everything possible so that this beautiful cup returns to the Camp Nou again.""
 UROSH
 ),
 author_id: darko.id
  })
  darko_story.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/lionel-messi-barcelona_1jjjsvo9sweri1fcbz1pjsqzf8.jpg')), filename: "cherry_story.jpg")
  darko_story.save!

darko_story1 = Story.new({
  title: "'Jorginho is absolutely outstanding for Chelsea' - Wise impressed by summer signing",
  subtitle: "The Blues legend has noticed the impact that has been made by the £57 million transfer, who has starred in early appearances",
  content: (<<-UROSH
    "Dennis Wise believes that Jorginho has been "absolutely outstanding" for Chelsea and believes that his relationship with manager Maurizio Sarri will be key to the Blues' future success.

 Wise, who is a former Chelsea captain, has been watching the Italy international closely, having travelled to some of the club's pre-season games ahead of the new campaign.

 Since arriving at Stamford Bridge along with Maurizio Sarri from Napoli, Jorginho has made an immediate impact and netted a debut penalty, as Chelsea ran out 3-0 winners on the opening day of the season against Huddersfield Town.

 "I like the boy [Sarri] has brought in, Jorginho, I think he has been absolutely outstanding," Wise told Goal in an exclusive interview.

 "I have watched him and how he covered holes, how he pressed and he dictates to his team-mates as he wants them to do certain things.

 "I think by bringing in Jorginho, you bring in someone who knows Sarri very well and how he plays and what he wants to do.

 "When you have someone right in the middle of that midfield who understands how the manager plays and dictates that to everyone, I think it is really helpful and he has so much quality as well.

 "I think he has given the ball away once over the whole pre-season. I am actually looking forward to seeing him progress over the course of this season."

 Wise, who ranks seventh in the all-time top appearance makers for Chelsea with 445 matches under his belt, continues to maintain a close relationship with his former club and he has been impressed with the speed at which Sarri has imprinted his ideology since joining from Napoli just over a month ago.

 "I think he had only been with them for 21 days [before the Community Shield game against Man City], so it is a short period that he has been in charge," Wise said. "He has had to change the system from a 3-4-3 to a 4-3-3 now and they have worked on it in an impressive manner, having watched them against Arsenal [in pre-season].

 "I think in that first half they played very, very well. I was impressed with the way they were set up and they haven’t had all their personnel throughout pre-season, so probably the team that starts in each game might not stay the same to begin with.

 "After a couple of games into the start of the season you will see a couple of players coming back into it. What I see, in terms of the way they play, they press very, very high. They want the ball constantly and they want to control the game.

 "It is different from Jose Mourinho and Antonio Conte, who were more counter-attacking in their football. I think Maurizio wants to play on the front foot. That’s important for him, he wants to press teams high. It is difficult because the work rate, you have to keep up.

 "He did it at Napoli and it worked extremely well, so I am looking forward to actually seeing him do that because I think it is going to be very exciting to see Chelsea on the front foot and passing it around teams."
 According to Wise, reigning champions Manchester City are still the team to beat in the Premier League this season, while Liverpool are also expected to mount a challenge, but Wise is hopeful that Chelsea can close the gap and be the "surprise package".

 "I think everyone is looking at Man City, they had 100 points last season. Nineteen points ahead of Man United and 30 points ahead of Chelsea so that’s a big gulf to catch up," continued the 51-year-old. "They have done it in such a commanding way, that you have to catch them.

 "We are hoping that a little bit of complacency creeps in [at Man City]. You look at Chelsea, they did very well when Antonio Conte came in for his first season and won the league. I don’t think anyone expected that to happen.

 "I think the expectations at Chelsea this year is people are not expecting them to win the league. What you need to do is to see how it pans out. I think it could be quite interesting because Chelsea have a lot of quality players but they never hit it off.
 "Whether that was internal or inside the dressing room, who knows, but now there is a fresh start. They could be a surprise package again, Chelsea. Everyone is expecting Man City to win it and Liverpool to press them because of the amount of money that they have spent.

 "Liverpool plugged gaps where they needed and I think they have really spent well but now the expectations are there as well. So they have to live with those expectations. I think those are the two teams that people will be looking at, Man City and Liverpool.

 "Hopefully Chelsea can creep in through the back door because no one is expecting that to happen."

 Wise's former team-mate Gianfranco Zola now works as an assistant to Sarri and will be welcomed back at Stamford Bridge on Saturday night.

 The Italian legend played a key role in championing Callum Hudson-Odoi, who has now been offered a new five-year deal by Chelsea, and Wise hopes that the youngster stays with his boyhood club.
 "I think Hudson-Odoi has been outstanding," said Wise. "I think it is good he has had the opportunity. He is a local boy and I am looking forward to seeing a lot more of him and him competing against players in that position.

 "I think he is capable to go and do it. I think he gave Hector Bellerin a torrid time in Dublin and in his performance against Inter at times.""
 UROSH
 ),
 author_id: darko.id
  })
  darko_story1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/Jorginho-988830.jpg')), filename: "cherry_story.jpg")
  darko_story1.save!

darko_story2 = Story.new({
  title: "Aguero: My best friend in England is Man Utd rival De Gea",
  subtitle: "The Manchester City star remains in close contact with a man he played alongside at Atletico Madrid, with a tough transition made to life in England",
  content: (<<-UROSH
    "Manchester City striker Sergio Aguero may be a direct rival of Manchester United goalkeeper David de Gea, but the pair remain close friends.

 The duo first saw their paths cross in Spain at Atletico Madrid, with two seasons spent working alongside one another as senior stars.
 Both then completed moves to England in the summer of 2011, with big-money deals taking them to opposing sides of the Manchester divide.
 They have locked horns on a regular basis since linking up with City and United, but their friendship away from the field remains as strong as ever.

 Aguero admitted as much to The Sun at the premiere of a new Amazon documentary which offers an insight to goings on at the Etihad Stadium called All or Nothing: Manchester City: “I hang out a lot with David because we played together for Atletico Madrid.

 “We have a good friendship from Atletico... but he now plays for United and I play for City.”

 While De Gea took some time to settle into Premier League life after arriving at Old Trafford, Aguero hit the ground running with City.

 He netted twice on his debut for the Blues and is now the club’s all-time leading goalscorer with 201 efforts to his name.

 Aguero has always made troubling opposition defenders look easy, but he admits to having found the going tough during his early days in England.

 He said: “The first season I was here, I really suffered.
 “There was a match we played in the snow – it was horrible. There was ice on my face, and I almost asked to be subbed off. I swear my hands hurt, my face, everything.”

 Aguero has since adapted to the Manchester climate having made 292 appearances for City.

 Those outings have included some memorable moments, with his record-breaking haul of goals having helped the Blues to three Premier League titles and three League Cup successes."
 UROSH
 ),
 author_id: darko.id
  })
  darko_story2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/nintchdbpict000319865078.jpg')), filename: "cherry_story.jpg")
  darko_story2.save!

urosh_story1 = Story.new({
  title: "Naby Keita can add a new dynamic to Liverpool's attack",
  subtitle: "The former Manchester United defender believes the new signing's attributes should give more liberty to Anfield's fearsome trio",
  content: (<<-UROSH
    "Naby Keita can add a new dynamic to Liverpool's attacking play this season, according to Danny Higginbotham.

 The former RB Leipzig midfielder's debut in their season-opening win over West Ham United drew a lot of praises, including from teammate and one of the Reds' fearsome attacking trio Sadio Mane.
 Last season, Mohamed Salah, Roberto Firmino and Mane had 91 goals between themselves to help Liverpool finish fourth in the English Premier League and reach the Uefa Champions League final.
 However, Higginbotham believes that, along with the threat posed by the Guinea international, he will help draw attention away from Jurgen Klopp's forwards.

 "It's brilliant watching him because I think a lot of people looked at Keita and thought he was a defensive midfielder," Higginbotham told Sky Sports News.

 "He's not, he's anything but that, he loves to get forward and he is a real threat. At times it is going to be difficult to unsettle back fours and actually get in behind them but he creates space for others.

 "Where Keita comes into his own is that teams are pushed so far back that he can get in these areas [between the opposition defence and midfield].

 "I think he is going to bring more to the attack than the defensive side and what he does is that he provides another dynamic. I think he's an outstanding signing.
 "I think what you'll find is that they'll defend with the four [two centre-backs and two central midfielders] and give the license to the two full-backs to go forward.

 "When they go forward, Keita is going to cause all kinds of problems and actually create more space for the likes of Mane, Firmino and Salah."

 Keita will hope to keep up with early promises when Liverpool play Crystal Palace in Monday's Premier League game."
 UROSH
 ),
 author_id: urosh.id
  })
  urosh_story1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/andres-iniesta-naby-keita-barcelona-liverpool_12m8qryywx0cb132bvapk4snjf.jpg')), filename: "cherry_story.jpg")
  urosh_story1.save!

urosh_story2 = Story.new({
  title: "Sarri not aiming to repeat Napoli formula at Chelsea",
  subtitle: "A 3-0 win at Huddersfield Town gave the Italian a winning start with the Blues, though he stressed that he hopes to leave a different mark at the club",
  content: (<<-UROSH
    "Maurizio Sarri feels Chelsea will continue to improve under his stewardship, but the club's new coach will not aim to repeat his winning formula from Napoli.

 Sarri’s side ultimately fell short in their pursuit of the Serie A crown to Juventus last term as the Bianconeri won a seventh straight league title, but Chelsea were impressed enough to appoint the 59-year-old as the successor to fellow Italian coach Antonio Conte for the 2018-19 season.And although the Blues thrilled in a 3-0 opening-day win away to Huddersfield Town on Saturday, Sarri believes there is more to come from his side.

 "I don't want to do another Napoli, I want to do a Chelsea," Sarri told a post-match news conference. "I have to respect the characteristics of the players, the championship and now I study my players.

 "We are lucky now because we can work with one match a week. We have to improve in this month, then it might be difficult with the national teams. I hope in this month to improve the team.

 "We have to improve to defend in the other half, to press against three defenders. We have to move the ball faster. We did it better in the second half, there was more space and time."

 N'Golo Kante got Chelsea up and running, with a cool Jorginho penalty doubling their lead before Eden Hazard came off the bench to tee up Pedro for the third.

 "I think that Eden in this moment cannot play for 90 minutes, he needs to have training," Sarri said of the Belgium star. "The best thing for him was to play 15-20 minutes when the opposition was tired.

 "I am very happy because in the first part of the season for us it is not easy to gain points. The first half was hard. If you look at the result you can think of an easy game.

 "We were in trouble for 15 minutes against a physical team, we are not a physical team. The best capacity was to suffer, but then I think the second half maybe they were tired."

 Huddersfield boss David Wagner accepted his side were roundly outplayed, highlighting defensive errors as contributing to a heavy home loss.

 "Chelsea were very clinical. They had five chances and scored three goals," Wagner told reporters.

 "If we wanted to get something today, we had to be at our very best. We made too many mistakes and missed our chances. I saw our spirit, togetherness and good attitude today, which is what we will need to be competitive this season.
 "We started very well, on the front foot, and then the first goal came out of nothing. We made a mistake in our frontline that led to the second goal which cannot happen. We tried and created some opportunities, but Hazard showed his top quality for the third."

 Jorginho's penalty raised eyebrows and delighted neutrals, the former Napoli midfielder deceiving goalkeeper Ben Hamer with a skip in his run-up before rolling the ball home.

 "I don’t know, he has always kicked the penalty like this," Sarri shrugged."
 UROSH
 ),
 author_id: urosh.id
  })
  urosh_story2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/MAIN-Maurizio-Sarri-smoking.jpg')), filename: "cherry_story.jpg")
  urosh_story2.save!

urosh_story3 = Story.new({
  title: "How will Messi and Ronaldo cope without one another?",
  subtitle: "The Portugal star has admitted that the Argentine inspired him to go higher and it is intriguing to consider the effect his departure will have",
  content: (<<-UROSH
    "For so long been we’ve been compelled to watch the Lionel Messi-Cristiano Ronaldo rivalry play out on Spanish and European pitches. And as the new season rolls around the realisation looms large that we’ll never see another Clasico involving them. That should bring a sense of immense longing for supporters, for casual fans, for anyone with even a passing interest in football.

 And who knows what effect it might have on the players themselves.

 Ronaldo has been open about the fact that their feuds over the years pushed him to new heights. “I see him not as a rival but as a person,” he said of Messi in his 2015 documentary. “I see him as someone who makes me a better player and I make him a better player.”
 Messi, instead, has rarely spoken on the issue. Perhaps that is a consequence of his upbringing in the Barcelona system. At La Masia and with the clubs famous “Més que un Club” ethos the focus at Barca has always been about the collective.

 Real Madrid does not necessarily breed superstars, it buys them. And it always felt that Ronaldo belonged there; in the spotlight, in the white kit, with the eyes of the world upon him.

 “A sports competitor might utilise the performances of a rival to work towards a set goal,” says Dan Abrahams, sports psychologist to AFC Bournemouth and the England rugby union team.

 “Ronaldo might look at Messi and see him performing very well over the course of the season.

 “That directs his brain towards thinking: ‘OK Messi’s scored goals, I want to score 10 goals, so I have to do A, B, C, D in training to give me the opportunity.

 “Messi has grown up at La Masia and at Barcelona. They had this very unique culture whereby they have the capability of developing a group mentality. It’s very unique.

 “It may well be that Ronaldo has been driven by Messi, but Messi has not been driven by Ronaldo.”
 Those two over the course of the last decade have made the Spanish top flight the most attractive in the world and are almost singlehandedly responsible for building Barcelona and Real Madrid into the modern super clubs they have become.

 The immensity of what Ronaldo and Messi inspired will never be repeated. We have just seen the two greatest players ever to lace boots not only peak together but also play for the biggest rivals the sport has ever seen. And, at a time when both Real Madrid and Barcelona jockeyed for position as the best team in the world.

 There is no question that Messi and Barcelona have had the better of the head-to-head duals. Messi and Ronaldo came up against each other 18 times in La Liga with Messi winning 10 and Ronaldo only four. The Argentina captain scored 12 goals to Ronaldo’s nine in those matches.

 All in all Messi has won 16 of the 35 matches which he’s played against the Portugal top scorer. Ronaldo has been on the winning side only 10 times in those games.

 Barca have unquestionably had stronger, more consistent teams throughout their near-decade of competition together. They have won vastly more on the domestic front, a useful yard stick of consistency.

 But it’s on the big stage that Ronaldo let his football do the talking. A good many of his 121 Champions League goals came in the last five seasons when Real Madrid claimed four titles.

 Thanks largely to his interventions on the continental scene – not to mention his victory with Portugal at Euro 2016 – Ronaldo has outperformed Messi four to one in Ballons d’Or in the last five seasons. Sadly, the days when Ronaldo could look to Messi and go a level higher are at an end.

 When Madrid and Barca were fighting for the Spanish title or the Spanish Cup – or for the Champions League – Ronaldo and Messi were always front and centre. It’s going to take a while to get used to the idea that it’s over; the Clasico rivalry will still smoulder but it’ll never be the same.

 Messi’s Barcelona and Ronaldo’s Real Madrid gave us everything; the one big regret about their Clasico rivalry is that they never met in a Champions League final.

 Nonetheless, there have been winners in finals, in crucial league and continental matches. Messi’s celebration after slaying Madrid in injury time in the Bernabeu was iconic. It did not take Ronaldo long to reply at Camp Nou. Those moments would have been impossible if one didn’t have the presence of the other.

 Every individual player on a team of 11 should in theory carry 9.09 per cent of the responsibility and of the workload. But Messi and Ronaldo in their teams were worth many times more than that; not only for their goals but for their very presence. They gave their teams the extra edge in direct confrontations and all across the nine Spanish and European seasons in which they were pitted against each other. Every time, they played those matches with a sense of destiny; a prescience that each possessed the skill and confidence to provide a match-winning contribution.

 The Clasico undoubtedly lost a degree of intensity when Pep Guardiola and Jose Mourinho departed from their coaching roles. But it remained compelling because there was Ronaldo and there was Messi. That is lost forever now. It will never again be the same – for us as viewers and for Messi and Ronaldo themselves.

 Ronaldo’s Madrid made Barca better, Messi’s Barca made Madrid better and the same could be said on an individual level for the two men who have shared the last 10 Ballons d’Or. Who knows if they could have hit the same heights if the other wasn’t there."
 UROSH
 ),
 author_id: urosh.id
  })
  urosh_story3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/messi-ronaldo-3.jpg')), filename: "cherry_story.jpg")
  urosh_story3.save!

cherry_story2 = Story.new({
  title: "Pochettino expects 'toughest season' yet at Tottenham",
  subtitle: "A lack of new signings and a delay in moving into their new stadium on White Hart Lane leaves the Argentine expecting a difficult campaign",
  content: (<<-UROSH
    "Mauricio Pochettino is anticipating his 'toughest season' in charge of Tottenham yet after they failed to make any new signings before the transfer deadline passed.

 Spurs finished in the Premier League's top three for the third successive campaign last term but were unable to end their long wait for silverware, which dates back to a League Cup triumph a decade ago.

 While the division's other big clubs all made acquisitions in a bid to strength their squad ahead of the new season, there were no incomings at Tottenham.
 It was also revealed this week that they will not move into their new stadium on the White Hart Lane site as imminently as originally thought.

 Those factors add up to Pochettino's belief he is facing the most difficult campaign at the helm since he arrived at Tottenham in 2014.
 "For me it will be the toughest season and I think if we want success, we have to give more than our best," he told reporters.

 "It's not enough 100 per cent, it’s 200 per cent. We know from inside that it will be hard, the season, and because we are warriors we want to fight.

 "We want to be proud at the end, we want success and we do not want to complain or make excuses. I am a winner and I love the challenge, so that is why I feel full of energy. We want to go again."

 Pochettino signed a new deal with Tottenham in May and added he is prepared to meet the challenges facing his club head on.

 "It is easy when everything is good to be there, but when the winter is coming it's easy to run away," he explained.

 "I feel the responsibility to be here and that is why I am. And then because I am happy and I think Tottenham gave us, all the staff, a lot of things that always we will be grateful for.

 "It was a moment to say 'we are going to be with you all, fighting in the circumstances' because we knew what was going to happen."

 Tottenham kicked off the new Premier League season with a 2-1 win away at Newcastle and next play Fulham at Wembley on August 18."
 UROSH
 ),
 author_id: cherry.id
  })
  cherry_story2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/pochettino.jpg')), filename: "cherry_story.jpg")
  cherry_story2.save!

cherry_story3 = Story.new({
  title: "Real Madrid still blame me for not selling them Mbappe - Vasilyev",
  subtitle: "The Monaco vice-president has revealed that Blancos supremo Florentino Perez is still frustrated at having missed out on the World Cup-winning forward",
  content: (<<-UROSH
    "Real Madrid remain disappointed at having missed out on Kylian Mbappe to Paris Saint-Germain, with Florentino Perez airing that frustration to Monaco vice-president Vadim Vasilyev on a regular basis.

 Once it became apparent that the teenage forward could be on the move in the summer of 2017, a scramble for his signature was sparked among Europe’s leading clubs.

 Those at the Santiago Bernabeu believed for a while that they were leading the chase, with a sizeable offer accepted by Monaco.

 Mbappe was, however, to remain in France and link up with PSG on an initial loan, which has since become a €180 million (£159m/$213m) permanent agreement.

 The 19-year-old is now a World Cup winner and global superstar, with Vasilyev revealing that Real are still cursing their luck at failing to get a deal done.

 He told RMC Sport: “These two clubs are friends. I have spoken with [Real president] Florentino Perez and every time he sees me he always blames me for not selling him Kylian Mbappe.”

 Vasilyev was in attendance on Wednesday as Madrid suffered a 4-2 UEFA Super Cup defeat to arch-rivals Atletico.

 While there was no Mbappe on show in that contest, another former Monaco man did feature.

 Thomas Lemar left Stade Louis II over the summer to link up with Atleti, with a €60m deal taking him to Spain.

 The 22-year-old winger is expected to star in La Liga, with Monaco hoping to benefit in the future from a sell-on clause which could land them even more money if the France international moves on.

 Vasilyev added to RMC: “Thomas has just left and I wish him all the best, along with everybody else at Monaco… because we have kept a significant percentage of his next transfer!”"
 UROSH
 ),
 author_id: cherry.id
  })
  cherry_story3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/15316872649046.jpg')), filename: "cherry_story.jpg")
  cherry_story3.save!
