class Patient 
  attr_accessor :name
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end 
  
  def appointments 
    Appointment.all.select {|app| app.patient == self}
  end 