import java.util.Date;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.Shop.entity.Join;
import com.Shop.service.IJoinService;
public class TestJ {
//	private static IObjectService objectService;
	private static IJoinService joinService;
	public static void main(String[] args) {
		ClassPathXmlApplicationContext con = new ClassPathXmlApplicationContext("applicationContext.xml");
//		objectService = (IObjectService) con.getBean("objectService");
		joinService =  (IJoinService) con.getBean("joinServiceImpl");
/*		List<Join> join = joinService.getJoinService("from Join");
		for(Join j:join){
			System.out.println(j);
		}*/
		Join j=new Join();
		j.setJoinimage("pic_31.jpg");
		j.setJoincontent("打野");
		j.setJointime(new Date().toString());
		joinService.saveJoinService(j);
//		List<Object> object = objectService.getObject(jobs, sql);
//		for(Object o:object){
//			System.out.println(o);
//		}
	/*	jobs.setId(10);
		jobs.setJobsimage("尼玛币");
		if(objectService.updateObject(jobs)>0){
			System.out.println("修改成功");
		}*/
/*		jobs.setId(12);
		try {
			if(objectService.deleteObject(jobs)>0){
				System.out.println("删除成功");
			}
		} catch (Exception e) {
			System.out.println("删除失败");
		}*/
		con.close();
//		jobs.setId(15);
//		jobs.setDaptinfo("你打野");
//		if(objectService.saveObject(jobs)>0){
//			System.out.println("保存成功");
//		}else{
//			System.out.println("保存失败");
//		}
		
	}

	
}
