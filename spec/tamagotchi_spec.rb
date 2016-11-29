require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("set the name and life levels of a new Tamagotchi") do |name, food_level, sleep_level, activity_level, birth_time|
      my_pet = Tamagotchi.new("lil dragon", 10, 10, 10, birth_time)
      expect(my_pet.name()).to(eq("lil dragon"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
      expect(my_pet.birth_time().to_i).to(eq(Time.now().to_i))
    end
  end

  describe("#is_alive") do
  it("is alive if the food level is above 0") do
    my_pet = Tamagotchi.new("lil dragon", 10, 10, 10, 235)
    expect(my_pet.is_alive()).to(eq(true))
  end

  it("is dead if food level is 0") do
    my_pet = Tamagotchi.new("lil dragon", 0, 10, 10, 235)
      expect(my_pet.is_alive()).to(eq(false))

  end
end

  describe("#set_food_level") do |number|
    it("will change the current food_level to input number") do
    my_pet = Tamagotchi.new("lil dragon",10, 10, 10, 235)
    expect(my_pet.set_food_level(number)).to(eq(my_pet.food_level))
    end
  end

  describe("#time_passes") do
    it('decrease the food_level by 1 a set period of time') do
      my_pet = Tamagotchi.new("lil dragon",10, 10, 10, 235)
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
    end
  end

  describe("#lived_for") do
    it("return the elapsed time spent alive in seconds") do
      my_pet = Tamagotchi.new("lil dragon",10, 10, 10, 235)
      expect(my_pet.lived_for()).to(eq(0))
    end
  end
end
