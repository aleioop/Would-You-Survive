class Result < ActiveRecord::Base
  has_many :comments
  @survival_points = 100
  @survival_number = 0

  def self.random_result(era_id)
    where(era_id: era_id).sample
end

def self.bmi_factor(user)
    bmi = (user.weight/((user.height/100)**2))
    if bmi.between?(18.5, 24.9)
        @survival_points += 50
    elsif bmi < 18.5
        @survival_points -= 30
    elsif bmi > 30
        @survival_points -= 50
    elsif bmi > 25
        @survival_points -= 40
    end
    (@survival_points / rand(1.2..1.8)).to_i
end


  def self.create_data
    Result.create(era_id: 1, body: "You lack the ability to communicate with others and must survive as a hermit. CODESUB weeks into your Stone Age experience you're devoured by a leopard.", is_dead: true)
    Result.create(era_id: 1, body: "You're able to survive 127 hours until you meet your doom after being crushed by a rock. Like, a really big rock.", is_dead: true)
    Result.create(era_id: 1, body: "You're able to survive a full CODESUB months in the Stone Age! Impressive! However, due to lack of appropriate food safety, you get an infection and die of dysentary.", is_dead: true)
    Result.create(era_id: 1, body: "You neither have skill in hunting or gathering and CODESUB weeks later you die of starvation.", is_dead: true)
    Result.create(era_id: 2, body: "You, mere plebeian, only survived CODESUB weeks in Ancient Rome before dying from malaria after having contracted it from your insulae lover. Love bites eh.", is_dead: true)
    Result.create(era_id: 2, body: "You, noble gladiator, only survived CODESUB weeks in Ancient Rome before getting your head chopped off at the Coloseum's weekly gladiatorial contest.", is_dead: true)
    Result.create(era_id: 2, body: "You, slave to the Aquillia patrician family, died of exhaustion CODESUB hours after you arrived in Ancient Rome.", is_dead: true)
    Result.create(era_id: 2, body: "You, petty chariot thief, survived only CODESUB weeks in Ancient Rome before being thrown into a cage filled with wild beasts to entertain the emperor.", is_dead: true)
    Result.create(era_id: 3, body: "You, esteemed village blacksmith, only survied CODESUB months in the Dark Ages before dying of the Black plague.", is_dead: true)
    Result.create(era_id: 3, body: "You, Lord of the Worcestershire Commune, only survived CODESUB months in the Dark Ages before being killed in a peasant uprising.", is_dead: true)
    Result.create(era_id: 3, body: "You, town jester, only survived CODESUB weeks in the Dark Ages before dying in the aftermath of a tavern brawl.", is_dead: true)
    Result.create(era_id: 3, body: "You, knight in shining armour, only survived CODESUB months in the Dark Ages before being stabbed in the chest by your ugly cousin during a duel for the hand of a fair maiden.", is_dead: true)
    Result.create(era_id: 4, body: "You, Samurai Champloo, only survived CODESUB days in the Edo Period before being sawed in half by the Shogun.", is_dead: true)
    Result.create(era_id: 4, body: "You, communer, only survived CODESUB weeks in the Edo Period before being sliced in 10 pieces by a Samurai. Guess what, its legal.", is_dead: true)
    Result.create(era_id: 4, body: "You try to scrape together a meager living as a farmer, but only survive CODESUB months in the Edo Period before dying of famine.", is_dead: true)
    Result.create(era_id: 4, body: "You, the Tokugawan Shogun, only survived CODESUB years in the Edo Period before being boiled to death by your unhappy subjects. That's why mama said be nice.", is_dead: true)
    Result.create(era_id: 5, body: "You, Stalin's right arm, only survived CODESUB years in Soviet Russia before being assassinated by the NKVD. Your existence can't be proven #censorship #bigbrother.", is_dead: true)
    Result.create(era_id: 5, body: "You, honorable soldier of the Red Army, only survived CODESUB months in Soviet Russia before being shot alongside your fellow army men for deserting the regime. Red Army, literally.", is_dead: true)
    Result.create(era_id: 5, body: "As the temperatures approach absolut zero, unaccustomed to the cruel winters of Siberia, you succumb to frost bite within CODESUB months.", is_dead: true)
    Result.create(era_id: 5, body: "You, with your excellent  English, are labelled an American spy and only survive CODESUB weeks in Soviet Russia before dying in Stalin's torture chambers.", is_dead: true)

  end
end