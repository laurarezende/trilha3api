module Principal
  include HTTParty

  base_uri "http://165.227.93.41/lojinha"
  format :json
  headers Accept: "application/vnd.taskmanager.v2",
          'Content-Type': "application/json"
end
