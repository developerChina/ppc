package org.core.util;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
/**
 * Created on 17/6/7.
 * 短信API产品的DEMO程序,工程中包含了一个SmsDemo类，直接通过
 * 执行main函数即可体验短信产品API功能(只需要将AK替换成开通了云通信-短信产品功能的AK即可)
 * 工程依赖了2个jar包(存放在工程的libs目录下)
 * 1:aliyun-java-sdk-core.jar
 * 2:aliyun-java-sdk-dysmsapi.jar
 *
 * 备注:Demo工程编码采用UTF-8
 * 国际短信发送请勿参照此DEMO
 */
public class SendSmsUtil {
	//产品名称:云通信短信API产品,开发者无需替换
    static final String product = "Dysmsapi";
    //产品域名,开发者无需替换
    static final String domain = "dysmsapi.aliyuncs.com";

    
    public static SendSmsResponse sendSms(String visitedName,String visitorName,String visitorDate,String recordid,String phoneNumbers) throws ClientException {
    	 String accessKeyId = "LTAILulq86lFDuW3";//yourAccessKeyId
 	     String accessKeySecret = "lJa085SgzDXFRZqf3XJymmN2LGYt2v";//yourAccessKeySecret 
  	     String SignName="E访通";
 	     String TemplateCode="SMS_114395185";
 	     String OutId="yourOutId";
  	     String TemplateParam="{\"visitedName\":\""+visitedName+" \", \"visitorName\":\""+visitorName+"\",\"visitorDate\":\""+visitorDate+"\",\"recordid\":\""+recordid+"\"}";
 	     System.out.println(TemplateParam);
 	    return  sendSms(accessKeyId,accessKeySecret,phoneNumbers,SignName,TemplateCode,TemplateParam, OutId);
    }
    
    public static SendSmsResponse sendSms(String accessKeyId,String accessKeySecret
    		,String PhoneNumbers,String SignName,String TemplateCode,String TemplateParam,String OutId
    		) throws ClientException {
        //可自助调整超时时间
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");

        //初始化acsClient,暂不支持region化
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId, accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);

        //组装请求对象-具体描述见控制台-文档部分内容
        SendSmsRequest request = new SendSmsRequest();
        //必填:待发送手机号
        request.setPhoneNumbers(PhoneNumbers);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName(SignName);
        //必填:短信模板-可在短信控制台中找到
        request.setTemplateCode(TemplateCode);
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        //${visitedName},您好：${visitorName}在${visitorDate}将要拜访您，谢谢！
        request.setTemplateParam(TemplateParam);

        //选填-上行短信扩展码(无特殊需求用户请忽略此字段)
        //request.setSmsUpExtendCode("90997");

        //可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
        request.setOutId(OutId);

        //hint 此处可能会抛出异常，注意catch
        SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);

        return sendSmsResponse;
    }
       
	public static void main(String[] args) throws ClientException, InterruptedException{
		 //此处需要替换成开发者自己的AK(在阿里云访问控制台寻找)
//	    String accessKeyId = "LTAILulq86lFDuW3";//yourAccessKeyId
//	    String accessKeySecret = "lJa085SgzDXFRZqf3XJymmN2LGYt2v";//yourAccessKeySecret 
//	    String PhoneNumbers="13723382349";
//	    String SignName="E访通";
//	    String TemplateCode="SMS_104740018";
//	    String TemplateParam="{\"visitedName\":\"边俊明 \", \"visitorName\":\"李江\",\"visitorDate\":\"20170-10-17\"}";
//	    String OutId="yourOutId";
//		//发短信
//        SendSmsResponse response = sendSms(accessKeyId,accessKeySecret,PhoneNumbers,SignName,TemplateCode,TemplateParam,OutId);
//        System.out.println("短信接口返回的数据----------------");
//        System.out.println("Code=" + response.getCode());
//        System.out.println("Message=" + response.getMessage());
//        System.out.println("RequestId=" + response.getRequestId());
//        System.out.println("BizId=" + response.getBizId());
		//String visitedName,String visitorName,String visitorDate,String recordid,String phoneNumbers
		SendSmsResponse response = sendSms("边俊明","孙俊虎","2017-10-17","33333333","18510515186");
      System.out.println("短信接口返回的数据----------------");
      System.out.println("Code=" + response.getCode());
      System.out.println("Message=" + response.getMessage());
      System.out.println("RequestId=" + response.getRequestId());
      System.out.println("BizId=" + response.getBizId());
        Thread.sleep(3000L);

	}

}
