class Stat
  include Mongoid::Document

  field :year, type: Integer
  field :wins, type: Integer
  field :losses, type: Integer
  field :fg_pct, type: Float  # field goal %
  field :ft_pct, type: Float  # free throw %
  field :tp_pct, type: Float  # 3-pt %
  field :ppp, type: Float     # points per possession
  field :ppg, type: Float     # points per game
  field :trpg, type: Float    # total rebounds per game
  field :orpg, type: Float    # offensive rebounds per game
  field :drpg, type: Float    # defensive rebounds per game
  field :apg, type: Float     # assists per game
  field :spg, type: Float     # steals per game
  field :tpg, type: Float     # turnovers per game
  field :bpg, type: Float     # blocks per game
  field :fpg, type: Float     # fouls per game
  field :rpi, type: Float     # RPI
  field :sos, type: Float     # SOS

  belongs_to :team
end
