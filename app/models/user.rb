class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :name, presence: true #追記
  validates :department, presence: true #追記
  validates :current_year, presence: true #追記

  has_many :seasons
  has_many :courses
  has_many :course_seasons, through: :courses, source: :season  # 追加

  def get_lecture(semester, date, period)
    course = self.courses.find_by(semester: semester, date: date, period: period)
    return  course!=nil ? course.lecture : "未登録"
  end
end
