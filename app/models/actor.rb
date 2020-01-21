class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full = "#{self.first_name} #{self.last_name}"
    full
  end

  def list_roles
    self.characters.map{|character| "#{character.name} - #{character.show.name}"}
  end
end