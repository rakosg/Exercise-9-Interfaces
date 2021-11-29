class Employee

  def prepare(misc)
    bike.prepare
  end
  
end
  
class Bike 

  def prepare(misc)

    if misc.class == BmxBike
      misc.maintenance
    elsif misc.class == RoadBike
      misc.maintenance
    elsif misc.class == MountainBike
      misc.maintenance
    elsif misc.class == Tricycle
      misc.maintenance
    else
      puts 'Uhh, boss, I dunno how to do that.'
    end

  end

end 

class BmxBike

  def maintenance
    self.clean
  end

  private def clean
    puts 'Cleaning...'
  end

end

class RoadBike

  def maintenance
    self.lubricate_gears
  end
  
  private def lubricate_gears
    puts 'Lubricating gears...'
  end

end

class MountainBike

  def maintenance
    self.adjust_suspension
  end 

  private def adjust_suspension
    puts 'Adjusting suspension...'
  end

end

class Tricycle

  def maintenance
    self.adjust_seat
  end

  private def adjust_seat
    puts 'Adjusting seat...'
  end

end


bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]

employee = Employee.new

bike = Bike.new

bikes.each do |misc|
  bike.prepare(misc)
end