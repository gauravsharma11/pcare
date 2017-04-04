package com.lakeheadu.pcare.utilities;

import java.util.ArrayList;
import java.util.List;

import org.dummycreator.DummyCreator;
import org.joda.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import com.lakeheadu.pcare.models.Diagnosis;
import com.lakeheadu.pcare.models.Doctor;
import com.lakeheadu.pcare.models.Patient;
import com.lakeheadu.pcare.models.Staff;
import com.lakeheadu.pcare.models.User;
import com.lakeheadu.pcare.services.DoctorService;
import com.lakeheadu.pcare.services.PatientService;
import com.lakeheadu.pcare.services.UserService;

@Component
public class DummyDataCreator implements ApplicationListener<ContextRefreshedEvent> 
{
	private PatientService patientService;
	
	private DummyDataCreator dummyDataCeator;
	
	private DoctorService doctorService;
	
	private UserService userService;
	
	private EncryptionService encryptionService;

	private List<Patient> patients = new ArrayList<Patient>();
	private List<Doctor> doctors = new ArrayList<Doctor>();
	private List<Staff> staffMembers = new ArrayList<Staff>();
	
	private List<User> users = new ArrayList<User>();
	
	@Autowired
	public void setPatientService(PatientService patientService) {
		this.patientService = patientService;
	}
	
	@Autowired
	public void setEncryptionService(EncryptionService encryptionService) {
		this.encryptionService = encryptionService;
	}
	
	@Autowired
	public void setDummyDataCreator(DummyDataCreator dummyDataCeator) {
		this.dummyDataCeator = dummyDataCeator;
	}
	
	@Autowired
	public void setDoctorService(DoctorService doctorService) {
		this.doctorService = doctorService;
	}
	
	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public void onApplicationEvent(ContextRefreshedEvent arg0) {
		
		System.out.println("Starting data loading");
		
		dummyDataCeator.saveAllDummyData();
		
	}
	
