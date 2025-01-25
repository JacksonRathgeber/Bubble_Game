/// @description musicManager plays both the deep sea ambience as well as the music.



audio_play_sound(Deep_Water_Ambience,0,true);
//MUSIC IS CURRENTLY MUTED TO PREVENT HEADACHES
//audio_play_sound(Main_Music,0,true);


//List of all possible fish greetings
greetingList = [Greeting1, Greeting2, Greeting3, Greeting4, Greeting5, Greeting6];

//	WHEN A FISH SPAWNS {
//		audio_play_sound(greetingList[random_range(0,5)], 0, false);
//	}	