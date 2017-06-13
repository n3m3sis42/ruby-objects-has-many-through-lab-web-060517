class Doctor
  attr_reader :appointments, :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    @appointments << appt
    appt.doctor = self
  end

  def patients
    @appointments.map {|appt| appt.patient}
  end

end

# # If you have already finished the many to many lab, pair up with someone else who has finished to build onto the doctor, patient, appointment codebase.  Here are some features:
#     1. Allow doctors to issue prescriptions.  That means that a doctor should have a list of prescriptions available to him.  And a prescription should of course be associated with a specific illness of a patient.
#         a. You can add in some additional features, by thinking about patient allergies that may prevent certain prescriptions from being issued.  You may also think about certain prescriptions that should not be issued together.
#     2. Appointment generator - this is harder.
# Consider patient availabilities, and doctor availabilities.  We should be able to recommend to a doctor or patient a time or multiple times for an appointment.  Only then would we create the appointment.
