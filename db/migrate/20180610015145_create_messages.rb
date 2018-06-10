class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :password
      t.string :message
      t.string :idmessage

      t.timestamps null: false
    end
  end
end
