# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "add Achievement"
Achievement.find_or_create_by(name: "gauchito/a", point_min: 0, point_max: 0)
Achievement.find_or_create_by(name: "gaucho/a", point_min: 1, point_max: 5)
Achievement.find_or_create_by(name: "gauchaso/a", point_min: 6, point_max: 10)
puts "add Post"
Post.find_or_create_by(id:"0" ,user_id: "0" ,title:"Busco acompañante de viaje" ,city_id: "0" ,description: "1 Soy camionero y busco una persona que me acompañe en mi viaje hasta Rawson porque sufro problemas de sueño. Saldríamos el primer fin de semana de octubre y retornaríamos el fin de semana siguiente. * Condición fundamental: debe cebar buenos mates")
Post.find_or_create_by(id:"1" ,user_id: "0" ,title:"Necesito ayuda con Rails" ,city_id: "0" ,description: "Ando hasta las manos porque hay que hacer una entrega y no se entiende nada de Ruby, ni de RubyOnRails.. necesitaria que alguien me haga la tarea plz :'v pero sha! >:v")
Post.find_or_create_by(id:"2" ,user_id: "0" ,title:"Busco acompañante de viaje3" ,city_id: "0" ,description: "3 Soy camionero y busco una persona que me acompañe en mi viaje hasta Rawson porque sufro problemas de sueño. Saldríamos el primer fin de semana de octubre y retornaríamos el fin de semana siguiente. * Condición fundamental: debe cebar buenos mates")
Post.find_or_create_by(id:"3" ,user_id: "0" ,title:"Busco acompañante de viaje1" ,city_id: "0" ,description: "1 Soy camionero y busco una persona que me acompañe en mi viaje hasta Rawson porque sufro problemas de sueño. Saldríamos el primer fin de semana de octubre y retornaríamos el fin de semana siguiente. * Condición fundamental: debe cebar buenos mates")
Post.find_or_create_by(id:"4" ,user_id: "0" ,title:"Busco acompañante de viaje2" ,city_id: "0" ,description: "2 Soy camionero y busco una persona que me acompañe en mi viaje hasta Rawson porque sufro problemas de sueño. Saldríamos el primer fin de semana de octubre y retornaríamos el fin de semana siguiente. * Condición fundamental: debe cebar buenos mates")
Post.find_or_create_by(id:"5" ,user_id: "0" ,title:"Busco acompañante de viaje3" ,city_id: "0" ,description: "3 Soy camionero y busco una persona que me acompañe en mi viaje hasta Rawson porque sufro problemas de sueño. Saldríamos el primer fin de semana de octubre y retornaríamos el fin de semana siguiente. * Condición fundamental: debe cebar buenos mates")
Post.find_or_create_by(id:"6" ,user_id: "0" ,title:"Busco acompañante de viaje1" ,city_id: "0" ,description: "1 Soy camionero y busco una persona que me acompañe en mi viaje hasta Rawson porque sufro problemas de sueño. Saldríamos el primer fin de semana de octubre y retornaríamos el fin de semana siguiente. * Condición fundamental: debe cebar buenos mates")
Post.find_or_create_by(id:"7" ,user_id: "0" ,title:"Busco acompañante de viaje2" ,city_id: "0" ,description: "2 Soy camionero y busco una persona que me acompañe en mi viaje hasta Rawson porque sufro problemas de sueño. Saldríamos el primer fin de semana de octubre y retornaríamos el fin de semana siguiente. * Condición fundamental: debe cebar buenos mates")
Post.find_or_create_by(id:"8" ,user_id: "0" ,title:"Busco acompañante de viaje3" ,city_id: "0" ,description: "3 Soy camionero y busco una persona que me acompañe en mi viaje hasta Rawson porque sufro problemas de sueño. Saldríamos el primer fin de semana de octubre y retornaríamos el fin de semana siguiente. * Condición fundamental: debe cebar buenos mates")


puts "add User"
User.find_or_create_by(id:"0", name:"usuario_test" ,dni:"123456", birthdate:"01/01/2016", phone:"1213456" ,is_admin:"false" ,email:"usuario_test@test.com", encrypted_password:"usuario_test" )
User.find_or_create_by(id:"1", name:"admin_test" ,dni:"123456", birthdate:"01/01/2016", phone:"1213456" ,is_admin:"false" ,email:"admin_test@test.com", encrypted_password:"admin_test" )

puts "add City"
City.find_or_create_by(name: "la plata")
