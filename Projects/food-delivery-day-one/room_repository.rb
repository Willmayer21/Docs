require 'csv'
require_relative 'room'

class RoomRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @rooms = []
    load_csv
  end

  def find(room_id)
    @rooms.find { |room| room.id == room_id}
  end

  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      id = row[:id].to_i
      capacity = row[:capacity].to_i
      @rooms << Room.new(id: id, capacity: capacity)
    end
  end
end
