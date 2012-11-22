class CreateCookies < ActiveRecord::Migration
  def change
    create_table :cookies do |t|
      t.string :fortune
      t.string :misfortune

      t.timestamps
    end
  end
end
