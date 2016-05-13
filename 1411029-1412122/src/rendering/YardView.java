package rendering;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Rectangle2D;

import action.ActionManager;
import action.RemoveFromYardAction;
import action.RollDiceAction;
import boardInfo.Board;
import boardInfo.Dice;
import playerInfo.PlayerColor;
import utils.Coordinate;

public class YardView extends View {

	private Board board;
	
	private PlayerColor yardHighlight;
	
	private PlayerColor yardDice;
	
	public YardView(Board board)
	{
		this.board = board;
	}
	
	public Coordinate getCoordinates(int i)
	{
		double coordinateX = (i-1) % 2;
		double coordinateY = (i-1) / 2;
		
		if(i > 2)
		{
			coordinateX = i % 2;
		}
		
		if(i == 2 || i == 3) coordinateX = (coordinateX+1)*rectSize - yardSize;
		if(i == 3 || i == 4) coordinateY = (coordinateY+1)*rectSize - yardSize;
		
		return new Coordinate(coordinateX, coordinateY);
	}
	
	public void render(Graphics2D g2d) {
		for(int i = 1; i <= 4; i++)
		{
			PlayerColor playerColor = PlayerColor.get(i);
			Color color = PlayerColor.getColor(playerColor);

			Coordinate coordinate = getCoordinates(i);
			
			g2d.setPaint(color);
			Rectangle2D.Double yard = new Rectangle2D.Double(
					coordinate.getX(),
					coordinate.getY(),
					yardSize, 
					yardSize
			);
			
			g2d.fill(yard);
			g2d.setColor(Color.BLACK);
			g2d.draw(yard);
			
			int pawns = board.getYard(playerColor).getCount();
			
			for(int j = 0; j < pawns; j++)
			{
				int k = 0;
				if(j > 1) k = 1;
				
				g2d.setPaint(color.darker());
				double pawnX = (1.05*squareSize) + coordinate.getX() + (2.95 * squareSize) * (j % 2);
				double pawnY = (1.05*squareSize) + coordinate.getY() + (2.95 * squareSize) * k;
				Ellipse2D.Double pawn = new Ellipse2D.Double(pawnX, pawnY, 0.9 * squareSize, 0.9 * squareSize);
				g2d.fill(pawn);
								
				if(j == pawns - 1 && yardHighlight != null && yardHighlight == playerColor)
				{
					g2d.setColor(Color.PINK);
					g2d.draw(pawn);
					RemoveFromYardAction action = new RemoveFromYardAction(board, this);
					ActionManager.getInstance().registerAction((int) (pawnX / squareSize + 1), (int) (pawnY / squareSize + 1), action);
				}
			}
			
			if(playerColor == board.getCurrentPlayer())
			{
				this.setYardDice(playerColor);
				new DiceView(coordinate.getX() + yardSize/2, coordinate.getY() + yardSize/2, Dice.getCurValue()).render(g2d);
			}
		}
	}

	public void setYardHighlight(PlayerColor yardHighlight) {
		this.yardHighlight = yardHighlight;
	}
	
	public void setYardDice(PlayerColor yardDice) {
		this.yardDice = yardDice;
		Coordinate coordinate = getCoordinates(yardDice.asInt());
		
		int x = (int) ((coordinate.getX() + yardSize/2)/ConstantsEnum.squareSize) + 1;
		int y = (int) ((coordinate.getY() + yardSize/2)/ConstantsEnum.squareSize) + 1;
		
		RollDiceAction action = new RollDiceAction(board, this);
		
		ActionManager.getInstance().registerAction(x, y, action);
		ActionManager.getInstance().registerAction(x+1, y, action);
		ActionManager.getInstance().registerAction(x-1, y, action);
		ActionManager.getInstance().registerAction(x, y+1, action);
		ActionManager.getInstance().registerAction(x, y-1, action);
	}

}
