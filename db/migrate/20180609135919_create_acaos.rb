class CreateAcaos < ActiveRecord::Migration[5.2]
  def change
    create_table :acaos do |t|
      t.string :acao_nome
      t.string :acao_classe
      t.references :excecao, foreign_key: true

      t.timestamps
    end
  end
end
