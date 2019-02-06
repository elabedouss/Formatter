package com.formatter.json;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * this class created to pretty JSON response
 * 
 * @author <a href="mailto:elabedouss@gmail.com">Oussama El Abed</a>
 *
 */

public class PrettyJson {

	/**
	 * Convert a JSON string to pretty print version
	 * 
	 * @param jsonString
	 * @return formatted string
	 * @author Oussama El Abed
	 */
	public static String toPrettyFormat(String jsonString) {
		JsonParser parser = new JsonParser();
		JsonObject json = parser.parse(jsonString).getAsJsonObject();

		Gson gson = new GsonBuilder().setPrettyPrinting().create();

		return gson.toJson(json);
	}
}
