package FinesDataBase.MikhaylovD;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class FinesDatabaseApplication {
	public static void main(String[] args) {
		FinesManager finesManager = new FinesManager();
		finesManager.setConnection();
		SpringApplication.run(FinesDatabaseApplication.class, args);
	}

}
