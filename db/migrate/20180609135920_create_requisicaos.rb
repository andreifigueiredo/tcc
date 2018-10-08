class CreateRequisicaos < ActiveRecord::Migration[5.2]
  def change
    create_table :requisicaos do |t|
      t.string :req_agent
      t.string :req_encode
      t.references :acao, foreign_key: true

      t.timestamps
    end
  end
end
