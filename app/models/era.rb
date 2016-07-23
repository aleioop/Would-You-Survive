class Era < ActiveRecord::Base
  has_many :comments

  def self.create_era
    Era.create(name: "Stone Age")
    Era.create(name: "Ancient Rome")
    Era.create(name: "Dark Ages")
    Era.create(name: "Edo Period")
    Era.create(name: "Soviet Russia")
  end
end