package haxerts.game.module.map.controller;

import util.pathfinding.astar.vo.AStarNodeVO;
import haxerts.game.module.map.model.IMapModel;
import hex.di.IInjectorContainer;

class MapModuleController implements IMapModuleController implements IInjectorContainer
{
    @Inject
    public var model:IMapModel;

    public function new( )
    {
    }

    public function generateTestMap():Void
    {
        model.mapNodes = [];

        for ( i in 0...40 )
        {
            model.mapNodes.push( [] );

            for ( j in 0...40 )
            {
                model.mapNodes[i].push( new AStarNodeVO( i, j ) );

                if ( Math.random() > .9 )
                {
                    model.mapNodes[i][j].isWalkable = false;
                }
            }
        }
    }
}