class Routine < ActiveRecord::Base
  has_many :rtes
  has_many :exercises, through: :rtes
  has_many :sessions
  validates :description, :rtes, presence: true
  validate :uniqueness_of_exercises

  def uniqueness_of_exercises
    if Routine.all.collect{|r| r.rte_ids}.include?(rte_ids)
      errors.add :base, 'a routine with thoses exercises already exists.'
    end
  end

  def self.find_or_initialize_by_exercise_ids(exercise_ids)
    Routine.all.select{|r| r == exercise_ids}.first || Routine.new(exercise_ids: exercise_ids)
  end
end
