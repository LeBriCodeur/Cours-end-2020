
class CfgItems {
	class item_base {
		name = "Item base";
		buy = -1;
		sell = -1;
		isnofice = 0;
		compo[] = {};
	};

	class item_01 : item_base {
		name = "drogue";
		buy = 100;
		isnofice = 1;
	};

	class item_02 : item_base {
		name = "Javel";
		buy = 100;
		isnofice = 1;
	};

	class item_03 : item_base {
		name = "Eau";
		buy = 100;
	};
};