class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tasks, dependent: :destroy

  # If user has no manager, she's a manager
  def parent?
    parent_id.nil?
  end

  # If user has a manager, she's a writer
  def child?
    !parent?
  end
end
