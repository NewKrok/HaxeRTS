package haxerts.game.module.map.model;

import util.pathfinding.astar.vo.AStarNodeVO;
import haxerts.game.module.map.model.IMapModel;

class MapModel implements IMapModel
{
    public var mapNodes( default, default ):Array<Array<AStarNodeVO>>;

    public function new()
    {
    }
}