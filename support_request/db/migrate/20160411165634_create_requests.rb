class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.string :department
      t.text   :message
      t.text   :actions

      t.timestamps null: false
    end
  end
end
