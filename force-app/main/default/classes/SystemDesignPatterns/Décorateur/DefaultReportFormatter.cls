// 2️⃣ Formatter de base (DefaultReportFormatter) avec debug
public with sharing class DefaultReportFormatter implements IReportFormatter {
    public List<String> format(Opportunity opp) {
        System.debug('🛠 DefaultReportFormatter.format() called');
        List<String> lines = new List<String>();
        lines.add('=== Rapport Opportunité ===');
        lines.add('Nom        : ' + opp.Name);
        lines.add('Montant    : ' + opp.Amount);
        lines.add('Date clôture: ' + opp.CloseDate);
        System.debug('🛠 DefaultReportFormatter produced lines: ' + lines);
        return lines;
    }
}
