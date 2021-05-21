describe "alterar produto" do
  it "cadastrar produto" do
    @body = {
      "produtonome": "Nintendo DDS",
      "produtovalor": 250.00,
      "produtocores": [
        "preto", "branco",
      ],
      "componentes": [
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

    @request = Principal.put("/produto/13258", body: @body, headers: @header)
    puts @request.body
    expect(@request.code).to eq 200
  end
end
