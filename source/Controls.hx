package;

import flixel.FlxG;
import flixel.input.FlxInput;
import flixel.input.actions.FlxAction;
import flixel.input.actions.FlxActionInput;
import flixel.input.actions.FlxActionInputDigital;
import flixel.input.actions.FlxActionManager;
import flixel.input.actions.FlxActionSet;
import flixel.input.gamepad.FlxGamepadButton;
import flixel.input.gamepad.FlxGamepadInputID;
import flixel.input.keyboard.FlxKey;

#if (haxe >= "4.0.0")
enum abstract Action(String) to String from String
{
	var UP = "up";
	var LEFT = "left";
	var RIGHT = "right";
	var DOWN = "down";
	var UP_P = "up-press";
	var LEFT_P = "left-press";
	var RIGHT_P = "right-press";
	var DOWN_P = "down-press";
	var UP_R = "up-release";
	var LEFT_R = "left-release";
	var RIGHT_R = "right-release";
	var DOWN_R = "down-release";
	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";
	var CHEAT = "cheat";

	var L1 = "l1";
	var U1 = "u";
	var R1 = "r1";
	var L2 = "l2";
	var D1 = "d";
	var R2 = "r2";

	var L1_P = "l1-press";
	var U1_P = "u-press";
	var R1_P = "r1-press";
	var L2_P = "l2-press";
	var D1_P = "d-press";
	var R2_P = "r2-press";

	var L1_R = "l1-release";
	var U1_R = "u-release";
	var R1_R = "r1-release";
	var L2_R = "l2-release";
	var D1_R = "d-release";
	var R2_R = "r2-release";


	var N0 = "n0";
	var N1 = "n1";
	var N2 = "n2";
	var N3 = "n3";
	var N4 = "n4";
	var N5 = "n5";
	var N6 = "n6";
	var N7 = "n7";
	var N8 = "n8";
	var N9 = "n9";
	var N10 = "n10";
	var N11 = "n11";
	var N12 = "n12";
	var N13 = "n13";
	var N14 = "n14";
	var N15 = "n15";
	var N16 = "n16";
	var N17 = "n17";
	var N18 = "n18";
	var N19 = "n19";
	var N20 = "n20";

	var N0_P = "n0-press";
	var N1_P = "n1-press";
	var N2_P = "n2-press";
	var N3_P = "n3-press";
	var N4_P = "n4-press";
	var N5_P = "n5-press";
	var N6_P = "n6-press";
	var N7_P = "n7-press";
	var N8_P = "n8-press";
	var N9_P = "n9-press";
	var N10_P = "n10-press";
	var N11_P = "n11-press";
	var N12_P = "n12-press";
	var N13_P = "n13-press";
	var N14_P = "n14-press";
	var N15_P = "n15-press";
	var N16_P = "n16-press";
	var N17_P = "n17-press";
	var N18_P = "n18-press";
	var N19_P = "n19-press";
	var N20_P = "n20-press";

	var N0_R = "n0-release";
	var N1_R = "n1-release";
	var N2_R = "n2-release";
	var N3_R = "n3-release";
	var N4_R = "n4-release";
	var N5_R = "n5-release";
	var N6_R = "n6-release";
	var N7_R = "n7-release";
	var N8_R = "n8-release";
	var N9_R = "n9-release";
	var N10_R = "n10-release";
	var N11_R = "n11-release";
	var N12_R = "n12-release";
	var N13_R = "n13-release";
	var N14_R = "n14-release";
	var N15_R = "n15-release";
	var N16_R = "n16-release";
	var N17_R = "n17-release";
	var N18_R = "n18-release";
	var N19_R = "n19-release";
	var N20_R = "n20-release";
}
#else
@:enum
abstract Action(String) to String from String
{
	var UP = "up";
	var LEFT = "left";
	var RIGHT = "right";
	var DOWN = "down";
	var UP_P = "up-press";
	var LEFT_P = "left-press";
	var RIGHT_P = "right-press";
	var DOWN_P = "down-press";
	var UP_R = "up-release";
	var LEFT_R = "left-release";
	var RIGHT_R = "right-release";
	var DOWN_R = "down-release";
	var ACCEPT = "accept";
	var BACK = "back";
	var PAUSE = "pause";
	var RESET = "reset";
	var CHEAT = "cheat";

	var L1 = "l1";
	var U1 = "u";
	var R1 = "r1";
	var L2 = "l2";
	var D1 = "d";
	var R2 = "r2";

	var L1_P = "l1-press";
	var U1_P = "u-press";
	var R1_P = "r1-press";
	var L2_P = "l2-press";
	var D1_P = "d-press";
	var R2_P = "r2-press";

	var L1_R = "l1-release";
	var U1_R = "u-release";
	var R1_R = "r1-release";
	var L2_R = "l2-release";
	var D1_R = "d-release";
	var R2_R = "r2-release";


	var N0 = "n0";
	var N1 = "n1";
	var N2 = "n2";
	var N3 = "n3";
	var N4 = "n4";
	var N5 = "n5";
	var N6 = "n6";
	var N7 = "n7";
	var N8 = "n8";
	var N9 = "n9";
	var N10 = "n10";
	var N11 = "n11";
	var N12 = "n12";
	var N13 = "n13";
	var N14 = "n14";
	var N15 = "n15";
	var N16 = "n16";
	var N17 = "n17";
	var N18 = "n18";
	var N19 = "n19";
	var N20 = "n20";

	var N0_P = "n0-press";
	var N1_P = "n1-press";
	var N2_P = "n2-press";
	var N3_P = "n3-press";
	var N4_P = "n4-press";
	var N5_P = "n5-press";
	var N6_P = "n6-press";
	var N7_P = "n7-press";
	var N8_P = "n8-press";
	var N9_P = "n9-press";
	var N10_P = "n10-press";
	var N11_P = "n11-press";
	var N12_P = "n12-press";
	var N13_P = "n13-press";
	var N14_P = "n14-press";
	var N15_P = "n15-press";
	var N16_P = "n16-press";
	var N17_P = "n17-press";
	var N18_P = "n18-press";
	var N19_P = "n19-press";
	var N20_P = "n20-press";

	var N0_R = "n0-release";
	var N1_R = "n1-release";
	var N2_R = "n2-release";
	var N3_R = "n3-release";
	var N4_R = "n4-release";
	var N5_R = "n5-release";
	var N6_R = "n6-release";
	var N7_R = "n7-release";
	var N8_R = "n8-release";
	var N9_R = "n9-release";
	var N10_R = "n10-release";
	var N11_R = "n11-release";
	var N12_R = "n12-release";
	var N13_R = "n13-release";
	var N14_R = "n14-release";
	var N15_R = "n15-release";
	var N16_R = "n16-release";
	var N17_R = "n17-release";
	var N18_R = "n18-release";
	var N19_R = "n19-release";
	var N20_R = "n20-release";
}
#end

