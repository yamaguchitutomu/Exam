<%@page contentType="text/html; charset=UTF-8" %>
<jsp:include page="../header.html" />
<%@include file="main/menu.jsp" %>

<!--  画面設計書寄りのcss ※完全一致ではない  -->
<style>

  .login-box {
    width: 320px;
    margin: 30px auto;
    padding: 20px;
    border: 2px solid #333;
    border-radius: 8px;
    background: #f9f9f9;
  }

  .login-box h2 {
    text-align: center;
    margin-bottom: 20px;
  }

  .form-row {
    display: flex;
    align-items: center;
    margin-bottom: 12px;
  }

  .form-row label {
    width: 100px;
    font-weight: bold;
  }

  .form-row input[type="text"],
  .form-row input[type="password"] {
    flex: 1;
    padding: 6px;
  }

  .login-box .submit-area {
    text-align: center;
    margin-top: 15px;
  }
  
</style>


<div class="login-box">
  <h2>ログイン</h2>

  <form action="Login.action" method="post">
	<!-- ※画面設計書ではID、パスワードという文字が入力欄の内側 -->
  <div class="form-row">
  <label for="loginId" class="form-label">ID：</label>
  <input
    type="text"
    id="loginId"
    name="id"
    value="${id}"
    maxlength="10"
    placeholder="半角でご入力ください"
    inputmode="latin"
    required
  >
</div>

<div class="form-row">
  <label for="password" class="form-label">パスワード：</label>
  <input
    type="password"
    id="password"
    name="password"
    maxlength="30"
    placeholder="30文字以内の半角英数字でご入力ください"
    inputmode="latin"
    required
  >
</div>
  
   

    <div class="form-row">
      <label></label>
      <input type="checkbox"  name="chk_d_ps" id="showPassword"> パスワードを表示
    </div>

    <div class="submit-area">
      <input type="button"  name="login" value="ログイン">
    </div>

  </form>
</div>

<!-- チェックボックスにチェックを入れた場合、
	　パスワードを表示する (Javascript)-->
<script>
  const pw = document.getElementById("password");
  const cb = document.getElementById("showPassword");

  cb.addEventListener("change", () => {
    pw.type = cb.checked ? "text" : "password";
  });
</script>

<jsp:include page="../footer.html" />