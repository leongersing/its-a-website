class MakeCommentsPolymorphic < ActiveRecord::Migration
  def self.up
    add_column :comments, :subject_id, :integer
    add_column :comments, :subject_type, :string
    remove_column :comments, :presentation_id
  end

  def self.down
    remove_column :comments, :subject_id
    remove_column :comments, :subject_type
    add_column :comments, :presentation_id, :integer
  end
end
