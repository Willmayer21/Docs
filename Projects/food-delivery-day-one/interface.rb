require_relative 'patient'
require_relative 'room'
# {
#   name: "Emmanuel",
#   cured: false
# }

# {
#   :name => "Emmanuel",
#   :cured =>  false
# }

emmanuel = Patient.new(name: "Emmanuel")
jean_philippe = Patient.new(name: "Jean-Philippe")
billy = Patient.new(name: "Billy")
# patient.name

emmanuel.cured!

room = Room.new(capacity: 2)
# p room.full?

room.add_patient(emmanuel)
room.add_patient(jean_philippe)
# p room.full?
room.add_patient(billy)

p room
p emmanuel.room

room_repository = RoomRepository.new("rooms.csv")
patient_repository = PatientRepository.new("patients.csv", room_repository)



