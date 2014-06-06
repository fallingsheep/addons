	//CRASH SITE MAP MARKERS AND MESSAGE
		//Options
		HeliCrashMSG = true; //show message to players when wreck crashes
		HeliCrashMarker = true; //show crash locations with markers
		
		if ( HeliCrashMarker ) then{	
		//create marker at crash site
		_crashmarker = createMarker ["HeliCrashsiteMarker", crashPostion]; // create marker
		_crashmarker setMarkerShape "ELLIPSE"; //set marker shape
		_crashmarker setMarkerBrush "GRID"; // set marker brush
		_crashmarker setMarkerType "Vehicle"; //set marker type
		_crashmarker setMarkerText "CRASH MARKER"; //set marker text
		_crashmarker setMarkerColor "ColorBlue"; // set marker color
		//Debug
		diag_log(format["CRASH MARKER: marker created at %1", crashPostion]); 
		};
		//message players
		
		//if message are on
		if ( HeliCrashMSG ) then{
			//message if markers are on
			if ( HeliCrashMarker ) then{
				systemChat("A Helicopter has crashed! check your map for location!");
			};
		}else{
			//message if markers are off
			if ( HeliCrashMSG ) then{	
				systemChat("A Helicopter has crashed! Go search for it!");
			};
		};
		sleep 60; //how long to wait before removing marker 60 is 1 min 120 is 2 min, etc
		deleteMarker _crashmarker
		diag_log(format["CRASH MARKER: marker deleted at %1", crashPostion]); 
