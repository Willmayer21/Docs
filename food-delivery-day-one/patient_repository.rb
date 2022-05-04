require_relative 'patient'
require 'csv'

class PatientRepository
  def initialize(csv_file, room_repository)
    @next_id = 1
    @csv_file = csv_file
    @patients = []
    @room_repository = room_repository
    load_csv
  end

  def add(patient)
    patient.id = @next_id
    @next_id += 1
    @patients << patient
    # save_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      id = row[:id].to_i
      cured = row[:cured] == "true"
      room_id = row[:room_id].to_i
      room = @room_repository.find(room_id)

      patient = Patient.new(id: id, cured: cured)
      patient.room = room
      @patients << patient
    end

    @next_id = @patients.last.id + 1
  end
end
