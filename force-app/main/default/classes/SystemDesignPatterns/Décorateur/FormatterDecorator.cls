// 3️⃣ Décorateur abstrait (FormatterDecorator) corrigé
public abstract with sharing class FormatterDecorator implements IReportFormatter {
    protected IReportFormatter wrappee;

    public FormatterDecorator(IReportFormatter toWrap) {
        // System.debug('🌀 FormatterDecorator wrapping: ' + toWrap.getClass());
        System.debug('🌀 FormatterDecorator wrapping: ' + toWrap);
        this.wrappee = toWrap;
    }

    public virtual List<String> format(Opportunity opp) {
        // System.debug('🌀 FormatterDecorator delegating to ' + wrappee.getClass());
        System.debug('🌀 FormatterDecorator delegating to ' + wrappee);
        return wrappee.format(opp);
    }
}

