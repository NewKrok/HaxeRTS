package util.pathfinding.astar.vo;

class AStarNodeVO
{
    public var h:Float;
    public var g:Float;
    public var f:Float;
    public var parent:AStarNodeVO;

    public var x:Float;
    public var y:Float;

    public var isWalkable:Bool = true;

    public function new( x:Float, y:Float, isWalkable:Bool = true )
    {
        this.x = x;
        this.y = y;
        this.isWalkable = isWalkable;
    }
}