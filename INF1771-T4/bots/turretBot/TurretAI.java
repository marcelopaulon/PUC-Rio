package bots.turretBot;

import java.util.List;

import INF1771_GameAI.GameAI;

public class TurretAI extends GameAI {
	private Estado estado;
	/*
	 * AI criada para exemplo. AI foi extendida do exemplo do professor para facilitar.
	 * Assim, só é necessário colocar os métodos que desejamos alterar.
	 * No exemplo, a modificação altera o processo de decisão da AI.
	 */
	@Override
    public String GetDecision()
    {
		if(estado == null) return "virar_esquerda";
		
    	switch(estado){
	    	case VIU_INIMIGO:
	            return "atacar";
	    	default:
	            return "virar_esquerda";
	    }

    	//return "";
    }
	
	/**
     * Observations received
     * @param o	 list of observations
     */
    public void GetObservations(List<String> o)
    {
    	estado = null;
    	
        for (String s : o)
        {
        	System.out.println("RAYNAN: " + s);
            if(s.equals("blocked")){
            	
            } else if(s.contains("enemy")){//s.equals("steps")){
            	estado = Estado.VIU_INIMIGO;
            } else if(s.equals("breeze")){
            	
            } else if(s.equals("flash")){

            } else if(s.equals("blueLight")){

            } else if(s.equals("redLight")){

            } else if(s.equals("greenLight")){

            } else if(s.equals("weakLight")){

            }
        }

    }
}
