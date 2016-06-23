package Program;
import INF1771_GameAI.Bot;
import bots.moonwalkBot.MoonwalkBot;
import bots.pickupBot.PickupBot;

public class main {
	static Bot b;
	
	public static Bot getBot(){
		return b;
	}
	
	public static void main(String[] args) {
		b = new MoonwalkBot();

	}

}
