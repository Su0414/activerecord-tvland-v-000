class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(attr={})
    bindling.pry
  end

end
