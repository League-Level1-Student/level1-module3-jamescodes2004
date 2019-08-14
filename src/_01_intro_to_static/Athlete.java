package _01_intro_to_static;

public class Athlete {
	    static int nextBibNumber;
	    static String raceLocation = "New York";
	    static String raceStartTime = "9.00am";

	    String name;
	    int speed;
	    int bibNumber;

	    Athlete (String name, int speed){
	        this.name = name;
	        this.speed = speed;
	        this.bibNumber = nextBibNumber;
	        nextBibNumber++;
	    }

	    public static void main(String[] args) {
	    	Athlete w = new Athlete("Willis", 6);
	    	Athlete j = new Athlete("Johnathan", 7);
	    	System.out.println(w.name);
	    	System.out.println(w.speed);
	    	System.out.println(Athlete.raceLocation);
	    	
	    	System.out.println(j.name);
	    	System.out.println(j.speed);
	    	System.out.println(Athlete.raceLocation);
	    	
	    	
	    	//create two athletes
	        //print their names, bibNumbers, and the location of their race. 
	    }
	}

