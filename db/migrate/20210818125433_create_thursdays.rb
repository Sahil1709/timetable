class CreateThursdays < ActiveRecord::Migration[6.1]
  def change
    create_table :thursdays do |t|
      t.time :from
      t.time :to
      t.string :Subject
      t.string :link
      t.string :Prof

      t.timestamps
    end
  end
end
