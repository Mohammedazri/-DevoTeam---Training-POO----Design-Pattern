// force-app/main/default/classes/IPriceAlert.cls
public interface IPriceAlert {
    /**
     * Méthode qui sera appelée à chaque publication de prix.
     * @param productId  Id du produit
     * @param newPrice   Nouveau prix
     */
    void onPriceChange(String productId, Decimal newPrice);
}
