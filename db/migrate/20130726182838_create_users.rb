class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :realName
      t.string :handle
      t.string :email

      t.timestamps
    end
  end
end
