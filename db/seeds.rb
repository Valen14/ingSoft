# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "add Achievement"
Achievement.find_or_create_by(name: "gauchito/a", point_min: 0, point_max: 1)
Achievement.find_or_create_by(name: "gaucho/a", point_min: 2, point_max: 5)
Achievement.find_or_create_by(name: "gauchaso/a", point_min: 6, point_max: 10)

puts "add User"
User.create(id:"11", name:"usuario_test1" ,dni:"123456", birthdate:"01/01/2016", phone:"1213456" ,is_admin:"false" ,email:"usuario_test1@test.com", password:"usuario_test1" )
User.create(id:"12", name:"usuario_test2" ,dni:"123456", birthdate:"01/01/2016", phone:"1213456" ,is_admin:"false" ,email:"usuario_test2@test.com", password:"usuario_test2" )
User.create(id:"13", name:"usuario_test3" ,dni:"123456", birthdate:"01/01/2016", phone:"1213456" ,is_admin:"false" ,email:"usuario_test3@test.com", password:"usuario_test3" )

User.create(id:"0", name:"admin_test" ,dni:"123456", birthdate:"01/01/2016", phone:"1213456" ,is_admin:"true" ,email:"admin_test@test.com", password:"admin_test" )
puts "add City"
City.find_or_create_by(id:"0", name: "la plata")
City.find_or_create_by(id:"1", name: "olmos")
City.find_or_create_by(id:"2", name: "ensenada")
City.find_or_create_by(id:"3", name: "berisso")
City.find_or_create_by(id:"4", name: "abasto")
City.find_or_create_by(id:"5", name: "romero")

puts "add Post"
Post.create(id:"1" ,user_id: "13" ,title:"Busco acompañante de viaje" ,city_id: "0" ,description: "1 Soy camionero y busco una persona que me acompañe en mi viaje hasta Rawson porque sufro problemas de sueño. Saldríamos el primer fin de semana de octubre y retornaríamos el fin de semana siguiente. * Condición fundamental: debe cebar buenos mates")
Post.create(id:"2" ,user_id: "11" ,title:"Necesito ayuda con Rails" ,city_id: "0" ,description: "Ando hasta las manos porque hay que hacer una entrega y no se entiende nada de Ruby, ni de RubyOnRails.. necesitaria que alguien me haga la tarea plz :'v pero sha! >:v", photo_url:"ej4.jpg" )
Post.create(id:"3" ,user_id: "12" ,title:"Reencontrarme con Ramirez" ,city_id: "0" ,description: "Ramirez es un burrito que tenía de mascota en un campo en Tucumán. Quisiera reencontrarme con él pero no puedo moverme por un problema físico. Me gustaría que alguien lo traiga desde mi pueblo para poder saludarlo y luego volver a llevarlo.*la foto es del 2004, Ramirez puede haber cambiado un poco", photo_url:"ej1.jpg" )
Post.create(id:"4" ,user_id: "12" ,title:"Busco testigo falso" ,city_id: "0" ,description: "El año pasado tuve un accidente automovilístico en el que choqué el frente de una casa. El dueño de esa casa me quiere llevar a juicio y estoy buscando evitarlo. Necesito de un/a abuelito/a que testifique a mi favor diciendo que choqué el frente de la casa por esquivarlo/a.")
Post.create(id:"5" ,user_id: "11" ,title:"Karl" ,city_id: "0" ,description: "Karl es mi perrito y necesita de alguien que lo cuide durante la primera quincena de enero que me voy de vacaciones. Es muy juguetón y muy buena compañía.",photo_url:"ej2.jpg")
Post.create(id:"6" ,user_id: "11" ,title:"Restaurar obra de arte" ,city_id: "0" ,description: "La imagen de la izquierda es la original y la de la derecha mi intento por restaurarla. ¿Alguien me haría la gauchada de acomodarla para que se parezca más a la original? ", photo_url:"ej3.jpg" )
Post.create(id:"7" ,user_id: "13" ,title:"Busco acompañante de viaje1" ,city_id: "0" ,description: "1 Soy camionero y busco una persona que me acompañe en mi viaje hasta Rawson porque sufro problemas de sueño. Saldríamos el primer fin de semana de octubre y retornaríamos el fin de semana siguiente. * Condición fundamental: debe cebar buenos mates")
Post.create(id:"8" ,user_id: "12" ,title:"Busco acompañante de viaje2" ,city_id: "0" ,description: "2 Soy camionero y busco una persona que me acompañe en mi viaje hasta Rawson porque sufro problemas de sueño. Saldríamos el primer fin de semana de octubre y retornaríamos el fin de semana siguiente. * Condición fundamental: debe cebar buenos mates")
Post.create(id:"9" ,user_id: "13" ,title:"Busco acompañante de viaje3" ,city_id: "0" ,description: "3 Soy camionero y busco una persona que me acompañe en mi viaje hasta Rawson porque sufro problemas de sueño. Saldríamos el primer fin de semana de octubre y retornaríamos el fin de semana siguiente. * Condición fundamental: debe cebar buenos mates")

puts "add postulatoin"
Postulation.create(user_id: "12" ,post_id: "2" ,estimate_date: "2016-11-25" ,description: "soy el usuario 12 puedo hacerte la gauchada")
Postulation.create(user_id: "13" ,post_id: "2" ,estimate_date: "2016-11-25" ,description: "soy el usuario 13 puedo hacerte la gauchada")
Postulation.create(user_id: "11" ,post_id: "1" ,estimate_date: "2016-11-25" ,description: "soy el usuario 11 puedo hacerte la gauchada")
Postulation.create(user_id: "12" ,post_id: "1" ,estimate_date: "2016-11-25" ,description: "soy el usuario 12 puedo hacerte la gauchada")
Postulation.create(user_id: "11" ,post_id: "3" ,estimate_date: "2016-11-25" ,description: "soy el usuario 11 puedo hacerte la gauchada")
Postulation.create(user_id: "13" ,post_id: "3" ,estimate_date: "2016-11-25" ,description: "soy el usuario 13 puedo hacerte la gauchada")
