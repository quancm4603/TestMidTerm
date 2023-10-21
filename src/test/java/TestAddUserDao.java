import com.quancm.testmidterm.daos.UserDao;
import com.quancm.testmidterm.models.User;
import org.junit.jupiter.api.Test;

public class TestAddUserDao {
    private UserDao userDao = new UserDao();
    @Test
    public void testAddUser(){
        User user = new User();
        user.setEmail("a@gmail.com");
        user.setPassword("a");
        user.setName("Cao Van A");
        userDao.addUser(user);
    }
}
