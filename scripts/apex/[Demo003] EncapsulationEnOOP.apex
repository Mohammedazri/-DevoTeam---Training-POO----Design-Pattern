// 3) Demo (exécuté en anonymous Apex ou dans un test)

        // Création d’un employé
        Employe e = new Employe(
            'Dupont',
            30,
            '123‑45‑6789',
            'Développeur'
        );

        // Accès direct autorisé à age (public) et nom (protected, car dans le même namespace)
        System.debug('Age (public) : ' + e.age);
        // System.debug('SSN direct : ' + e.numeroSecuriteSociale); // => ERREUR de compilation

        // Accès au SSN uniquement via le getter
        String ssn = e.getNumeroSecuriteSociale();
        System.debug('SSN via getter : ' + ssn);

        // Affiche toutes les infos via la méthode de la sous‑classe
        e.afficherInfos();
23:18:43.169 (212893743)|USER_DEBUG|[12]|DEBUG|Age (public) : 30
23:18:43.169 (212984645)|USER_DEBUG|[17]|DEBUG|SSN via getter : 123‑45‑6789
23:18:43.169 (213055989)|USER_DEBUG|[12]|DEBUG|Nom : Dupont, Age : 30, Poste : Développeur, SSN : 123‑45‑6789

