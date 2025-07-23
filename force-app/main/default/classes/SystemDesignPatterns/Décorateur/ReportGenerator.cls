// 6️⃣ ReportGenerator.demo() avec debug maximal
public with sharing class ReportGenerator {
    public static void demo() {
        System.debug('🚀 === Début du demo Decorator Pattern ===');

        Opportunity opp = [
            SELECT Id, Name, Amount, CloseDate
            FROM Opportunity
            WHERE Amount != null
            LIMIT 1
        ];
        System.debug('🚀 Loaded Opportunity: ' + opp);

        // Plain
        IReportFormatter plain = new DefaultReportFormatter();
        System.debug('🚀 [STEP] Plain formatting');
        List<String> plainLines = plain.format(opp);
        for (String l : plainLines) {
            System.debug('📄 Plain → ' + l);
        }

        // USA
        System.debug('🚀 [STEP] Wrapping with USADecorator');
        IReportFormatter usa = new USADecorator(new DefaultReportFormatter());
        List<String> usaLines = usa.format(opp);
        for (String l : usaLines) {
            System.debug('📄 USA → ' + l);
        }

        // Europe → USA
        System.debug('🚀 [STEP] Wrapping previous with EuropeDecorator');
        IReportFormatter euroThenUsa = new EuropeDecorator(usa);
        List<String> euroLines = euroThenUsa.format(opp);
        for (String l : euroLines) {
            System.debug('📄 EUR→USA → ' + l);
        }

        System.debug('🚀 === Fin du demo Decorator Pattern ===');
    }
}
