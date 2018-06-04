class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(attr={})
    attr.each do |n,v|
      network[:n] = v
    end
    network
  end

end
