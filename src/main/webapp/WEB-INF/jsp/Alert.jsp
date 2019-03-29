<!DOCTYPE HTML>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
    <link rel="stylesheet" href="BeAlert.css">
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="BeAlert.js"></script>
</head>
<body>
<div style="text-align: center">
    <h2><a href="javascript:;" id="alert">Alert</a></h2>
    <h2><a href="javascript:;" id="confirm">Confirm</a></h2>
</div>
<script type="text/javascript">
    $(function () {
        $("#alert").click(function () {
            alert("Hello world!", "welcome to my world :)", function () {
                //after click the confirm button, will run this callback function
            }, {type: 'success', confirmButtonText: 'OK'});
        });
        $("#confirm").click(function () {
            confirm("Are you sure?", "You will not be able to recover this imaginary file!", function (isConfirm) {
                if (isConfirm) {
                    //after click the confirm
                } else {
                    //after click the cancel
                }
            }, {confirmButtonText: 'Yes, delete it!', cancelButtonText: 'No, cancel plx!', width: 400});
        });
    });
</script>
</body>
</html>
