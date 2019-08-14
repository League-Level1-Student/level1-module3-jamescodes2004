package _05_netflix;

public class NetflixQueueRunner {
	public static void main(String[] args) {
		NetflixQueue n = new NetflixQueue();
		Movie t = new Movie("The Bee Movie", 5);
		Movie a = new Movie("Avengers", 5);
		Movie d = new Movie("Do-over", 3);
		Movie i = new Movie("I Am Mother", 1);
		Movie io = new Movie("IO", 1);
		n.addMovie(t);
		n.addMovie(a);
		n.addMovie(d);
		n.addMovie(i);
		n.addMovie(io);
		System.out.println("The best movie is " + n.getBestMovie());
		System.out.println("The second best movie is " + n.getSecondBestMovie());
		n.printMovies();
	}
}
