class Room
  # attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def full?
    @patients.size == @capacity
  end

  def add_patient(patient)
    if @patients.size < @capacity
      @patients.push(patient)
    end

    patient.room = self
  end
end
