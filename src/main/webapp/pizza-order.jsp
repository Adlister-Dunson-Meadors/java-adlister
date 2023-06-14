<%--
  Created by IntelliJ IDEA.
  User: jakiradunson
  Date: 6/14/23
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Pizza Order Form</title>
</head>
<body>
<h1>Pizza Order Form</h1>
<form action="pizza-order" method="POST">
    <label for="crust">Crust:</label>
    <select id="crust" name="crust">
        <option value="thin">Thin Crust</option>
        <option value="pan">Pan Pizza</option>
        <option value="original">Original Crust</option>
        <option value="stuffCheesyCrust">Stuff Cheesy Crust</option>
    </select>
    <br>
    <label for="sauce">Sauce:</label>
    <select id="sauce" name="sauce">
        <option value="tomato">Tomato Sauce</option>
        <option value="bbq">BBQ Sauce</option>
        <option value="ranch">Ranch Sauce</option>
        <option value="spinachAlfredoSauce">Spinach Alfredo Sauce</option>
    </select>
    <br>
    <label for="size">Size:</label>
    <select id="size" name="size">
        <option value="small">Small</option>
        <option value="medium">Medium</option>
        <option value="large">Large</option>
        <option value="xlarge">Extra Large</option>
    </select>
    <br>
    <h4>Toppings:</h4>
    <input type="checkbox" id="pepperoni" name="toppings" value="pepperoni">
    <label for="pepperoni">Pepperoni</label>
    <br>
    <input type="checkbox" id="chicken" name="toppings" value="chicken">
    <label for="chicken">Chicken</label>
    <br>
    <input type="checkbox" id="sausage" name="toppings" value="sausage">
    <label for="sausage">Sausage</label>
    <br>
    <input type="checkbox" id="beef" name="toppings" value="beef">
    <label for="beef">Beef</label>
    <br>
    <input type="checkbox" id="onion" name="toppings" value="onion">
    <label for="onion">Onion</label>
    <br>
    <input type="checkbox" id="olives" name="toppings" value="olives">
    <label for="olives">Olives</label>
    <br>
    <input type="checkbox" id="pineapple" name="toppings" value="pineapple">
    <label for="pineapple">Pineapple</label>
    <br>
    <br>
    <label for="address">Delivery Address:</label>
    <input type="text" id="address" name="address">
    <br>
    <br>
    <input type="submit" value="Submit">
</form>
</body>
</html>

