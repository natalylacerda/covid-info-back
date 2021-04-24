# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def updateApi
    response = HTTParty.get 'https://covid19-brazil-api.now.sh/api/report/v1'
    array_response = JSON.parse response.body
    array_states = array_response["data"]
    array_states.each do |state|
        State.create(name:"#{state["state"]}", uf:"#{state["uf"]}", cases:state["cases"], deaths:state["deaths"], datetime:"#{state["datetime"]}")
    end
    
end

updateApi
