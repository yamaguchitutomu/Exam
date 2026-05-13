package scoremanager;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import tool.Action;

public class LogoutAction extends Action {

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
    	// セッションを取得  存在すれば無効化する
        HttpSession session = req.getSession(false);
        if (session != null) {
            session.invalidate();
        }

     // ログアウト完了画面へ遷移
        req.getRequestDispatcher("/scoremanager/main/logout.jsp").forward(req, resp);
    }
}
