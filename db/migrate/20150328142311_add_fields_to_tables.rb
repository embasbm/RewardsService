class AddFieldsToTables < ActiveRecord::Migration
  def change
    add_column :suscriptions, :customer_id, :integer
    add_column :suscriptions, :channel_id, :integer
    add_column :suscriptions, :expire_date, :date
  end
end
