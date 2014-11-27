class AddEstablishmentRefToIncidents < ActiveRecord::Migration
  def change
    add_reference :incidents, :establishment, index: true
  end
end
