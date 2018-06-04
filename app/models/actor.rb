class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    new_actor = self.full_name
    new_char = new_actor.characters
    new_show = new_char.shows

    "#{new_char.name} - #{new_show.name}"
  end
end
