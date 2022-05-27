import java.io.IOException;

@javax.servlet.annotation.WebServlet(name = "CustomerList", urlPatterns = "/list")

public class CustomerList extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("utf-8");
        ListCustomer[] list = new ListCustomer[5];
        list[0] = new ListCustomer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "https://media.istockphoto.com/photos/time-for-action-stopwatch-on-white-background-isolated-3d-imag-picture-id112793080?s=612x612");
        list[1] = new ListCustomer("Nguyễn Thái Nam", "1983-08-21", "Bắc giang","https://media.istockphoto.com/photos/cazo-village-ponga-natural-park-astuias-spain-picture-id1305551479?k=20&m=1305551479&s=612x612&w=0&h=2lSqNBqS1W0BWKtHLTu6EdAtsh0_pLP6Vo7B33MHEmI=");
        list[2] = new ListCustomer("Nguyễn Thái hòa", "1983-08-22", "123","https://media.istockphoto.com/photos/cazo-village-ponga-natural-park-astuias-spain-picture-id1305551479?k=20&m=1305551479&s=612x612&w=0&h=2lSqNBqS1W0BWKtHLTu6EdAtsh0_pLP6Vo7B33MHEmI=");
        list[3] = new ListCustomer("Trần Đăng Khoa", "1983-08-17", "123","https://media.istockphoto.com/photos/gavieiro-or-el-silencio-beach-cudillero-asturias-spain-picture-id1354066820?k=20&m=1354066820&s=612x612&w=0&h=i7GQh6xaJZCqlqjl7XTlnFYS9be4ksG7gmaMh4-9jfk=");
        list[4] = new ListCustomer("Nguyễn Đình Thi", "1983-08-19", "123","https://media.istockphoto.com/photos/valle-de-lago-village-somiedo-nature-park-and-biosphere-reserve-picture-id1355516961?k=20&m=1355516961&s=612x612&w=0&h=Ni5pI6Wx4bDlI01mCm0fzWNsduw2xiixLjdVa-LqWCM=");
        request.setAttribute("listCustomer", list);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request, response);
    }
}
