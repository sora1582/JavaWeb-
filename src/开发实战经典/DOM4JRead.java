package 开发实战经典;
import java.io.File;
import java.util.Iterator;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

public class DOM4JRead {
	public static void main(String[] args) {
		File file = new File("d:" + File.separator + "output.xml");
		SAXReader reader = new SAXReader();
		Document doc = null;
		try {
			doc = reader.read(file);
		}catch(DocumentException e) {
			e.printStackTrace();
		}
		Element root = doc.getRootElement();
		Iterator iter = root.elementIterator();
		while(iter.hasNext()) {
			Element linkman = (Element)iter.next();
			System.out.println("姓名：" + linkman.elementText("name"));
			System.out.println("邮件：" + linkman.elementText("email"));
		}
	}
}
