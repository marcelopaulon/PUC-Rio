import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TextUtils {

	private static Pattern p = Pattern.compile("[\\w]+");
	
	public static String[] splitWords(String review) {
		Matcher matcher = p.matcher(review);
		List<String> result = new ArrayList<String>();
		
		while ( matcher.find() ) {
		    result.add(review.substring(matcher.start(), matcher.end()).trim().toLowerCase());
		}
		
		return result.toArray(new String[0]);
	}
}
