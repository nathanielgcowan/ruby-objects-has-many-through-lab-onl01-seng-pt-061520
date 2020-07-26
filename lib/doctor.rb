class Doctor
  attr_accessor :name
  
  @@all =[]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    appointment.new(date, patient, self)
  end
  
  def appointments
    appointment.all.select { |appointment| appointment.doctor == self}
  end
  
  def patients
    appointments.map(&:patient)
  end
end