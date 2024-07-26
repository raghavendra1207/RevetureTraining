import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
public class DateAndTimeApiExecution {
	
	public static void main(String args[]) {
		
		//LocalDate
		LocalDate ld=LocalDate.now();
		System.out.print(ld.getDayOfWeek()+"/");
		System.out.print(ld.getDayOfMonth()+"/");
		System.out.print(ld.getMonth()+"/");
		System.out.println(ld.getYear());
		
		//LOCALDATETIME
		
		LocalDateTime ldt=LocalDateTime.now();
		System.out.print(ldt.getHour()+":");
		System.out.print(ldt.getMinute()+":");
		
		System.out.println(ldt.getNano()+"\n");
		
		
		//Instant
		Instant ins=Instant.now();
		System.out.print(ins);
		
		
		
		
	}

}