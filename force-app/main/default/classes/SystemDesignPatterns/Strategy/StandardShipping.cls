public class StandardShipping implements ShippingStrategy {
    public Decimal calculateShipping(Decimal orderTotal) {
        return orderTotal * 0.05;
    }
}