enum Device
{
	Keys;
	Gamepad(id:Int);
}

/**
 * Since, in many cases multiple actions should use similar keys, we don't want the
 * rebinding UI to list every action. ActionBinders are what the user percieves as
 * an input so, for instance, they can't set jump-press and jump-release to different keys.
 */
enum Control
{
	UP;
	LEFT;
	RIGHT;
	DOWN;
	RESET;
	ACCEPT;
	BACK;
	PAUSE;
	CHEAT;
	L1;
	U1;
	R1;
	L2;
	D1;
	R2;
	N0;
	N1;
	N2;
	N3;
	N4;
	N5;
	N6;
	N7;
	N8;
	N9;
	N10;
	N11;
	N12;
	N13;
	N14;
	N15;
	N16;
	N17;
	N18;
	N19;
	N20;
}

enum KeyboardScheme
{
	Solo;
	Duo(first:Bool);
	None;
	Custom;
	Woops;
}

/**
 * A list of actions that a player would invoke via some input device.
 * Uses FlxActions to funnel various inputs to a single action.
 */
class Controls extends FlxActionSet
{
	var _up = new FlxActionDigital(Action.UP);
	var _left = new FlxActionDigital(Action.LEFT);
	var _right = new FlxActionDigital(Action.RIGHT);
	var _down = new FlxActionDigital(Action.DOWN);
	var _upP = new FlxActionDigital(Action.UP_P);
	var _leftP = new FlxActionDigital(Action.LEFT_P);
	var _rightP = new FlxActionDigital(Action.RIGHT_P);
	var _downP = new FlxActionDigital(Action.DOWN_P);
	var _upR = new FlxActionDigital(Action.UP_R);
	var _leftR = new FlxActionDigital(Action.LEFT_R);
	var _rightR = new FlxActionDigital(Action.RIGHT_R);
	var _downR = new FlxActionDigital(Action.DOWN_R);
	var _accept = new FlxActionDigital(Action.ACCEPT);
	var _back = new FlxActionDigital(Action.BACK);
	var _pause = new FlxActionDigital(Action.PAUSE);
	var _reset = new FlxActionDigital(Action.RESET);
	var _cheat = new FlxActionDigital(Action.CHEAT);



	var _l1 = new FlxActionDigital(Action.L1);
	var _l1P = new FlxActionDigital(Action.L1_P);
	var _l1R = new FlxActionDigital(Action.L1_R);

	var _u = new FlxActionDigital(Action.U1);
	var _uP = new FlxActionDigital(Action.U1_P);
	var _uR = new FlxActionDigital(Action.U1_R);

	var _r1 = new FlxActionDigital(Action.R1);
	var _r1P = new FlxActionDigital(Action.R1_P);
	var _r1R = new FlxActionDigital(Action.R1_R);

	var _l2 = new FlxActionDigital(Action.L2);
	var _l2P = new FlxActionDigital(Action.L2_P);
	var _l2R = new FlxActionDigital(Action.L2_R);

	var _d = new FlxActionDigital(Action.D1);
	var _dP = new FlxActionDigital(Action.D1_P);
	var _dR = new FlxActionDigital(Action.D1_R);

	var _r2 = new FlxActionDigital(Action.R2);
	var _r2P = new FlxActionDigital(Action.R2_P);
	var _r2R = new FlxActionDigital(Action.R2_R);


	var _n0 = new FlxActionDigital(Action.N0);
	var _n1 = new FlxActionDigital(Action.N1);
	var _n2 = new FlxActionDigital(Action.N2);
	var _n3 = new FlxActionDigital(Action.N3);
	var _n4 = new FlxActionDigital(Action.N4);
	var _n5 = new FlxActionDigital(Action.N5);
	var _n6 = new FlxActionDigital(Action.N6);
	var _n7 = new FlxActionDigital(Action.N7);
	var _n8 = new FlxActionDigital(Action.N8);
	var _n9 = new FlxActionDigital(Action.N9);
	var _n10 = new FlxActionDigital(Action.N10);
	var _n11 = new FlxActionDigital(Action.N11);
	var _n12 = new FlxActionDigital(Action.N12);
	var _n13 = new FlxActionDigital(Action.N13);
	var _n14 = new FlxActionDigital(Action.N14);
	var _n15 = new FlxActionDigital(Action.N15);
	var _n16 = new FlxActionDigital(Action.N16);
	var _n17 = new FlxActionDigital(Action.N17);
	var _n18 = new FlxActionDigital(Action.N18);
	var _n19 = new FlxActionDigital(Action.N19);
	var _n20 = new FlxActionDigital(Action.N20);

	var _n0P = new FlxActionDigital(Action.N0_P);
	var _n1P = new FlxActionDigital(Action.N1_P);
	var _n2P = new FlxActionDigital(Action.N2_P);
	var _n3P = new FlxActionDigital(Action.N3_P);
	var _n4P = new FlxActionDigital(Action.N4_P);
	var _n5P = new FlxActionDigital(Action.N5_P);
	var _n6P = new FlxActionDigital(Action.N6_P);
	var _n7P = new FlxActionDigital(Action.N7_P);
	var _n8P = new FlxActionDigital(Action.N8_P);
	var _n9P = new FlxActionDigital(Action.N9_P);
	var _n10P = new FlxActionDigital(Action.N10_P);
	var _n11P = new FlxActionDigital(Action.N11_P);
	var _n12P = new FlxActionDigital(Action.N12_P);
	var _n13P = new FlxActionDigital(Action.N13_P);
	var _n14P = new FlxActionDigital(Action.N14_P);
	var _n15P = new FlxActionDigital(Action.N15_P);
	var _n16P = new FlxActionDigital(Action.N16_P);
	var _n17P = new FlxActionDigital(Action.N17_P);
	var _n18P = new FlxActionDigital(Action.N18_P);
	var _n19P = new FlxActionDigital(Action.N19_P);
	var _n20P = new FlxActionDigital(Action.N20_P);

