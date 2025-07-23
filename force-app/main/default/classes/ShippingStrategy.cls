public interface ShippingStrategy {
    Decimal calculateShipping(Decimal orderTotal);
}
