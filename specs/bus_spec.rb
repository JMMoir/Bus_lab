require ('minitest/autorun')
require ('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @bus_stop = BusStop.new("Duke Street")
    @person = Person.new("John", 31)
  end

  def test_get_route_number
    assert_equal(22, @bus.route_number)
  end

  def test_get_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_drive
    assert_equal("Brum brum", @bus.drive)
  end

  def test_count_passengers
    assert_equal(0, @bus.count_passengers)
  end

  def test_add_person()
    @bus.add_person(@person)
    assert_equal(1, @bus.count_passengers)
  end

  def test_passenger_drop_off
    @bus.drop_off(@person)
    assert_equal(0, @bus.count_passengers)
  end

  def test_empty
    assert_equal(0, @bus.count_passengers)
  end

  def test_pick_up_all
    @bus.pick_up_all(@bus_stop)
    assert_equal(1, @bus.count_passengers)
    assert_equal(0, @bus_stop.count_queue)
  end

end
