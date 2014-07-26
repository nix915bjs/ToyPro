package spring.common.parse;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import spring.domain.guro.GuroRentalShop;


public class GuroRentalShopParsing
{
	private String url = "http://openapi.guro.go.kr:8088/6e474a756468726a31303372704d7044/xml/GurotoyLib/1/2";
	
	public List<GuroRentalShop> getRentalShopData()
	{
		List<GuroRentalShop> list = new ArrayList<GuroRentalShop>();
		
		try
		{
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			
			DocumentBuilder db = dbf.newDocumentBuilder();
			
			Document doc = db.parse(url);
			
			Node root = doc.getDocumentElement();
			
//			System.out.println("root : "+root.getNodeName());
//			System.out.println(root.getChildNodes().getLength());
			
			int rentalCode = 13;
			
			for(int i = 5 ; i < root.getChildNodes().getLength() ; i+=2)
			{
				Node item = root.getChildNodes().item(i);
				NodeList nodeList = item.getChildNodes();

				GuroRentalShop guroRentalShop = new GuroRentalShop();
				
				for(int j = 1 ; j < nodeList.getLength() ; j+=2)
				{
					// created¸¸ µû·Î DI
//					if(nodeList.item(j).getNodeName().equals("CREATED"))
//					{
//						toyParse.setCreated(nodeList.item(j).getTextContent());
//						continue;
//					}
					if(nodeList.item(j).getNodeName().equals("TOY_CNT"))
					{
						guroRentalShop.setToyCnt(nodeList.item(j).getTextContent());
					}
					else if(nodeList.item(j).getNodeName().equals("ADDR"))
					{
						guroRentalShop.setAddr(nodeList.item(j).getTextContent());
					}
					else if(nodeList.item(j).getNodeName().equals("TEL"))
					{
						guroRentalShop.setTel(nodeList.item(j).getTextContent());
					}
					else if(nodeList.item(j).getNodeName().equals("USE_HOURS"))
					{
						guroRentalShop.setUseHours(nodeList.item(j).getTextContent());
					}
					else if(nodeList.item(j).getNodeName().equals("CLOSE_DAY"))
					{
						guroRentalShop.setCloseDay(nodeList.item(j).getTextContent());
					}
					else if(nodeList.item(j).getNodeName().equals("BOOKRENTAL_TERM"))
					{
						guroRentalShop.setRentalTerm(nodeList.item(j).getTextContent());
					}
					else if(nodeList.item(j).getNodeName().equals("BOOKRENTAL_CNT"))
					{
						guroRentalShop.setRentalCnt(nodeList.item(j).getTextContent());
					}
					else if(nodeList.item(j).getNodeName().equals("BRCH_CODE"))
					{
						guroRentalShop.setRentalCode(rentalCode);
						rentalCode--;
					}
				}
//				System.out.println(locationParse);
				list.add(guroRentalShop);
			}
		}
		catch (Exception e)
		{
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
	}
}
