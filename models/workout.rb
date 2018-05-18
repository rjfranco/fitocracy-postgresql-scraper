class Workout < Sequel::Model
  one_to_many :set_groups
  one_to_many :super_sets
end
