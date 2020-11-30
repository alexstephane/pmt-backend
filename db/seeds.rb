# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#c = Employee.create(team_id: gitme.id, first_name: 'Claudia', last_name: 'Borghini', title: 'Junior Software Engineer', department: 'SE', photo:
    Manager.destroy_all
    Salesrep.destroy_all
    Prospect.destroy_all
    Activity.destroy_all
#created Manager
    stephane = Manager.create(first_name: 'stephane', username: "mike",last_name: 'white', title: 'manager', email: 'jane@flatiron.com', password: "stephane", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgSUQS8umHlBVfP_U7zk8HuhW6gliTFi1acg&usqp=CAU")
    # king =  Manager.create(first_name: 'stephane', username: "alex",last_name: 'white', title: 'manager', email: 'jane@flatiron.com', password: "stephane", photo: "https://ca.slack-edge.com/T02MD9XTF-U015WR36Z7D-e58c54de9ffc-512")
    john = Manager.create(first_name: 'John',  username: "new",last_name: 'King', title: 'manager', email: 'john@flatiron.com', password: "john", photo: "https://alliancebjjmn.com/wp-content/uploads/2019/07/placeholder-profile-sq.jpg")

#created Salesperson


    alex = Salesrep.create(manager_id:stephane.id, first_name: 'Alex', last_name: 'Ngundji', title: 'Salesperson', email: 'alex@flatiron.com', password: "alex", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdf9vUoTUVrrfPkYkX6Scf2FTei8RKX6PAWQ&usqp=CAU")
    kevin = Salesrep.create(manager_id:stephane.id, first_name: 'Kevin', last_name: 'Sheehan', title: 'Salesperson', email: 'kevin@flatiron.com', password: "kevin", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdf9vUoTUVrrfPkYkX6Scf2FTei8RKX6PAWQ&usqp=CAU")
    melinda = Salesrep.create(manager_id:john.id, first_name: 'Melinda', last_name: 'Diaz', title: 'Salesperson', email: 'melinda@flatiron.com', password: "melinda", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlqXNjcHdU0ZH-yQui50PRG8Ug2hFRuo87GQ&usqp=CAU")
    jhon = Salesrep.create(manager_id:john.id, first_name: 'john', last_name: 'john', title: 'Salesperson', email: 'melinda@flatiron.com', password: "melinda", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq9nEXv0hG17HBwnpAw9lzscKYjHaLWsKGcA&usqp=CAU")
    king = Salesrep.create(manager_id:john.id, first_name: 'king', last_name: 'Diaz', title: 'Salesperson', email: 'melinda@flatiron.com', password: "melinda", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRztORKXsp6um1HtIhJwXZkLTcrqcrLmbDwyQ&usqp=CAU")
    km = Salesrep.create(manager_id:john.id, first_name: 'km', last_name: 'Diaz', title: 'Salesperson', email: 'melinda@flatiron.com', password: "melinda", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRztORKXsp6um1HtIhJwXZkLTcrqcrLmbDwyQ&usqp=CAU")
    jg = Salesrep.create(manager_id:john.id, first_name: 'jg', last_name: 'Diaz', title: 'Salesperson', email: 'melinda@flatiron.com', password: "melinda", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq9nEXv0hG17HBwnpAw9lzscKYjHaLWsKGcA&usqp=CAU")
#created Prospect
    milo = Prospect.create(manager_id:stephane.id, salesrep_id: alex.id, first_name: 'Milo', last_name: 'Bravman',phone:"804-219 3042", email: 'milo@flatiron.com', status: "workin", created_by:stephane.id)
    andrew = Prospect.create(manager_id:stephane.id,salesrep_id: alex.id, first_name: 'Andrew', last_name: 'Park',phone:"804-219 3042", email: 'andrew@flatiron.com', status: "working", created_by:stephane.id)
# created activities

    phone = Activity.create(prospect_id: milo.id, prospect_name: milo.first_name, name: 'Phone call', status: "working", created_by:alex.first_name, description: "Left a message, will follow tomorrow")
    meeting = Activity.create(prospect_id: andrew.id, name: 'Meeting',status: "won", created_by:alex.first_name, description: "great meeting today, closed the deal")


