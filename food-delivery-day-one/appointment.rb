class Appointment
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id] # integer
    @date = attributes[:date] # date
    @doctor = attributes[:doctor] # instance
    @patient = attributes[:patient] # instance
  end
end
