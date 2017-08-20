<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <title><?=$title?></title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="<?=ASSETPATH?>css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="<?=ASSETPATH?>css/font-awesome.min.css?v=4.3.0" rel="stylesheet">

    <link href="<?=ASSETPATH?>css/animate.min.css" rel="stylesheet">
    <link href="<?=ASSETPATH?>css/style.min.css?v=3.2.0" rel="stylesheet">
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name"><img src="<?=ASSETPATH?>images/logo.png" width="153"></h1>

            </div>
            <h3><br>欢迎使用会员系统管理后台</h3>

            <form class="m-t" role="form" method="post" action="">
                <div class="form-group">
                    <input type="username" name="username" class="form-control" placeholder="用户名" required="required">
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="密码">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">登 录</button>

                <p class="text-muted text-center"> <a href="#"><small>忘记密码了？</small></a>
                </p>

            </form>
        </div>
    </div>

    <!-- 全局js -->
    <script src="<?=ASSETPATH?>js/jquery-2.1.1.min.js"></script>
    <script src="<?=ASSETPATH?>js/bootstrap.min.js?v=3.4.0"></script>

   

</body>

</html>