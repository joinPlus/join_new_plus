package answer;

import com.pandawork.common.entity.answer.Answer1;
import com.pandawork.common.entity.answer.Answer2;
import com.pandawork.common.entity.project.Project;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.service.answer.Answer1Service;
import com.pandawork.service.answer.Answer2Service;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
/**
 * @author : kongyy
 * @time : 2018/8/2 21:11
 */
public class Answer2ServiceTest extends com.pandawork.test.AbstractTestCase {
    @Autowired
    Answer2Service answer2Service;

    //测试查询person信息列表
    @Test
    public void testListAllAnswer2() throws SSException{
        System.out.print(answer2Service.listAllAnswer2());
    }

    //测试增加person信息
    @Test
    public void testAddAnswer2() throws SSException{
        Answer2 answer2 = new Answer2();
        answer2.setId(7);
        answer2.setInquiry_answer2("xiaocao");
        answer2Service.addAnswer2(answer2);
        System.out.println("添加成功");
    }

    //测试删除person信息
    @Test
    public void testDelAnswer2() throws SSException{
        Answer2 answer2 = new Answer2();
        answer2.setId(6);
        answer2Service.delAnswer2(answer2.getId());
        System.out.println("删除成功");
    }

    //测试修改person信息
    @Test
    public void testUpdateAnswer2() throws SSException{
        Answer2 answer2 = new Answer2();
        answer2.setId(3);
        answer2 .setInquiry_answer2("2019");
        answer2Service.updateAnswer2(answer2);
        System.out.println(answer2Service.selectById(3));
        System.out.println("修改成功");
    }

    //测试根据id查询
    @Test
    public void testSelectById() throws SSException{
        Answer2 answer2= new Answer2();
        answer2.setId(1);
        System.out.println(answer2Service.selectById(1));
    }

    //测试模糊查询
    @Test
    public void testSelect() throws SSException{
        System.out.println(answer2Service.select("签约"));
    }


}
