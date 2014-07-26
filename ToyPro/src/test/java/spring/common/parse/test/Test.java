//package spring.common.parse.test;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//
//import spring.common.parse.GuroToyParsing;
//import spring.domain.GuroToy;
//import spring.service.toyproduct.ToyProductService;
//import spring.service.toyproduct.impl.ToyProductServiceImpl;
//
//public class Test
//{
//	public static void main(String[] args)
//	{
//		List<GuroToy> list = new GuroToyParsing().getToyData();
//		System.out.println("list.size() : "+list.size());
//		System.out.println(list);
//		
//		ApplicationContext context =
//				new ClassPathXmlApplicationContext(
//																	new String[] {	/*"classpath:config/commonservice.xml",*/
//																							"classpath:config/context-aspect.xml",
//																							"classpath:config/context-common.xml",
//																							"classpath:config/context-mybatis.xml",
//																							"classpath:config/context-transaction.xml"}
//									                                                    );
//		
//		
//		ToyProductService toyProductService = new ToyProductServiceImpl();
//		
//		try
//		{
//			int insertRow = toyProductService.parsingDataUpdate(list);
//			
//			System.out.println(insertRow+"건의 데이터 추가 성공");
//		}
//		catch (Exception e)
//		{
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
////		
////		for(ToyParse tp : list)
////		{
////			System.out.println(tp);
////		}
//		
////		System.out.println(new LocationParsing().getLocationData());
////		try
////		{
////			Class c = Class.forName("spring.common.parse.ToyParsing");
////			Method m[] = c.getDeclaredMethods();
////			System.out.println("Test에서의 m : "+m[5]
////			c.getMethod(m[18], "aa");
////		}
////		catch (ClassNotFoundException e)
////		{
////			// TODO Auto-generated catch block
////			e.printStackTrace();
////		}
//	}
//}