	var _n0R = new FlxActionDigital(Action.N0_R);
	var _n1R = new FlxActionDigital(Action.N1_R);
	var _n2R = new FlxActionDigital(Action.N2_R);
	var _n3R = new FlxActionDigital(Action.N3_R);
	var _n4R = new FlxActionDigital(Action.N4_R);
	var _n5R = new FlxActionDigital(Action.N5_R);
	var _n6R = new FlxActionDigital(Action.N6_R);
	var _n7R = new FlxActionDigital(Action.N7_R);
	var _n8R = new FlxActionDigital(Action.N8_R);
	var _n9R = new FlxActionDigital(Action.N9_R);
	var _n10R = new FlxActionDigital(Action.N10_R);
	var _n11R = new FlxActionDigital(Action.N11_R);
	var _n12R = new FlxActionDigital(Action.N12_R);
	var _n13R = new FlxActionDigital(Action.N13_R);
	var _n14R = new FlxActionDigital(Action.N14_R);
	var _n15R = new FlxActionDigital(Action.N15_R);
	var _n16R = new FlxActionDigital(Action.N16_R);
	var _n17R = new FlxActionDigital(Action.N17_R);
	var _n18R = new FlxActionDigital(Action.N18_R);
	var _n19R = new FlxActionDigital(Action.N19_R);
	var _n20R = new FlxActionDigital(Action.N20_R);


	#if (haxe >= "4.0.0")
	var byName:Map<String, FlxActionDigital> = [];
	#else
	var byName:Map<String, FlxActionDigital> = new Map<String, FlxActionDigital>();
	#end

	public var gamepadsAdded:Array<Int> = [];
	public var keyboardScheme = KeyboardScheme.None;

	public var UP(get, never):Bool;

	inline function get_UP()
		return _up.check();

	public var LEFT(get, never):Bool;

	inline function get_LEFT()
		return _left.check();

	public var RIGHT(get, never):Bool;

	inline function get_RIGHT()
		return _right.check();

	public var DOWN(get, never):Bool;

	inline function get_DOWN()
		return _down.check();

	public var UP_P(get, never):Bool;

	inline function get_UP_P()
		return _upP.check();

	public var LEFT_P(get, never):Bool;

	inline function get_LEFT_P()
		return _leftP.check();

	public var RIGHT_P(get, never):Bool;

	inline function get_RIGHT_P()
		return _rightP.check();

	public var DOWN_P(get, never):Bool;

	inline function get_DOWN_P()
		return _downP.check();

	public var UP_R(get, never):Bool;

	inline function get_UP_R()
		return _upR.check();

	public var LEFT_R(get, never):Bool;

	inline function get_LEFT_R()
		return _leftR.check();

	public var RIGHT_R(get, never):Bool;

	inline function get_RIGHT_R()
		return _rightR.check();

	public var DOWN_R(get, never):Bool;

	inline function get_DOWN_R()
		return _downR.check();

	public var ACCEPT(get, never):Bool;

	inline function get_ACCEPT()
		return _accept.check();

	public var BACK(get, never):Bool;

	inline function get_BACK()
		return _back.check();

	public var PAUSE(get, never):Bool;

	inline function get_PAUSE()
		return _pause.check();

	public var RESET(get, never):Bool;

	inline function get_RESET()
		return _reset.check();

	public var CHEAT(get, never):Bool;

	inline function get_CHEAT()
		return _cheat.check();



	public var L1(get, never):Bool;

	inline function get_L1()
		return _l1.check();

	public var L1_P(get, never):Bool;

	inline function get_L1_P()
		return _l1P.check();

	public var L1_R(get, never):Bool;

	inline function get_L1_R()
		return _l1R.check();	

	public var D1(get, never):Bool;

	inline function get_D1()
		return _d.check();

	public var D1_P(get, never):Bool;

	inline function get_D1_P()
		return _dP.check();

	public var D1_R(get, never):Bool;

	inline function get_D1_R()
		return _dR.check();

	public var R1(get, never):Bool;

	inline function get_R1()
		return _r1.check();

	public var R1_P(get, never):Bool;

	inline function get_R1_P()
		return _r1P.check();

	public var R1_R(get, never):Bool;

	inline function get_R1_R()
		return _r1R.check();	


	public var L2(get, never):Bool;

	inline function get_L2()
		return _l2.check();

	public var L2_P(get, never):Bool;

	inline function get_L2_P()
		return _l2P.check();

	public var L2_R(get, never):Bool;

	inline function get_L2_R()
		return _l2R.check();	

	public var U1(get, never):Bool;

	inline function get_U1()
		return _u.check();

	public var U1_P(get, never):Bool;

	inline function get_U1_P()
		return _uP.check();

	public var U1_R(get, never):Bool;

	inline function get_U1_R()
		return _uR.check();

	public var R2(get, never):Bool;

	inline function get_R2()
		return _r2.check();

	public var R2_P(get, never):Bool;

	inline function get_R2_P()
		return _r2P.check();

	public var R2_R(get, never):Bool;

	inline function get_R2_R()
		return _r2R.check();


	public var N0(get, never):Bool;
	public var N1(get, never):Bool;
	public var N2(get, never):Bool;
	public var N3(get, never):Bool;
	public var N4(get, never):Bool;
	public var N5(get, never):Bool;
	public var N6(get, never):Bool;
	public var N7(get, never):Bool;
	public var N8(get, never):Bool;
	public var N9(get, never):Bool;
	public var N10(get, never):Bool;
	public var N11(get, never):Bool;
	public var N12(get, never):Bool;
	public var N13(get, never):Bool;
	public var N14(get, never):Bool;
	public var N15(get, never):Bool;
	public var N16(get, never):Bool;
	public var N17(get, never):Bool;
	public var N18(get, never):Bool;
	public var N19(get, never):Bool;
	public var N20(get, never):Bool;

	public var N0_P(get, never):Bool;
	public var N1_P(get, never):Bool;
	public var N2_P(get, never):Bool;
	public var N3_P(get, never):Bool;
	public var N4_P(get, never):Bool;
	public var N5_P(get, never):Bool;
	public var N6_P(get, never):Bool;
	public var N7_P(get, never):Bool;
	public var N8_P(get, never):Bool;
	public var N9_P(get, never):Bool;
	public var N10_P(get, never):Bool;
	public var N11_P(get, never):Bool;
	public var N12_P(get, never):Bool;
	public var N13_P(get, never):Bool;
	public var N14_P(get, never):Bool;
	public var N15_P(get, never):Bool;
	public var N16_P(get, never):Bool;
	public var N17_P(get, never):Bool;
	public var N18_P(get, never):Bool;
	public var N19_P(get, never):Bool;
	public var N20_P(get, never):Bool;

