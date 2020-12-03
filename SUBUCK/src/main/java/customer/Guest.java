package customer;

import org.springframework.beans.factory.annotation.Autowired;

import common.Coffee;
import common.Money;

public class Guest {
	@Autowired
	private Money money;
	
	private Coffee coffee;
	
//	public Guest(Money money) {
//		this.money = money;
//	}
	
	public void setMoney(Money money) {
		this.money = money;
	}


	public Money getMoney() {
		return this.money;
	}
	public Coffee getCoffee() {
		return coffee;
	}
	public void setCoffee(Coffee coffee) {
		this.coffee = coffee;
	}
	
}
