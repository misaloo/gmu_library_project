class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :user_id
      t.boolean :admin

      t.timestamps
    end
  end
end
