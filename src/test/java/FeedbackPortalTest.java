import org.junit.Test;
import java.io.File;
import static org.junit.Assert.*;

public class FeedbackPortalTest {

    @Test
    public void testFeedbackPageExists() {
        File file = new File("src/main/webapp/index.jsp");
        assertTrue(file.exists());
    }

    @Test
    public void testHealthPageExists() {
        File file = new File("src/main/webapp/health.jsp");
        assertTrue(file.exists());
    }
}
