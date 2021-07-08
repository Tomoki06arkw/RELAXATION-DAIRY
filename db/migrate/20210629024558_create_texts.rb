class CreateTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :texts do |t|
      t.references :user,          foregin_key: true
      t.timestamps
    end
  end
end
