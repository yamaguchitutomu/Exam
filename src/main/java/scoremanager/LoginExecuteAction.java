package scoremanager;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import bean.Teacher;
import dao.TeacherDao;
import tool.Action;

public class LoginExecuteAction extends Action {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        // 1. パラメータの取得
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        // --- ここから例外処理を追加 ---
        try {
            // IDの未入力チェック
            if (id == null || id.isBlank()) {
                request.setAttribute("error", "⚠IDを入力してください。");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                return;
            }

            // パスワードの未入力チェック
            if (password == null || password.isBlank()) {
                request.setAttribute("error", "⚠パスワードを入力してください。");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                return;
            }

            // 2. 認証処理
            TeacherDao dao = new TeacherDao();
            Teacher teacher = dao.login(id, password);

            if (teacher == null) {
                request.setAttribute("error", "⚠ログインに失敗しました。IDまたはパスワードが違います");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                return;
            }

            // 3. セッション管理
            HttpSession session = request.getSession();
            session.setAttribute("user", teacher);
            session.setAttribute("loginUserName", teacher.getName());

            // 成功時はメニューへ
            request.getRequestDispatcher("/scoremanager/main/menu.jsp").forward(request, response);

        } catch (Exception e) {
            // --- システムエラー（DB接続失敗など）が発生した場合 ---
            e.printStackTrace(); // コンソールにエラー内容を出力
            // メッセージを渡さずに error.jsp へ飛ばす（これで「エラーが発生しました」画面になる）
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}