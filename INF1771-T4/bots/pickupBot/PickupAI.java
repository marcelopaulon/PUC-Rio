package bots.pickupBot;

import java.util.List;

import INF1771_GameAI.GameAI;
import INF1771_GameAI.Map.Position;
import Program.main;

public class PickupAI extends GameAI {
	/*
	 * AI criada para exemplo. AI foi extendida do exemplo do professor para facilitar.
	 * Assim, só é necessário colocar os métodos que desejamos alterar.
	 * No exemplo, a modificação altera o processo de decisão da AI.
	 */
	
	private Position pickupLocation;
	
	
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
	            return "andar";
	    }

    	return "";
    }
    
    public void GetObservations(List<String> o)
    {

        for (String s : o)
        {
            if(s.equals("blocked")){
            	
            } else if(s.equals("steps")){

            } else if(s.equals("breeze")){

            } else if(s.equals("flash")){

            } else if(s.equals("blueLight")){

            } else if(s.equals("redLight")){

            } else if(s.equals("greenLight")){

            } else if(s.equals("weakLight")){

            }
        }

    }

	@Override
	public void GetObservationsClean() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void NoObservations() {
		// TODO Auto-generated method stub
		
	}
}
