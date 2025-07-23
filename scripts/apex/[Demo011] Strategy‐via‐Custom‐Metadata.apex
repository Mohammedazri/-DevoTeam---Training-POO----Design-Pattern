// —— Strategy Pattern Demo ——

// Les clés à tester
List<String> keys = new List<String>{ 'Standard', 'Express', 'Free200', 'Unknown' };

for (String key : keys) {
    try {
        Decimal fee = ShippingService.calculate(key, 150);
        System.debug(
          '▶️ [' + key + '] Shipping for €150 → ' + fee
        );
    } catch (Exception ex) {
        System.debug(
          '❌ [' + key + '] Erreur : ' + ex.getMessage()
        );
    }
}
12:24:29.82 (145675056)|USER_DEBUG|[9]|DEBUG|▶️ [Standard] Shipping for €150 → 7.50
12:24:29.82 (168510478)|USER_DEBUG|[9]|DEBUG|▶️ [Express] Shipping for €150 → 7.50
12:24:29.82 (193543535)|USER_DEBUG|[9]|DEBUG|▶️ [Free200] Shipping for €150 → 8
12:24:29.82 (194255003)|EXCEPTION_THROWN|[5]|System.IllegalArgumentException: Stratégie invalide ou inactive : Unknown
12:24:29.82 (194298867)|EXCEPTION_THROWN|[8]|System.IllegalArgumentException: Stratégie invalide ou inactive : Unknown
12:24:29.82 (194370958)|USER_DEBUG|[13]|DEBUG|❌ [Unknown] Erreur : Stratégie invalide ou inactive : Unknown