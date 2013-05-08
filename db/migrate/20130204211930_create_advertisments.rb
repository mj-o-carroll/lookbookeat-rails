class CreateAdvertisments < ActiveRecord::Migration
  def change
    create_table :advertisments do |t|
      t.string :ad_duration
      t.date :ad_start_date
      t.decimal :cost
      t.date :date_payment
      t.string :ad_content

      t.timestamps
    end
  end
end
