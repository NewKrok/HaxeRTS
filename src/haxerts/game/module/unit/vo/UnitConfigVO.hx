package haxerts.game.module.unit.vo;

import js.haxerts.game.module.projectilemanager.vo.ProjectileSettingVO;

/**
 * ...
 * @author Krisztian Somoracz
 */
class UnitConfigVO 
{
	public var name:String;
	public var skeleton:String;
	public var movementSpeed:Float;
	public var sizeRadius:Float;
	public var unitHeight:Float;
	public var unitDetectionRadius:Float;
	public var minDamage:Float;
	public var maxDamage:Float;
	public var areaDamage:Float;
	public var areaDamageRadius:Float;
	public var criticalHitChance:Float;
	public var criticalHitDamageMultiple:Float;
	public var blockChance:Float;
	public var attackActionDelay:Float;
	public var attackSpeed:Float;
	public var attackAnimationSpeed:Float = 0;
	public var attackRadius:Float;
	public var attackType:String;
	public var projectileConfigVO:ProjectileSettingVO;
	public var isInvulnerable:Bool;
	public var maxLife:Float;
	public var lifeRegeneration:Float;
	public var maxMana:Float;
	public var manaRegeneration:Float;
	public var armor:Float;
	public var armorType:String;
	
	public function new() 
	{
	}
}