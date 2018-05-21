class SetGroup < Sequel::Model
  many_to_one :workout
  many_to_one :super_set
  many_to_one :exercise
end
