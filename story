<!DOCTYPE html>
<html>
<head>
  <title>我们的故事</title>
  <style>
    body {
      background-image: url('C:/Users/Administrator/Desktop/821.jpg'); /* 替换为背景图片的路径 */
      background-size: cover;
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-position: center;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    #notebook {
      width: 50vw;
      height: 50vh;
      background-color: rgba(255, 255, 255, 0.5); /* 设置窗口背景颜色和透明度 */
      backdrop-filter: blur(10px); /* 设置模糊效果的强度 */
      border-radius: 10px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      padding: 20px;
      box-sizing: border-box;
      font-size: 24px;
      color: #000;
      white-space: pre-wrap; /* 设置文本换行规则 */
    }
  </style>
</head>
<body>
  <div id="notebook"></div>

  <script>
    var notebook = document.getElementById('notebook');
    var sentences = [
      "这是第一句话。",
      "这是第二句话。",
      "这是第三句话。",
      "这是第四句话。"
    ]; // 在这里替换为你想要显示的句子

    var index = 0;
    var delay = 3000; // 保留第一句文字的时间，单位为毫秒
    var typingSpeed = 100; // 打字机的速度，单位为毫秒

    function typeSentence() {
      if (index < sentences.length) {
        var sentence = sentences[index];
        var i = 0;
        var timer = setInterval(function() {
          if (i < sentence.length) {
            notebook.textContent += sentence.charAt(i);
            i++;
          } else {
            clearInterval(timer);
            setTimeout(function() {
              notebook.textContent = "";
              index++;
              typeSentence();
            }, delay);
          }
        }, typingSpeed);
      }
    }

    typeSentence();
  </script>
</body>
</html>
