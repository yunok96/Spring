package main;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import common.Coffee;
import common.Money;
import conf.AppConf;
import customer.Guest;
import shop.Starbucks;

public class Test001 {
	public static void main(String[] args) {
		
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("/conf/AppConf.xml");
		
//		AnnotationConfigApplicationContext context
//			= new AnnotationConfigApplicationContext(AppConf.class);
		Money money = context.getBean("money", Money.class);
		Guest guest = context.getBean("guest", Guest.class);
		System.out.println(money);
		System.out.println(guest.getMoney());
		System.out.println(guest.getCoffee());
		
		Coffee coffee = context.getBean("coffee", Coffee.class);
		Starbucks starbucks = context.getBean("starbucks",Starbucks.class);
		System.out.println(coffee);
		System.out.println(starbucks.getCoffee());
		System.out.println(starbucks.getMoney());
		
		starbucks.sellCoffee(guest);
		
		System.out.println(guest.getCoffee());
		System.out.println(starbucks.getMoney());
		
	}

}
