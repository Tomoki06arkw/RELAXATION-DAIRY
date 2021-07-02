class CreateForms < ActiveRecord::Migration[6.0]
  def change
    create_table :forms do |t|
      t.string :title,          null: false
      t.text :content,          null: false
      t.references :user,       foregin_key: true
      t.timestamps
    end
  end
end
