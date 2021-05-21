describe "buscar produtos" do
  it "busca" do
    @body = {}

    @header = {
      Accept: "application/vnd.taskmanager.v2",
      'Content-Type': "application/json",
      token: "#{$token}",
    }

    @request = Principal.get("/produto", headers: @header)
    puts @request.body
    expect(@request.code).to eq 200
  end
end
