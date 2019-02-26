package com.formatter.xml;

import java.io.StringReader;

import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.w3c.dom.Node;
import org.w3c.dom.bootstrap.DOMImplementationRegistry;
import org.w3c.dom.ls.DOMImplementationLS;
import org.w3c.dom.ls.LSSerializer;
import org.xml.sax.InputSource;

/**
 * <h3>his class created to pretty XML response.</h3>
 * 
 * @author <a href="mailto:elabedouss@gmail.com">Oussama El Abed</a>
 *
 */

public class PrettyXml {

	static final Logger LOGGER = LogManager.getLogger(PrettyXml.class);

	private PrettyXml() {
	}

	/**
	 * Convert a XML string to pretty print version
	 * 
	 * @param xml
	 *            String
	 * @return formatted string
	 * @author Oussama El Abed
	 */
	public static String toPrettyFormat(String xml) {

		LOGGER.info("Parsing the xml. Content: " + xml);
		try {
			final InputSource src = new InputSource(new StringReader(xml));
			final Node document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(src)
					.getDocumentElement();
			final Boolean keepDeclaration = Boolean.valueOf(xml.startsWith("<?xml"));
			final DOMImplementationRegistry registry = DOMImplementationRegistry.newInstance();
			final DOMImplementationLS impl = (DOMImplementationLS) registry.getDOMImplementation("LS");
			final LSSerializer writer = impl.createLSSerializer();

			writer.getDomConfig().setParameter("format-pretty-print", Boolean.TRUE);
			writer.getDomConfig().setParameter("xml-declaration", keepDeclaration);

			return writer.writeToString(document);
		} catch (Exception e) {
			LOGGER.error("Unable to parse XML:" + xml, e);
			throw new IllegalArgumentException("Unable to parse XML", e);
		}

	}
}
