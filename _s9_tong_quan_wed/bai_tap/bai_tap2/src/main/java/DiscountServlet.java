import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet ",value = "/total")
public class DiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        String describe = request.getParameter("describe");
        int vnd =Integer.parseInt(request.getParameter("vnd"));
        double percent =Double.parseDouble(request.getParameter("percent"));
        double discountAmount = vnd * percent * 0.01;
        PrintWriter writer = response.getWriter();
        writer.println("Describe: " + describe);
        writer.println("VND: " + vnd );
        writer.println("Percent: " + percent );
        writer.println("DiscountAmount: " + discountAmount);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
