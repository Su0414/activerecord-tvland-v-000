class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{actor.name} always says #{actor.catchphrase}"
  end

end
