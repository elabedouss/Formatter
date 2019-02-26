package com.formatter.json;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;

/**
 * <h3>this class created to pretty JSON response</h3>
 * 
 * @author <a href="mailto:elabedouss@gmail.com">Oussama El Abed</a>
 *
 */

public class PrettyJson {
	
	static final Logger LOGGER = LogManager.getLogger(PrettyJson.class);
	
	private PrettyJson() {
	}

	/**
	 * Convert a JSON string to pretty print version
	 * 
	 * @param jsonString
	 * @return formatted string
	 * @author Oussama El Abed
	 */
	public static String toPrettyFormat(String jsonString) {
		
		LOGGER.info("Convert the json. Content: " + jsonString);
		
		try {
			JsonParser parser = new JsonParser();
			JsonObject json = parser.parse(jsonString).getAsJsonObject();
			
			Gson gson = new GsonBuilder().setPrettyPrinting().create();
			
			return gson.toJson(json);
			
		} catch (JsonParseException e) {
			LOGGER.error("Unable to convert JSON:" + jsonString, e);
			throw new IllegalArgumentException("Unable to convert JSON", e);
		}

	}
}
