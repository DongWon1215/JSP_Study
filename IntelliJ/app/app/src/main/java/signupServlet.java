import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "signup", value = "/signup")
public class signupServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 사용자 입력 값 한글처리
        request.setCharacterEncoding("utf-8");

        String getId = request.getParameter("id");
        String getPassword = request.getParameter("pw");
        String getName = request.getParameter("name");
        String getMemo = request.getParameter("memo");
        String getGender = request.getParameter("gender");
        String getYear = request.getParameter("year");
        //아래 방법으로 데이터를 가져오면 복수의 데이터를 선택해도 가장 앞의 데이터만 가져올 수 있다
        //String getLang = request.getParameter("lang");

        //선택한 복수의 데이터를 가져오는 방법
        String[] getLangs = request.getParameterValues("lang");
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("<head>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>");
        out.println(getId);
        out.println("</h1>");
        out.println("<h1>");
        out.println(getPassword);
        out.println("</h1>");
        out.println("<h1>");
        out.println(getName);
        out.println("</h1>");
        out.println("<h1>");
        out.println(getMemo);
        out.println("</h1>");
        out.println("<h1>");
        out.println(getGender);
        out.println("</h1>");
        out.println("<h1>");
        for(String lang : getLangs)
        {
            out.println(lang);
        }
        out.println("</h1>");
        out.println("<h1>");
        out.println(getYear);
        out.println("</h1>");
        out.println("</body>");
        out.println("</html>");

        System.out.println("ID : " + getId);
        System.out.println("Password : " + getPassword);
        System.out.println("Name : " + getName);
    }

    @Override
    public void destroy() {
        System.out.println("Process quit");
    }
}
