package map;

import java.security.SecureRandom;
import java.util.Random;

import mapcell.MapCell;

public class MapGenerator {
	private static Random rng = new SecureRandom(); 
	
	private static int size_x, size_y;
	
	private static void addRandomTile(char[][] data, int numTiles, char tile)
	{
		for(int i=0; i<numTiles; i++){
			int randomx = rng.nextInt(10) + 1;
			int randomy = rng.nextInt(10) + 1;
			while((data[randomy][randomx] != '\0') 
					|| (data[randomy+1][randomx] != '\0') 
					|| (data[randomy-1][randomx] != '\0') 
					|| (data[randomy][randomx+1] != '\0') 
					|| (data[randomy][randomx-1] != '\0')){
				randomx = rng.nextInt(size_x - 2) + 1;
				randomy = rng.nextInt(size_y - 2) + 1;
			}
			data[randomy][randomx] = tile;
		}
	}
	
	public static GameMap generateRandomMap(int sizeY, int sizeX){
		size_y = sizeY;
		size_x = sizeX;
		
		char[][] data = new char[size_y][size_x];
		char wallTile = MapCell.Cells.WALL.asChar();
		
		int numEnemy2 = 2;
		int numEnemy5 = 2;
		int numHole = 8;
		int numGold = 3;
		int numTeletransport = 4;
		
		//First step: fill borders with walls and define start point and its neighbor tiles
		for(int i=0; i<size_y; i++){
			data[i][0] = wallTile;
			data[i][size_x-1] = wallTile;
		}
		for(int i=0; i<size_x; i++){
			data[0][i] = wallTile;
			data[size_y-1][i] = wallTile;
		}
		data[1][1] = MapCell.Cells.START.asChar();
		data[1][2] = MapCell.Cells.FLOOR.asChar();
		data[2][2] = MapCell.Cells.FLOOR.asChar();
		data[2][1] = MapCell.Cells.FLOOR.asChar();
		
		//Second step: Randomize NPCs
		addRandomTile(data, numEnemy2, MapCell.Cells.ENEMY20.asChar());
		addRandomTile(data, numEnemy5, MapCell.Cells.ENEMY50.asChar());
		addRandomTile(data, numHole, MapCell.Cells.HOLE.asChar());
		addRandomTile(data, numGold, MapCell.Cells.GOLD.asChar());
		addRandomTile(data, numTeletransport, MapCell.Cells.TELETRANSPORT.asChar());
		
		//Third step: Randomize other walls and floors
		for(int i=0; i<size_y; i++){
			for(int j=0; j<size_x; j++){
				if(data[i][j] == '\0'){ //randomizar
					int chance_wall = 10; //chance_wall ranges from 0 to 1000 depending on whether its neighbor tiles are walls
					char north, east, south, west;//erbly
					char southeast, northeast, southwest, northwest;
					int temp;
					north = data[i-1][j];
					east = data[i][j+1];
					south = data[i+1][j];
					west = data[i][j-1];
					southeast = data[i+1][j+1];
					northeast = data[i-1][j+1];
					southwest = data[i+1][j-1];
					northwest = data[i-1][j-1];
					if(northwest == wallTile) chance_wall += 10;
					if(north == wallTile) chance_wall += 15;
					if(northeast == wallTile) chance_wall += 10;
					if(west == wallTile) chance_wall += 15;
					if(east == wallTile) chance_wall += 15;
					if(southwest == wallTile) chance_wall += 10;
					if(south == wallTile) chance_wall += 15;
					if(southeast == wallTile) chance_wall += 10;
					
					temp = 0;
					if(north == wallTile) temp++;
					if(south == wallTile) temp++;
					if(west == wallTile) temp++;
					if(east == wallTile) temp++;
					
					if(temp > 2) chance_wall -= 100;
					
					temp = 0;
					if(southeast == wallTile) temp++;
					if(northeast == wallTile) temp++;
					if(southwest == wallTile) temp++;
					if(northwest == wallTile) temp++;
					
					if(temp > 1) chance_wall -= 50;
					
					if(rng.nextInt(50)<=chance_wall) data[i][j]=wallTile;
					else data[i][j] = MapCell.Cells.FLOOR.asChar();
				}
			}
		}
		
		return new GameMap(data);
	}
	
	public static GameMap generateRandomMap(){
		return generateRandomMap(24,24);
	}
}
