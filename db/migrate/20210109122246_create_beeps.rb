class CreateBeeps < ActiveRecord::Migration[6.1]
  def change
    create_table :beeps do |t|
      t.text :text
      t.string :author

      t.timestamps
    end
  end
end
