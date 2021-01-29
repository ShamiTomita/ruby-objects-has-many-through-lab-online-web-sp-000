class Doctor 
  attr_accessor :name
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end 
  
  def appointments  
    Appointments.all.select {|app| app.doctor == self}
  end 
  
  def patients
    appointments.collect
    
  
end 