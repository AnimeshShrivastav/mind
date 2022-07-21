import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/bnb.dart';
import '../widgets/pfb.dart';
import '../widgets/fab.dart';
import '../widgets/drawer.dart';

class Finance extends StatelessWidget
{

	Widget build(BuildContext bc)
	{
		return
			Scaffold(
				appBar:getAppBar('Financial Details'),
				floatingActionButton:getFab(),
				floatingActionButtonLocation:getFabLoc(),
				//persistentFooterButtons:getPfb(),
				bottomNavigationBar:getBnb(),
				drawer:getDrawer(),
				//body:getBody(),
			)
		;
	}
}