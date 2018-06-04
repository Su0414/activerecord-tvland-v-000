class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def character_name
    characters.name
  end

  def show_name
    shows.name
  end

  def list_roles
    "#{character_name} - #{show_name}"
  end
end
