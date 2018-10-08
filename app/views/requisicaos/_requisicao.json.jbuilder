json.extract! requisicao, :id, :req_agent, :req_encode, :acao_id, :created_at, :updated_at
json.url requisicao_url(requisicao, format: :json)
