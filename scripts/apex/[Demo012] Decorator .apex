ReportGenerator.demo();
12:39:35.49 (52342913)|USER_DEBUG|[4]|DEBUG|🚀 === Début du demo Decorator Pattern ===
12:39:35.49 (65204769)|USER_DEBUG|[12]|DEBUG|🚀 Loaded Opportunity: Opportunity:{Id=006ak000009EknOAAS, Name=Dickenson Mobile Generators, Amount=15000.00, CloseDate=2024-12-17 00:00:00}
12:39:35.49 (67749284)|USER_DEBUG|[16]|DEBUG|🚀 [STEP] Plain formatting
12:39:35.49 (67856154)|USER_DEBUG|[4]|DEBUG|🛠 DefaultReportFormatter.format() called
12:39:35.49 (68164810)|USER_DEBUG|[10]|DEBUG|🛠 DefaultReportFormatter produced lines: (=== Rapport Opportunité ===, Nom        : Dickenson Mobile Generators, Montant    : 15000.00, Date clôture: 2024-12-17 00:00:00)
12:39:35.49 (68263510)|USER_DEBUG|[19]|DEBUG|📄 Plain → === Rapport Opportunité ===
12:39:35.49 (68276288)|USER_DEBUG|[19]|DEBUG|📄 Plain → Nom        : Dickenson Mobile Generators
12:39:35.49 (68284741)|USER_DEBUG|[19]|DEBUG|📄 Plain → Montant    : 15000.00
12:39:35.49 (68292571)|USER_DEBUG|[19]|DEBUG|📄 Plain → Date clôture: 2024-12-17 00:00:00
12:39:35.49 (68310087)|USER_DEBUG|[23]|DEBUG|🚀 [STEP] Wrapping with USADecorator
12:39:35.49 (70959810)|USER_DEBUG|[7]|DEBUG|🌀 FormatterDecorator wrapping: DefaultReportFormatter:[]
12:39:35.49 (71044861)|USER_DEBUG|[7]|DEBUG|🇺🇸 USADecorator.format() start
12:39:35.49 (71078330)|USER_DEBUG|[13]|DEBUG|🌀 FormatterDecorator delegating to DefaultReportFormatter:[]
12:39:35.49 (71092591)|USER_DEBUG|[4]|DEBUG|🛠 DefaultReportFormatter.format() called
12:39:35.49 (71183875)|USER_DEBUG|[10]|DEBUG|🛠 DefaultReportFormatter produced lines: (=== Rapport Opportunité ===, Nom        : Dickenson Mobile Generators, Montant    : 15000.00, Date clôture: 2024-12-17 00:00:00)
12:39:35.49 (71205191)|USER_DEBUG|[9]|DEBUG|🇺🇸 USADecorator received base lines: (=== Rapport Opportunité ===, Nom        : Dickenson Mobile Generators, Montant    : 15000.00, Date clôture: 2024-12-17 00:00:00)
12:39:35.49 (71339563)|USER_DEBUG|[15]|DEBUG|🇺🇸 USADecorator replacing "Montant    : 15000.00" with "$15000.00"
12:39:35.49 (71421102)|USER_DEBUG|[20]|DEBUG|🇺🇸 USADecorator final lines: (=== Rapport Opportunité ===, Nom        : Dickenson Mobile Generators, Montant    : $15000.00, Date clôture: 2024-12-17 00:00:00, --- US Locale ---)
12:39:35.49 (71457730)|USER_DEBUG|[27]|DEBUG|📄 USA → === Rapport Opportunité ===
12:39:35.49 (71468278)|USER_DEBUG|[27]|DEBUG|📄 USA → Nom        : Dickenson Mobile Generators
12:39:35.49 (71476416)|USER_DEBUG|[27]|DEBUG|📄 USA → Montant    : $15000.00
12:39:35.49 (71484099)|USER_DEBUG|[27]|DEBUG|📄 USA → Date clôture: 2024-12-17 00:00:00
12:39:35.49 (71511573)|USER_DEBUG|[27]|DEBUG|📄 USA → --- US Locale ---
12:39:35.49 (71525211)|USER_DEBUG|[31]|DEBUG|🚀 [STEP] Wrapping previous with EuropeDecorator
12:39:35.49 (73207494)|USER_DEBUG|[7]|DEBUG|🌀 FormatterDecorator wrapping: USADecorator:[FormatterDecorator.wrappee=DefaultReportFormatter:[]]
12:39:35.49 (73281806)|USER_DEBUG|[7]|DEBUG|🇪🇺 EuropeDecorator.format() start
12:39:35.49 (73308127)|USER_DEBUG|[13]|DEBUG|🌀 FormatterDecorator delegating to USADecorator:[FormatterDecorator.wrappee=DefaultReportFormatter:[]]
12:39:35.49 (73320200)|USER_DEBUG|[7]|DEBUG|🇺🇸 USADecorator.format() start
12:39:35.49 (73332345)|USER_DEBUG|[13]|DEBUG|🌀 FormatterDecorator delegating to DefaultReportFormatter:[]
12:39:35.49 (73341020)|USER_DEBUG|[4]|DEBUG|🛠 DefaultReportFormatter.format() called
12:39:35.49 (73427040)|USER_DEBUG|[10]|DEBUG|🛠 DefaultReportFormatter produced lines: (=== Rapport Opportunité ===, Nom        : Dickenson Mobile Generators, Montant    : 15000.00, Date clôture: 2024-12-17 00:00:00)
12:39:35.49 (73442790)|USER_DEBUG|[9]|DEBUG|🇺🇸 USADecorator received base lines: (=== Rapport Opportunité ===, Nom        : Dickenson Mobile Generators, Montant    : 15000.00, Date clôture: 2024-12-17 00:00:00)
12:39:35.49 (73527612)|USER_DEBUG|[15]|DEBUG|🇺🇸 USADecorator replacing "Montant    : 15000.00" with "$15000.00"
12:39:35.49 (73564002)|USER_DEBUG|[20]|DEBUG|🇺🇸 USADecorator final lines: (=== Rapport Opportunité ===, Nom        : Dickenson Mobile Generators, Montant    : $15000.00, Date clôture: 2024-12-17 00:00:00, --- US Locale ---)
12:39:35.49 (73593407)|USER_DEBUG|[9]|DEBUG|🇪🇺 EuropeDecorator received base lines: (=== Rapport Opportunité ===, Nom        : Dickenson Mobile Generators, Montant    : $15000.00, Date clôture: 2024-12-17 00:00:00, --- US Locale ---)
12:39:35.49 (73675637)|USER_DEBUG|[14]|DEBUG|🇪🇺 EuropeDecorator replacing "Montant    : $15000.00" with "15000,00 €"
12:39:35.49 (73725024)|USER_DEBUG|[19]|DEBUG|🇪🇺 EuropeDecorator final lines: (=== Rapport Opportunité ===, Nom        : Dickenson Mobile Generators, Montant    : 15000,00 €, Date clôture: 2024-12-17 00:00:00, --- US Locale ---, --- Europe Locale ---)
12:39:35.49 (73758510)|USER_DEBUG|[35]|DEBUG|📄 EUR→USA → === Rapport Opportunité ===
12:39:35.49 (73768203)|USER_DEBUG|[35]|DEBUG|📄 EUR→USA → Nom        : Dickenson Mobile Generators
12:39:35.49 (73776843)|USER_DEBUG|[35]|DEBUG|📄 EUR→USA → Montant    : 15000,00 €
12:39:35.49 (73784596)|USER_DEBUG|[35]|DEBUG|📄 EUR→USA → Date clôture: 2024-12-17 00:00:00
12:39:35.49 (73792492)|USER_DEBUG|[35]|DEBUG|📄 EUR→USA → --- US Locale ---
12:39:35.49 (73800297)|USER_DEBUG|[35]|DEBUG|📄 EUR→USA → --- Europe Locale ---
12:39:35.49 (73813536)|USER_DEBUG|[38]|DEBUG|🚀 === Fin du demo Decorator Pattern ===