	public var N0_R(get, never):Bool;
	public var N1_R(get, never):Bool;
	public var N2_R(get, never):Bool;
	public var N3_R(get, never):Bool;
	public var N4_R(get, never):Bool;
	public var N5_R(get, never):Bool;
	public var N6_R(get, never):Bool;
	public var N7_R(get, never):Bool;
	public var N8_R(get, never):Bool;
	public var N9_R(get, never):Bool;
	public var N10_R(get, never):Bool;
	public var N11_R(get, never):Bool;
	public var N12_R(get, never):Bool;
	public var N13_R(get, never):Bool;
	public var N14_R(get, never):Bool;
	public var N15_R(get, never):Bool;
	public var N16_R(get, never):Bool;
	public var N17_R(get, never):Bool;
	public var N18_R(get, never):Bool;
	public var N19_R(get, never):Bool;
	public var N20_R(get, never):Bool;

	inline function get_N0() return _n0.check();
	inline function get_N1() return _n1.check();
	inline function get_N2() return _n2.check();
	inline function get_N3() return _n3.check();
	inline function get_N4() return _n4.check();
	inline function get_N5() return _n5.check();
	inline function get_N6() return _n6.check();
	inline function get_N7() return _n7.check();
	inline function get_N8() return _n8.check();
	inline function get_N9() return _n9.check();
	inline function get_N10() return _n10.check();
	inline function get_N11() return _n11.check();
	inline function get_N12() return _n12.check();
	inline function get_N13() return _n13.check();
	inline function get_N14() return _n14.check();
	inline function get_N15() return _n15.check();
	inline function get_N16() return _n16.check();
	inline function get_N17() return _n17.check();
	inline function get_N18() return _n18.check();
	inline function get_N19() return _n19.check();
	inline function get_N20() return _n20.check();

	inline function get_N0_P() return _n0P.check();
	inline function get_N1_P() return _n1P.check();
	inline function get_N2_P() return _n2P.check();
	inline function get_N3_P() return _n3P.check();
	inline function get_N4_P() return _n4P.check();
	inline function get_N5_P() return _n5P.check();
	inline function get_N6_P() return _n6P.check();
	inline function get_N7_P() return _n7P.check();
	inline function get_N8_P() return _n8P.check();
	inline function get_N9_P() return _n9P.check();
	inline function get_N10_P() return _n10P.check();
	inline function get_N11_P() return _n11P.check();
	inline function get_N12_P() return _n12P.check();
	inline function get_N13_P() return _n13P.check();
	inline function get_N14_P() return _n14P.check();
	inline function get_N15_P() return _n15P.check();
	inline function get_N16_P() return _n16P.check();
	inline function get_N17_P() return _n17P.check();
	inline function get_N18_P() return _n18P.check();
	inline function get_N19_P() return _n19P.check();
	inline function get_N20_P() return _n20P.check();

	inline function get_N0_R() return _n0R.check();
	inline function get_N1_R() return _n1R.check();
	inline function get_N2_R() return _n2R.check();
	inline function get_N3_R() return _n3R.check();
	inline function get_N4_R() return _n4R.check();
	inline function get_N5_R() return _n5R.check();
	inline function get_N6_R() return _n6R.check();
	inline function get_N7_R() return _n7R.check();
	inline function get_N8_R() return _n8R.check();
	inline function get_N9_R() return _n9R.check();
	inline function get_N10_R() return _n10R.check();
	inline function get_N11_R() return _n11R.check();
	inline function get_N12_R() return _n12R.check();
	inline function get_N13_R() return _n13R.check();
	inline function get_N14_R() return _n14R.check();
	inline function get_N15_R() return _n15R.check();
	inline function get_N16_R() return _n16R.check();
	inline function get_N17_R() return _n17R.check();
	inline function get_N18_R() return _n18R.check();
	inline function get_N19_R() return _n19R.check();
	inline function get_N20_R() return _n20R.check();


	#if (haxe >= "4.0.0")
	public function new(name, scheme = None)
	{
		super(name);

		add(_up);
		add(_left);
		add(_right);
		add(_down);
		add(_upP);
		add(_leftP);
		add(_rightP);
		add(_downP);
		add(_upR);
		add(_leftR);
		add(_rightR);
		add(_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);
		add(_cheat);


		add(_l1);
		add(_l1P);
		add(_l1R);
		add(_d);
		add(_dP);
		add(_dR);
		add(_r1);
		add(_r1P);
		add(_r1R);

		add(_l2);
		add(_l2P);
		add(_l2R);
		add(_u);
		add(_uP);
		add(_uR);
		add(_r2);
		add(_r2P);
		add(_r2R);


		add(_n0);
		add(_n1);
		add(_n2);
		add(_n3);
		add(_n4);
		add(_n5);
		add(_n6);
		add(_n7);
		add(_n8);
		add(_n9);
		add(_n10);
		add(_n11);
		add(_n12);
		add(_n13);
		add(_n14);
		add(_n15);
		add(_n16);
		add(_n17);
		add(_n18);
		add(_n19);
		add(_n20);

		add(_n0P);
		add(_n1P);
		add(_n2P);
		add(_n3P);
		add(_n4P);
		add(_n5P);
		add(_n6P);
		add(_n7P);
		add(_n8P);
		add(_n9P);
		add(_n10P);
		add(_n11P);
		add(_n12P);
		add(_n13P);
		add(_n14P);
		add(_n15P);
		add(_n16P);
		add(_n17P);
		add(_n18P);
		add(_n19P);
		add(_n20P);

		add(_n0R);
		add(_n1R);
		add(_n2R);
		add(_n3R);
		add(_n4R);
		add(_n5R);
		add(_n6R);
		add(_n7R);
		add(_n8R);
		add(_n9R);
		add(_n10R);
		add(_n11R);
		add(_n12R);
		add(_n13R);
		add(_n14R);
		add(_n15R);
		add(_n16R);
		add(_n17R);
		add(_n18R);
		add(_n19R);
		add(_n20R);

		for (action in digitalActions)
			byName[action.name] = action;

		setKeyboardScheme(scheme, false);
	}
	#else
	public function new(name, scheme:KeyboardScheme = null)
	{
		super(name);

		add(_up);
		add(_left);
		add(_right);
		add(_down);
		add(_upP);
		add(_leftP);
		add(_rightP);
		add(_downP);
		add(_upR);
		add(_leftR);
		add(_rightR);
		add(_downR);
		add(_accept);
		add(_back);
		add(_pause);
		add(_reset);
		add(_cheat);

		add(_l1);
		add(_l1P);
		add(_l1R);
		add(_d);
		add(_dP);
		add(_dR);
		add(_r1);
		add(_r1P);
		add(_r1R);

		add(_l2);
		add(_l2P);
		add(_l2R);
		add(_u);
		add(_uP);
		add(_uR);
		add(_r2);
		add(_r2P);
		add(_r2R);


		add(_n0);
		add(_n1);
		add(_n2);
		add(_n3);
		add(_n4);
		add(_n5);
		add(_n6);
		add(_n7);
		add(_n8);
		add(_n9);
		add(_n10);
		add(_n11);
		add(_n12);
		add(_n13);
		add(_n14);
		add(_n15);
		add(_n16);
		add(_n17);
		add(_n18);
		add(_n19);
		add(_n20);

		add(_n0P);
		add(_n1P);
		add(_n2P);
		add(_n3P);
		add(_n4P);
		add(_n5P);
		add(_n6P);
		add(_n7P);
		add(_n8P);
		add(_n9P);
		add(_n10P);
		add(_n11P);
		add(_n12P);
		add(_n13P);
		add(_n14P);
		add(_n15P);
		add(_n16P);
		add(_n17P);
		add(_n18P);
		add(_n19P);
		add(_n20P);

		add(_n0R);
		add(_n1R);
		add(_n2R);
		add(_n3R);
		add(_n4R);
		add(_n5R);
		add(_n6R);
		add(_n7R);
		add(_n8R);
		add(_n9R);
		add(_n10R);
		add(_n11R);
		add(_n12R);
		add(_n13R);
		add(_n14R);
		add(_n15R);
		add(_n16R);
		add(_n17R);
		add(_n18R);
		add(_n19R);
		add(_n20R);

		for (action in digitalActions)
			byName[action.name] = action;
			
		if (scheme == null)
			scheme = None;
		setKeyboardScheme(scheme, false);
	}
	#end

