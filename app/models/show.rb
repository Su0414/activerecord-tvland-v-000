require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :networks
  belongs_to :network

  def build_xxx(attr={})
    #bindling.pry
  end

end
