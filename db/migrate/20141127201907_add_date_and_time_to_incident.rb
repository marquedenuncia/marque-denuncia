class AddDateAndTimeToIncident < ActiveRecord::Migration
  def change
    add_column :incidents, :date, :date
    add_column :incidents, :time, :time
  end
end
