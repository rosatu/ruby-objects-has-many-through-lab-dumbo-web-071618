class Doctor

  attr_accessor :name
  @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def new_appointment(patient,date)
      new_appointment = Appointment.new(patient, self, date)
    end

    def appointments
      Appointment.all.select { |appointment| appointment.doctor == self }
    end

    def patients
      appointments.map { |appointment| appointment.patient}
    end

    def self.all
      @@all
    end
end
