package conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

import common.Coffee;
import common.Money;
import customer.Guest;
import shop.Starbucks;

@Configuration
public class AppConf {
	
	@Bean
	@Scope("prototype")
	public Money money() {
		return new Money();
	}
	
	
	@Bean
	public Guest guest() {
		return new Guest();
	}
	
	@Bean
	@Scope("prototype")
	public Coffee coffee() {
		return new Coffee();
	}
	
	@Bean
	public Starbucks starbucks() {
		return new Starbucks(coffee());
	}
	
	
	
	
	
}
