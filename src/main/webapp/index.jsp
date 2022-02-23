<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="com.example.simplecalculator.CalculatorServlet"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Calculator</title>
    <style>
        body {
            background-color: #d8ddd5;
            background-image: url("https://img.wallpapersafari.com/desktop/1920/1080/36/22/fJpjQk.png");
            background-image-position: cover;
            background-repeat: no-repeat;
        }

        table {
            top: 400px;
            margin: auto;
            width: 295px;
            max-width: 295px;
            height: 345px;
            max-height: 345px;
            background-color: #136265;
            text-align: center;
            border-radius: 4px;
            padding-right: 10px;
        }

        input {
            outline: 0;
            position: relative;
            left: 5px;
            top: 5px;
            border: 0 solid #000;
            border-radius: 4px;
            color: #010101;
            background-color: #fff;
            width: 60px;
            height: 50px;
            float: left;
            font-size: 18px;
            box-shadow: 0 4px #b0d2cf;
            margin: 5px 5px 20px;
        }

        input:hover {
            font-size: 22px;
        }

        input:active {
            top: 3px;
            margin: 0 5px -5px;
            font-size: 20px;
            box-shadow: none;
        }

        #display {
            outline: 0;
            float: left;
            position: relative;
            width: 275px;
            height: 50px;
            margin: 15px 10px 10px;
            background-color: #f1f2ca;
            box-shadow: none;
            font-size: 26px;
            text-align: right;
        }

        #display:active {
            text-align: right;
            margin: 18px 10px 8px;
        }

        .operator {
            position: relative;
            background-color: #cee9ea;
            font-size: 28px;
            text-align: center;
        }

        .operator:hover {
            background-color: #79ebf3;
            font-size: 32px;
        }

        .operator:active {
            top: 3px;
            font-size: 28px;
            box-shadow: none;
        }

        #clear {
            float: left;
            position: relative;
            display: block;
            background-color: #ff9fa8;
        }

        #clear:hover {
            background-color: #f22328;
        }

        #clear:active {
            top: 4px;
            box-shadow: none;
        }
    </style>
    <script type="text/javascript" src="assets/js/Script.js"></script>
</head>
<body>
<form action="CalculatorServlet" method="post">
    <table name="calculator">
        <tr>
            <td colspan="4">
                <input type="text" id="display" value="${result}" readonly = "readonly"/>
            </td>
        </tr>
        <tr>
            <td><input type="button" onclick="updateDisplay('1')" name="1" value="1">
            <td><input type="button" onclick="updateDisplay('2')" name="2" value="2">
            <td><input type="button" onclick="updateDisplay('3')" name="3" value="3">
            <td><input type="button" class="operator" onclick="updateDisplay('+')" name="+" value="+">
        </tr>
        <tr>
            <td><input type="button" onclick="updateDisplay('4')" name="4" value="4">
            <td><input type="button" onclick="updateDisplay('5')" name="5" value="5">
            <td><input type="button" onclick="updateDisplay('6')" name="6" value="6">
            <td><input type="button" class="operator" onclick="updateDisplay('-')" name="-" value="-">
        </tr>
        <tr>
            <td><input type="button" onclick="updateDisplay('7')" name="7" value="7">
            <td><input type="button" onclick="updateDisplay('8')" name="8" value="8">
            <td><input type="button" onclick="updateDisplay('9')" name="9" value="9">
            <td><input type="button" onclick="updateDisplay('*')" class="operator" name="*" value="x">
        </tr>
        <tr>
            <td><input type="button" id="clear" onclick="clearScreen()" name="C" value="C">
            <td><input type="button" onclick="updateDisplay('0')" name="0" value="0">
            <td><input type="button" name="=" value="=">
            <td><input type="button" class="operator" onclick="updateDisplay('/')" name="/" value="/">
        </tr>
    </table>
</form>
</body>
</html>
