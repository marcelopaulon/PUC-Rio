package bots.runnerBot;

import INF1771_GameAI.Bot;
import INF1771_GameAI.GameAI;

public class RunnerBot extends Bot {

	public RunnerBot() {
		super("Runner Bot", new RunnerAI());
	}

}
