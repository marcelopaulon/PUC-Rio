package bots.runnerBot;

import java.util.List;

import INF1771_GameAI.GameAI;
import bots.runnerBot.Estado;

public class RunnerAI extends GameAI {
	Estado estado;
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
			case VIU_INIMIGO:
				return "virar_esquerda";
			case VIU_PERIGO:
				if(voltaUltimoCmd == null) return "andar_re";
				return voltaUltimoCmd;
			case VIU_STEPS:
				return "andar";
			default:
				return "andar";	
		}
		
	}

	@Override
	public void NoObservations() {
		estado = null;
	}

}
