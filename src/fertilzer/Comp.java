package fertilzer;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;
@Entity
@Table(name="addcompany")
public class Comp {
	@Id
	private int id;
	private String name,money ;
	public int getId() {
		return id;
	}
	public void setId(int i) {
		this.id=i;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	

}
