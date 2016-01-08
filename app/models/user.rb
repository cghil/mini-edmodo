class User < ActiveRecord::Base
  enum role: [:teacher, :student]

  has_many :classrooms, foreign_key: :teacher_id, dependent: :destroy

  has_many :courses, foreign_key: :student_id, class_name: 'Classroom', dependent: :destroy

  has_many :teachers, through: :courses

  has_many :students, through: :classrooms

  validates :username, presence: true, uniqueness: true
  validates :role, presence: true

  def learning_from?(teacher)
  	teachers.include? teacher
  end

  def learn_from!(teacher)
  	if teacher != self && !following?(teacher)
  		teachers << teacher
  	end
  end
end
