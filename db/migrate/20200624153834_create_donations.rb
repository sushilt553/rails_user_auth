class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.integer :amount, default: 0
      t.integer :campaign_id, null:false, index:true
      t.timestamps
    end
  end
end
