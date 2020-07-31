class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :diaries, dependent: :destroy

  has_many :favorites, dependent: :destroy
  has_many :favorites_diaries, through: :favorites, source: :diary

  def already_favorited?(diary)
    self.favorites.exists?(diary_id: diary.id)
  end
end
