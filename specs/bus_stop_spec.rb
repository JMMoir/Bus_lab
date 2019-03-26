require ('minitest/autorun')
require ('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')


class BusStopTest < MiniTest::Test

def setup
  @bus_stop = BusStop.new("Duke Street")
  @person = Person.new("Hugh", 43)
end

  def test_get_stop_name
    assert_equal("Duke Street", @bus_stop.stop_name)
  end

  def test_add_person_to_queue
    @bus_stop.add_to_queue(@person)
    assert_equal(1, @bus_stop.count_queue)
  end

end
