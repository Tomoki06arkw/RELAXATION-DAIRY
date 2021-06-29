class CreatePrivatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :private_people do |t|
      t.string      :nickname,              null: false
      t.integer     :address_id,            null: false
      t.text        :profile,               null: false
      t.references  :user,                  foregin_key: true
      t.timestamps
    end
  end
end
