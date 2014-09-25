class CreateVideo < ActiveRecord::Migration
  def change
    create_table :video do |t|
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
