class Tamagotchi
  @@last_eaten = Time.new()
  define_method(:initialize) do |name, food_level, sleep_level, activity_level, birth_time|
    @name = name
    @food_level = food_level
    @sleep_level = sleep_level
    @activity_level = activity_level
    @birth_time = @@last_eaten
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

  define_method(:last_eaten) do
    @@last_eaten
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

  define_method(:lived_for) do
    time_elapsed = Time.now().to_i - @birth_time.to_i()
    time_elapsed
  end


  define_method(:time_passes) do
    current_time = Time.now().to_i
    elapsed_time = current_time - @birth_time.to_i()
    if @@last_eaten == @birth_time
      @food_level = @food_level - (elapsed_time/10)
      @@last_eaten = Time.new()
      @food_level
    else
      elapsed_time = current_time - @@last_eaten.to_i()
      @food_level = @food_level - (elapsed_time/10)
      @@last_eaten = Time.new()
      @food_level
    end
end
end
