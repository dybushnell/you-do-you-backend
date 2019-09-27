class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :message_text
      t.string :sender_id
      t.string :recipient_id

      t.timestamps
    end
  end
end