	override function update()
	{
		super.update();
	}

	// inline
	public function checkByName(name:Action):Bool
	{
		#if debug
		if (!byName.exists(name))
			throw 'Invalid name: $name';
		#end
		return byName[name].check();
	}

	public function getDialogueName(action:FlxActionDigital):String
	{
		var input = action.inputs[0];
		return switch input.device
		{
			case KEYBOARD: return '[${(input.inputID : FlxKey)}]';
			case GAMEPAD: return '(${(input.inputID : FlxGamepadInputID)})';
			case device: throw 'unhandled device: $device';
		}
	}

	public function getDialogueNameFromToken(token:String):String
	{
		return getDialogueName(getActionFromControl(Control.createByName(token.toUpperCase())));
	}

	function getActionFromControl(control:Control):FlxActionDigital
	{
		return switch (control)
		{
			case UP: _up;
			case DOWN: _down;
			case LEFT: _left;
			case RIGHT: _right;
			case ACCEPT: _accept;
			case BACK: _back;
			case PAUSE: _pause;
			case RESET: _reset;
			case CHEAT: _cheat;

			case L1: _l1;
			case D1: _d;
			case R1: _r1;
			case L2: _l2;
			case U1: _u;
			case R2: _r2;

			case N0: _n0;
			case N1: _n1;
			case N2: _n2;
			case N3: _n3;
			case N4: _n4;
			case N5: _n5;
			case N6: _n6;
			case N7: _n7;
			case N8: _n8;
			case N9: _n9;
			case N10: _n10;
			case N11: _n11;
			case N12: _n12;
			case N13: _n13;
			case N14: _n14;
			case N15: _n15;
			case N16: _n16;
			case N17: _n17;
			case N18: _n18;
			case N19: _n19;
			case N20: _n20;
		}
	}

	static function init():Void
	{
		var actions = new FlxActionManager();
		FlxG.inputs.add(actions);
	}

