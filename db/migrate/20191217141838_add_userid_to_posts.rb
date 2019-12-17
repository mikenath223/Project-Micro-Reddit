# frozen_string_literal: true

class AddUseridToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :user_id, :integer
  end
end
