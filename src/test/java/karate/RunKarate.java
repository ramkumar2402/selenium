package karate;


import com.intuit.karate.junit5.Karate;


public class RunKarate {
	
	
	@Karate.Test
	public Karate getTest() {
		return Karate.run("classpat:karate").relativeTo(getClass());
	}

}
