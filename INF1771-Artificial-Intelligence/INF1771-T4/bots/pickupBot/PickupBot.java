package bots.pickupBot;

import INF1771_GameAI.Bot;

public class PickupBot extends Bot{
	/*
	 * Bot criado para exemplo. Bot foi extendido do exemplo do professor para facilitar. 
	 * Assim, só é necessário colocar os métodos que desejamos alterar.
	 * No exemplo, a modificação altera o nome e AI usada pelo bot.
	 */
	public PickupBot(){
		super("Pickup Bot", new PickupAI());
	}
}