	/**
	 * Calls a function passing each action bound by the specified control
	 * @param control
	 * @param func
	 * @return ->Void)
	 */
	function forEachBound(control:Control, func:FlxActionDigital->FlxInputState->Void)
	{
		switch (control)
		{
			case UP:
				func(_up, PRESSED);
				func(_upP, JUST_PRESSED);
				func(_upR, JUST_RELEASED);
			case LEFT:
				func(_left, PRESSED);
				func(_leftP, JUST_PRESSED);
				func(_leftR, JUST_RELEASED);
			case RIGHT:
				func(_right, PRESSED);
				func(_rightP, JUST_PRESSED);
				func(_rightR, JUST_RELEASED);
			case DOWN:
				func(_down, PRESSED);
				func(_downP, JUST_PRESSED);
				func(_downR, JUST_RELEASED);
			case ACCEPT:
				func(_accept, JUST_PRESSED);
			case BACK:
				func(_back, JUST_PRESSED);
			case PAUSE:
				func(_pause, JUST_PRESSED);
			case RESET:
				func(_reset, JUST_PRESSED);
			case CHEAT:
				func(_cheat, JUST_PRESSED);

			case L1:
				func(_l1, PRESSED);
				func(_l1P, JUST_PRESSED);
				func(_l1R, JUST_RELEASED);
			case U1:
				func(_u, PRESSED);
				func(_uP, JUST_PRESSED);
				func(_uR, JUST_RELEASED);
			case R1:
				func(_r1, PRESSED);
				func(_r1P, JUST_PRESSED);
				func(_r1R, JUST_RELEASED);
			case L2:
				func(_l2, PRESSED);
				func(_l2P, JUST_PRESSED);
				func(_l2R, JUST_RELEASED);
			case D1:
				func(_d, PRESSED);
				func(_dP, JUST_PRESSED);
				func(_dR, JUST_RELEASED);
			case R2:
				func(_r2, PRESSED);
				func(_r2P, JUST_PRESSED);
				func(_r2R, JUST_RELEASED);

			case N0:
				func(_n0, PRESSED);
				func(_n0P, JUST_PRESSED);
				func(_n0R, JUST_RELEASED);
			case N1:
				func(_n1, PRESSED);
				func(_n1P, JUST_PRESSED);
				func(_n1R, JUST_RELEASED);
			case N2:
				func(_n2, PRESSED);
				func(_n2P, JUST_PRESSED);
				func(_n2R, JUST_RELEASED);
			case N3:
				func(_n3, PRESSED);
				func(_n3P, JUST_PRESSED);
				func(_n3R, JUST_RELEASED);
			case N4:
				func(_n4, PRESSED);
				func(_n4P, JUST_PRESSED);
				func(_n4R, JUST_RELEASED);
			case N5:
				func(_n5, PRESSED);
				func(_n5P, JUST_PRESSED);
				func(_n5R, JUST_RELEASED);
			case N6:
				func(_n6, PRESSED);
				func(_n6P, JUST_PRESSED);
				func(_n6R, JUST_RELEASED);
			case N7:
				func(_n7, PRESSED);
				func(_n7P, JUST_PRESSED);
				func(_n7R, JUST_RELEASED);
			case N8:
				func(_n8, PRESSED);
				func(_n8P, JUST_PRESSED);
				func(_n8R, JUST_RELEASED);
			case N9:
				func(_n9, PRESSED);
				func(_n9P, JUST_PRESSED);
				func(_n9R, JUST_RELEASED);
			case N10:
				func(_n10, PRESSED);
				func(_n10P, JUST_PRESSED);
				func(_n10R, JUST_RELEASED);
			case N11:
				func(_n11, PRESSED);
				func(_n11P, JUST_PRESSED);
				func(_n11R, JUST_RELEASED);
			case N12:
				func(_n12, PRESSED);
				func(_n12P, JUST_PRESSED);
				func(_n12R, JUST_RELEASED);
			case N13:
				func(_n13, PRESSED);
				func(_n13P, JUST_PRESSED);
				func(_n13R, JUST_RELEASED);
			case N14:
				func(_n14, PRESSED);
				func(_n14P, JUST_PRESSED);
				func(_n14R, JUST_RELEASED);
			case N15:
				func(_n15, PRESSED);
				func(_n15P, JUST_PRESSED);
				func(_n15R, JUST_RELEASED);
			case N16:
				func(_n16, PRESSED);
				func(_n16P, JUST_PRESSED);
				func(_n16R, JUST_RELEASED);
			case N17:
				func(_n17, PRESSED);
				func(_n17P, JUST_PRESSED);
				func(_n17R, JUST_RELEASED);
			case N18:
				func(_n18, PRESSED);
				func(_n18P, JUST_PRESSED);
				func(_n18R, JUST_RELEASED);
			case N19:
				func(_n19, PRESSED);
				func(_n19P, JUST_PRESSED);
				func(_n19R, JUST_RELEASED);
			case N20:
				func(_n20, PRESSED);
				func(_n20P, JUST_PRESSED);
				func(_n20R, JUST_RELEASED);
		}
	}

	public function replaceBinding(control:Control, device:Device, ?toAdd:Int, ?toRemove:Int)
	{
		if (toAdd == toRemove)
			return;

		switch (device)
		{
			case Keys:
				if (toRemove != null)
					unbindKeys(control, [toRemove]);
				if (toAdd != null)
					bindKeys(control, [toAdd]);

			case Gamepad(id):
				if (toRemove != null)
					unbindButtons(control, id, [toRemove]);
				if (toAdd != null)
					bindButtons(control, id, [toAdd]);
		}
	}

	public function copyFrom(controls:Controls, ?device:Device)
	{
		#if (haxe >= "4.0.0")
		for (name => action in controls.byName)
		{
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
					byName[name].add(cast input);
			}
		}
		#else
		for (name in controls.byName.keys())
		{
			var action = controls.byName[name];
			for (input in action.inputs)
			{
				if (device == null || isDevice(input, device))
				byName[name].add(cast input);
			}
		}
		#end

