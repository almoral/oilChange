class User < ActiveRecord::Base
  attr_accessible :make, :mileage, :model, :year
end
