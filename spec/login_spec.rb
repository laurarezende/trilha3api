# require_relative "../services/token_page.rb"

describe "fazer login do usuario" do
  it "login" do
    @body = {
      "usuariologin": "laura190298",
      "usuariosenha": "123456",
    }.to_json

    @request = Principal.post("/login", body: @body)
    expect(@request.code).to eq 200
  end
end
