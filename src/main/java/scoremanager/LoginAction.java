package scoremanager;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import tool.Action;

public class LoginAction extends Action {
    @Override
    public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        
        //ログイン画面を表示する
        req.getRequestDispatcher("/scoremanager/main/login.jsp").forward(req, resp);
    }
}