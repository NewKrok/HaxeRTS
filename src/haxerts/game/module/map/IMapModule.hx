package haxerts.game.module.map;

import util.pathfinding.astar.vo.AStarNodeVO;

interface IMapModule
{
    function getMapNodes():Array<Array<AStarNodeVO>>;
}