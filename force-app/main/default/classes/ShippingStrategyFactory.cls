public class ShippingStrategyFactory {
    public static ShippingStrategy getStrategy(String strategyKey) {
        Shipping_Strategy__mdt cfg = Shipping_Strategy__mdt.getInstance(strategyKey);
        if (cfg == null || !cfg.Active__c) {
            throw new IllegalArgumentException(
                'Stratégie invalide ou inactive : ' + strategyKey
            );
        }
        Type t = Type.forName(cfg.Strategy_Class__c);
        if (t == null) {
            throw new IllegalArgumentException(
                'Classe introuvable : ' + cfg.Strategy_Class__c
            );
        }
        return (ShippingStrategy) t.newInstance();
    }
}
