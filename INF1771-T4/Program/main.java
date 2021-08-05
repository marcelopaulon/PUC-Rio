package Program;
import INF1771_GameAI.Bot;
import bots.moonwalkBot.MoonwalkBot;
import bots.turretBot.TurretBot;
import bots.pickupBot.PickupBot;
import bots.runnerBot.RunnerBot;
import bots.snaydleyBot.SnaydleyBot;

public class main {
	static Bot b;
	
	public static Bot getBot(){
		return b;
	}
	
	public static void main(String[] args) {
		b = new SnaydleyBot();
	}

}
