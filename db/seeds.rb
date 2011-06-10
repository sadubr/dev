# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

    clients = Client.create :name => "Vitor", :email => "vitorfran@gmail.com", :password => "1234"
    clients = Client.create :name => "Vivian", :email => "vivivips@gmail.com", :password => "1234"
    clients = Client.create :name => "Desirre", :email => "desirre@gmail.com", :password => "1234"

