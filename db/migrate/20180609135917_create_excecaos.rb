class CreateExcecaos < ActiveRecord::Migration[5.2]
  def change
    create_table :excecaos do |t|
      t.date :data
      t.datetime :hora

      t.timestamps
    end
  end
end