		switch (device)
		{
			case null:
				// add all
				#if (haxe >= "4.0.0")
				for (gamepad in controls.gamepadsAdded)
					if (!gamepadsAdded.contains(gamepad))
						gamepadsAdded.push(gamepad);
				#else
				for (gamepad in controls.gamepadsAdded)
					if (gamepadsAdded.indexOf(gamepad) == -1)
					  gamepadsAdded.push(gamepad);
				#end

				mergeKeyboardScheme(controls.keyboardScheme);

			case Gamepad(id):
				gamepadsAdded.push(id);
			case Keys:
				mergeKeyboardScheme(controls.keyboardScheme);
		}
	}

	inline public function copyTo(controls:Controls, ?device:Device)
	{
		controls.copyFrom(this, device);
	}

	function mergeKeyboardScheme(scheme:KeyboardScheme):Void
	{
		if (scheme != None)
		{
			switch (keyboardScheme)
			{
				case None:
					keyboardScheme = scheme;
				default:
					keyboardScheme = Custom;
			}
		}
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindKeys(control:Control, keys:Array<FlxKey>)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addKeys(action, keys, state));
		#else
		forEachBound(control, function(action, state) addKeys(action, keys, state));
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindKeys(control:Control, keys:Array<FlxKey>)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeKeys(action, keys));
		#else
		forEachBound(control, function(action, _) removeKeys(action, keys));
		#end
	}

	inline static function addKeys(action:FlxActionDigital, keys:Array<FlxKey>, state:FlxInputState)
	{
		for (key in keys)
			action.addKey(key, state);
	}

	static function removeKeys(action:FlxActionDigital, keys:Array<FlxKey>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (input.device == KEYBOARD && keys.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function setKeyboardScheme(scheme:KeyboardScheme, reset = true)
	{
		if (reset)
			removeKeyboard();

		keyboardScheme = scheme;
		Main.woops = false;
		
		#if (haxe >= "4.0.0")
		inline bindKeys(Control.N0, [FlxKey.ONE]);
		inline bindKeys(Control.N1, [Q]);
		inline bindKeys(Control.N2, [A]);
		inline bindKeys(Control.N3, [FlxKey.TWO]);
		inline bindKeys(Control.N4, [Z]);
		inline bindKeys(Control.N5, [W]);
		inline bindKeys(Control.N6, [S]);
		inline bindKeys(Control.N7, [FlxKey.THREE]);
		inline bindKeys(Control.N8, [X]);
		inline bindKeys(Control.N9, [E]);
		inline bindKeys(Control.N10, [D]);
		inline bindKeys(Control.N11, [FlxKey.FOUR]);
		inline bindKeys(Control.N12, [C]);
		inline bindKeys(Control.N13, [R]);
		inline bindKeys(Control.N14, [F]);
		inline bindKeys(Control.N15, [FlxKey.FIVE]);
		inline bindKeys(Control.N16, [V]);
		inline bindKeys(Control.N17, [T]);
		inline bindKeys(Control.N18, [G]);
		inline bindKeys(Control.N19, [FlxKey.SIX]);
		inline bindKeys(Control.N20, [B]);
		
		switch (scheme)
		{
			case Solo:
				inline bindKeys(Control.UP, [J, FlxKey.UP]);
				inline bindKeys(Control.DOWN, [F, FlxKey.DOWN]);
				inline bindKeys(Control.LEFT, [D, FlxKey.LEFT]);
				inline bindKeys(Control.RIGHT, [K, FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
				inline bindKeys(Control.BACK, [BACKSPACE, ESCAPE]);
				inline bindKeys(Control.PAUSE, [FlxKey.MINUS, ENTER, ESCAPE]);
				inline bindKeys(Control.RESET, [FlxKey.PLUS]);

				inline bindKeys(Control.L1, [S]);
				inline bindKeys(Control.U1, [D]);
				inline bindKeys(Control.R1, [F]);
				inline bindKeys(Control.L2, [J]);
				inline bindKeys(Control.D1, [K]);
				inline bindKeys(Control.R2, [L]);
			case Duo(true):
				inline bindKeys(Control.UP, [W, FlxKey.UP]);
				inline bindKeys(Control.DOWN, [S, FlxKey.DOWN]);
				inline bindKeys(Control.LEFT, [A, FlxKey.LEFT]);
				inline bindKeys(Control.RIGHT, [D, FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [G, Z, SPACE, ENTER]);
				inline bindKeys(Control.BACK, [BACKSPACE, ESCAPE]);
				inline bindKeys(Control.RESET, [FlxKey.PLUS]);

				inline bindKeys(Control.L1, [A]);
				inline bindKeys(Control.U1, [S]);
				inline bindKeys(Control.R1, [D]);
				inline bindKeys(Control.L2, [FlxKey.LEFT]);
				inline bindKeys(Control.D1, [FlxKey.DOWN]);
				inline bindKeys(Control.R2, [FlxKey.RIGHT]);
			case Duo(false):
				inline bindKeys(Control.UP, [FlxKey.UP]);
				inline bindKeys(Control.DOWN, [FlxKey.DOWN]);
				inline bindKeys(Control.LEFT, [FlxKey.LEFT]);
				inline bindKeys(Control.RIGHT, [FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [O]);
				inline bindKeys(Control.BACK, [P]);
				inline bindKeys(Control.PAUSE, [ENTER]);
				inline bindKeys(Control.RESET, [BACKSPACE]);
			case None: // nothing
			case Custom: // nothing
			case Woops:
				Main.woops = true;
				inline bindKeys(Control.UP, [FlxKey.NUMPADTWO, FlxKey.ONE, FlxKey.UP]);
				inline bindKeys(Control.DOWN, [X, FlxKey.DOWN]);
				inline bindKeys(Control.LEFT, [Z, FlxKey.LEFT]);
				inline bindKeys(Control.RIGHT, [FlxKey.NUMPADTHREE, FlxKey.TWO, FlxKey.RIGHT]);
				inline bindKeys(Control.ACCEPT, [SPACE, ENTER]);
				inline bindKeys(Control.BACK, [BACKSPACE, ESCAPE]);
				inline bindKeys(Control.PAUSE, [FlxKey.MINUS, ENTER, ESCAPE]);
				inline bindKeys(Control.RESET, [FlxKey.PLUS]);

				inline bindKeys(Control.L1, [Z]);
				inline bindKeys(Control.U1, [X]);
				inline bindKeys(Control.R1, [C]);
				inline bindKeys(Control.L2, [FlxKey.NUMPADONE, FlxKey.ONE]);
				inline bindKeys(Control.D1, [FlxKey.NUMPADTWO, FlxKey.TWO]);
				inline bindKeys(Control.R2, [FlxKey.NUMPADTHREE, FlxKey.THREE]);
		}
		#else
		bindKeys(Control.N0, [FlxKey.ONE]);
		bindKeys(Control.N1, [Q]);
		bindKeys(Control.N2, [A]);
		bindKeys(Control.N3, [FlxKey.TWO]);
		bindKeys(Control.N4, [Z]);
		bindKeys(Control.N5, [W]);
		bindKeys(Control.N6, [S]);
		bindKeys(Control.N7, [FlxKey.THREE]);
		bindKeys(Control.N8, [X]);
		bindKeys(Control.N9, [E]);
		bindKeys(Control.N10, [D]);
		bindKeys(Control.N11, [FlxKey.FOUR]);
		bindKeys(Control.N12, [C]);
		bindKeys(Control.N13, [R]);
		bindKeys(Control.N14, [F]);
		bindKeys(Control.N15, [FlxKey.FIVE]);
		bindKeys(Control.N16, [V]);
		bindKeys(Control.N17, [T]);
		bindKeys(Control.N18, [G]);
		bindKeys(Control.N19, [FlxKey.SIX]);
		bindKeys(Control.N20, [B]);
		switch (scheme)
		{
			case Solo:
				bindKeys(Control.UP, [W, FlxKey.UP]);
				bindKeys(Control.DOWN, [S, FlxKey.DOWN]);
				bindKeys(Control.LEFT, [A, FlxKey.LEFT]);
				bindKeys(Control.RIGHT, [D, FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [Z, SPACE, ENTER]);
				bindKeys(Control.BACK, [BACKSPACE, ESCAPE]);
				bindKeys(Control.PAUSE, [P, ENTER, ESCAPE]);
				bindKeys(Control.RESET, [R]);

				bindKeys(Control.L1, [S]);
				bindKeys(Control.U1, [D]);
				bindKeys(Control.R1, [F]);
				bindKeys(Control.L2, [J]);
				bindKeys(Control.D1, [K]);
				bindKeys(Control.R2, [L]);
			case Duo(true):
				bindKeys(Control.UP, [W]);
				bindKeys(Control.DOWN, [S]);
				bindKeys(Control.LEFT, [A]);
				bindKeys(Control.RIGHT, [D]);
				bindKeys(Control.ACCEPT, [G, Z]);
				bindKeys(Control.BACK, [H, X]);
				bindKeys(Control.PAUSE, [ONE]);
				bindKeys(Control.RESET, [R]);

				bindKeys(Control.L1, [A]);
				bindKeys(Control.U1, [S]);
				bindKeys(Control.R1, [D]);
				bindKeys(Control.L2, [FlxKey.LEFT]);
				bindKeys(Control.D1, [FlxKey.DOWN]);
				bindKeys(Control.R2, [FlxKey.RIGHT]);
			case Duo(false):
				bindKeys(Control.UP, [FlxKey.UP]);
				bindKeys(Control.DOWN, [FlxKey.DOWN]);
				bindKeys(Control.LEFT, [FlxKey.LEFT]);
				bindKeys(Control.RIGHT, [FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [O]);
				bindKeys(Control.BACK, [P]);
				bindKeys(Control.PAUSE, [ENTER]);
				bindKeys(Control.RESET, [BACKSPACE]);
			case None: // nothing
			case Custom: // nothing
			case Woops:
				Main.woops = true;
				bindKeys(Control.UP, [FlxKey.NUMPADTWO, FlxKey.ONE, FlxKey.UP]);
				bindKeys(Control.DOWN, [X, FlxKey.DOWN]);
				bindKeys(Control.LEFT, [Z, FlxKey.LEFT]);
				bindKeys(Control.RIGHT, [FlxKey.NUMPADTHREE, FlxKey.TWO, FlxKey.RIGHT]);
				bindKeys(Control.ACCEPT, [SPACE, ENTER]);
				bindKeys(Control.BACK, [BACKSPACE, ESCAPE]);
				bindKeys(Control.PAUSE, [P, ENTER, ESCAPE]);
				bindKeys(Control.RESET, [R]);

				bindKeys(Control.L1, [Z]);
				bindKeys(Control.U1, [X]);
				bindKeys(Control.R1, [C]);
				bindKeys(Control.L2, [FlxKey.NUMPADONE, FlxKey.ONE]);
				bindKeys(Control.D1, [FlxKey.NUMPADTWO, FlxKey.TWO]);
				bindKeys(Control.R2, [FlxKey.NUMPADTHREE, FlxKey.THREE]);
		}
		#end
	}

	function removeKeyboard()
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == KEYBOARD)
					action.remove(input);
			}
		}
	}

	public function addGamepad(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);
		
		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	inline function addGamepadLiteral(id:Int, ?buttonMap:Map<Control, Array<FlxGamepadInputID>>):Void
	{
		gamepadsAdded.push(id);

		#if (haxe >= "4.0.0")
		for (control => buttons in buttonMap)
			inline bindButtons(control, id, buttons);
		#else
		for (control in buttonMap.keys())
			bindButtons(control, id, buttonMap[control]);
		#end
	}

	public function removeGamepad(deviceID:Int = FlxInputDeviceID.ALL):Void
	{
		for (action in this.digitalActions)
		{
			var i = action.inputs.length;
			while (i-- > 0)
			{
				var input = action.inputs[i];
				if (input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID))
					action.remove(input);
			}
		}

		gamepadsAdded.remove(deviceID);
	}

	public function addDefaultGamepad(id):Void
	{
		#if !switch
		addGamepadLiteral(id, [
			Control.ACCEPT => [A],
			Control.BACK => [B],
			Control.UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP],
			Control.DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN],
			Control.LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT],
			Control.RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			Control.RESET => [Y]
		]);
		#else
		addGamepadLiteral(id, [
			//Swap A and B for switch
			Control.ACCEPT => [B],
			Control.BACK => [A],
			Control.UP => [DPAD_UP, LEFT_STICK_DIGITAL_UP, RIGHT_STICK_DIGITAL_UP],
			Control.DOWN => [DPAD_DOWN, LEFT_STICK_DIGITAL_DOWN, RIGHT_STICK_DIGITAL_DOWN],
			Control.LEFT => [DPAD_LEFT, LEFT_STICK_DIGITAL_LEFT, RIGHT_STICK_DIGITAL_LEFT],
			Control.RIGHT => [DPAD_RIGHT, LEFT_STICK_DIGITAL_RIGHT, RIGHT_STICK_DIGITAL_RIGHT],
			Control.PAUSE => [START],
			//Swap Y and X for switch
			Control.RESET => [Y],
			Control.CHEAT => [X]
		]);
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function bindButtons(control:Control, id, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, state) -> addButtons(action, buttons, state, id));
		#else
		forEachBound(control, function(action, state) addButtons(action, buttons, state, id));
		#end
	}

	/**
	 * Sets all actions that pertain to the binder to trigger when the supplied keys are used.
	 * If binder is a literal you can inline this
	 */
	public function unbindButtons(control:Control, gamepadID:Int, buttons)
	{
		#if (haxe >= "4.0.0")
		inline forEachBound(control, (action, _) -> removeButtons(action, gamepadID, buttons));
		#else
		forEachBound(control, function(action, _) removeButtons(action, gamepadID, buttons));
		#end
	}

	inline static function addButtons(action:FlxActionDigital, buttons:Array<FlxGamepadInputID>, state, id)
	{
		for (button in buttons)
			action.addGamepad(button, state, id);
	}

	static function removeButtons(action:FlxActionDigital, gamepadID:Int, buttons:Array<FlxGamepadInputID>)
	{
		var i = action.inputs.length;
		while (i-- > 0)
		{
			var input = action.inputs[i];
			if (isGamepad(input, gamepadID) && buttons.indexOf(cast input.inputID) != -1)
				action.remove(input);
		}
	}

	public function getInputsFor(control:Control, device:Device, ?list:Array<Int>):Array<Int>
	{
		if (list == null)
			list = [];

		switch (device)
		{
			case Keys:
				for (input in getActionFromControl(control).inputs)
				{
					if (input.device == KEYBOARD)
						list.push(input.inputID);
				}
			case Gamepad(id):
				for (input in getActionFromControl(control).inputs)
				{
					if (input.deviceID == id)
						list.push(input.inputID);
				}
		}
		return list;
	}

	public function removeDevice(device:Device)
	{
		switch (device)
		{
			case Keys:
				setKeyboardScheme(None);
			case Gamepad(id):
				removeGamepad(id);
		}
	}

	static function isDevice(input:FlxActionInput, device:Device)
	{
		return switch device
		{
			case Keys: input.device == KEYBOARD;
			case Gamepad(id): isGamepad(input, id);
		}
	}

	inline static function isGamepad(input:FlxActionInput, deviceID:Int)
	{
		return input.device == GAMEPAD && (deviceID == FlxInputDeviceID.ALL || input.deviceID == deviceID);
	}
}
