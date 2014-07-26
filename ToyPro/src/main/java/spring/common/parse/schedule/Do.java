package spring.common.parse.schedule;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;



public class Do extends QuartzJobBean {
	private AutoParsing AutoParsing;
	
	
	public void setAutoParsing(AutoParsing AutoParsing){
		this.AutoParsing=AutoParsing;
	}
	
	
	@Override
	protected void executeInternal(JobExecutionContext arg0)
			throws JobExecutionException {
		// TODO Auto-generated method stub
		
		try {
			AutoParsing.deleteList();
			AutoParsing.guroRentalShopParsing();
			AutoParsing.parsingDataUpdate();
			System.out.println("�Ľ� �Ϸ�");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("�̹� �Ľ̵Ǿ����ϴ�");
		}
		
	}
	
}
