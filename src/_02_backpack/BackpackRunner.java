package _02_backpack;

public class BackpackRunner {
	static Pencil pencil = new Pencil();
	static Ruler ruler = new Ruler();
	static Textbook textbook = new Textbook();
	
	public static void main(String[] args) {
		Backpack b = new Backpack();
		b.putInBackpack(pencil);
		b.putInBackpack(ruler);
		b.putInBackpack(textbook);
		new Backpack().packAndCheck();

	}
}
