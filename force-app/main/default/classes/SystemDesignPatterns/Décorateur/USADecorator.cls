// 4️⃣ USADecorator avec debug détaillé
public with sharing class USADecorator extends FormatterDecorator {
    public USADecorator(IReportFormatter toWrap) {
        super(toWrap);
    }
    public override List<String> format(Opportunity opp) {
        System.debug('🇺🇸 USADecorator.format() start');
        List<String> base = super.format(opp);
        System.debug('🇺🇸 USADecorator received base lines: ' + base);

        // remplace la ligne Montant
        for (Integer i = 0; i < base.size(); i++) {
            if (base[i].startsWith('Montant')) {
                String usd = '$' + String.valueOf(opp.Amount.setScale(2));
                System.debug('🇺🇸 USADecorator replacing "' + base[i] + '" with "' + usd + '"');
                base[i] = 'Montant    : ' + usd;
            }
        }
        base.add('--- US Locale ---');
        System.debug('🇺🇸 USADecorator final lines: ' + base);
        return base;
    }
}
