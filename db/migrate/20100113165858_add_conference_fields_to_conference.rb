class AddConferenceFieldsToConference < ActiveRecord::Migration
  def self.up
    add_column :conferences, :name, :string
    add_column :conferences, :start_date, :datetime
    add_column :conferences, :end_date, :datetime
  end

  def self.down
    remove_column :conferences, :end_date
    remove_column :conferences, :start_date
    remove_column :conferences, :name
  end
end