	public void saveAllDummyData()
	{
		String value = "Admin123";
		String hashPassword = "";
		hashPassword = encryptionService.encrypt(value);

		Patient patient1 = new Patient("Gaurav Sharma", 25, new LocalDate (1991, 12, 11), true, hashPassword , "John Street", "Thunder Bay", "gaurav.sharma97798@gmail.com", "Ontario", 5, "8077082057");
		Patient patient2 = new Patient("Siddhant", 25, new LocalDate (1991, 12, 11), true,hashPassword , "Phillip Street", "Toronto", "sid19@yahoo.com", "Ontario", 5, "8072552672");
		Patient patient3 = new Patient("S grewal", 25, new LocalDate (1991, 12, 11), true,hashPassword , "Pasteur Street", "Waterloo", "grewal@yahoo.com", "Ontario", 5, "8073562057");
		Patient patient4 = new Patient("Harish", 25, new LocalDate (1991, 12, 11), true,hashPassword , "Oliver Road", "Hamilton", "harish@yahoo.com", "Ontario", 5, "8074567980");
		Patient patient5 = new Patient("Popat Laal ", 25, new LocalDate (1991, 12, 11), true,hashPassword , "Machar Street", "Windsor", "pacre@yahoo.com", "Ontario", 5, "8074782667");
		Patient patient6 = new Patient("Bob", 25, new LocalDate (1991, 12, 11), true,hashPassword , "Mcbean Street", "Kingston", "adminlte@yahoo.com", "Ontario", 5, "8073562607");
		Patient patient7 = new Patient("Jacky", 25, new LocalDate (1991, 12, 11), true,hashPassword , "Rupert Street", "Kitchener", "sarwagya@yahoo.com", "Ontario", 5, "8077082603");
		Patient patient8 = new Patient("Bruce", 25, new LocalDate (1991, 12, 11), true,hashPassword , "Algoma South", "Missisauga", "ameya@yahoo.com", "Ontario", 5, "8073451837");
		Patient patient9 = new Patient("John", 25, new LocalDate (1991, 12, 11), true,hashPassword , "Red river", "Orillia", "atish@yahoo.com", "Ontario", 5, "8077869810");
		Patient patient10 = new Patient("Ujjval", 25, new LocalDate (1991, 12, 11), true,hashPassword , "Varsity row", "Oshawa", "ujjval@yahoo.com", "Ontario", 5, "8072226780");
		
		LocalDate ld = new LocalDate (2017, 04, 04);
		
		Diagnosis diagnosis = new Diagnosis();
		diagnosis.setDiagnosedAs("Diabetes Mellitus");
		diagnosis.setVisitDate(ld.toDate());
		diagnosis.setHistory("Diabetic");
		diagnosis.setSymptoms("Swelling on foot");
		diagnosis.setPatient(patient1);
		
		Diagnosis diagnosis1 = new Diagnosis();
		diagnosis1.setDiagnosedAs("Diabetes Mellitus");
		diagnosis1.setVisitDate(ld.toDate());
		diagnosis1.setHistory("Diabetic");
		diagnosis1.setSymptoms("Swelling on foot");
		diagnosis1.setPatient(patient2);
		
		Doctor doctor1 = new Doctor("Richard", "Neurosurgeon", new LocalDate (1991, 12, 11), true, hashPassword ,"John Street", "Thunder Bay", "Ontario", "8073569230", "rich45@gmail.com","a");
		
		doctor1.getPatientsList().add(patient1);
		doctor1.getPatientsList().add(patient2);
		
		Doctor doctor2 = new Doctor("Michael", "Addiction psychiatrist", new LocalDate (1954, 01, 26), true,hashPassword , "Applewood", "Hamilton", "Ontario", "8073569452", "drmike1954@gmail.com","a");
		
		doctor2.getPatientsList().add(patient7);
		doctor2.getPatientsList().add(patient3);
		
		Doctor doctor3 = new Doctor("Leon", "Adolescent medicine specialist", new LocalDate (1970, 12, 11), true,hashPassword , "Red river", "Kingston", "Ontario", "8074269230", "Leon48@gmail.com","a");
		
		doctor3.getPatientsList().add(patient5);
		doctor3.getPatientsList().add(patient2);
		
		Doctor doctor4 = new Doctor("Melissa", "Allergist", new LocalDate (1962, 12, 11), true,hashPassword , "Varsity row", "Oshawa", "Ontario", "8022569230", "Melken@yahoo.com","d");
		
		doctor4.getPatientsList().add(patient9);
		doctor4.getPatientsList().add(patient7);
		
		Doctor doctor5 = new Doctor("Tom", "Anesthesiologist", new LocalDate (1991, 12, 11), true,hashPassword , "Machar Street", "Windsor", "Ontario", "8074039230", "tommy5@gmail.com","d");
		
		doctor5.getPatientsList().add(patient3);
		doctor5.getPatientsList().add(patient5);
		
		Doctor doctor6 = new Doctor("Richard", "Cardiologist", new LocalDate (1991, 12, 11), true,hashPassword , "John Street", "Thunder Bay", "Ontario", "8073569230", "rich454@gmail.com","d");
		
		doctor6.getPatientsList().add(patient2);
		doctor6.getPatientsList().add(patient3);
		
		Doctor doctor7 = new Doctor("Richard", "Cardiovascular surgeon", new LocalDate (1991, 12, 11), true,hashPassword , "John Street", "Thunder Bay", "Ontario", "8073569230", "rich455@gmail.com","a");
		
		doctor7.getPatientsList().add(patient4);
		doctor7.getPatientsList().add(patient5);
		
		Doctor doctor8 = new Doctor("Richard", "Cardiologist", new LocalDate (1991, 12, 11), true,hashPassword , "John Street", "Thunder Bay", "Ontario", "8073569230", "rich456@gmail.com","d");
		
		doctor8.getPatientsList().add(patient6);
		doctor8.getPatientsList().add(patient7);
		
		Doctor doctor9 = new Doctor("Richard", "Radiologist", new LocalDate (1991, 12, 11), true,hashPassword , "John Street", "Thunder Bay", "Ontario", "8073569230", "rich457@gmail.com","a");
		
		doctor9.getPatientsList().add(patient8);
		doctor9.getPatientsList().add(patient9);
		
		Doctor doctor10 = new Doctor("Richard", "Cardiologist", new LocalDate (1991, 12, 11), true,hashPassword , "John Street", "Thunder Bay", "Ontario", "8073569230", "rich458@gmail.com","d");
		
		doctor10.getPatientsList().add(patient9);
		doctor10.getPatientsList().add(patient10);
		
		User user1 = new User("gaurav.sharma97798@gmail.com", hashPassword, "patient", "Gaurav");
		User user2 = new User("rich45@gmail.com", hashPassword, "doctor", "Richard");
		
		users.add(user1);
		users.add(user2);
		
		userService.saveUsers(users);
		
		doctors.add(doctor1);
		doctors.add(doctor2);
		doctors.add(doctor3);
		doctors.add(doctor4);
		doctors.add(doctor5);
		doctors.add(doctor6);
		doctors.add(doctor7);
		doctors.add(doctor8);
		doctors.add(doctor9);
		doctors.add(doctor10);
		
		
		patient1.getDoctorsList().add(doctor1);
		
		patient2.getDoctorsList().add(doctor1);
		patient2.getDoctorsList().add(doctor3);
		patient2.getDoctorsList().add(doctor6);
		
		patient3.getDoctorsList().add(doctor2);
		patient3.getDoctorsList().add(doctor5);
		patient3.getDoctorsList().add(doctor6);
		
		patient4.getDoctorsList().add(doctor7);
		
		patient5.getDoctorsList().add(doctor3);
		patient5.getDoctorsList().add(doctor5);
		patient5.getDoctorsList().add(doctor7);
		
		patient6.getDoctorsList().add(doctor8);
		
		patient7.getDoctorsList().add(doctor2);
		patient7.getDoctorsList().add(doctor4);
		patient7.getDoctorsList().add(doctor8);
		
		patient8.getDoctorsList().add(doctor9);
		
		patient9.getDoctorsList().add(doctor4);
		patient9.getDoctorsList().add(doctor9);
		patient9.getDoctorsList().add(doctor10);
		
		patient10.getDoctorsList().add(doctor10);
		
		patients.add(patient1);
		patients.add(patient2);
		patients.add(patient3);
		patients.add(patient4);
		patients.add(patient5);
		patients.add(patient6);
		patients.add(patient7);
		patients.add(patient8);
		patients.add(patient9);
		patients.add(patient10);
		
		patientService.savePatients(patients);
		patientService.saveDiagnosis(diagnosis);
		patientService.saveDiagnosis(diagnosis1);
		doctorService.saveDoctors(doctors);
	}
	
	public List<Staff> getAllDummyStaffData()
	{
		Staff staff1 = new DummyCreator().create(Staff.class);
		Staff staff2 = new DummyCreator().create(Staff.class);
		Staff staff3 = new DummyCreator().create(Staff.class);
		Staff staff4 = new DummyCreator().create(Staff.class);
		Staff staff5 = new DummyCreator().create(Staff.class);
		
		staffMembers.add(staff1);
		staffMembers.add(staff2);
		staffMembers.add(staff3);
		staffMembers.add(staff4);
		staffMembers.add(staff5);
		
		return staffMembers;
	}

}
