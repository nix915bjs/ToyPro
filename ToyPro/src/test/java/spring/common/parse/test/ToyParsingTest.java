//package spring.common.parse.test;
//
//import java.util.HashMap;
//import java.util.Map;
//
//import junit.framework.Assert;
//
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import spring.service.toyproduct.ToyProductService;
//
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"classpath:config/context-common.xml",
//																"classpath:config/context-aspect.xml",
//																"classpath:config/context-mybatis.xml",
//																"classpath:config/context-transaction.xml"})
//
//public class ToyParsingTest
//{
//	@Autowired
//	@Qualifier("toyProductServiceImpl")
//	private ToyProductService toyProductService;
//	
//	//@Test
//	public void addPurchase() throws Exception
//	{
//		Purchase purchase = new Purchase();
//		purchase.setPurchaseProd(new Product());
//		purchase.setBuyer(new User());
//		purchase.getPurchaseProd().setProdNo(10100);
//		purchase.getBuyer().setUserId("user02");
//		
//		Assert.assertEquals(1, purchaseService.addPurchase(purchase));
//	}
//	
//	//@Test
//	public void getPurchase() throws Exception
//	{
//		Purchase purchase = new Purchase();
//		purchase.setTranNo(10025);
//		
//		Assert.assertNotNull(purchaseService.getPurchase(purchase.getTranNo()));
//	}
//	
//	//@Test
//	public void getPurchase2() throws Exception
//	{
//		Purchase purchase = new Purchase();
//		purchase.setPurchaseProd(new Product());
//		purchase.getPurchaseProd().setProdNo(10001);
//
//		Assert.assertEquals(10025, purchaseService.getPurchase2(purchase.getPurchaseProd().getProdNo()));
//	}
//	
//	//@Test
//	public void getPurchaseList() throws Exception
//	{
//		Purchase purchase = new Purchase();
//		purchase.setBuyer(new User());
//		purchase.getBuyer().setUserId("user01");
//
//		Search search = new Search();
//		search.setCurrentPage(1);
//		search.setPageSize(3);
//		
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("buyerId", purchase.getBuyer().getUserId());
//		map.put("search", search);
//		
////		List<Purchase> list = purchaseService.getPurchaseList(map);
////		for(Purchase purchaseList : list)
////			System.out.println(purchaseList);
//		
//		Assert.assertNotNull(purchaseService.getPurchaseList(map));
//	}
//	
//	//@Test
//	public void updatePurchase() throws Exception
//	{
//		Purchase purchase = new Purchase();
//		purchase.setTranNo(10060);
//		purchase.setDivyAddr("Purchase 끝나간다.");
//		
//		Assert.assertEquals(1, purchaseService.updatePurcahse(purchase));
//	}
//	
//	@Test
//	public void updateTranCode() throws Exception
//	{
//		Purchase purchase = new Purchase();
//		purchase.setTranNo(10060);
//		purchase.setTranCode("1");
//		
//		purchaseService.updateTranCode(purchase);
//		
//		Assert.assertEquals("1", (purchaseService.getPurchase(purchase.getTranNo())).getTranCode().trim());
//	}
//	
//	//@Test
////		public void getTotalCount() throws Exception
////		{
////			
////		}
//	// getTotalCount
//}
