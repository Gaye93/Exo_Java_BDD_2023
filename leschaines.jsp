<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de caractères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine"></p>
    <p><input type="submit" value="Afficher"></p>
</form>

<%-- Récupération des valeurs --%>
<% String chaine = request.getParameter("chaine"); %>

<% if (chaine != null && chaine.length() >= 6) { %>

    <%-- Obtention de la longueur de la chaîne --%>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

    <%-- Extraction du 3° caractère dans votre chaine --%>
    <% char caractereExtrait = chaine.charAt(2); %>
    <p>Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></p>

    <%-- Obtention d'une sous-chaîne --%>
    <% String sousChaine = chaine.substring(2, 6); %>
    <p>Une sous chaine de votre texte : <%= sousChaine %></p>

    <%-- Recherche de la lettre "e" --%>
    <% char recherche = 'e'; 
       int position = chaine.indexOf(recherche); %>
    <p>Votre premier "e" est en : <%= position %></p>

<% } else if (chaine != null) { %>
    <p>La chaîne doit contenir au moins 6 caractères.</p>
<% } else { %>
    <p>Aucune chaîne n'a été saisie.</p>
<% } %>

<h2>Exercice 1 : Nombre de 'e' dans la chaîne</h2>
<%
    if (chaine != null && !chaine.isEmpty()) {
        int countE = 0;
        for (int i = 0; i < chaine.length(); i++) {
            if (chaine.charAt(i) == 'e') {
                countE++;
            }
        }
%>
<p>Le nombre de 'e' dans la chaîne est : <%= countE %></p>
<% } %>

<h2>Exercice 2 : Affichage vertical</h2>
<%
    if (chaine != null && !chaine.isEmpty()) {
%>
<p>Affichage vertical :</p>
<%
        for (int i = 0; i < chaine.length(); i++) {
%>
<p><%= chaine.charAt(i) %></p>
<%
        }
    }
%>

<h2>Exercice 3 : Retour à la ligne sur espace</h2>
<%
    if (chaine != null && !chaine.isEmpty()) {
        String[] mots = chaine.split(" ");
        for (String mot : mots) {
%>
<p><%= mot %></p>
<%
        }
    }
%>

<h2>Exercice 4 : Une lettre sur deux</h2>
<%
    if (chaine != null && !chaine.isEmpty()) {
        StringBuilder resultat = new StringBuilder();
        for (int i = 0; i < chaine.length(); i += 2) {
            resultat.append(chaine.charAt(i));
        }
%>
<p>Résultat : <%= resultat.toString() %></p>
<%
    } else {
%>
<p>Aucune chaîne n'a été saisie.</p>
<%
    }
%>

<h2>Exercice 5 : Texte en verlan</h2>
<%
    if (chaine != null && !chaine.isEmpty()) {
        StringBuilder reversed = new StringBuilder(chaine).reverse();
%>
<p>Texte inversé : <%= reversed.toString() %></p>
<%
    } else {
%>
<p>Aucune chaîne n'a été saisie.</p>
<%
    }
%>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
