package 开发实战经典;
import java.io.File;
import javax.xml.parsers.*;
import javax.xml.transform.*;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.*;

public class DOMDemo03 {
	public static void main(String[] args) {
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		DocumentBuilder builder = null;
		try {
			builder = factory.newDocumentBuilder();
		}catch(ParserConfigurationException e){
			e.printStackTrace();
		}
		
		Document doc = null;
		doc = builder.newDocument();
		
		Element addresslist = doc.createElement("addresslist");
		Element linkman = doc.createElement("linkman");
		Element name = doc.createElement("name");
		Element email = doc.createElement("email");
		
		name.appendChild(doc.createTextNode("李兴华"));
		email.appendChild(doc.createTextNode("mid@163.com"));
		
		linkman.appendChild(name);
		linkman.appendChild(email);
		addresslist.appendChild(linkman);
		doc.appendChild(addresslist);
		
		TransformerFactory tf = TransformerFactory.newInstance();
		Transformer t = null;
		try {
			t = tf.newTransformer();
		}catch(TransformerConfigurationException e1) {
			e1.printStackTrace();
		}
		
		t.setOutputProperty(OutputKeys.ENCODING, "GBk");
		DOMSource source = new DOMSource(doc);
		StreamResult result = new StreamResult(new File("c:" + File.separator + "output.xml"));
		try {
			t.transform(source, result);
			
		}catch(TransformerException e) {
			e.printStackTrace();
		}
	}
}
