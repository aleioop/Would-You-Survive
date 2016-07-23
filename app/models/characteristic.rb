class Characteristic < ActiveRecord::Base

  def self.add_characteristics
    Characteristic.create(name: "adventurous")
    Characteristic.create(name: "stubborn")
    Characteristic.create(name: "lazy")
    Characteristic.create(name: "charming")
    Characteristic.create(name: "sensitive")
    Characteristic.create(name: "clever")
    Characteristic.create(name: "sadistic")
    Characteristic.create(name: "stupid")
    Characteristic.create(name: "enigmatic")
    Characteristic.create(name: "creative")
    Characteristic.create(name: "pretentious")
    Characteristic.create(name: "honest")
  end

end