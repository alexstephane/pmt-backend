
#Destory old tables 
Manager.destroy_all
Salesrep.destroy_all
Prospect.destroy_all
Activity.destroy_all
#testing

#created Manager
stephane = Manager.create(first_name: 'stephane', username: "stephane",last_name: 'white', title: 'manager', email: 'jane@flatiron.com', password: "stephane", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgSUQS8umHlBVfP_U7zk8HuhW6gliTFi1acg&usqp=CAU")
king =  Manager.create(first_name: 'king', username: "king",last_name: 'white', title: 'manager', email: 'jane@flatiron.com', password: "king", photo: "https://ca.slack-edge.com/T02MD9XTF-U015WR36Z7D-e58c54de9ffc-512")
john = Manager.create(first_name: 'john',  username: "john",last_name: 'King', title: 'manager', email: 'john@flatiron.com', password: "john", photo: "https://alliancebjjmn.com/wp-content/uploads/2019/07/placeholder-profile-sq.jpg")
mik = Manager.create(first_name: 'john',  username: "john",last_name: 'King', title: 'manager', email: 'john@flatiron.com', password: "john", photo: "https://alliancebjjmn.com/wp-content/uploads/2019/07/placeholder-profile-sq.jpg")

#created Salesperson
alex = Salesrep.create(manager_id:stephane.id, first_name: 'Alex', last_name: 'Ngundji', title: 'Salesperson', email: 'alex@flatiron.com',username: "alex", password: "alex", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdf9vUoTUVrrfPkYkX6Scf2FTei8RKX6PAWQ&usqp=CAU")
kevin = Salesrep.create(manager_id:stephane.id, first_name: 'Kevin', last_name: 'Sheehan', title: 'Salesperson', email: 'kevin@flatiron.com',username: "kevin",  password: "kevin", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdf9vUoTUVrrfPkYkX6Scf2FTei8RKX6PAWQ&usqp=CAU")
melinda = Salesrep.create(manager_id:john.id, first_name: 'Melinda', last_name: 'Diaz', title: 'Salesperson', email: 'melinda@flatiron.com',username: "melinda",  password: "melinda", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlqXNjcHdU0ZH-yQui50PRG8Ug2hFRuo87GQ&usqp=CAU")
km = Salesrep.create(manager_id:john.id, first_name: 'km', last_name: 'Diaz', title: 'Salesperson', email: 'melinda@flatiron.com', username: "km", password: "km", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRztORKXsp6um1HtIhJwXZkLTcrqcrLmbDwyQ&usqp=CAU")
leo = Salesrep.create(manager_id:john.id, first_name: 'Leo', last_name: 'Matt', title: 'Salesperson', email: 'matt@flatiron.com',  username: "leo", password: "matt", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq9nEXv0hG17HBwnpAw9lzscKYjHaLWsKGcA&usqp=CAU")
kim = Salesrep.create(manager_id:king.id, first_name: 'kim', last_name: 'Main', title: 'Salesperson', email: 'main@flatiron.com',  username: "kim", password: "kim", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq9nEXv0hG17HBwnpAw9lzscKYjHaLWsKGcA&usqp=CAU")
walter = Salesrep.create(manager_id:stephane.id, first_name: 'walter', last_name: 'Page', title: 'Salesperson', email: 'page@flatiron.com',username: "walter",  password: "walter", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdf9vUoTUVrrfPkYkX6Scf2FTei8RKX6PAWQ&usqp=CAU")
mike = Salesrep.create(manager_id:stephane.id, first_name: 'Mike', last_name: 'Moore', title: 'Salesperson', email: 'more@flatiron.com',username: "mike", password: "mike", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdf9vUoTUVrrfPkYkX6Scf2FTei8RKX6PAWQ&usqp=CAU")

#created Prospect
milo = Prospect.create(manager_id:king.id, salesrep_id: melinda.id, first_name: 'Milo', last_name: 'Bravman',phone:"804-219 3042", email: 'milo@flatiron.com', status: "workin", created_by:melinda.id)
andrew = Prospect.create(manager_id:stephane.id,salesrep_id: alex.id, first_name: 'Andrew', last_name: 'Park',phone:"804-219 3042", email: 'andrew@flatiron.com', status: "working", created_by:stephane.id)
milo = Prospect.create(manager_id:king.id, salesrep_id: melinda.id, first_name: 'Milo', last_name: 'Bravman',phone:"804-219 3042", email: 'milo@flatiron.com', status: "workin", created_by:melinda.id)
andrew = Prospect.create(manager_id:stephane.id,salesrep_id: alex.id, first_name: 'Andrew', last_name: 'Park',phone:"804-219 3042", email: 'andrew@flatiron.com', status: "working", created_by:stephane.id)
jerry = Prospect.create(manager_id:king.id, salesrep_id: melinda.id, first_name: 'Jerry', last_name: 'Brown',phone:"804-219 3042", email: 'brown@flatiron.com', status: "workin", created_by:melinda.id)
Jack = Prospect.create(manager_id:stephane.id, salesrep_id: mike.id, first_name: 'Jack', last_name: 'James',phone:"804-219 3042", email: 'james@flatiron.com', status: "workin", created_by:melinda.id)
# created activities
phone = Activity.create(prospect_id: milo.id, prospect_name: milo.first_name, name: 'Phone call', status: "working", created_by:alex.first_name, description: "Left a message, will follow tomorrow")
meeting = Activity.create(prospect_id: andrew.id, name: 'Meeting',status: "won", created_by:alex.first_name, description: "great meeting today, closed the deal")




