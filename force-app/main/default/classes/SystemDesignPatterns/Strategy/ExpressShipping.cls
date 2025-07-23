public class ExpressShipping implements ShippingStrategy {
    public Decimal calculateShipping(Decimal orderTotal) {
        if (orderTotal < 100) {
            return 10;
        }
        return orderTotal * 0.05;
    }
}
