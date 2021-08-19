class CreateMondays < ActiveRecord::Migration[6.1]
  def change
    create_table :mondays do |t|
      t.time :from
      t.time :to
      t.string :Subject
      t.string :link
      t.string :Prof

      t.timestamps
    end
  end
end
