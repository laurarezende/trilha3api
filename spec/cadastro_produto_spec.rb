describe "fazer cadastro de produto" do
  it "cadastrar produto" do
    @body = {
      "produtoid": 123456789,
      "produtonome": "Produto de teste",
      "produtovalor": 200.00,
      "produtocores": [
        "preto", "branco",
      ],
      "componentes": [
        {
          "componentenome": "Controle",
          "componentequantidade": 1,
        },
        {
          "componentenome": "Memory Card",
          "componentequantidade": 1,
        },
      ],
    }.to_json

    @header = {
      Accept: "application/vnd.taskmanager.v2",
      'Content-Type': "application/json",
      token: "#{$token}",
    }

    @request = Principal.post("/produto", body: @body, headers: @header)
    puts @request.body
    expect(@request.code).to eq 201
  end
end
