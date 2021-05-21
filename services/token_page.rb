require "rspec"
require "rspec/expectations"

class Token
  def get_token(login, senha)
    @login = login
    @senha = senha
    @body = {
      "usuariologin": @login,
      "usuariosenha": @senha,
    }.to_json

    @request = Principal.post("/login", body: @body)

    @token = @request.parsed_response["data"]["token"]
    return @token
  end
end
