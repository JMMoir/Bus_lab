require ('minitest/autorun')
require ('minitest/rg')
require_relative('../person')

class PersonTest < MiniTest::Test

def setup
  @person = Person.new("John", 31)
end


def test_get_age
  assert_equal(31, @person.age)
end

def test_get_name
  assert_equal("John", @person.name)
end

end
