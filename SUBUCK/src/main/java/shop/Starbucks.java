package shop;

import common.Coffee;
import common.Money;
import customer.Guest;

public class Starbucks {
	private Coffee coffee;
	private Money money;

	public Starbucks(Coffee coffee) {
		this.coffee = coffee;
	}
	public void sellCoffee(Guest guest) {
		this.money = guest.getMoney();
//		guest.setMoney(null);
		
		guest.setCoffee(this.coffee);
		this.coffee = null;
	}
	public Coffee getCoffee() {
		return coffee;
	}
	public Money getMoney() {
		return money;
	}
	
}
