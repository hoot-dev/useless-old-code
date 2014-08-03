class Team
  include Mongoid::Document

  field :name, type: String
  field :mascot, type: String
  field :location, type: String

  has_many :stats
end
