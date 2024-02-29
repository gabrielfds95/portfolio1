// Partie concernant la rose des vents
    // Détermine aléatoirement une valeur entre 0 et 5000
    var ms = Math.ceil(Math.random() * 5000);
    //var ms = 900;
    // Lancement de la fonction "stopRDV()" après "ms" millisecondes
    setTimeout("stopRDV()", ms);
    function stopRDV() {
        // Met en pause la rotation de la flèche de la rose des vents
        document.getElementById("flecheRDV").style.animationPlayState = "paused";
        // Coordonnée du haut de la flèche de la rose des vents
        var topRDV = document.getElementById('flecheRDV').getBoundingClientRect().y;
        var zone = calculZone();
        var vent = calculVent(topRDV, zone);
        // Affiche le bouton "Fire" après la pause de l'animation de la flèche
        var txt = '<input type="button"value = "Fire!!!" class="bouton"  onclick="fire('+vent+')">';
        document.getElementById("cmd2").innerHTML = txt;
        // Affiche les boutons de déplacement de l'arbalète après la pause de l'animation de la flèche
        txt = '<input type="button" onclick="deplace(-100)" value = "<<" class="bouton1"> <input type="button"  onclick="deplace(-50)" value = "<" class="bouton2" ><input type="button" onclick="deplace(50)" value = ">" class="bouton3"> <input type="button"  onclick="deplace(100)" value = ">>" class="bouton4">';
        document.getElementById("cmd1").innerHTML = txt;
    }
    // Retourne la zone de la pointe de la flèche dans la rose des vents
    // 1 : zone NE, 2 : SE, 3 : SO et 4 : NO
    function calculZone() {
        if((ms >= 0 && ms <= 350) || (ms >= 850 && ms <= 960) || (ms >= 1300 && ms <= 1400) || 
        (ms >= 1630 && ms <= 1880) || (ms >= 2320 && ms <= 2500) || (ms >= 3200 && ms <= 3500)) {
            return 1;
        }
        if((ms > 350 && ms <= 550) || (ms > 960 && ms <= 1075) || (ms > 1400 && ms <= 1515) || 
        (ms > 1880 && ms <= 2020) || (ms > 2500 && ms <= 2700) || (ms > 3500 && ms <= 3900)) {
            return 2;
        }
        if((ms > 550 && ms <= 700) || (ms > 1075 && ms <= 1175) || (ms > 1515 && ms <= 1630) || 
        (ms > 2020 && ms <= 2160) || (ms > 2700 && ms <= 2920) || (ms > 3900 && ms <= 4450)) {
            return 3;
        }
        if((ms > 700 && ms <= 850) || (ms > 1175 && ms <= 1300) || (ms > 1630 && ms <= 1760) || 
        (ms > 2160 && ms <= 2320) || (ms > 2920 && ms <= 3200) || (ms > 4450 && ms <= 5000)) {
            return 4;
        }
    }
    // Retourne la force horizontale du vent en fonction de la pointe de la flèche dans la rose des vents
    function calculVent(t, zo) {
        const hautFleche = 125;
        var diff =  Math.ceil(t) - hautFleche;
        if(diff == 0) return 0;
        if(diff <= 5) return sensVent(0.5, zo);
        if(diff > 5 && diff <= 15) return sensVent(1, zo);
        if(diff > 15 && diff <= 25) return sensVent(2, zo);
        if(diff > 25 && diff <= 35) return sensVent(3, zo);
        if(diff > 35) return sensVent(4, zo);
    }
    function sensVent(x, z) {
        switch(z) {
            case 1 : case 2 : return x; break;
            case 3 : case 4 : return -x; break;
            default : return 0; break;
        }
    }
// Partie concernant le déplacement de l'arbalète
    // Détermine la moitié de la page en pixels
    const lpage = window.innerWidth;
    var gch = lpage / 2;
    // Déplace l'arbalète vers la gauche ou la droite
    function deplace(pix) {
        if(gch + pix >= 0 && gch + pix <= lpage - 4) {
            gch += pix;
            document.getElementById("arba").style.left = gch + "px";
            posGch = gch;
        }
    }// Partie concernant le lancement de la flèche
    var interv;
    var posTop = 635, ht = 100, lg = 12, posGch = gch;
    function fire(ve) {
        // Effacement des boutons
        document.getElementById("cmd1").innerHTML = "";
        document.getElementById("cmd2").innerHTML = "";
        // Positionnement et affichage de la flèche
        document.getElementById("fleche").style.left = gch + "px";
        document.getElementById("fleche").style.height = ht + "px";
        // Lancement de la fonction "bouge()" toutes les millisecondes
        var fct = "bouge(" + ve + ")";
        interv = setInterval(fct, 1);
    }
    function bouge(v) {
        // Teste la position du haut de la flèche
        if(posTop > 388) {
            posTop -= 2;
            posGch += v;
            // Modifie la position gauche de la flèche
            document.getElementById("fleche").style.left = posGch + "px";
            // Modifie la position du haut de la flèche
            document.getElementById("fleche").style.top = posTop + "px";
            // Modifie la hauteur de la flèche tous les 4 pixels
            if(posTop % 4 == 0) {
                ht -= 1;
                document.getElementById("fleche").style.height = ht + "px";
            }
            // Modifie la largeur de la flèche tous les 50 pixels
            if(posTop % 50 == 0) {
                lg -= 1;
                document.getElementById("fleche").style.width = lg + "px";
            }
        }
        else {
            // Supprime le lancement de la fonction "bouge()" toutes les millisecondes
            clearInterval(interv);
        }
    }
    