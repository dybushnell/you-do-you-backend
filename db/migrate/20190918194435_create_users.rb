class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :email
      t.string :birthdate
      t.string :location
      t.string :relationship_goal
      t.string :blood_type
      t.string :image_url

      t.timestamps
    end
  end
end
