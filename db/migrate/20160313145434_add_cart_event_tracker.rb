class AddCartEventTracker < ActiveRecord::Migration
  def change
    create_table :spree_cart_event_trackers do |t|
      t.references :actor, polymorphic: true
      t.references :object, polymorphic: true
      t.string :activity
      t.string :referrer
      t.integer :quantity
      t.decimal :total, precision: 16, scale: 4
    end
  end
end
