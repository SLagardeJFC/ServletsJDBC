<%-- 
    Document   : showClientInStateWithForm
    Created on : 5 nov. 2019, 14:12:42
    Author     : pedago
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clients in ${selectedState}</title>
    </head>
    <body>
        <form>
            <select name='state' onchange='this.form.submit()'>
                <c:forEach var="state" items="${states}">
                    <option value='${state}'
                        <c:if test="${state eq selectedState}">
                            selected
                        </c:if>
                    >${state}</option>
                </c:forEach>
            </select>
        <input type='submit'>
    </form>
    <table border=2>
        <tr> <th>Id</th> <th>Name</th> <th>Address</th> </tr>
        <c:forEach var="customer" items="${customers}">
            <tr> <td>${customer.customerId}</td> <td>${customer.name}</td> <td>${customer.addressLine1}</td> </tr>
        </c:forEach>
    </table>
    <hr>
    <a href='${pageContext.request.contextPath}'>Retour au menu</a><br>
</html>