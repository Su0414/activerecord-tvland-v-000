class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def character_name
    self.characters.name
  end

  def show_name
    self.shows.name
  end

  def list_roles
    "#{character_name} - #{show_name}"
  end
end
