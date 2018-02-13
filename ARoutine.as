package
{
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	import com.danielfreeman.madcomponents.*;
//	import starling.core.Starling;
	
	
	public class ARoutine extends Sprite
	{
		protected static const ARoutine_Splash:XML = <vertical alignH="centre" alignV="centre" width="100">
												<label alignH="centre">Welcome to ARoutine!</label>
												<button id="Login" alignH="fill">Login</button>
											</vertical>;
		
		protected static const Login_Choice:XML = <vertical alignH="centre" alignV="centre" width="100">
													<label alignH="centre">How do you want to login?</label>
													<button id="FB_Login" alignH="fill">Login with Facebook</button>
													<button id="Register" alignH="fill">Register</button>
											</vertical>;
		
		protected static const Login_Facebook:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">Facebook Login</label>
														<button id="Tutorial_Facebook" alignH="fill">Continue</button>
													</vertical>;
		
		protected static const Login_Register:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">Complete Registration</label>
														<button id="Tutorial_Register" alignH="fill">Continue</button>
													</vertical>;
		
		protected static const Tutorial:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">ARoutine Tutorial</label>
														<button id="QR_Reader" alignH="fill">Start</button>
													</vertical>;
													
		protected static const QR_Reader:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">QR_Reader</label>
														<button id="AR_Scan" alignH="fill">Scan</button>
														<button id="Social" alignH="fill">Social</button>
														<button id="Profile" alignH="fill">Profile</button>
														<button id="Search" alignH="fill">Search</button>
													</vertical>
													
		protected static const Social:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">Social</label>
														<button id="Check_In" alignH="fill">Check In</button>
														<button id="Check_Out" alignH="fill">Check Out</button>
														<button id="Post_Workout" alignH="fill">Post Workout</button>
														<button id="QR_Reader_Social" alignH="fill">Scanner</button>
													</vertical>
													
		protected static const Social_CheckIn:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">Check In</label>
														<button id="Social_CheckIn" alignH="fill">Social</button>
														<button id="QR_Reader_CheckIn" alignH="fill">Scanner</button>
													</vertical>
													
		protected static const Social_CheckOut:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">Check Out</label>
														<button id="Social_CheckOut" alignH="fill">Social</button>
														<button id="QR_Reader_CheckOut" alignH="fill">Scanner</button>
													</vertical>
													
		protected static const Social_PostWorkout:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">Post Workout</label>
														<button id="Social_Post" alignH="fill">Social</button>
														<button id="QR_Reader_PostWorkout" alignH="fill">Scanner</button>
													</vertical>
													
		protected static const Profile:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">Profile</label>
														<button id="My_Stats" alignH="fill">My Stats</button>
														<button id="Profile_Workouts" alignH="fill">Saved Workouts</button>
														<button id="QR_Reader_Profile" alignH="fill">Scanner</button>
													</vertical>
													
		protected static const Profile_My_Stats:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">My Stats</label>
														<button id="Profile_MyStats" alignH="fill">Profile</button>
														<button id="QR_Reader_MyStats" alignH="fill">Scanner</button>
													</vertical>
													
		protected static const Profile_Saved_Workouts:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">Saved Workouts</label>
														<button id="Profile_SavedWorkouts" alignH="fill">Profile</button>
														<button id="QR_Reader_SavedWorkouts" alignH="fill">Scanner</button>
													</vertical>
													
		protected static const Search:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">Search</label>
														<button id="Search_Exercises">Exercises</button>
														<button id="QR_Reader_Search" alignH="fill">Scanner</button>
													</vertical>
													
		protected static const Search_Exercises:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">Exercise List</label>
														<button id="Push_Ups">Push Ups</button>
														<button id="Search_List" alignH="fill">Search</button>
														<button id="QR_Reader_ExerciseSearch" alignH="fill">Scanner</button>
													</vertical>
													
		protected static const Exercise_Push_Ups:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">Exercise: Push Ups</label>
														<button id="Search_Exercises_PushUps">Exercises</button>
														<button id="Profile_Workouts_PushUps">Add to Workout</button>
														<button id="Search_PushUps" alignH="fill">Search</button>
														<button id="QR_Reader_PushUps" alignH="fill">Scanner</button>
													</vertical>
													
		protected static const Scanned_AR:XML = <vertical alignH="centre" alignV="centre" width="100">
														<label alignH="centre">Scanned AR Page</label>
														<button id="QR_Reader_AR" alignH="fill">Scanner</button>
													</vertical>
		
		protected static const NAVIGATOR:XML = <navigation id="navigation" title="HomeView" leftArrow="">
														{ARoutine_Splash}			// 0
														{Login_Choice}				// 1
														{Login_Facebook}			// 2
														{Login_Register}			// 3
														{Tutorial}					// 4
														{QR_Reader}					// 5
														{Social}					// 6
														{Social_CheckIn}			// 7
														{Social_CheckOut}			// 8
														{Social_PostWorkout}		// 9
														{Profile}					// 10
														{Profile_My_Stats}			// 11
														{Profile_Saved_Workouts}	// 12
														{Search}					// 13
														{Search_Exercises}			// 14
														{Exercise_Push_Ups}			// 15
														{Scanned_AR}				// 16
													</navigation>;
			
		protected var _navigation:UINavigation;
		
		public function ARoutine(screen:Sprite = null)
		{
			if (screen)
				screen.addChild(this);
			
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			UI.create(this, NAVIGATOR);
			
			_navigation = UINavigation(UI.findViewById("navigation"));			
			
			var Login:UIButton = UIButton(UI.findViewById("Login"));
			Login.addEventListener(UIButton.CLICKED, gotoLogin);
			
			var FB_Login:UIButton = UIButton(UI.findViewById("FB_Login"));
			FB_Login.addEventListener(UIButton.CLICKED, gotoFB_Login);
			
			var Register:UIButton = UIButton(UI.findViewById("Register"));
			Register.addEventListener(UIButton.CLICKED, gotoRegister);
			
			var Tutorial_Facebook:UIButton = UIButton(UI.findViewById("Tutorial_Facebook"));
			Tutorial_Facebook.addEventListener(UIButton.CLICKED, gotoTutorial);
			
			var Tutorial_Register:UIButton = UIButton(UI.findViewById("Tutorial_Register"));
			Tutorial_Register.addEventListener(UIButton.CLICKED, gotoTutorial);
			
			var QR_Reader:UIButton = UIButton(UI.findViewById("QR_Reader"));
			QR_Reader.addEventListener(UIButton.CLICKED, gotoQR_Reader);
			
			var QR_Reader_Social:UIButton = UIButton(UI.findViewById("QR_Reader_Social"));
			QR_Reader_Social.addEventListener(UIButton.CLICKED, gotoQR_Reader);
			
			var QR_Reader_CheckIn:UIButton = UIButton(UI.findViewById("QR_Reader_CheckIn"));
			QR_Reader_CheckIn.addEventListener(UIButton.CLICKED, gotoQR_Reader);
			
			var QR_Reader_CheckOut:UIButton = UIButton(UI.findViewById("QR_Reader_CheckOut"));
			QR_Reader_CheckOut.addEventListener(UIButton.CLICKED, gotoQR_Reader);
			
			var QR_Reader_PostWorkout:UIButton = UIButton(UI.findViewById("QR_Reader_PostWorkout"));
			QR_Reader_PostWorkout.addEventListener(UIButton.CLICKED, gotoQR_Reader);
			
			var QR_Reader_Profile:UIButton = UIButton(UI.findViewById("QR_Reader_Profile"));
			QR_Reader_Profile.addEventListener(UIButton.CLICKED, gotoQR_Reader);
			
			var QR_Reader_MyStats:UIButton = UIButton(UI.findViewById("QR_Reader_MyStats"));
			QR_Reader_MyStats.addEventListener(UIButton.CLICKED, gotoQR_Reader);
			
			var QR_Reader_SavedWorkouts:UIButton = UIButton(UI.findViewById("QR_Reader_SavedWorkouts"));
			QR_Reader_SavedWorkouts.addEventListener(UIButton.CLICKED, gotoQR_Reader);
			
			var QR_Reader_Search:UIButton = UIButton(UI.findViewById("QR_Reader_Search"));
			QR_Reader_Search.addEventListener(UIButton.CLICKED, gotoQR_Reader);
			
			var QR_Reader_ExerciseSearch:UIButton = UIButton(UI.findViewById("QR_Reader_ExerciseSearch"));
			QR_Reader_ExerciseSearch.addEventListener(UIButton.CLICKED, gotoQR_Reader);
			
			var QR_Reader_PushUps:UIButton = UIButton(UI.findViewById("QR_Reader_PushUps"));
			QR_Reader_PushUps.addEventListener(UIButton.CLICKED, gotoQR_Reader);
			
			var QR_Reader_AR:UIButton = UIButton(UI.findViewById("QR_Reader_AR"));
			QR_Reader_AR.addEventListener(UIButton.CLICKED, gotoQR_Reader);
			
			var AR_Scan:UIButton = UIButton(UI.findViewById("AR_Scan"));
			AR_Scan.addEventListener(UIButton.CLICKED, gotoAR_Scan);
			
			var Social:UIButton = UIButton(UI.findViewById("Social"));
			Social.addEventListener(UIButton.CLICKED, gotoSocial);
			
			var Social_CheckIn:UIButton = UIButton(UI.findViewById("Social_CheckIn"));
			Social_CheckIn.addEventListener(UIButton.CLICKED, gotoSocial);
			
			var Social_CheckOut:UIButton = UIButton(UI.findViewById("Social_CheckOut"));
			Social_CheckOut.addEventListener(UIButton.CLICKED, gotoSocial);
			
			var Social_Post:UIButton = UIButton(UI.findViewById("Social_Post"));
			Social_Post.addEventListener(UIButton.CLICKED, gotoSocial);
			
			var Profile:UIButton = UIButton(UI.findViewById("Profile"));
			Profile.addEventListener(UIButton.CLICKED, gotoProfile);
			
			var Profile_MyStats:UIButton = UIButton(UI.findViewById("Profile_MyStats"));
			Profile_MyStats.addEventListener(UIButton.CLICKED, gotoProfile);
			
			var Profile_SavedWorkouts:UIButton = UIButton(UI.findViewById("Profile_SavedWorkouts"));
			Profile_SavedWorkouts.addEventListener(UIButton.CLICKED, gotoProfile);
			
			var Search:UIButton = UIButton(UI.findViewById("Search"));
			Search.addEventListener(UIButton.CLICKED, gotoSearch);
			
			var Search_List:UIButton = UIButton(UI.findViewById("Search_List"));
			Search_List.addEventListener(UIButton.CLICKED, gotoSearch);
			
			var Search_Exercises:UIButton = UIButton(UI.findViewById("Search_Exercises"));
			Search_Exercises.addEventListener(UIButton.CLICKED, gotoSearch_Exercises);
			
			var Search_Exercises_PushUps:UIButton = UIButton(UI.findViewById("Search_Exercises_PushUps"));
			Search_Exercises_PushUps.addEventListener(UIButton.CLICKED, gotoSearch_Exercises);
			
			var Search_PushUps:UIButton = UIButton(UI.findViewById("Search_PushUps"));
			Search_PushUps.addEventListener(UIButton.CLICKED, gotoSearch);
			
			var Check_In:UIButton = UIButton(UI.findViewById("Check_In"));
			Check_In.addEventListener(UIButton.CLICKED, gotoCheck_In);
			
			var Check_Out:UIButton = UIButton(UI.findViewById("Check_Out"));
			Check_Out.addEventListener(UIButton.CLICKED, gotoCheck_Out);
			
			var Post_Workout:UIButton = UIButton(UI.findViewById("Post_Workout"));
			Post_Workout.addEventListener(UIButton.CLICKED, gotoPost_Workout);
			
			var My_Stats:UIButton = UIButton(UI.findViewById("My_Stats"));
			My_Stats.addEventListener(UIButton.CLICKED, gotoMy_Stats);
			
			var Profile_Workouts:UIButton = UIButton(UI.findViewById("Profile_Workouts"));
			Profile_Workouts.addEventListener(UIButton.CLICKED, gotoProfile_Workouts);
			
			var Profile_Workouts_PushUps:UIButton = UIButton(UI.findViewById("Profile_Workouts_PushUps"));
			Profile_Workouts_PushUps.addEventListener(UIButton.CLICKED, gotoProfile_Workouts);
			
			var Push_Ups:UIButton = UIButton(UI.findViewById("Push_Ups"));
			Push_Ups.addEventListener(UIButton.CLICKED, gotoPush_Ups);
		}

		protected function gotoLogin(event:Event):void {
			_navigation.goToPage(1, UIPages.SLIDE_LEFT);
			_navigation.title = "Login Choice";
		}
		
		protected function gotoFB_Login(event:Event):void{
			_navigation.goToPage(2, UIPages.SLIDE_LEFT);
			_navigation.title = "Login Facebook";
		}
		
		protected function gotoRegister(event:Event):void{
			_navigation.goToPage(3, UIPages.SLIDE_LEFT);
			_navigation.title = "Login Register";
		}
		
		protected function gotoTutorial(event:Event):void{
			_navigation.goToPage(4, UIPages.SLIDE_LEFT);
			_navigation.title = "Tutorial";
		}
		
		protected function gotoQR_Reader(event:Event):void{
			_navigation.goToPage(5, UIPages.SLIDE_LEFT);
			_navigation.title = "QR Reader";
		}
		
		protected function gotoAR_Scan(event:Event):void{
			_navigation.goToPage(16, UIPages.SLIDE_LEFT);
			_navigation.title = "Augmented Reality";
		}
		
		protected function gotoSocial(event:Event):void{
			_navigation.goToPage(6, UIPages.SLIDE_LEFT);
			_navigation.title = "Social";
		}
		
		protected function gotoProfile(event:Event):void{
			_navigation.goToPage(10, UIPages.SLIDE_LEFT);
			_navigation.title = "Profile";
		}
		
		protected function gotoSearch(event:Event):void{
			_navigation.goToPage(13, UIPages.SLIDE_LEFT);
			_navigation.title = "Search";
		}
		
		protected function gotoCheck_In(event:Event):void{
			_navigation.goToPage(7, UIPages.SLIDE_LEFT);
			_navigation.title = "Check In";
		}
		
		protected function gotoCheck_Out(event:Event):void{
			_navigation.goToPage(8, UIPages.SLIDE_LEFT);
			_navigation.title = "Check Out";
		}
		
		protected function gotoPost_Workout(event:Event):void{
			_navigation.goToPage(9, UIPages.SLIDE_LEFT);
			_navigation.title = "Post Workout";
		}
		
		protected function gotoMy_Stats(event:Event):void{
			_navigation.goToPage(11, UIPages.SLIDE_LEFT);
			_navigation.title = "My Stats";
		}
		
		protected function gotoProfile_Workouts(event:Event):void{
			_navigation.goToPage(12, UIPages.SLIDE_LEFT);
			_navigation.title = "My Saved Workouts";
		}
		
		protected function gotoSearch_Exercises(event:Event):void{
			_navigation.goToPage(14, UIPages.SLIDE_LEFT);
			_navigation.title = "Exercise Search";
		}
		
		protected function gotoPush_Ups(event:Event):void{
			_navigation.goToPage(15, UIPages.SLIDE_LEFT);
			_navigation.title = "Exercise: Push Ups";
		}
	}
}