class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :Fullname
      t.string :Username

      t.timestamps
    end
  end
end
