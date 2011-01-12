class CreatePresentationQuestions < ActiveRecord::Migration
  def self.up
    create_table :presentation_questions do |t|
      t.integer :presentation_id
      t.string :text
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :presentation_questions
  end
end
