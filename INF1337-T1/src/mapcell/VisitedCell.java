package mapcell;

import gfx.Assets;

public class VisitedCell extends MapCell {
	public VisitedCell(char id) {
		super(Assets.visited, id);
	}
}