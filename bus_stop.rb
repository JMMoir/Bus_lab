class BusStop

  attr_reader :stop_name, :queue

  def initialize(name)
    @stop_name = name
    @queue = []
  end


  def count_queue
    return @queue.count
  end

  def add_to_queue(person)
    @queue.push(person)
  end

  def clear_queue
    @queue.clear()
  end


end
