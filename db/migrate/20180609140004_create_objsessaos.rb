class CreateObjsessaos < ActiveRecord::Migration[5.2]
  def change
    create_table :objsessaos do |t|
      t.text :obj_text
      t.references :sessao, foreign_key: true

      t.timestamps
    end
  end
end
