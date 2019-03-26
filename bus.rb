class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum brum"
  end

  def count_passengers
    return @passengers.size()
  end

  def add_person(person)
    @passengers.push(person)
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty
    @passengers.clear()
  end

  def pick_up_all(bus_stop)
    @passengers.push(bus_stop)
    @bus_stop.clear_queue
  end

end
