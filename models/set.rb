class WorkoutSet < Sequel::Model(:sets)
  many_to_one :set_group
end
