class Tamagotchi

  define_method(:initialize) do |name, food_level, sleep_level, activity_level, birth_time|
    @name = name
    @food_level = food_level
    @sleep_level = sleep_level
    @activity_level = activity_level
    @birth_time = Time.new()
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:birth_time) do
    @birth_time
  end

  define_method(:is_alive) do
    if @food_level > 0
      true
    else
      false
  end
end

  define_method(:set_food_level) do |number|
    @food_level = number

  end
  define_method(:time_passes) do
    current_time = Time.now()
    current_time.to_i + 30
    if Time.now() > current_time
      @food_level = @food_level - 1
    else
  end
end
end
