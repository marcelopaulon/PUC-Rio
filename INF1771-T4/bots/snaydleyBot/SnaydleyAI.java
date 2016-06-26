package bots.snaydleyBot;

import java.util.List;

import INF1771_GameAI.GameAI;
import bots.runnerBot.Estado;

public class SnaydleyAI extends GameAI {
	Estado estado;
	private int i = 0;
	String voltaUltimoCmd;

	@Override
	public void GetObservations(List<String> o) {
		estado = null;
    	
    	if(o.isEmpty()) System.out.println("Sem observações");
        for (String s : o)
        {
        	System.out.println("Observations: " + s);
            if(s.equals("blocked"))
            {
            	estado = null;
            }
            else if(s.contains("enemy"))
            {
            	estado = Estado.VIU_INIMIGO;
            }
            else if(s.equals("steps"))
            {
            	estado = Estado.VIU_STEPS;
            }
            else if(s.equals("damage"))
            {
            	estado = Estado.VIU_STEPS;
            }
            else if(s.equals("breeze"))
            {
            	estado = Estado.VIU_PERIGO;
            } 
            else if(s.equals("flash"))
            {
            	estado = Estado.VIU_PERIGO;
            } 
            else if(s.equals("blueLight"))
            {
            	estado = Estado.VIU_POWERUP;
            } 
            else if(s.equals("redLight"))
            {
            	estado = Estado.VIU_PREMIO;
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
	public void GetObservationsClean() {
		// TODO Auto-generated method stub

	}

	@Override
	public String GetDecision() {
		if(estado==null){ //se não houver perigo, ande
			java.util.Random rand = new java.util.Random();

	    	int  n = rand.nextInt(2);
	    	switch(n){
		    	case 0:
		    		voltaUltimoCmd = "virar_direita";
		            return "virar_esquerda";
		    	case 1:
		    		voltaUltimoCmd = "andar_re";
		            return "andar";
	    	}
	    	return null;
		}
		
		switch(estado){
			case VIU_PERIGO:
				if(voltaUltimoCmd == null) return "andar_re";
				return voltaUltimoCmd;
			case VIU_STEPS:
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
		    case VIU_INIMIGO:
		    	return "atacar";
			case VIU_POWERUP:
				return "pegar_powerup";
			case VIU_PREMIO:
				return "pegar_ouro";
			default:
				return "andar";	
		}
		
	}

	@Override
	public void NoObservations() {
		estado = null;
	}

}
