class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :schedule, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
