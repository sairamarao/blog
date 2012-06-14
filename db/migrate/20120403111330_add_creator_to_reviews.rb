class AddCreatorToReviews < ActiveRecord::Migration
  def self.up
    add_column :reviews, :creator, :string
  end

  def self.down
    remove_column :reviews, :creator
  end
end
