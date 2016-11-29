require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("set the name and life levels of a new Tamagotchi") do |name, food_level, sleep_level, activity_level|
      my_pet = Tamagotchi.new("lil dragon", 10, 10, 10)
      expect(my_pet.name()).to(eq("lil dragon"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe("#is_alive") do
  it("is alive if the food level is above 0") do
    my_pet = Tamagotchi.new("lil dragon",10, 10, 10)
    expect(my_pet.is_alive()).to(eq(true))
  end

  it("is dead if food level is 0") do
    my_pet = Tamagotchi.new("lil dragon",0, 10, 10)
      expect(my_pet.is_alive()).to(eq(false))

  end
end

  describe("#set_food_level") do |number|
    it("will change the current food_level to input number") do
    my_pet = Tamagotchi.new("lil dragon",10, 10, 10)
    expect(my_pet.set_food_level(number)).to(eq(my_pet.food_level))
    end
  end
end
