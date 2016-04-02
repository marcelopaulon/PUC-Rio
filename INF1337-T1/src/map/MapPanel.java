package map;

import java.awt.Color;
import java.awt.Graphics;
import java.util.List;

import javax.swing.BorderFactory;
import javax.swing.JPanel;

import gfx.Assets;
import mapcell.*;
import pathfinding.Node;

/**
 * Panel responsável por renderizar o mapa
 * <p>TODO: conferir se está certo</p>
 */
public class MapPanel extends JPanel {
	/**
	 * Identificador de versão de serialização de uma classe
	 * @see <a href=http://blog.caelum.com.br/entendendo-o-serialversionuid/>Entendendo o serialVersionUID</a>
	 */
	private static final long serialVersionUID = -8607607402685333888L;

	/**
	 * GameMap com o mapa que será renderizado
	 */
	private GameMap loadedMap;

	/**
	 * TODO: Comentar. Não sei o que a variável faz. Comente seu código, Marcelo
	 */
	Graphics g;

	/**
	 * Construtor do MapPanel
	 */
	public MapPanel() {
		setBorder(BorderFactory.createLineBorder(Color.black));
	}
	
	/**
	 * MapCell de montanha
	 */
	private MapCell MountainCell = new MountainCell(MapCell.Cells.MOUNTAIN.asChar());
	/**
	 * MapCell de planície
	 */
	private MapCell PlainCell = new PlainCell(MapCell.Cells.PLAIN.asChar());
	/**
	 * MapCell de pedra
	 */
	private MapCell RockCell = new RockCell(MapCell.Cells.ROCK.asChar());
	/**
	 * MapCell representando baterias anti-aéreas
	 */
	private MapCell EnemyAntiAircraftCell = new EnemyAntiAircraftCell(MapCell.Cells.ENEMYAA.asChar());
	/**
	 * MapCell de bases inimigas
	 */
	private MapCell EnemyBaseCell = new EnemyBaseCell(MapCell.Cells.ENEMYBASE.asChar());
	/**
	 * MapCell representando a posição inicial
	 */
	private MapCell StartCell = new StartCell(MapCell.Cells.START.asChar());
	/**
	 * MapCell representando a posição de chegada
	 */
	private MapCell EndCell = new EndCell(MapCell.Cells.END.asChar());
	/**
	 * MapCell representando células visitadas pelo AStar
	 */
	private MapCell VisitedCell = new VisitedCell('\0');

	/**
	 * Renderiza o caminho visitado pelo AStar
	 * @param path Matriz contendo o caminho visitado pelo AStar
	 */
	public void renderPath(List<Node> path)
	{
		for(int i = 0; i < loadedMap.getNRows(); i++)
		{
			for(int j = 0; j < loadedMap.getNColumns(); j++)
			{
				if(path.contains(new Node(j+1, i+1, null)))
				{
					Node node = loadedMap.getValue(i+1, j+1);
					if(node.CellType != MapCell.Cells.START && node.CellType != MapCell.Cells.END)
					{
						loadedMap.pathData[i][j] = 'X';
					}
				}
				else
				{
					loadedMap.pathData[i][j] = '\0';
				}
			}
		}
		
		repaint();
	}
	
	/**
	 * Desenha o mapa na tela
	 * @return true
	 */
	public boolean renderMap() {
		int width = getWidth();
		int height = getHeight();

		int numcols = loadedMap.getNColumns(), numrows = loadedMap.getNRows();

		// Clear the panel
		g.setColor(Color.BLACK);
		g.fillRect(0, 0, width, height);

		double rectWidth = Assets.TILE_WIDTH;
		double rectHeight = Assets.TILE_HEIGHT;

		if (numrows * Assets.TILE_HEIGHT > height) {
			rectHeight = (height / numrows);
		}

		if (numcols * Assets.TILE_WIDTH > width) {
			rectWidth = (width / numcols);
		}

		// Draw the grid
		for (int i = 1; i <= numrows; i++) {
			for (int j = 1; j <= numcols; j++) {
				int y = (int) ((i - 1) * rectHeight);
				int x = (int) ((j - 1) * rectWidth);
				if(loadedMap.pathData[i - 1][j - 1] == 'X')
				{
					VisitedCell.render(g, x, y, (int) rectWidth, (int) rectHeight);
				}
				else
				{
					MapCell.Cells et = loadedMap.getValue(i, j).CellType;
					MapCell cell = getTile(et);
					cell.render(g, x, y, (int) rectWidth, (int) rectHeight);
				}
			}
		}
		
		return true;
	}

	/**
	 * Carrega um GameMap na tela
	 * @param map GameMap representando o mapa a ser desenhado na tela
	 */
	public void loadMap(GameMap map) {
		loadedMap = map;
		this.repaint();
	}

	@Override
	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		this.g = g;
		
		if(loadedMap != null)
		{
			renderMap();
		}
	}

	private MapCell getTile(MapCell.Cells value) {
		if (value == MapCell.Cells.START)
			return StartCell;
		if (value == MapCell.Cells.END)
			return EndCell;
		if (value == MapCell.Cells.MOUNTAIN)
			return MountainCell;
		if (value == MapCell.Cells.PLAIN)
			return PlainCell;
		if (value == MapCell.Cells.ROCK)
			return RockCell;
		if (value == MapCell.Cells.ENEMYBASE)
			return EnemyBaseCell;
		if (value == MapCell.Cells.ENEMYAA)
			return EnemyAntiAircraftCell;

		return null;
	}
}
