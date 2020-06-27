class Pasta

  def initialize(type, portion, vege)
    @type = type
    @portion = portion
    @vege = vege
puts "Prepairing your #{type} pasta, please wait."
end
  def vege
vege = false
  until vege
    puts "Please choose your vegetable: brocoli / zuchini / onion / tomato?"
    choice = gets.chomp.downcase

    if choice == "brocoli" || choice == "zuchini" || choice == "onion" || choice == "tomato"
      vege = true
      return choice

    else vege == false
        puts "Sorry we don't have that on our menu."
      
      end
    end
  end
end

    #Nisam nasao adekvatan nacin da ne dupliram metodu cook, ponavlja se i trebam da je reduciram...
  def cook
    date1 = Time.now + 2
    while Time.now < date1
    t = Time.at(date1.to_i - Time.now.to_i)
    p t.strftime('%S')
    sleep 1
  end
      puts "Your pasta #{@type} with #{vege}  is ready to be served for #{@portion} people ."
   end


class Penne < Pasta

def initialize(type, portion, vege)
  super(type, portion, vege)
end

 def cook
    date1 = Time.now + 4
    while Time.now < date1
    t = Time.at(date1.to_i - Time.now.to_i)
    p t.strftime('%S')
    sleep 1
  end
      puts "Your pasta #{@type} with #{vege}  is ready to be served for #{@portion} people ."
   end
end

class Spagheti < Pasta

def initialize(type, portion, vege)
  super(type, portion, vege)
end

  def cook
    date1 = Time.now + 6
    while Time.now < date1
    t = Time.at(date1.to_i - Time.now.to_i)
    p t.strftime('%S')
    sleep 1
  end
      puts "Your pasta #{@type} with #{vege}  is ready to be served for #{@portion} people ."
   end
end

class Fussili < Pasta

def initialize(type, portion, vege)
  super(type, portion, vege)
end
def cook
    date1 = Time.now + 5
    while Time.now < date1
    t = Time.at(date1.to_i - Time.now.to_i)
    p t.strftime('%S')
    sleep 1
  end
      puts "Your pasta #{@type} with #{vege}  is ready to be served for #{@portion} people ."
   end
end

penne = Penne.new("Penne", 3, "")
p penne.cook

spagheti = Spagheti.new("Spagheti", 4, "")
p spagheti.cook

fussili = Fussili.new("Fussili", 5, "")
p fussili.cook