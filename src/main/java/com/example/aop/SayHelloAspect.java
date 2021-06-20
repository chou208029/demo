package com.example.aop;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class SayHelloAspect {

	@Pointcut("execution(* com.example.restservice.GreetingController.*(..))")
    public void pointcut() {
    }

	@Around("pointcut()")
	public Object aroundMethod(ProceedingJoinPoint pjd){
        System.out.println("=====before advice starts=====");
        System.out.println(getMethodName(pjd));
        Arrays.stream(pjd.getArgs()).forEach(System.out::println);
        System.out.println("=====before advice ends=====");
        try {
			return pjd.proceed();
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
        
    }

    private String getMethodName(JoinPoint joinPoint) {
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        return signature.getName();
    }
}
