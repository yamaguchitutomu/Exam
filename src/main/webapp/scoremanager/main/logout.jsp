<%@page contentType="text/html; charset=UTF-8" %>

<jsp:include page="/header.jsp" />


<main class="main">

  <h2>ログアウト</h2>


<!--  ログアウトメッセージ 分類: label 種別: p -->
  <label class="logout-label">
  <p class="logout-message">ログアウトしました</p>
  </label>
  

  <!-- ログイン画面へ戻るリンク 分類: link 種別: a -->
  <ul class="logout-menu">
    <li><a href="../login.jsp">ログイン</a></li>
  </ul>

</main>

<jsp:include page="/footer.html" />

<!-- css -->

<style>
  .main {
    padding: 20px;
  }

  h2 {
    color: #000001;
    margin-bottom: 20px;
    margin-left: 200px;
  }

  .logout-message {
    background-color: #d4edda;
    border: 1px solid #c3e6cb;
    padding: 12px 15px;
    width: 250px;
    margin-bottom: 20px;
    margin-left: 200px;
  }

  .logout-menu li {
    list-style: none;
    margin-top: 10px;
    margin-left: 200px;
  }

  .logout-menu a {
    color: #007bff;
    text-decoration: none;
    margin-left: 50px;
  }

  .logout-menu a:hover {
    text-decoration: underline;
  }
</style>
