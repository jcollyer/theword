class CreateBiblebooks < ActiveRecord::Migration
  def change
    create_table :biblebooks do |t|
      t.string :name
      t.text :body
    end
  end
end
