package 开发实战经典;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;


public class DOMWriter {
	public static void main(String [] args) {
		Document doc = DocumentHelper.createDocument();
		Element addresslist = doc.addElement("addresslist");
		Element linkman = addresslist.addElement("linkman");
		Element name = linkman.addElement("name");
		Element email = linkman.addElement("email");
		name.setText("lixinghua");
		email.setText("email");
		OutputFormat format = OutputFormat.createPrettyPrint();
		format.setEncoding("GBK");
		try {
			XMLWriter writer = new XMLWriter(new FileOutputStream(new File("d:" + File.separator + "output.xml")), format);
			writer.write(doc);
			writer.close();
		}catch(IOException e){
			e.printStackTrace();
		}
	}
	
}
