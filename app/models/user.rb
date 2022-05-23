class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :categories, dependent: :destroy
  has_many :payments, dependent: :destroy

  validates :name, presence: true

  def most_recent_categories
    categories.order(created_at: :desc).limit(3)
  end

  def most_ancient_categories
    categories.order(created_at: :asc).limit(3)
  end
end
