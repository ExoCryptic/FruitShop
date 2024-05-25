<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/includes/header.jsp" %>

<p><i><c:out value='${requestScope.message}'/></i></p>

<p><b>- List of users:</b></p>

<table>
    <tr>
        <th>User name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Phone number</th>
        <th>Password</th>
    </tr>
    <c:forEach var="user" items="${requestScope.users}">
        <tr>
            <td><c:out value='${user.userName}'/></td>
            <td><c:out value='${user.email}'/></td>
            <td><c:out value='${user.addr}'/></td>
            <td><c:out value='${user.phoneNo}'/></td>
            <td><c:out value='${user.password}'/></td>
        </tr>
    </c:forEach>
    <tr></tr>
</table>

<p><b>- List of products:</b></p>

<table>
    <tr>
        <th>Product Code</th>
        <th>fruit's name</th>
        <th>Price</th>
        <th>Discount</th>
    </tr>
    <c:forEach var="product" items="${requestScope.products}">
        <tr>
            <td><c:out value='${product.productCode}'/></td>
            <td><c:out value='${product.getInfor().fruitName}'/></td>
            <td><c:out value='${product.price}'/></td>
            <td><c:out value='${product.discount}'/></td>
        </tr>
    </c:forEach>
    <tr></tr>
</table>

<p><b>- List of line items:</b></p>

<table>
    <tr>
        <th>Quantity</th>
        <th>Product Code</th>
    </tr>
    <c:forEach var="lineItem" items="${requestScope.lineItems}">
        <tr>
            <td><c:out value='${lineItem.quantity}'/></td>
            <td><c:out value='${lineItem.getProduct().productCode}'/></td>
        </tr>
    </c:forEach>
    <tr></tr>
</table>

<p><b>- List of carts:</b></p>

<table>
    <tr>
        <th>User name</th>
        <th>Number of products</th>
        <th>Active</th>
    </tr>
    <c:forEach var="cart" items="${requestScope.carts}">
        <tr>
            <td><c:out value='${cart.getUser().userName}'/></td>
            <td><c:out value='${cart.getItems().size()}'/></td>
            <td><c:out value='${cart.isActive()}'/></td>
        </tr>
    </c:forEach>
    <tr></tr>
</table>

<p><b>- List of invoices:</b></p>

<table>
    <tr>
        <th>Date created</th>
        <th>Total price</th>
    </tr>
    <c:forEach var="invoice" items="${requestScope.invoices}">
        <tr>
            <td><c:out value='${invoice.invoiceDate}'/></td>
            <td><c:out value='${invoice.getCart().getTotalCurrencyFormat()}'/></td>
        </tr>
    </c:forEach>
    <tr></tr>
</table>

<p><b>- List of products:</b></p>

<table>
    <tr>
        <th>Fruit name</th>
        <th>Origin</th>
        <th>Provider</th>
        <th>Detail</th>
        <th>Type</th>
        <th>Release Date</th>
    </tr>
    <c:forEach var="description" items="${requestScope.descriptions}">
        <tr>
            <td><c:out value='${description.fruitName}'/></td>
            <td><c:out value='${description.origin}'/></td>
            <td><c:out value='${description.provider}'/></td>
            <td><c:out value='${description.detail}'/></td>
            <td><c:out value='${description.type}'/></td>
            <td><c:out value='${description.releaseDate}'/></td>
        </tr>
    </c:forEach>
    <tr></tr>
</table>

<form action="bs" method="post">
    <input type="hidden" name="action" value="update">
    <p><b>- Update an user:</b></p>
    
    <label>His/Her email:</label>
    <input type="email" name="email"><br>
    
    <label>His/Her new information (leave blank for not changing):</label><br>
    <label>New user name:</label>
    <input type="text" name="userName"><br>
                
    <label>New address:</label>
    <input type="text" name="addr"><br>
    
    <label>New phone number:</label>
    <input type="text" name="phoneNo"><br>
    
    <label>New password:</label>
    <input type="text" name="password"><br>
    
    <label>&nbsp;</label>    
    <input type="submit" value="Confirm update" class="margin_left">
