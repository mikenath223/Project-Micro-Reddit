# frozen_string_literal: true

class Post < ApplicationRecord
  validates :user_id, presence: true
  validates_associated :comments
  validates :body, presence: true, length: { maximum: 128 }

  belongs_to :user
  has_many :comments
end
