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
        :to => :log
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
