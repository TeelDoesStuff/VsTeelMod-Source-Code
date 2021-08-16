package;

import flixel.FlxG;
import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();

		if(FlxG.save.data.antialiasing)
			{
				antialiasing = true;
			}
		if (char == 'sm')
		{
			loadGraphic(Paths.image("stepmania-icon"));
			return;
		}
		loadGraphic(Paths.image('iconGridNew'), true, 150, 150);
			animation.add('bf', [0, 1, 2], 0, false, isPlayer);
			animation.add('bf-car', [0, 1, 2], 0, false, isPlayer);
			animation.add('bf-christmas', [0, 1, 2], 0, false, isPlayer);
			animation.add('bf-pixel', [33, 34, 35], 0, false, isPlayer);
			animation.add('spooky', [3, 4, 5], 0, false, isPlayer);
			animation.add('pico', [6, 7, 8], 0, false, isPlayer);
			animation.add('mom', [9, 10, 11], 0, false, isPlayer);
			animation.add('mom-car', [9, 10, 11], 0, false, isPlayer);
			animation.add('tankman', [12, 13, 14], 0, false, isPlayer);
			animation.add('face', [15, 16, 17], 0, false, isPlayer);
			animation.add('dad', [18, 19, 20], 0, false, isPlayer);
			animation.add('senpai', [36, 37, 39], 0, false, isPlayer);
			animation.add('senpai-angry', [37, 38, 36], 0, false, isPlayer);
			animation.add('spirit', [40, 41, 42], 0, false, isPlayer);
			animation.add('bf-old', [21, 22, 23], 0, false, isPlayer);
			animation.add('gf', [24, 25, 26], 0, false, isPlayer);
			animation.add('gf-car', [24, 25, 26], 0, false, isPlayer);
			animation.add('gf-christmas', [24, 25, 26], 0, false, isPlayer);
			animation.add('gf-pixel', [24, 25, 26], 0, false, isPlayer);
			animation.add('parents-christmas', [27, 28, 29], 0, false, isPlayer);
			animation.add('monster', [30, 31, 32], 0, false, isPlayer);
			animation.add('monster-christmas', [30, 31, 32], 0, false, isPlayer);
			animation.add('confused-teel', [43, 44, 45], 0, false, isPlayer);
			animation.add('teel', [46, 47, 48], 0, false, isPlayer);
			animation.add('pissed-teel', [49, 50, 51], 0, false, isPlayer);
			animation.add('lost-it-teel', [50, 50, 50], 0, false, isPlayer);
			//icons for unused sprites
			animation.add('worried-teel', [15, 16, 17], 0, false, isPlayer);
			animation.add('stressed-teel', [15, 16, 17], 0, false, isPlayer);
			animation.add('crazy-teel', [15, 16, 17], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
