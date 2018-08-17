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
  password: "password"
})

demoUser.save!

urosh = User.new({
  email: "urosh",
  password: "password"
})

urosh.save!

cherry = User.new({
  email: "cherry",
  password: "password"
})

cherry.save!

darko = User.new({
  email: "darko",
  password: "password"
})

darko.save!

ucko = User.new({
  email: "ucko",
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

  urosh_story.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/cristiano-ronaldo-juventus_1xn2okpz3lm9v13oeqarpzi9j7.jpg')), filename: "urosh_story.jpg")
  urosh_story.save!
