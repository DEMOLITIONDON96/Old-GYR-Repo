package;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class AttachedText extends Alphabet
{
	public var offsetX:Float = 0;
	public var offsetY:Float = 0;
	public var sprTracker:FlxSprite;
	public var isAlt:Bool = false;
	public function new(text:String = "", ?offsetX:Float = 0, ?offsetY:Float = 0, ?bold = false, ?scale:Float = 1) {
 		super(0, 0, text, bold, false, 0.05, scale);
		isMenuItem = false;
		this.offsetX = offsetX;
		this.offsetY = offsetY;
	}

	override function update(elapsed:Float) {
		if (sprTracker != null)
			setPosition(sprTracker.x + offsetX, sprTracker.y + offsetY);

		super.update(elapsed);
	}
}