</form>

<form action="bs" method="post">
    <input type="hidden" name="action" value="updateProduct">
    <p><b>- Update a product:</b></p>
    
    <label>Product code:</label>
    <input type="text" name="productCode"><br>
    
    <label>Its new information (leave blank for not changing):</label><br>
    <label>New Price:</label>
    <input type="text" name="price"><br>
    
    <label>New Discount:</label>
    <input type="text" name="discount"><br>
    
    <label>&nbsp;</label>    
    <input type="submit" value="Confirm update" class="margin_left">
</form>

<form action="bs" method="post">   
    <p><b>- Update description:</b></p>
    <input type="hidden" name="action" value="updateDescription">
    
    <label>Fruit name:</label>
    <input type="text" name="fruitName"><br>
    
    <label>Its new information (leave blank for not changing):</label><br>
    <label>New Origin:</label>
    <input type="text" name="origin"><br>
    
    <label>New Provider:</label>
    <input type="text" name="provider"><br>
    
    <label>New Detail:</label>
    <input type="text" name="detail"><br>
    
    <label>&nbsp;</label>    
    <input type="submit" value="Confirm update" class="margin_left">
</form>

<form action="bs" method="post">
    <input type="hidden" name="action" value="delete">
    <p><b>- Delete an user:</b></p>
    
    <label>His/Her email:</label>
    <input type="email" name="email"><br>
   
    <label>&nbsp;</label>    
    <input type="submit" value="Confirm delete" class="margin_left">
</form>

<form action="bs" method="post">    
    <input type="hidden" name="action" value="deleteProduct">
    <p><b>- Delete a fruit:</b></p>
    
    <label>Product code:</label>
    <input type="text" name="productCode"><br>
    
    <label>&nbsp;</label>    
    <input type="submit" value="Confirm delete" class="margin_left">
</form>

<form action="bs" method="post">       
    <p><b>- Delete a fruit:</b></p>
    
    <label>Fruit name:</label>
    <input type="text" name="fruitName"><br>
    
    <label>&nbsp;</label>    
    <input type="submit" value="Confirm delete" class="margin_left">
</form>

<form action="bs" method="post">
    <input type="hidden" name="action" value="insert">
    <p><b>- Insert a new user:</b></p>
    
    <label>User name:</label>
    <input type="text" name="userName"><br>
    
    <label>Email:</label>
    <input type="email" name="email"><br>
    
    <label>Address:</label>
    <input type="text" name="addr"><br>
                
    <label>Phone number:</label>
    <input type="text" name="phoneNo"><br>
    
    <label>&nbsp;</label>    
    <input type="submit" value="Confirm insert" class="margin_left">
</form>

<form action="bs" method="post">
    <input type="hidden" name="action" value="insertProduct">
    <p><b>- Insert a new fruit:</b></p>
    
    <label>Fruit code:</label>
    <input type="text" name="productCode"><br>
    
    <label>Fruit name:</label>
    <input type="text" name="fruitName"><br>
    
    <label>Price:</label>
    <input type="text" name="price"><br>
    
    <label>&nbsp;</label>    
    <input type="submit" value="Confirm insert" class="margin_left">
</form>

<form action="bs" method="post">
	<input type="hidden" name="action" value="insertDescription">
    <p><b>- Insert new fruit's description:</b></p>
    
    <label>Fruit Name:</label>
    <input type="text" name="Fruit Name"><br>
    
    <label>Origin:</label>
    <input type="text" name="origin"><br>
    
    <label>Provider:</label>
    <input type="text" name="Provider"><br>
    
    <label>Detail:</label>
    <input type="text" name="detail"><br>
    
    <label>Type:</label>
    <input type="text" name="type"><br>
    
    <label>&nbsp;</label>    
    <input type="submit" value="Confirm insert" class="margin_left">
</form>

<%@ include file="/includes/footer.jsp" %>
