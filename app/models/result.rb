class Result < ActiveRecord::Base
  has_many :comments

  def self.random_result(era_id)
    where(era_id: era_id).sample
  end


  def self.create_data
    Result.create(era_id: 1, body: "You, caveman of the Flinestones clan, only survied one month in the Stone Age before being devoured by a leopard.", is_dead: true)
    Result.create(era_id: 1, body: "You, grunt grunt, only surived 0.03 seconds in the Stone Age before being crushed by a pebble.", is_dead: true)
    Result.create(era_id: 1, body: "You, T-rex master, only survived one year in the Stone Age before dying from a paper cut.", is_dead: true)
    Result.create(era_id: 1, body: "You, big neanderthal, only survived 3 days in the Stone Age before dying of bone deformity from lack of Vitamin C. Shoulda stocked up on dat OJ brah.", is_dead: true)
    Result.create(era_id: 2, body: "You, mere plebeian, only survived 2 weeks in Ancient Rome before dying from malaria after having contracted it from your secret insulae lover. Love bites eh.", is_dead: true)
    Result.create(era_id: 2, body: "You, noble gladiator, only survived 6 weeks in Ancient Rome before getting your head chopped off at the Coloseum's weekly gladiatorial contest.", is_dead: true)
    Result.create(era_id: 2, body: "You, slave to the Aquillia patrician family, died of exhaustion the second you arrived in Ancient Rome.", is_dead: true)
    Result.create(era_id: 2, body: "You, petty chariot thief, survived only a week in Ancient Rome before being thrown into a cage filled with wild beasts to entertain the emperor.", is_dead: true)
    Result.create(era_id: 3, body: "You, esteemed village blacksmith, only survied two years in the Dark Ages before dying of the Black plague.", is_dead: true)
    Result.create(era_id: 3, body: "You, Lord of the Worcestershire Commune, only survived 2 months in the Dark Ages before being killed in a peasant uprising.", is_dead: true)
    Result.create(era_id: 3, body: "You, town jester, only survived a week in the Dark Ages before dying in the aftermath of a tavern brawl.", is_dead: true)
    Result.create(era_id: 3, body: "You, knight in shining armour, only survived 9 months in the Dark Ages before being stabbed in the chest by your ugly cousin during a duel for the hand of a fair maiden.", is_dead: true)
    Result.create(era_id: 4, body: "You, Samurai Champloo, only survived 2 days in the Edo Period before being sawed in half by the Shogun.", is_dead: true)
    Result.create(era_id: 4, body: "You, communer, only survived 5 weeks in the Edo Period before being sliced in 10 pieces by a Samurai. And its legal.", is_dead: true)
    Result.create(era_id: 4, body: "You, humble peasant of Osaka, only survived 4 months in the Edo Period before dying of famine.", is_dead: true)
    Result.create(era_id: 4, body: "You, the Tokugawan Shogun, only survived 4 years in the Edo Period before being boiled to death by your unhappy subjects. That's why mama said be nice.", is_dead: true)
    Result.create(era_id: 5, body: "You, Stalin's right arm, only survived 2 years in Soviet Russia before being assassinated by the NKVD. Your existence can't be proven #censorship #bigbrother.", is_dead: true)
    Result.create(era_id: 5, body: "You, honorable soldier of the Red Army, only survived a month in Soviet Russia before being shot alongside your fellow army men for deserting the regime.", is_dead: true)
    Result.create(era_id: 5, body: "You, poor peasant, only survived a month in Soviet Russia before dying from frost bite during a trek to the liquor store in Siberia. Shoulda packed some extra vodka huh.", is_dead: true)
    Result.create(era_id: 5, body: "You, american spy, only survived 2 years in Soviet Russia before dying in Stalin's torture chamber.", is_dead: true)

  end
end