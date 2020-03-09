class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_validation do |user|
    if user.date_of_birth && user.date_of_birth > Date.current - 18.years
      errors.add(:base, "Idade mínima de 18 anos.")
    end
  end

  validates :name, :date_of_birth, :height, :weight, presence: true
  validates :height, inclusion: { in: 100..250 }
  validates :weight, inclusion: { in: 40..200 }

  def idade
    (Date.current - self.date_of_birth) / 365
  end
end
