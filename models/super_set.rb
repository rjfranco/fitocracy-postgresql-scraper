class SuperSet < Sequel::Model
  many_to_one :workout
end
