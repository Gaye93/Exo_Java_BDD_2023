<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimum 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine"></p>
    <p><input type="submit" value="Afficher"></p>
</form>

<%-- Récupération des valeurs --%>
<% String chaine = request.getParameter("chaine"); %>

<% if (chaine != null && !chaine.isEmpty()) { %>

    <%-- Division de la chaîne de chiffres séparés par des espaces --%>
    <% String[] tableauDeChiffres = chaine.split("\\s+"); %>

    <%-- Vérification qu'il y a au moins 3 chiffres --%>
    <% if (tableauDeChiffres.length >= 3) { %>

        <p>Le tableau contient <%= tableauDeChiffres.length %> valeurs</br>
        Chiffre 1 : <%= Integer.parseInt(tableauDeChiffres[0]) %></br>
        Chiffre 2 : <%= Integer.parseInt(tableauDeChiffres[1]) %></br>
        Chiffre 3 : <%= Integer.parseInt(tableauDeChiffres[2]) %></p>

        <h2>Exercice 1 : Le carré de la première valeur</h2>
        <p>Ecrire un programme afin d'afficher le carré de la première valeur</p>
        <p>Correction :</p>
        <%
            int premierChiffre = Integer.parseInt(tableauDeChiffres[0]);
            int carre = premierChiffre * premierChiffre;
        %>
        <p>Le carré de <%= premierChiffre %> est : <%= carre %></p>

        <h2>Exercice 2 : La somme des 2 premières valeurs</h2>
        <p>Ecrire un programme afin d'afficher la somme des deux premières valeurs</p>
        <p>Correction :</p>
        <%
            int deuxiemeChiffre = Integer.parseInt(tableauDeChiffres[1]);
            int somme = premierChiffre + deuxiemeChiffre;
        %>
        <p>La somme de <%= premierChiffre %> et <%= deuxiemeChiffre %> est : <%= somme %></p>

        <h2>Exercice 3 : La somme de toutes les valeurs</h2>
        <p>L'utilisateur peut à présent saisir autant de valeurs qu'il le souhaite dans le champ de saisie.</br>
        Ecrire un programme afin de faire la somme de toutes les valeurs saisies par l'utilisateur</p>
        <form action="#" method="post">
            <p>Saisir autant de valeurs que vous le souhaitez, séparées par des espaces : <input type="text" id="inputValeursMultiples" name="valeursMultiples"></p>
            <p><input type="submit" value="Calculer la somme"></p>
        </form>

        <%-- Récupération des valeurs multiples --%>
        <% String valeursMultiples = request.getParameter("valeursMultiples"); %>

        <% if (valeursMultiples != null && !valeursMultiples.isEmpty()) { %>
            <% String[] tableauValeursMultiples = valeursMultiples.split("\\s+"); %>
            <%
                int sommeTotale = 0;
                for (String valeur : tableauValeursMultiples) {
                    sommeTotale += Integer.parseInt(valeur);
                }
            %>
            <p>La somme de toutes les valeurs est : <%= sommeTotale %></p>
        <% } %>

        <h2>Exercice 4 : La valeur maximale</h2>
        <p>Ecrire un programme pour afficher la valeur maximale saisie par l'utilisateur</p>
        <p>Correction :</p>
        <%
            int max = Integer.parseInt(tableauDeChiffres[0]);
            for (String chiffre : tableauDeChiffres) {
                int valeur = Integer.parseInt(chiffre);
                if (valeur > max) {
                    max = valeur;
                }
            }
        %>
        <p>La valeur maximale est : <%= max %></p>

        <h2>Exercice 5 : La valeur minimale</h2>
        <p>Ecrire un programme pour afficher la valeur minimale saisie par l'utilisateur</p>
        <p>Correction :</p>
        <%
            int min = Integer.parseInt(tableauDeChiffres[0]);
            for (String chiffre : tableauDeChiffres) {
                int valeur = Integer.parseInt(chiffre);
                if (valeur < min) {
                    min = valeur;
                }
            }
        %>
        <p>La valeur minimale est : <%= min %></p>

        <h2>Exercice 6 : La valeur la plus proche de 0</h2>
        <p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
        <p>Correction :</p>
        <%
            int plusProcheDeZero = Integer.parseInt(tableauDeChiffres[0]);
            for (String chiffre : tableauDeChiffres) {
                int valeur = Integer.parseInt(chiffre);
                if (Math.abs(valeur) < Math.abs(plusProcheDeZero)) {
                    plusProcheDeZero = valeur;
                }
            }
        %>
        <p>La valeur la plus proche de 0 est : <%= plusProcheDeZero %></p>

        <h2>Exercice 7 : La valeur la plus proche de 0 (2° version)</h2>
        <p>Trouvez la valeur la plus proche de 0 (chiffres positifs ou négatifs)</p>
        <p>En cas d'égalité entre un chiffre positif et négatif, affichez le chiffre positif</p>
        <p>Correction :</p>
        <%
            int plusProcheDeZeroV2 = Integer.parseInt(tableauDeChiffres[0]);
            for (String chiffre : tableauDeChiffres) {
                int valeur = Integer.parseInt(chiffre);
                if (Math.abs(valeur) < Math.abs(plusProcheDeZeroV2) || 
                    (Math.abs(valeur) == Math.abs(plusProcheDeZeroV2) && valeur > plusProcheDeZeroV2)) {
                    plusProcheDeZeroV2 = valeur;
                }
            }
        %>
        <p>La valeur la plus proche de 0 (version 2) est : <%= plusProcheDeZeroV2 %></p>

    <% } else { %>
        <p>Veuillez saisir au moins 3 chiffres séparés par des espaces.</p>
    <% } %>

<% } else { %>
    <p>Aucune chaîne n'a été saisie.</p>
<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
