class Result < ActiveRecord::Base
  has_many :comments
  belongs_to :era

  def self.random_result(era_id)
    where(era_id: era_id).sample
  end


  def self.create_data
<<<<<<< HEAD
    Result.create(era_id: 1, body: "You, caveman of the Flinestones clan, only survied one month in the Stone Age before being devoured by a leopard.", is_dead: true)
    Result.create(era_id: 1, body: "You, grunt grunt, only surived 0.03 seconds in the Stone Age before being crushed by a pebble.", is_dead: true)
    Result.create(era_id: 1, body: "You, T-rex master, only survived one year in the Stone Age before dying from a paper cut.", is_dead: true)
    Result.create(era_id: 1, body: "You, big neanderthal, only survived 3 months in the Stone Age before dying of bone deformity from lack of Vitamin C. Shoulda stocked up on dat OJ brah.", is_dead: true)
    Result.create(era_id: 2, body: "You, mere plebeian, only survived 2 weeks in Ancient Rome before dying from malaria after having contracted it from your secret insulae lover. Love bites eh.", is_dead: true)
    Result.create(era_id: 2, body: "*You, noble gladiator, only survived 6 weeks in Ancient Rome before getting your head chopped off at the Coloseum's weekly gladiatorial contest.", is_dead: true)
    Result.create(era_id: 2, body: "You, slave to the Aquillia patrician family, died of exhaustion the second you arrived in Ancient Rome.", is_dead: true)
    Result.create(era_id: 2, body: "You, petty chariot thief, survived only a week in Ancient Rome before being thrown into a cage filled with wild beasts to entertain the emperor.", is_dead: true)
    Result.create(era_id: 3, body: "You, esteemed village blacksmith, only survied two years in the Dark Ages before dying of the Black plague.", is_dead: true)
    Result.create(era_id: 3, body: "You, Lord of the Worcestershire Commune, only survived 2 months in the Dark Ages before being killed in a peasant uprising.", is_dead: true)
    Result.create(era_id: 3, body: "You, town jester, only survived a week in the Dark Ages before dying in the aftermath of a tavern brawl.", is_dead: true)
    Result.create(era_id: 3, body: "You, knight in shining armour, only survived 9 months in the Dark Ages before being stabbed in the chest by your ugly cousin during a duel for the hand of a fair maiden.", is_dead: true)
    Result.create(era_id: 4, body: "You, Samurai Champloo, only survived two years in the Edo Period before being sawed in half by the Shogun.", is_dead: true)
    Result.create(era_id: 4, body: "You, communer, only survived 5 weeks in the Edo Period before being sliced in 10 pieces by a Samurai. And its legal.", is_dead: true)
    Result.create(era_id: 4, body: "You, humble peasant of Osaka, only survived 4 months in the Edo Period before dying of famine.", is_dead: true)
    Result.create(era_id: 4, body: "You, the Tokugawan Shogun, only survived 4 years in the Edo Period before being boiled to death by your unhappy subjects. That's why mama said be nice.", is_dead: true)
    Result.create(era_id: 5, body: "You, Stalin's right arm, only survived 2 years in Soviet Russia before being assassinated by the NKVD. Your existence can't be proven #censorship #bigbrother.", is_dead: true)
    Result.create(era_id: 5, body: "You, honorable soldier of the Red Army, only survived a month in Soviet Russia before being shot alongside your fellow army men for deserting the regime.", is_dead: true)
    Result.create(era_id: 5, body: "", is_dead: true)
    Result.create(era_id: 5, body: "", is_dead: true)
=======
    Result.create(era_id: 1, body: "Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium. Qui animated corpse, cricket bat max brucks terribilem incessu zomby. The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus. Zonbi tattered for solum oculi eorum defunctis go lum cerebro. Nescio brains an Undead zombies. Sicut malus putrid voodoo horror. Nigh tofth eliv ingdead.", is_dead: true)
    Result.create(era_id: 2, body: "Business model canvas paradigm shift holy grail technology crowdsource buyer investor partnership business plan low hanging fruit disruptive influencer mass market metrics. Customer return on investment facebook business model canvas metrics series A financing iPhone business-to-business. Customer business-to-business buyer social proof advisor infrastructure marketing release funding stealth user experience gamification. User experience analytics ecosystem conversion business-to-consumer launch party creative agile development crowdsource customer. Responsive web design virality scrum project crowdsource gen-z early adopters rockstar. Lean startup monetization ecosystem influencer burn rate hypotheses. Scrum project bandwidth business plan product management release lean startup customer. Equity social media investor business model canvas long tail pivot MVP market conversion termsheet value proposition android advisor beta. Release iPad disruptive assets incubator. Buyer product management analytics value proposition infographic supply chain partner network gamification.", is_dead: true)
    Result.create(era_id: 3, body: "Product management deployment interaction design stealth angel investor social media customer. Market advisor interaction design. Stealth low hanging fruit product management MVP sales conversion startup. Direct mailing ramen innovator MVP business model canvas crowdsource validation product management agile development prototype stealth. Supply chain early adopters growth hacking backing churn rate marketing gen-z alpha. Partner network validation conversion accelerator stock user experience branding bootstrapping iPhone growth hacking A/B testing. Network effects beta influencer product management. Seed money pivot crowdsource infographic advisor buyer pitch technology seed round venture. Business model canvas assets alpha funding founders pivot return on investment low hanging fruit long tail. Handshake deployment client direct mailing mass market.", is_dead: true)
    Result.create(era_id: 4, body: "Buzz social media user experience conversion pivot metrics branding partner network assets low hanging fruit. Accelerator social media business model canvas pitch android. Research & development churn rate infrastructure pitch first mover advantage beta creative virality validation launch party. Venture pivot launch party incubator handshake. Funding venture traction ramen social proof marketing android growth hacking infrastructure leverage founders. Early adopters ownership social media learning curve investor seed money entrepreneur metrics responsive web design marketing direct mailing. Infrastructure direct mailing stealth leverage pivot twitter infographic. Assets strategy metrics scrum project launch party. Conversion success infrastructure partner network return on investment buyer focus angel investor funding graphical user interface bootstrapping lean startup facebook. Investor series A financing vesting period early adopters MVP churn rate social proof social media growth hacking value proposition freemium.", is_dead: true)
>>>>>>> f11fcd29a8878ba1bab2894dcf516f1a3aec1484
  end
end