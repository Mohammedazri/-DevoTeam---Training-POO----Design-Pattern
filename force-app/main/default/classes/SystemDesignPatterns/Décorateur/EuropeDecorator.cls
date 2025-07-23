// 5️⃣ EuropeDecorator avec debug détaillé
public with sharing class EuropeDecorator extends FormatterDecorator {
    public EuropeDecorator(IReportFormatter toWrap) {
        super(toWrap);
    }
    public override List<String> format(Opportunity opp) {
        System.debug('🇪🇺 EuropeDecorator.format() start');
        List<String> base = super.format(opp);
        System.debug('🇪🇺 EuropeDecorator received base lines: ' + base);

        for (Integer i = 0; i < base.size(); i++) {
            if (base[i].startsWith('Montant')) {
                String eur = String.valueOf(opp.Amount.setScale(2)).replace('.', ',');
                System.debug('🇪🇺 EuropeDecorator replacing "' + base[i] + '" with "' + eur + ' €"');
                base[i] = 'Montant    : ' + eur + ' €';
            }
        }
        base.add('--- Europe Locale ---');
        System.debug('🇪🇺 EuropeDecorator final lines: ' + base);
        return base;
    }
}
