# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 40 }, uniqueness: true
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :password, presence: true, length: { minimum: 6 } 
  has_many :posts
  has_many :comments
end
