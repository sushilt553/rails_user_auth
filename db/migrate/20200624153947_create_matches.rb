class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :maximum_pledge_amount, default: 0
      t.integer :cumulative_match_amount, default: 0
      t.integer :cumulative_match_count, default: 0
      t.integer :campaign_id, null: false, index: true
      t.float :ratio, default: 1.0
      t.timestamps
    end
  end
end
