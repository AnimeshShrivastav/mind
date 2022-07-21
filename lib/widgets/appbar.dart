import 'package:flutter/material.dart';

 getAppBar(String title)
{
	return PreferredSize
		(
                preferredSize: 
			Size.fromHeight(100.0), 
                child: 
		  	AppBar
		  	(
                    	centerTitle: true,
                    	title: Text("$title"),
                  	),
		);
}