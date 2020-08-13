class User < ApplicationRecord
    validates :name, presence: true
    EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: EMAIL_FORMAT }
  end