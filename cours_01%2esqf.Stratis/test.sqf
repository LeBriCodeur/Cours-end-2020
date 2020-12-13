// Aroun 
// test.sqf
/* 
private _array = [0, player, [1, 4, 5], 2];
private _value = count _array;
_array = _array - [player];
hint parseText format["<t color='#F31400' size='3' >%1 %2<t/>", (_array # (count _array-1)), "pouet"];
*/

private _path_cfgItems = missionConfigFile >> "CfgItems" >> "item_01";
private _name = getText(_path_cfgItems >> "name");
private _priceBuy = getNumber(_path_cfgItems >> "buy");
private _isnocif = getNumber(_path_cfgItems >> "isnofice");
private _cfgItems = "!((configName _x) isEqualTo 'item_base')" configClasses (missionConfigFile >> "CfgItems");
private _color ="";
// hint str [_name, _priceBuy, _isnocif];
{
	_color = if (getnumber(_x >> "isnofice") isEqualTo 0) then {
		"#00FF00"
	} else {
		"#FF0000"
	};
	hint parseText format["<t color= '%1'>%2<br/>%3<t/>", _color, getText(_x >> "name"), getnumber(_x >> "isnofice")];
	sleep 0.5;
}forEach _cfgItems;