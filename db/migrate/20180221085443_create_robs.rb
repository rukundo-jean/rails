class CreateRobs < ActiveRecord::Migration[5.1]
  def change
    create_table :robs do |t|
      t.string :name
      t.text :email
       t.text :content
    end
  end
end
