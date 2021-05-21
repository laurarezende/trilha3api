describe "fazer cadastro de usuario" do
  it "cadastrar" do
    @body = {
      "usuarionome": "laura190898",
      "usuariologin": "laura190298",
      "usuariosenha": "123456",
    }.to_json

    @request = Principal.post("/usuario", body: @body)
    puts @request.body
    expect(@request.code).to eq 201
  end
end
