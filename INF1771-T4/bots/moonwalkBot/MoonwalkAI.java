package bots.moonwalkBot;

import INF1771_GameAI.GameAI;

public class MoonwalkAI extends GameAI {
	/*
	 * AI criada para exemplo. AI foi extendida do exemplo do professor para facilitar.
	 * Assim, só é necessário colocar os métodos que desejamos alterar.
	 * No exemplo, a modificação altera o processo de decisão da AI.
	 */
    public String GetDecision()
    {
        java.util.Random rand = new java.util.Random();

	    	int  n = rand.nextInt(3);
	    	switch(n){
	    	case 0:
	            return "virar_esquerda";
	    	case 1:
	            return "atacar";
	    	case 2:
	            return "andar_re";
	    }

    	return "";
    }
}
