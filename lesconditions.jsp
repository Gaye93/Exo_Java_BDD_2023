<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur1" name="valeur1"></p>
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur2" name="valeur2"></p>
    <p><input type="submit" value="Afficher"></p>
</form>

<%-- Récupération des valeurs --%>
<% String valeur1 = request.getParameter("valeur1"); %>
<% String valeur2 = request.getParameter("valeur2"); %>

<%-- Vérification de la condition entre les deux valeurs --%>
<% if (valeur1 != null && !valeur1.isEmpty() && valeur2 != null && !valeur2.isEmpty()) { %>
    <%-- Conversion des valeurs en entiers pour la comparaison --%>
    <% int intValeur1 = Integer.parseInt(valeur1); %>
    <% int intValeur2 = Integer.parseInt(valeur2); %>
    
    <%-- Condition if pour comparer les valeurs --%>
    <% if (intValeur1 > intValeur2) { %>
        <p>Valeur 1 est supérieure à Valeur 2.</p>
    <% } else if (intValeur1 < intValeur2) { %>
        <p>Valeur 1 est inférieure à Valeur 2.</p>
    <% } else { %>
        <p>Valeur 1 est égale à Valeur 2.</p>
    <% } %>
<% } %>
    
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
Exemple :</br>
A = 10</br>
B = 20</br>
C = 15</br>
Oui C est compris entre A et B</p>
<p>Correction:<br>
<form action="#" method="post">
    <p>Saisir A : <input type="text" name="A"></p>
    <p>Saisir B : <input type="text" name="B"></p>
    <p>Saisir C : <input type="text" name="C"></p>
    <p><input type="submit" value="Vérifier"></p>
</form>
<%
    String A = request.getParameter("A");
    String B = request.getParameter("B");
    String C = request.getParameter("C");
    if (A != null && B != null && C != null && !A.isEmpty() && !B.isEmpty() && !C.isEmpty()) {
        int a = Integer.parseInt(A);
        int b = Integer.parseInt(B);
        int c = Integer.parseInt(C);
        int min, max;
        
        if (a < b) {
            min = a;
            max = b;
        } else {
            min = b;
            max = a;
        }
        
        if (c >= min && c <= max) {
            out.println("<p>Oui, C est compris entre A et B</p>");
        } else {
            out.println("<p>Non, C n'est pas compris entre A et B</p>");
        }
    }
%>
</p>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>
<p>Correction:<br>
<form action="#" method="post">
    <p>Saisir un nombre : <input type="text" name="nombre"></p>
    <p><input type="submit" value="Vérifier"></p>
</form>
<%
    String nombre = request.getParameter("nombre");
    if (nombre != null && !nombre.isEmpty()) {
        int num = Integer.parseInt(nombre);
        if (num % 2 == 0) {
            out.println("<p>Le nombre est pair.</p>");
        } else {
            out.println("<p>Le nombre est impair.</p>");
        }
    }
%>
</p>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
