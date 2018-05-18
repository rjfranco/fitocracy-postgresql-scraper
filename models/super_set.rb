class SuperSet < Sequel::Model
  many_to_one :workout
  one_to_many :set_groups
end
