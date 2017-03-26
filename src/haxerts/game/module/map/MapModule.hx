package haxerts.game.module.map;

import haxerts.game.module.map.controller.MapModuleController;
import haxerts.game.module.map.controller.IMapModuleController;
import haxerts.game.module.map.model.MapModel;
import haxerts.game.module.map.model.IMapModel;
import util.pathfinding.astar.vo.AStarNodeVO;
import hex.module.dependency.RuntimeDependencies;
import hex.module.dependency.IRuntimeDependencies;
import hex.module.Module;

class MapModule extends Module implements IMapModule
{
    var model:IMapModel;
    var controller:IMapModuleController;

    public function new()
    {
        super( );

        getInjector().mapToSingleton( IMapModel, MapModel );
        model = cast getInjector().getInstance( IMapModel );

        getInjector().mapToSingleton( IMapModuleController, MapModuleController );
        controller = cast getInjector().getInstance( IMapModuleController );

        controller.generateTestMap();
    }

    public function getMapNodes():Array<Array<AStarNodeVO>>
    {
        return model.mapNodes;
    }

    override function _getRuntimeDependencies():IRuntimeDependencies
    {
        return new RuntimeDependencies();
    }
}