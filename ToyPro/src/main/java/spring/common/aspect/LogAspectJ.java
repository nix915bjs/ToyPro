package spring.common.aspect;

import org.aspectj.lang.ProceedingJoinPoint;

public class LogAspectJ
{
	public LogAspectJ()
	{
		System.out.println("\nCommon :: "+this.getClass()+"\n");
	}
	
	public Object invoke(ProceedingJoinPoint joinPoint) throws Throwable
	{
		System.out.println("");
		System.out.println("[Around before] Target Object Method : "	+joinPoint.getTarget().getClass().getName()+"."
																													+joinPoint.getSignature().getName());
		
		if(joinPoint.getArgs().length != 0)
		{
			System.out.println("[Around before] method�� ���޵Ǵ� ���� : "+joinPoint.getArgs()[0]);
		}
		
		// Target Object�� Method�� ȣ���ϴ� �κ�
		Object obj = joinPoint.proceed();
		
		System.out.println("[Around after] Object Target return value : "+obj);
		System.out.println("");
		
		return obj;
	}
}
