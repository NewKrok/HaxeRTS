package haxerts.game.module.map.model;

import util.pathfinding.astar.vo.AStarNodeVO;

interface IMapModel
{
    var mapNodes( default, default ):Array<Array<AStarNodeVO>>;
}