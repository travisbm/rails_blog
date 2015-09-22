class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :message
      t.post :belongs_to

      t.timestamps null: false
    end
  end
end
