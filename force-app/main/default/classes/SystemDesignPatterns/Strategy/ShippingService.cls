public class ShippingService {
    /**
     * @param strategyKey  clé de la stratégie (Standard, Express, Free200…)
     * @param orderTotal   montant de la commande
     * @return montant des frais calculés
     */
    public static Decimal calculate(String strategyKey, Decimal orderTotal) {
        ShippingStrategy strat = ShippingStrategyFactory.getStrategy(strategyKey);
        return strat.calculateShipping(orderTotal);
    }
}
