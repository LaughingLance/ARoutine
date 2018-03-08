package
{
	
	import flash.display.MovieClip;
	import com.myflashlab.air.extensions.firebase.core.Firebase;
	import com.myflashlab.air.extensions.firebase.db.*;
	
	public class ARoutine extends MovieClip
	{
		
		
		public function ARoutine()
		{
			// constructor code
			Firebase.init();
			
			DB.init();
			var myRef:DBReference = DB.getReference("message");
			myRef.setValue("SCREW YOU!!!!!");
			
			myRef.addEventListener(DBEvents.VALUE_CHANGED, onDataChange);
		//	myRef.addEventListener(DBEvents.VALUE_CHANGED_FAILED, onCancelled); /// problem
			
		}
		
		function onDataChange(e:DBEvents):void
		{
			// This method is called once with the initial value and again
			// whenever data at this location is updated.
			if (e.dataSnapshot.exists)
			{
				if (e.dataSnapshot.value is String) 		trace("onValueChanged String value = " + e.dataSnapshot.value);
				else if (e.dataSnapshot.value is Number) 	trace("onValueChanged Number value = " + e.dataSnapshot.value);
				else if (e.dataSnapshot.value is Boolean) 	trace("onValueChanged Boolean value = " + e.dataSnapshot.value);
				else if (e.dataSnapshot.value is Array) 	trace("onValueChanged Array value = " + JSON.stringify(e.dataSnapshot.value));
				else 										trace("onValueChanged Object value = " + JSON.stringify(e.dataSnapshot.value));
			}
		}

		function onCancelled(e:DBEvents):void
		{
			trace("Failed to read value: " + e.msg);
		}
	}
	
}
