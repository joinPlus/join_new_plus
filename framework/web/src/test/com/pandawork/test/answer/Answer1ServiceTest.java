package answer;

import com.pandawork.common.entity.answer.Answer1;
import com.pandawork.common.entity.project.Project;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.service.answer.Answer1Service;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * @author : kongyy
 * @time : 2018/8/2 20:00
 */
public class Answer1ServiceTest extends com.pandawork.test.AbstractTestCase {

    @Autowired
    Answer1Service answer1Service;

    //测试查询person信息列表
    @Test
    public void testListAllAnswer1() throws SSException{
        System.out.print(answer1Service.listAllAnswer1());
    }

    //测试增加person信息
    @Test
    public void testAddAnswer1() throws SSException{
        Answer1 answer1 = new Answer1();
        answer1.setId(6);
        answer1.setInquiry_answer1("xiaocao");
        answer1Service.addAnswer1(answer1);
        System.out.println("添加成功");
    }

    //测试删除person信息
    @Test
    public void testDelAnswer1() throws SSException{
        Answer1 answer1 = new Answer1();
        answer1.setId(6);
        answer1Service.delAnswer1(answer1.getId());
        System.out.println("删除成功");
    }

    //测试修改person信息
    @Test
    public void testUpdateAnswer1() throws SSException{
        Answer1 answer1 = new Answer1();
        answer1.setId(4);
        answer1 .setInquiry_answer1("2019");
        answer1Service.updateAnswer1(answer1);
        System.out.println(answer1Service.selectById(4));
        System.out.println("修改成功");
    }

    //测试根据id查询
    @Test
    public void testSelectById() throws SSException{
        Answer1 answer1 = new Answer1();
        answer1.setId(1);
        System.out.println(answer1Service.selectById(1));
    }

    //测试模糊查询
    @Test
    public void testSelect() throws SSException{
        System.out.println(answer1Service.select("签约"));
    }

}
