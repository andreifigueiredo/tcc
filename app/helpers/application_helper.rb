module ApplicationHelper
	def logCapture(acao_nome, acao_classe, 
		data, hora, 
		view_referer, view_url, view_method, 
		obj_text, 
		param_tipo, param_nome, 
		req_agent, req_encode)
		client = Savon.client(
			wsdl: static_configuration.exception_logs_url,
			logger: Rails.logger,
			log_level: :debug,
			log: true,
			ssl_version: :TLSv1,
			)
		data = {
			acaoNome: acao_nome,
			acaoClasse: acao_classe,
			data: data,
			hora: hora,
			objText: obj_text,
			paramTipo: param_tipo,
			paramNome: param_nome,
			reqAgent: req_agent,
			reqEncode: req_encode,
			}
		response = client.call(
			:exception_logs,
			message: data,
			)
		result = response.body[:exception_logs_response][:exception_logs_result]
		result[:status] == "OK" or raise CaptureFailed, "Capture status is : #{result[:status]}"
		return result[:ExceptionID]
	end
end
