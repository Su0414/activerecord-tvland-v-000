class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def character_name
    characters.map do |c|
      c.name.join(", ")
    end
  end

  def show_name
    shows.map do |s|
      s.name.join(", ")
    end
  end

  def list_roles
    "#{character_name} - #{show_name}"
  end
end
