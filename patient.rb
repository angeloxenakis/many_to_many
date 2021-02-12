class Patient
    attr_reader(:name)

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    #  Get back all appointments connected to an instance of a patient
    def appointments
        Appointment.all.select { |appointment| appointment.patient == self}
        # The single line above does the same work of the commented out code below

        # patient_appointments = []
        # Appointment.all.each do |appointment|
        #     if appointment.patient == self 
        #         patient_appointments << appointment
        #     end
        # end
        # patient_appointments
    end

    # Get back a list of all doctors the patient has booked appointments with
    def doctors
        self.appointments.map { |appointment| appointment.doctor }
    end
end