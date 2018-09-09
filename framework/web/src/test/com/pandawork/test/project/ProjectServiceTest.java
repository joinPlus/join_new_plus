package project;

import com.pandawork.common.entity.project.Project;
import com.pandawork.core.common.exception.SSException;
import com.pandawork.service.project.ProjectService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author : kongyy
 * @time : 2018/8/2 15:50
 */
public class ProjectServiceTest extends com.pandawork.test.AbstractTestCase {

    @Autowired
    ProjectService projectService;

    //测试查询person信息列表
    @Test
    public void testListAllProject() throws SSException{
        System.out.print(projectService.listAllProject());
    }

    //测试增加person信息
    @Test
    public void testAddProject() throws SSException{
        Project project = new Project();
        project.setId(6);
        project.setProject_name("xiaocao");
        project.setProject_content("aha");
        project.setProject_date("2017");
        project.setProject_finish("2018");
        projectService.addProject(project);
        System.out.println("添加成功");
    }

    //测试删除person信息
    @Test
    public void testDelProject() throws SSException{
        Project project = new Project();
        project.setId(6);
        projectService.delProject(project.getId());
        System.out.println("删除成功");
    }

    //测试修改person信息
    @Test
    public void testUpdate() throws SSException{
        Project project = new Project();
        project.setId(7);
        project.setProject_finish("11111111");
        project.setProject_name("php22222");
        project.setProject_date("2015");
        project.setProject_content("2019");
        projectService.updateProject(project);
        System.out.println(projectService.selectById(1));
        System.out.println("修改成功");
    }

    //测试根据id查询
    @Test
    public void testSelectById() throws SSException{
        Project project = new Project();
        project.setId(1);
        System.out.println(projectService.selectById(1));
    }

    //测试模糊查询
    @Test
    public void testSelect() throws SSException{
        System.out.println(projectService.select("签约"));
    }

}

