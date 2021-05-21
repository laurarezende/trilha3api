describe "buscar produtos" do
  it "busca" do
    @body = {}

    @header = {
      Accept: "application/vnd.taskmanager.v2",
      'Content-Type': "application/json",
      token: "#{$token}",
    }

    @request = Principal.get("/produto/13258", headers: @header)
    puts @request.body
    expect(@request.code).to eq 200
  end
end
