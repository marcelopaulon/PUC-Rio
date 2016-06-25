package bots.turretBot;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import INF1771_GameAI.GameAI;

public class TurretAI extends GameAI {
	private Estado estado = null;
	
	private int i = 0;
	
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
	    		if (i > 1) 
	    		{
	    			i = 0;
	    			return "virar_esquerda";
	    		}
	    		else 
	    		{ 
	    			i++;
	    			return "atacar";
	    		}
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
    	
    	if(o.isEmpty()) System.out.println("Sem observações");
        for (String s : o)
        {
        	System.out.println("RAYNAN: " + s);
            if(s.equals("blocked"))
            {
            	estado = null;
            } 
            else if(s.contains("hit"))
            {
            	estado = Estado.VIU_INIMIGO;
            }
            else if(s.contains("enemy"))
            {
            	estado = Estado.VIU_INIMIGO;
            }
            else if(s.equals("steps"))
            {
            	estado = Estado.VIU_INIMIGO;
            }
            else if(s.equals("breeze"))
            {
            	estado = null;
            } 
            else if(s.equals("flash"))
            {
            	estado = null;
            } 
            else if(s.equals("blueLight"))
            {
            	estado = null;
            } 
            else if(s.equals("redLight"))
            {
            	estado = null;
            } 
            else if(s.equals("greenLight"))
            {
            	estado = null;
            } 
            else if(s.equals("weakLight"))
            {
            	estado = null;
            }
            else
            {
            	estado = null;
            }
        }
        o.clear();
        
    }
    
	@Override
	public void NoObservations(){
		estado = null;
	}

	@Override
	public void GetObservationsClean() {
		// TODO Auto-generated method stub
		
	}
}
