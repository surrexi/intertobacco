class CreateTobaccoCiphers < ActiveRecord::Migration[5.1]
  def change
    create_table :tobacco_ciphers do |t|
      t.string :cipher

      t.timestamps
    end
    add_index :tobacco_ciphers, :cipher, unique: true
  end
end
