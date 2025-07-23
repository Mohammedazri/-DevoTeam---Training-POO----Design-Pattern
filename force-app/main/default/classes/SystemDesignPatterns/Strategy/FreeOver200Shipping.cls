public class FreeOver200Shipping implements ShippingStrategy {
    public Decimal calculateShipping(Decimal orderTotal) {
        return (orderTotal >= 200) ? 0 : 8;
    }
}
