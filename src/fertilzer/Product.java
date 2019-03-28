package fertilzer;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="productse")
public class Product   {
	@Id 
	@GeneratedValue
private	int id;
private String period, name;
	private int  openbal,recepits,sale,invoice;
	@ManyToOne
	private Comp comp;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getOpenbal() {
		return openbal;
	}
	public void setOpenbal(int openbal) {
		this.openbal = openbal;
	}
	public int getRecepits() {
		return recepits;
	}
	public void setRecepits(int recepits) {
		this.recepits = recepits;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public int getInvoice() {
		return invoice;
	}
	public void setInvoice(int invoice) {
		this.invoice = invoice;
	}
public Comp getComp() {
		return comp;
	}
	public void setComp(Comp comp) {
		this.comp = comp;
	}

	}
	



