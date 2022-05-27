import java.io.IOException;

@javax.servlet.annotation.WebServlet(name = "calculator",urlPatterns = "/index")
public class colcotular extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        double number1=Double.parseDouble(request.getParameter("number1"));
        double number2=Double.parseDouble(request.getParameter("number2"));
        String tinh=request.getParameter("tinh");
        double result;
        request.getParameter("number1");
        request.getParameter("number2");
        switch (tinh){
            case "cong":
                result=number1+number2;
                break;
            case "tru":
                result=number1-number2;
                break;
            case "chia":
                result=number1/number2;

                break;
            case "nhan":
                result=number1*number2;
                break;
            default:
                throw new IllegalStateException("Unexpected value: " + tinh);
        }
        request.setAttribute("number1" , number1);
        request.setAttribute("number1" , number2);
        request.setAttribute("operand" , tinh);
        request.setAttribute("result" , result);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
