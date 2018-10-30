class WsdlServicesController < ApplicationController
    soap_service namespace: 'urn:WashOut'

    soap_action "SendLog",
        :args => {  :acaoNome => :string,
                    :acaoClasse => :string,
                    :data => :string,
                    :hora => :string,
                    :viewReferer => :string,
                    :viewUrl => :string,
                    :viewMethod => :string,
                    :objText => :string,
                    :paramTipo => :string,
                    :paramNome => :string,
                    :reqAgent => :string,
                    :reqEncode => :string,
                },
        :return => nil,
        :to => :send_log
    def send_log
        acao_nome = params[:acaoNome]
        acao_classe = params[:acaoClasse]
        data = params[:data]
        hora = params[:hora]
        view_referer = params[:viewReferer]
        view_url = params[:viewUrl]
        view_method = params[:viewMethod]
        obj_text = params[:objText]
        param_tipo = params[:paramTipo]
        param_nome = params[:paramNome]
        req_agent = params[:reqAgent]
        req_encode = params[:reqEncode]

        puts "Inicio Query"
        newExc = Excecao.create(data: params[:data], hora: params[:hora])
        puts newExc.id
        newAcao = Acao.create(acao_nome: params[:acaoNome], acao_classe: params[:acaoClasse], excecao_id: newExc.id)
        puts newAcao.id
        newReq = Requisicao.create(req_agent: params[:reqAgent], req_encode: params[:reqEncode], acao_id: newAcao.id)
        puts newReq.id
        newView = Http.create(view_referer: params[:viewReferer], view_method: params[:viewMethod], view_url: params[:viewUrl], requisicao_id: newReq.id)
        puts newView.id
        newPar = Parametro.create(param_tipo: params[:paramTipo], param_nome: params[:paramNome], requisicao_id: newReq.id)
        puts newPar.id
        newSess = Sessao.create(requisicao_id: newReq.id)
        puts newSess.id
        newObj = Objsessao.create(obj_text: params[:objText], sessao_id: newSess.id)
        puts newObj.id
        
        puts acao_nome, acao_classe, data, hora, view_url, view_referer, view_method, obj_text, param_tipo, param_nome, req_encode, req_agent 
        render :soap => nil
    end
=begin

soap_action "sum",
    :args => {:a => :integer, :b => :integer},
    :return => :integer
def sum
    result = (params[:a] + params[:b])
    render :soap => result
end

soap_action "substract",
    :args => {:a => :integer, :b => :integer},
    :return => :integer
def substract
    render :soap => (params[:a] - params[:b])
end

soap_action "multiply",
    :args => {:a => :integer, :b => :integer},
    :return => :integer
def multiply
    render :soap => (params[:a] * params[:b])
end

soap_action "divide",
    :args => {:a => :integer, :b => :integer},
    :return => :integer
def divide
    render :soap => (params[:a] / params[:b])
end
=end

end
