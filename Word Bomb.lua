print("Successfully Loaded")

hookfunction(error, warn)
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui
local PlayerScripts = LocalPlayer.PlayerScripts
local ClientGameScript = PlayerScripts:WaitForChild("ClientGameScript")
local MobileService = require(ClientGameScript:WaitForChild("MobileService"))

getgenv().Settings = {
    AutoType = true,
    AutoJoin = true,
    TypeTime = 4
}

local Words = {
        "supercalifragilisticexpialidocious",
        "pseudopseudohypoparathyroidism",
        "sphenopalatineganglioneuralgia",
        "hexakosioihexekontahexaphobia",
        "antidisestablishmentarianism",
        "ethylenediaminetetraacetates",
        "electroencephalographically",
        "ethylenediaminetetraacetate",
        "immunoelectrophoretically",
        "phosphatidylethanolamines",
        "microspectrophotometries",
        "dichlorodifluoromethanes",
        "electroencephalographies",
        "electrocardiographically",
        "microelectrophoretically",
        "intercomprehensibilities",
        "electroencephalographers",
        "phosphatidylethanolamine",
        "overintellectualizations",
        "overintellectualization",
        "dichlorodifluoromethane",
        "hexamethylenetetramines",
        "deinstitutionalizations",
        "nonrepresentationalisms",
        "indistinguishablenesses",
        "microspectrophotometers",
        "intersubstitutabilities",
        "reinstitutionalizations",
        "electroencephalographic",
        "microspectrophotometric",
        "carboxymethylcelluloses",
        "electroencephalographer",
        "microspectrophotometry",
        "incomprehensiblenesses",
        "microspectrophotometer",
        "indistinguishabilities",
        "immunohistochemistries",
        "phosphoglyceraldehydes",
        "carboxymethylcellulose",
        "unrepresentativenesses",
        "nonrepresentationalism",
        "keratoconjunctivitises",
        "reinstitutionalization",
        "spectrophotometrically",
        "overcommercializations",
        "keratoconjunctivitides",
        "deinstitutionalization",
        "encephalomyocarditises",
        "countercountermeasures",
        "philoprogenitivenesses",
        "disestablishmentarians",
        "electroencephalographs",
        "otorhinolaryngologists",
        "counterrevolutionaries",
        "hexamethylenetetramine",
        "constitutionalizations",
        "intercomprehensibility",
        "electrophysiologically",
        "electroencephalography",
        "counterinterpretations",
        "establishmentarianisms",
        "otorhinolaryngological",
        "unexceptionablenesses",
        "immunoelectrophoreses",
        "pseudocholinesterases",
        "clinicopathologically",
        "constitutionalization",
        "hyperaggressivenesses",
        "psychopharmacologists",
        "psychopharmacological",
        "phosphoglyceraldehyde",
        "counterinterpretation",
        "immunocytochemistries",
        "meningoencephalitides",
        "pseudosophistications",
        "microminiaturizations",
        "tetrahydrocannabinols",
        "electromyographically",
        "establishmentarianism",
        "buckminsterfullerenes",
        "disadvantageousnesses",
        "compartmentalizations",
        "straightforwardnesses",
        "interchangeablenesses",
        "psychotherapeutically",
        "indistinguishableness",
        "nondenominationalisms",
        "contemporaneousnesses",
        "electroretinographies",
        "interconvertibilities",
        "neuroendocrinologists",
        "counterdemonstrations",
        "otorhinolaryngologist",
        "otorhinolaryngologies",
        "immunoelectrophoresis",
        "neuroendocrinological",
        "immunoelectrophoretic",
        "overintellectualizing",
        "electrocardiographies",
        "countercountermeasure",
        "hypercholesterolemias",
        "psychophysiologically",
        "multidimensionalities",
        "acetylcholinesterases",
        "incomprehensibilities",
        "adrenocorticotrophins",
        "undemonstrativenesses",
        "photophosphorylations",
        "unconstitutionalities",
        "adrenocorticosteroids",
        "electroencephalograms",
        "antiauthoritarianisms",
        "electroencephalograph",
        "anthropomorphizations",
        "extraterritorialities",
        "overcommercialization",
        "photolithographically",
        "internationalizations",
        "hypersusceptibilities",
        "stereomicroscopically",
        "antiferromagnetically",
        "institutionalizations",
        "disestablishmentarian",
        "dendrochronologically",
        "intersubstitutability",
        "roentgenographically",
        "anthropocentricities",
        "overenthusiastically",
        "bacteriochlorophylls",
        "countersurveillances",
        "electrophotographies",
        "adrenocorticotropins",
        "adrenocorticotrophin",
        "hypercholesterolemic",
        "adrenocorticotrophic",
        "interchangeabilities",
        "electrophysiologists",
        "inappreciativenesses",
        "compartmentalization",
        "indiscriminatenesses",
        "glomerulonephritides",
        "underrepresentations",
        "adrenocorticosteroid",
        "countertransferences",
        "dimethylnitrosamines",
        "photophosphorylation",
        "uncompromisingnesses",
        "electrophysiological",
        "existentialistically",
        "overintellectualizes",
        "counterrevolutionary",
        "overintellectualized",
        "irreconcilablenesses",
        "pseudoparenchymatous",
        "hypersensitivenesses",
        "electrooculographies",
        "magnetohydrodynamics",
        "tetrahydrocannabinol",
        "anticonservationists",
        "countermobilizations",
        "pseudosophistication",
        "uncharacteristically",
        "histocompatibilities",
        "conventionalizations",
        "hyperparathyroidisms",
        "microminiaturization",
        "immunoprecipitations",
        "magnetofluiddynamics",
        "pseudocholinesterase",
        "professionalizations",
        "internationalization",
        "syncategorematically",
        "radiopharmaceuticals",
        "indestructiblenesses",
        "photoreconnaissances",
        "acetylcholinesterase",
        "interconnectednesses",
        "expressionlessnesses",
        "antiauthoritarianism",
        "anthropomorphization",
        "transformationalists",
        "electroencephalogram",
        "overdifferentiations",
        "forethoughtfulnesses",
        "unconscionablenesses",
        "antifluoridationists",
        "hydrochlorothiazides",
        "encephalomyocarditis",
        "ultracentrifugations",
        "counterintelligences",
        "paradichlorobenzenes",
        "intellectualizations",
        "hypercoagulabilities",
        "departmentalizations",
        "extemporaneousnesses",
        "polyphiloprogenitive",
        "electroluminescences",
        "reinstitutionalizing",
        "photodisintegrations",
        "ultramicroscopically",
        "buckminsterfullerene",
        "reindustrializations",
        "superspecializations",
        "microelectrophoretic",
        "unrepresentativeness",
        "phosphofructokinases",
        "hypercholesterolemia",
        "overprotectivenesses",
        "noninstitutionalized",
        "phosphomonoesterases",
        "deoxyribonucleotides",
        "phosphoenolpyruvates",
        "immunocytochemically",
        "microelectrophoresis",
        "photoautotrophically",
        "microelectrophoreses",
        "microcrystallinities",
        "phosphatidylcholines",
        "electroretinographic",
        "contradistinguishing",
        "institutionalization",
        "paleoanthropological",
        "cytodifferentiations",
        "indistinguishability",
        "immunohistochemistry",
        "nondestructivenesses",
        "irreproachablenesses",
        "keratoconjunctivites",
        "lymphogranulomatoses",
        "lymphogranulomatosis",
        "semiautobiographical",
        "distinguishabilities",
        "deindustrializations",
        "chemotherapeutically",
        "radioimmunoassayable",
        "nondenominationalism",
        "philoprogenitiveness",
        "parathyroidectomized",
        "keratoconjunctivitis",
        "electrocardiographic",
        "phenylthiocarbamides",
        "representativenesses",
        "deinstitutionalizing",
        "ultrarevolutionaries",
        "ultrasegregationists",
        "paleoanthropologists",
        "homotransplantations",
        "unintelligiblenesses",
        "representationalisms",
        "phenylpropanolamines",
        "representationalists",
        "hyperconsciousnesses",
        "photointerpretations",
        "crystallographically",
        "dehydrochlorinations",
        "psychopathologically",
        "micropaleontological",
        "neuropsychiatrically",
        "neuroendocrinologies",
        "spectrofluorometries",
        "reconceptualizations",
        "counterdemonstrating",
        "incomprehensibleness",
        "neuroendocrinologist",
        "neuropharmacological",
        "plethysmographically",
        "inconsequentialities",
        "incommensurabilities",
        "inconsiderablenesses",
        "psychopharmacologies",
        "psychopharmacologist",
        "counterdemonstration",
        "interstratifications",
        "counterconditionings",
        "comprehensiblenesses",
        "neurophysiologically",
        "chlorofluoromethanes",
        "microphotometrically",
        "neuropharmacologists",
        "micropaleontologists",
        "spectroheliographies",
        "unsatisfactorinesses",
        "counterdemonstrators",
        "spectrophotometrical",
        "mischaracterizations",
        "meningoencephalitic",
        "overambitiousnesses",
        "hydrochlorothiazide",
        "meningoencephalitis",
        "psychophysiological",
        "microencapsulations",
        "entrepreneurialisms",
        "reconceptualization",
        "phosphatidylcholine",
        "immunocytochemistry",
        "intellectualization",
        "phonocardiographies",
        "paradichlorobenzene",
        "hyperirritabilities",
        "intersubjectivities",
        "deoxyribonucleotide",
        "tenderheartednesses",
        "inefficaciousnesses",
        "unexceptionableness",
        "transmogrifications",
        "microelectronically",
        "ethnomethodologists",
        "psychopharmacologic",
        "incomprehensibility",
        "undemonstrativeness",
        "lipopolysaccharides",
        "unpretentiousnesses",
        "extraterritoriality",
        "inexhaustiblenesses",
        "overcapitalizations",
        "unfashionablenesses",
        "overrepresentations",
        "superspecialization",
        "demonstrativenesses",
        "encephalomyelitides",
        "polyribonucleotides",
        "unidimensionalities",
        "phosphofructokinase",
        "stereophotographies",
        "neuropharmacologist",
        "structurelessnesses",
        "phosphomonoesterase",
        "inconceivablenesses",
        "clinicopathological",
        "overproportionately",
        "phosphoglucomutases",
        "knowledgeablenesses",
        "electromechanically",
        "neuropharmacologies",
        "multitudinousnesses",
        "electrocorticograms",
        "microdensitometries",
        "stereospecificities",
        "noninterventionists",
        "gentlemanlikenesses",
        "reindustrialization",
        "communicativenesses",
        "constitutionalizing",
        "interavailabilities",
        "electroretinographs",
        "indispensablenesses",
        "impressionabilities",
        "hypoparathyroidisms",
        "companionablenesses",
        "parthenogenetically",
        "establishmentarians",
        "electroretinography",
        "inconsideratenesses",
        "reprehensiblenesses",
        "overgeneralizations",
        "angiocardiographies",
        "electrometallurgies",
        "chlorofluorocarbons",
        "contemporaneousness",
        "diethylstilbestrols",
        "contemplativenesses",
        "antirevolutionaries",
        "electrophysiologist",
        "diethylcarbamazines",
        "electrophysiologies",
        "disenfranchisements",
        "interjurisdictional",
        "psychotomimetically",
        "pharmacodynamically",
        "differentiabilities",
        "prefigurativenesses",
        "directionlessnesses",
        "historiographically",
        "psychophysiologists",
        "interstratification",
        "neurofibromatosises",
        "electrocardiographs",
        "introspectivenesses",
        "revolutionarinesses",
        "counterconspiracies",
        "nonenforceabilities",
        "immunofluorescences",
        "unintelligibilities",
        "dehydrochlorination",
        "electrocardiography",
        "departmentalization",
        "counterconditioning",
        "electroluminescence",
        "hyperconcentrations",
        "spectrophotometries",
        "phenomenalistically",
        "homotransplantation",
        "phenylpropanolamine",
        "parasympathomimetic",
        "individualistically",
        "representationalism",
        "parathyroidectomies",
        "counterculturalisms",
        "immunohistochemical",
        "phenylthiocarbamide",
        "impressionistically",
        "cinematographically",
        "immunohematological",
        "immunohematologists",
        "chlorofluoromethane",
        "untranslatabilities",
        "representationalist",
        "ultracentrifugation",
        "reinstitutionalized",
        "ultracontemporaries",
        "photoreconnaissance",
        "sentimentalizations",
        "thermoperiodicities",
        "superconductivities",
        "transubstantiations",
        "anthropocentrically",
        "adrenocorticotropin",
        "professionalization",
        "hydrometeorologists",
        "electrodynamometers",
        "polychromatophilias",
        "uncompetitivenesses",
        "conscientiousnesses",
        "anthropomorphically",
        "spectrofluorometric",
        "cytopathogenicities",
        "hydrometeorological",
        "territorializations",
        "conceptualistically",
        "electrodesiccations",
        "phytohemagglutinins",
        "miscellaneousnesses",
        "semiconsciousnesses",
        "antiferromagnetisms",
        "adrenocorticotropic",
        "dimethylnitrosamine",
        "mucopolysaccharides",
        "objectionablenesses",
        "dimethyltryptamines",
        "electromagnetically",
        "unapproachabilities",
        "phytogeographically",
        "counteradvertisings",
        "antifluoridationist",
        "photosensitizations",
        "posttranscriptional",
        "unceremoniousnesses",
        "hypersensitizations",
        "anticholinesterases",
        "conventionalization",
        "symptomatologically",
        "thermoelectricities",
        "hyperparathyroidism",
        "chromolithographers",
        "dendrochronological",
        "dendrochronologists",
        "dehydrochlorinating",
        "methylprednisolones",
        "chromolithographing",
        "mischaracterization",
        "chromolithographies",
        "transplantabilities",
        "glottochronological",
        "consequentialnesses",
        "irreconcilabilities",
        "ovoviviparousnesses",
        "gedankenexperiments",
        "diastereoisomerisms",
        "antidesertification",
        "polyesterifications",
        "irrecoverablenesses",
        "thermoluminescences",
        "methylcholanthrenes",
        "overdifferentiation",
        "heterogeneousnesses",
        "spectrofluorometers",
        "anticonservationist",
        "ovolactovegetarians",
        "spectrofluorimeters",
        "characterologically",
        "radiopharmaceutical",
        "superadministrators",
        "dispassionatenesses",
        "nonproductivenesses",
        "preternaturalnesses",
        "ultrasegregationist",
        "comprehensivenesses",
        "overcommercializing",
        "oversensitivenesses",
        "proletarianizations",
        "interferometrically",
        "deinstitutionalized",
        "gastroenterologists",
        "unconventionalities",
        "paleogeographically",
        "deinstitutionalizes",
        "gastroenterological",
        "extralinguistically",
        "extraordinarinesses",
        "contradistinguished",
        "reinstitutionalizes",
        "inexpressiblenesses",
        "photodisintegrating",
        "straightforwardness",
        "photoconductivities",
        "photodecompositions",
        "contradistinguishes",
        "photodisintegration",
        "contradictorinesses",
        "overclassifications",
        "contradistinctively",
        "overcentralizations",
        "hemidemisemiquavers",
        "irresponsiblenesses",
        "crosslinguistically",
        "chromatographically",
        "hypersusceptibility",
        "paleoclimatologists",
        "cytodifferentiation",
        "deindustrialization",
        "adventuresomenesses",
        "agammaglobulinemias",
        "irreproachabilities",
        "multidenominational",
        "paleoanthropologies",
        "comprehensibilities",
        "unconscionabilities",
        "irreplaceablenesses",
        "circumstantialities",
        "extraconstitutional",
        "incommunicabilities",
        "histopathologically",
        "inappropriatenesses",
        "photofluorographies",
        "multidimensionality",
        "paleoanthropologist",
        "reticuloendothelial",
        "instantaneousnesses",
        "oversimplifications",
        "interorganizational",
        "uncontrollabilities",
        "accommodativenesses",
        "splendiferousnesses",
        "radioallergosorbent",
        "photointerpretation",
        "nonrepresentational",
        "irreproducibilities",
        "nonrelativistically",
        "unconstitutionality",
        "overspecializations",
        "counterdemonstrated",
        "phosphoenolpyruvate",
        "counterdemonstrator",
        "electrophotographic",
        "counterpropagations",
        "micropaleontologist",
        "evapotranspirations",
        "compassionatenesses",
        "overintellectualize",
        "inconspicuousnesses",
        "disproportionations",
        "countersurveillance",
        "otorhinolaryngology",
        "electrophoretically",
        "disrespectabilities",
        "indestructibilities",
        "indescribablenesses",
        "overindustrializing",
        "understandabilities",
        "disadvantageousness",
        "postmillenarianisms",
        "hyperemotionalities",
        "interdepartmentally",
        "underrepresentation",
        "tridimensionalities",
        "exhibitionistically",
        "counterintelligence",
        "sanctimoniousnesses",
        "interconvertibility",
        "micrometeorologists",
        "immunoprecipitation",
        "magnetohydrodynamic",
        "indeterminatenesses",
        "electrophoretograms",
        "overinterpretations",
        "micropaleontologies",
        "constitutionalities",
        "hyperaggressiveness",
        "micrometeorological",
        "pseudosophisticated",
        "bacteriochlorophyll",
        "perspicaciousnesses",
        "counterprogrammings",
        "bourgeoisifications",
        "countermobilization",
        "complementarinesses",
        "hyperexcitabilities",
        "antivivisectionists",
        "immunoprecipitating",
        "intercommunications",
        "overidentifications",
        "expressionistically",
        "electronegativities",
        "indefatigablenesses",
        "counterretaliations",
        "transformationalist",
        "counterinsurgencies",
        "counterinstitutions",
        "counterinflationary",
        "countertransference",
        "interchangeableness",
        "disinterestednesses",
        "disrespectfulnesses",
        "counterreformations",
        "disadvantagednesses",
        "counterdemonstrates",
        "interdenominational",
        "authoritativenesses",
        "gastroenterologist",
        "deinstitutionalize",
        "lightheartednesses",
        "micromanipulations",
        "gastroenterologies",
        "manipulativenesses",
        "overextrapolations",
        "overidentification",
        "adenocarcinomatous",
        "impersonalizations",
        "noninterventionist",
        "sacrilegiousnesses",
        "recrystallizations",
        "polymorphonuclears",
        "stereospecifically",
        "magnetostrictively",
        "overcommercializes",
        "meretriciousnesses",
        "unconvincingnesses",
        "irresponsibilities",
        "overcommercialized",
        "counterprogramming",
        "coccidioidomycoses",
        "unseasonablenesses",
        "sociopsychological",
        "ultrarevolutionary",
        "chemiluminescences",
        "bureaucratizations",
        "simultaneousnesses",
        "institutionalising",
        "ultrasophisticated",
        "trichloroethylenes",
        "proletarianization",
        "intermediatenesses",
        "paleoclimatologist",
        "paleoclimatologies",
        "irresistiblenesses",
        "discontentednesses",
        "overprotectiveness",
        "chlortetracyclines",
        "electrooculography",
        "dextroamphetamines",
        "irreproachableness",
        "oscillographically",
        "interoperabilities",
        "counterpetitioning",
        "mineralocorticoids",
        "radiochromatograms",
        "australopithecines",
        "inarticulatenesses",
        "agammaglobulinemic",
        "neuropsychological",
        "agammaglobulinemia",
        "nonrepresentatives",
        "unaccountabilities",
        "micrometeorologies",
        "metallographically",
        "unsatisfactoriness",
        "unscrupulousnesses",
        "shortsightednesses",
        "invulnerablenesses",
        "propagandistically",
        "polyacrylonitriles",
        "oversimplification",
        "otherworldlinesses",
        "ferroelectricities",
        "counterreformation",
        "neuropsychiatrists",
        "overcommunications",
        "curmudgeonlinesses",
        "overspecialization",
        "unconstitutionally",
        "coccidioidomycosis",
        "multifariousnesses",
        "remunerativenesses",
        "cholecystectomized",
        "constructivenesses",
        "questionablenesses",
        "lipopolysaccharide",
        "neurophysiologists",
        "overcapitalization",
        "supersophisticated",
        "neurophysiological",
        "ultraconservatisms",
        "ultraconservatives",
        "polyribonucleotide",
        "verisimilitudinous",
        "unprinciplednesses",
        "exceptionabilities",
        "imperturbabilities",
        "irretrievabilities",
        "misinterpretations",
        "fractionalizations",
        "photodecomposition",
        "evapotranspiration",
        "irresponsivenesses",
        "reinstitutionalize",
        "inexpressibilities",
        "stereophotographic",
        "diethylcarbamazine",
        "characteristically",
        "intersubstitutable",
        "uniformitarianisms",
        "counterquestioning",
        "thrombophlebitides",
        "electrophilicities",
        "overindebtednesses",
        "insubstantialities",
        "overrepresentation",
        "redistributionists",
        "weatherproofnesses",
        "ultracentrifugally",
        "overembellishments",
        "insufferablenesses",
        "immunoreactivities",
        "dihydroergotamines",
        "psychopathologists",
        "transformationally",
        "expressionlessness",
        "presumptuousnesses",
        "inauspiciousnesses",
        "spectrohelioscopes",
        "glycosaminoglycans",
        "micropaleontologic",
        "piezoelectricities",
        "disintermediations",
        "pentachlorophenols",
        "sedimentologically",
        "microdensitometers",
        "photodissociations",
        "contradistinctions",
        "stereoregularities",
        "premillenarianisms",
        "disingenuousnesses",
        "heterogenousnesses",
        "ultranationalistic",
        "unprofitablenesses",
        "pronounceabilities",
        "indefatigabilities",
        "maladministrations",
        "microdensitometric",
        "institutionalizing",
        "pertinaciousnesses",
        "knowledgeabilities",
        "photodisintegrated",
        "somnambulistically",
        "overclassification",
        "overcentralization",
        "inexpressivenesses",
        "microcrystallinity",
        "supersensitivities",
        "inexhaustibilities",
        "spectroheliography",
        "photodisintegrates",
        "dedifferentiations",
        "collectivistically",
        "ultramicroscopical",
        "misclassifications",
        "hemidemisemiquaver",
        "counterpropagandas",
        "inexpugnablenesses",
        "postfertilizations",
        "microcalorimetries",
        "counterpropagation",
        "spectroheliographs",
        "spectrographically",
        "counterdemonstrate",
        "disconsolatenesses",
        "polyesterification",
        "incorruptibilities",
        "counteraccusations",
        "anticounterfeiting",
        "counterintuitively",
        "antidiscrimination",
        "perpendicularities",
        "antiadministration",
        "photosynthetically",
        "biocompatibilities",
        "comprehensibleness",
        "incorrigiblenesses",
        "superminicomputers",
        "transportabilities",
        "diastereoisomerism",
        "exterritorialities",
        "spectrofluorometer",
        "micromorphological",
        "conversationalists",
        "internationalising",
        "thermoluminescence",
        "disproportionation",
        "semipermeabilities",
        "overfertilizations",
        "physiopathological",
        "largeheartednesses",
        "pseudotuberculosis",
        "pseudotuberculoses",
        "rambunctiousnesses",
        "anthropomorphizing",
        "photosensitivities",
        "incombustibilities",
        "electrodynamometer",
        "polychromatophilia",
        "archaeoastronomies",
        "inharmoniousnesses",
        "internationalities",
        "photosensitization",
        "lepidopterologists",
        "lepidopterological",
        "hemoglobinopathies",
        "irremediablenesses",
        "overconcentrations",
        "supernaturalnesses",
        "polychromatophilic",
        "biodegradabilities",
        "opinionativenesses",
        "inhospitablenesses",
        "perchloroethylenes",
        "gedankenexperiment",
        "inconvertibilities",
        "valetudinarianisms",
        "anticholinesterase",
        "disproportionately",
        "orthopsychiatrists",
        "superintellectuals",
        "superintelligences",
        "dehydrochlorinated",
        "immunosuppressions",
        "hypersensitization",
        "chromolithographer",
        "predestinarianisms",
        "unchangeablenesses",
        "immeasurablenesses",
        "postmillennialists",
        "disproportionating",
        "dendrochronologist",
        "chromolithographic",
        "dendrochronologies",
        "vaingloriousnesses",
        "uncharitablenesses",
        "histocompatibility",
        "dehydrochlorinates",
        "methylcholanthrene",
        "hypersensitivities",
        "counterinfluencing",
        "postmillennialisms",
        "disconnectednesses",
        "methylnaphthalenes",
        "hypersensitiveness",
        "irreconcilableness",
        "semiprofessionally",
        "ostentatiousnesses",
        "unreasonablenesses",
        "neurotransmissions",
        "ovolactovegetarian",
        "latitudinarianisms",
        "spectrofluorimeter",
        "methylprednisolone",
        "constitutionalisms",
        "chromolithographed",
        "dehydrochlorinases",
        "disputatiousnesses",
        "consequentialities",
        "glottochronologies",
        "counterinstitution",
        "semiquantitatively",
        "anticommercialisms",
        "micrometeorologist",
        "postmillenarianism",
        "territorialization",
        "electrodesiccation",
        "misrepresentations",
        "antiferromagnetism",
        "incommodiousnesses",
        "semiconservatively",
        "interminablenesses",
        "pseudoparenchymata",
        "glomerulonephritis",
        "conceptualizations",
        "spectrofluorometry",
        "pseudonymousnesses",
        "ungrammaticalities",
        "dimethylhydrazines",
        "radiosensitivities",
        "countergovernments",
        "advantageousnesses",
        "imperishablenesses",
        "phytohemagglutinin",
        "triboluminescences",
        "immunosuppressants",
        "inappreciativeness",
        "nonarbitrarinesses",
        "muddleheadednesses",
        "irreplaceabilities",
        "photomorphogenesis",
        "unconscionableness",
        "neuropsychologists",
        "creditworthinesses",
        "photolithographing",
        "hypernationalistic",
        "claustrophobically",
        "psychopathological",
        "photolithographies",
        "appreciativenesses",
        "commercializations",
        "multicellularities",
        "nonrevolutionaries",
        "irrepressibilities",
        "superadministrator",
        "disagreeablenesses",
        "photomorphogeneses",
        "interconnectedness",
        "adventitiousnesses",
        "electrodepositions",
        "photomicrographies",
        "impermissibilities",
        "transilluminations",
        "unattractivenesses",
        "counteraggressions",
        "soporiferousnesses",
        "anthropocentricity",
        "incommensurability",
        "uncompromisingness",
        "constitutionalists",
        "unassailablenesses",
        "hydrometeorologist",
        "hydrometeorologies",
        "photoreactivations",
        "hydrometallurgists",
        "electromyographies",
        "semidomestications",
        "magnetoresistances",
        "superconglomerates",
        "denominationalisms",
        "transubstantiating",
        "subconsciousnesses",
        "transubstantiation",
        "photoreproductions",
        "sentimentalization",
        "denationalizations",
        "apprehensivenesses",
        "conservativenesses",
        "cantankerousnesses",
        "nonanthropological",
        "counteradaptations",
        "impracticabilities",
        "granulocytopoieses",
        "pentylenetetrazols",
        "demythologizations",
        "dematerializations",
        "granulocytopoiesis",
        "landlubberlinesses",
        "methemoglobinemias",
        "simplemindednesses",
        "thermoplasticities",
        "transistorizations",
        "mucopolysaccharide",
        "accumulativenesses",
        "supercivilizations",
        "dimethyltryptamine",
        "hydrometallurgical",
        "internationalizing",
        "counteradvertising",
        "triboelectricities",
        "superciliousnesses",
        "nonanthropologists",
        "commensurabilities",
        "discourteousnesses",
        "inexplicablenesses",
        "hyperpolarizations",
        "contemptiblenesses",
        "hypoparathyroidism",
        "obstreperousnesses",
        "aerothermodynamics",
        "reprehensibilities",
        "microphotographers",
        "electroretinograph",
        "heavyheartednesses",
        "electroretinograms",
        "epithelializations",
        "extemporaneousness",
        "feeblemindednesses",
        "hyperconcentration",
        "electrophotography",
        "structuralizations",
        "reconstructionists",
        "intercommunicating",
        "provincializations",
        "discriminabilities",
        "hyperconscientious",
        "noncooperationists",
        "intelligiblenesses",
        "videoconferencings",
        "intraventricularly",
        "indisputablenesses",
        "distinguishability",
        "supranationalities",
        "incontestabilities",
        "interpretabilities",
        "substitutabilities",
        "interinstitutional",
        "absentmindednesses",
        "unsubstantialities",
        "renationalizations",
        "interrelatednesses",
        "myeloproliferative",
        "postpsychoanalytic",
        "hydroxytryptamines",
        "electrochemistries",
        "microradiographies",
        "electrophoretogram",
        "quantitativenesses",
        "ribonucleoproteins",
        "biotransformations",
        "reconstructionisms",
        "psychophysiologist",
        "psychophysiologies",
        "indiscriminateness",
        "tachistoscopically",
        "immunopathological",
        "histophysiological",
        "malcontentednesses",
        "constitutionalized",
        "microlepidopterous",
        "indispensabilities",
        "decriminalizations",
        "diphenylhydantoins",
        "constitutionalizes",
        "macroglobulinemias",
        "intellectualnesses",
        "disreputablenesses",
        "roentgenologically",
        "inconclusivenesses",
        "interrelationships",
        "forethoughtfulness",
        "indiscriminatingly",
        "intercommunication",
        "microenvironmental",
        "industrializations",
        "autobiographically",
        "quantificationally",
        "preposterousnesses",
        "nonfraternizations",
        "electroluminescent",
        "generalizabilities",
        "immunohematologies",
        "intercolumniations",
        "inconsequentiality",
        "immunohematologist",
        "hyperconsciousness",
        "unintelligibleness",
        "hyperimmunizations",
        "nondiscriminations",
        "geochronologically",
        "representativeness",
        "transcendentalisms",
        "rehospitalizations",
        "nondestructiveness",
        "hyperrationalities",
        "counterconventions",
        "transcendentalists",
        "inconsiderableness",
        "subcategorizations",
        "dishonorablenesses",
        "microreproductions",
        "mechanochemistries",
        "individualizations",
        "phenomenologically",
        "handcraftsmanships",
        "congregationalisms",
        "puzzleheadednesses",
        "representationally",
        "psychoanalytically",
        "astrophotographies",
        "counterstrategists",
        "faintheartednesses",
        "astrophotographers",
        "counterculturalism",
        "congregationalists",
        "consubstantiations",
        "particularizations",
        "bloodthirstinesses",
        "immunoprecipitates",
        "greatheartednesses",
        "unresponsivenesses",
        "sphygmomanometries",
        "imperceptivenesses",
        "countersuggestions",
        "electrocardiograph",
        "angiocardiographic",
        "lumpenproletariats",
        "indissolublenesses",
        "establishmentarian",
        "depersonalizations",
        "companionabilities",
        "noncomparabilities",
        "immunofluorescence",
        "noncommutativities",
        "nondeductibilities",
        "bourgeoisification",
        "immunoprecipitated",
        "introspectionistic",
        "unrestrainednesses",
        "rhabdomyosarcomata",
        "inconceivabilities",
        "overoptimistically",
        "overinterpretation",
        "overgeneralization",
        "contemptuousnesses",
        "representativities",
        "pheochromocytomata",
        "monochromaticities",
        "stoichiometrically",
        "unenthusiastically",
        "electrocardiograms",
        "dephosphorylations",
        "psychobiographical",
        "hyperalimentations",
        "lymphangiographies",
        "spectrophotometers",
        "compartmentalising",
        "transmissibilities",
        "triskaidekaphobias",
        "misadministrations",
        "neuroendocrinology",
        "rechromatographies",
        "hydroelectricities",
        "determinablenesses",
        "homoscedasticities",
        "stoutheartednesses",
        "hypercoagulability",
        "transmogrification",
        "overindustrialized",
        "phosphoglucomutase",
        "misidentifications",
        "echocardiographies",
        "submicroscopically",
        "disenfranchisement",
        "revascularizations",
        "quasiperiodicities",
        "antivivisectionist",
        "rechromatographing",
        "hypophysectomizing",
        "deconstructionists",
        "subclassifications",
        "microphotographies",
        "countereducational",
        "echocardiographers",
        "intransitivenesses",
        "counterrevolutions",
        "anagrammatizations",
        "compartmentalizing",
        "immunocytochemical",
        "chlorofluorocarbon",
        "unpredictabilities",
        "overindustrializes",
        "nonconfrontational",
        "entrepreneurialism",
        "inconsolablenesses",
        "immunodeficiencies",
        "ethnomethodologies",
        "electrophysiologic",
        "ethnomethodologist",
        "propertylessnesses",
        "hyposensitizations",
        "psychopharmacology",
        "quattuordecillions",
        "pathophysiological",
        "satisfactorinesses",
        "neuropharmacologic",
        "microencapsulation",
        "deliberativenesses",
        "microencapsulating",
        "praiseworthinesses",
        "ethnomusicological",
        "insusceptibilities",
        "interchangeability",
        "phonocardiographic",
        "diethylstilbestrol",
        "phosphodiesterases",
        "ethnomusicologists",
        "orthogonalizations",
        "hypercorrectnesses",
        "theatricalizations",
        "spectrophotometric",
        "macrophotographies",
        "communicablenesses",
        "immunopathologists",
        "chemotherapeutical",
        "electrocorticogram",
        "melodramatizations",
        "straightforwardest",
        "counterretaliation",
        "bacteriorhodopsins",
        "organophosphoruses",
        "counterdeployments",
        "indestructibleness",
        "ophthalmologically",
        "deoxyribonucleases",
        "telecommunications",
        "noninterchangeable",
        "hyperpigmentations",
        "uncomprehendingly",
        "compartmentalizes",
        "determinatenesses",
        "suspensefulnesses",
        "irrepealabilities",
        "constitutionalist",
        "superintendencies",
        "misrepresentation",
        "unforgivingnesses",
        "archconservatives",
        "contemporaneities",
        "electrometallurgy",
        "interdisciplinary",
        "antischizophrenic",
        "antiestablishment",
        "exaggeratednesses",
        "unsympathetically",
        "inseparablenesses",
        "compartmentalized",
        "immunoprecipitate",
        "diastereoisomeric",
        "complementarities",
        "monochromatically",
        "suppressivenesses",
        "reclassifications",
        "overexploitations",
        "electrophysiology",
        "prequalifications",
        "compressibilities",
        "morphogenetically",
        "phytogeographical",
        "thermochemistries",
        "constitutionalize",
        "interdepartmental",
        "recentralizations",
        "bittersweetnesses",
        "micropaleontology",
        "demythologization",
        "openmouthednesses",
        "contemplativeness",
        "plainspokennesses",
        "immunosuppressing",
        "histopathologists",
        "hyperpolarization",
        "superintelligence",
        "microreproduction",
        "antievolutionisms",
        "crystallographies",
        "objectionableness",
        "irrefragabilities",
        "complementariness",
        "antievolutionists",
        "underutilizations",
        "historiographical",
        "antirevolutionary",
        "hyperreactivities",
        "chromolithography",
        "superintellectual",
        "unconcernednesses",
        "compartmentations",
        "spontaneousnesses",
        "uncompetitiveness",
        "reprehensibleness",
        "companionableness",
        "compassionateness",
        "conspicuousnesses",
        "reconstructionist",
        "contemptibilities",
        "contemporaneously",
        "antidesegregation",
        "preincorporations",
        "anticonservations",
        "polycondensations",
        "distrustfulnesses",
        "swellheadednesses",
        "kaleidoscopically",
        "superlativenesses",
        "inaccessibilities",
        "prefigurativeness",
        "distressfulnesses",
        "physiopathologies",
        "microphotometries",
        "rechromatographed",
        "electroretinogram",
        "nullificationists",
        "oversubscriptions",
        "immunopathologist",
        "physicochemically",
        "unclimbablenesses",
        "immunopathologies",
        "comparativenesses",
        "gynandromorphisms",
        "agglutinabilities",
        "fictionalizations",
        "microradiographic",
        "exchangeabilities",
        "bioavailabilities",
        "intergenerational",
        "probabilistically",
        "supermillionaires",
        "unrighteousnesses",
        "postrevolutionary",
        "comfortablenesses",
        "micromorphologies",
        "conceivablenesses",
        "reconstructionism",
        "superminicomputer",
        "antirationalities",
        "inscrutablenesses",
        "comprehensibility",
        "controllabilities",
        "denaturalizations",
        "supernaturalistic",
        "unendurablenesses",
        "antieavesdropping",
        "complicatednesses",
        "oceanographically",
        "crystallographers",
        "compartmentalises",
        "intergovernmental",
        "biodeteriorations",
        "interassociations",
        "electronegativity",
        "immunosuppressive",
        "predeterminations",
        "anticlimactically",
        "prejudicialnesses",
        "openheartednesses",
        "denationalization",
        "electromagnetally",
        "overfertilization",
        "latitudinarianism",
        "demineralizations",
        "irreparablenesses",
        "undernourishments",
        "antireductionisms",
        "inquisitivenesses",
        "antischizophrenia",
        "gentlemanlikeness",
        "supranationalists",
        "consequentialness",
        "symptomatological",
        "anticommercialism",
        "antireductionists",
        "intercalibrations",
        "sententiousnesses",
        "unemployabilities",
        "compartmentalised",
        "glossopharyngeals",
        "microminiaturized",
        "imperialistically",
        "controversialisms",
        "impressionability",
        "chemoautotrophies",
        "insensitivenesses",
        "supranationalisms",
        "controversialists",
        "constitutionalism",
        "interavailability",
        "misunderstandings",
        "unconscionability",
        "consubstantiation",
        "cryptocrystalline",
        "presentablenesses",
        "instructivenesses",
        "piezoelectrically",
        "microencapsulates",
        "underdevelopments",
        "premillennialisms",
        "microvasculatures",
        "pretentiousnesses",
        "overextrapolation",
        "contradictoriness",
        "intellectualistic",
        "overprescriptions",
        "dihydroergotamine",
        "intellectualities",
        "microencapsulated",
        "environmentalists",
        "characterological",
        "antimaterialistic",
        "microprogrammings",
        "instrumentalities",
        "symmetricalnesses",
        "electropherograms",
        "microphotographic",
        "competitivenesses",
        "compendiousnesses",
        "spectrohelioscope",
        "environmentalisms",
        "communicabilities",
        "characterizations",
        "premillennialists",
        "improvisationally",
        "bacteriorhodopsin",
        "spectroheliograms",
        "institutionalisms",
        "premillenarianism",
        "oversensitivities",
        "institutionalists",
        "intellectualizing",
        "hyperalimentation",
        "hydroxytryptamine",
        "microcirculations",
        "picturesquenesses",
        "consideratenesses",
        "institutionalises",
        "institutionalised",
        "contradistinction",
        "oversensitiveness",
        "microinstructions",
        "downheartednesses",
        "communicativeness",
        "irresponsibleness",
        "pithecanthropines",
        "contradistinctive",
        "monospecificities",
        "contradistinguish",
        "biotransformation",
        "institutionalized",
        "acrimoniousnesses",
        "intellectualizers",
        "institutionalizes",
        "spectroheliograph",
        "biometeorological",
        "containerisations",
        "overembellishment",
        "prestidigitations",
        "temporomandibular",
        "microdensitometer",
        "disinterestedness",
        "entrepreneurships",
        "foresightednesses",
        "immunochemistries",
        "reconcilabilities",
        "prestigiousnesses",
        "demonstrativeness",
        "underachievements",
        "politicalizations",
        "histophysiologies",
        "impecuniousnesses",
        "overindustrialize",
        "knowledgeableness",
        "chemotherapeutics",
        "theatricalization",
        "microdensitometry",
        "circumambulations",
        "electromechanical",
        "biostratigraphies",
        "undesirablenesses",
        "overproportioning",
        "spiritualizations",
        "architectonically",
        "insurrectionaries",
        "hyperpigmentation",
        "demonstrabilities",
        "commonplacenesses",
        "contractibilities",
        "superspeculations",
        "irrevocablenesses",
        "serviceablenesses",
        "reconceptualizing",
        "repetitiousnesses",
        "irreversibilities",
        "distractibilities",
        "immunocompromised",
        "disintermediation",
        "antimiscegenation",
        "antiorganizations",
        "teratocarcinomata",
        "reproachfulnesses",
        "tenderheartedness",
        "unfavorablenesses",
        "spectrophotometer",
        "polarographically",
        "recognizabilities",
        "plethysmographies",
        "overproportionate",
        "unfashionableness",
        "immunosuppression",
        "superspectaculars",
        "understandability",
        "microsporogenesis",
        "containerizations",
        "entrepreneurially",
        "microsporogeneses",
        "tendentiousnesses",
        "immunocompetences",
        "undemonstratively",
        "cryopreservations",
        "antihypertensives",
        "commissionerships",
        "overorchestrating",
        "onomatopoetically",
        "dihydroxyacetones",
        "contentiousnesses",
        "acquaintanceships",
        "chemoprophylactic",
        "bathythermographs",
        "phytosociological",
        "distinctivenesses",
        "immunoregulations",
        "electrostatically",
        "exceptionalnesses",
        "electromagnetisms",
        "distastefulnesses",
        "arteriosclerotics",
        "microcalorimeters",
        "commercialization",
        "underhandednesses",
        "unconsciousnesses",
        "sphygmomanometers",
        "dichotomousnesses",
        "pleasurablenesses",
        "electrooculograms",
        "deterministically",
        "electromyographic",
        "isoelectronically",
        "immunogenetically",
        "antitechnological",
        "immunogeneticists",
        "microcalorimetric",
        "bacteriologically",
        "intercorrelations",
        "chymotrypsinogens",
        "misrepresentative",
        "immunotherapeutic",
        "phytopathological",
        "opinionatednesses",
        "insolubilizations",
        "everlastingnesses",
        "plenipotentiaries",
        "immunosuppressant",
        "untranslatability",
        "intercolumniation",
        "dimethylhydrazine",
        "suppressibilities",
        "antiferromagnetic",
        "temerariousnesses",
        "dematerialization",
        "immunohematologic",
        "demilitarizations",
        "impenetrabilities",
        "fissiparousnesses",
        "unsophistications",
        "odoriferousnesses",
        "circumstantiating",
        "circumstantiality",
        "remilitarizations",
        "irreplaceableness",
        "biogeochemistries",
        "superplasticities",
        "microbiologically",
        "histopathological",
        "chemiluminescence",
        "recapitalizations",
        "microseismicities",
        "constitutionality",
        "polyacrylonitrile",
        "interestingnesses",
        "micromanipulation",
        "intercommunicated",
        "ariboflavinosises",
        "uncontrollability",
        "renationalization",
        "acquisitivenesses",
        "antihumanitarians",
        "irresistibilities",
        "overexaggerations",
        "circumnavigations",
        "contraindications",
        "intercommunicates",
        "microevolutionary",
        "unconventionality",
        "recrystallization",
        "cryptographically",
        "tempestuousnesses",
        "preternaturalness",
        "comprehensiveness",
        "pictorializations",
        "spectrophotometry",
        "intelligibilities",
        "microenvironments",
        "biomathematicians",
        "sesquicentenaries",
        "uncontroversially",
        "irreproachability",
        "superromanticisms",
        "expeditiousnesses",
        "rememberabilities",
        "remorselessnesses",
        "deindustrializing",
        "susceptiblenesses",
        "impregnablenesses",
        "hyperpituitarisms",
        "splendiferousness",
        "intemperatenesses",
        "overfamiliarities",
        "mistrustfulnesses",
        "immunofluorescent",
        "microphotographer",
        "spectroscopically",
        "jurisprudentially",
        "obstructivenesses",
        "oversophisticated",
        "micromanipulators",
        "superregenerative",
        "instantaneousness",
        "mistranscriptions",
        "communitarianisms",
        "gentlemanlinesses",
        "kindheartednesses",
        "deleteriousnesses",
        "interdependencies",
        "recontextualizing",
        "sesquicentennials",
        "monosyllabicities",
        "irreproducibility",
        "reproducibilities",
        "multiculturalisms",
        "nucleophilicities",
        "noncontemporaries",
        "scandalmongerings",
        "dialectologically",
        "intraperitoneally",
        "misadministration",
        "pharmacognostical",
        "decomposabilities",
        "autoimmunizations",
        "universalizations",
        "macroinstructions",
        "ribonucleoprotein",
        "paternalistically",
        "subordinatenesses",
        "pharisaicalnesses",
        "echocardiographer",
        "nationalistically",
        "directionlessness",
        "pyroelectricities",
        "viscoelasticities",
        "postbaccalaureate",
        "nonconstitutional",
        "triskaidekaphobia",
        "differentiability",
        "echocardiographic",
        "autointoxications",
        "macroglobulinemic",
        "noncooperationist",
        "pharmacotherapies",
        "materialistically",
        "anesthesiologists",
        "pyrometallurgical",
        "particularization",
        "xeroradiographies",
        "heterotrophically",
        "carboxypeptidases",
        "indissolubilities",
        "pharmacologically",
        "rhynchocephalians",
        "indispensableness",
        "interrelationship",
        "noncontradictions",
        "macroglobulinemia",
        "indiscriminations",
        "disgracefulnesses",
        "macroevolutionary",
        "governmentalizing",
        "intrathoracically",
        "carcinogenicities",
        "hexachloroethanes",
        "nondenominational",
        "orthogonalization",
        "pathophysiologies",
        "trigonometrically",
        "noncomprehensions",
        "handcraftsmanship",
        "necessitousnesses",
        "counterstrategist",
        "transcendentalist",
        "transcendentalism",
        "straitlacednesses",
        "triiodothyronines",
        "necessitarianisms",
        "countersuggestion",
        "counterstrategies",
        "disreputabilities",
        "provincialization",
        "noncommunications",
        "counterstatements",
        "imponderabilities",
        "autocatalytically",
        "transcriptionists",
        "transcriptionally",
        "indeterminateness",
        "roentgenographies",
        "marriageabilities",
        "depoliticizations",
        "catecholaminergic",
        "countertendencies",
        "depolymerizations",
        "cardiorespiratory",
        "bloodguiltinesses",
        "straightforwarder",
        "magnanimousnesses",
        "triphenylmethanes",
        "hypophysectomizes",
        "nonconfrontations",
        "hypophysectomized",
        "deconstructionist",
        "confrontationists",
        "straightforwardly",
        "disrespectfulness",
        "straightjacketing",
        "indigestibilities",
        "counterterrorisms",
        "hyposensitization",
        "wrongheadednesses",
        "nearsightednesses",
        "counterterrorists",
        "countertraditions",
        "disrespectability",
        "decriminalization",
        "angiocardiography",
        "zoogeographically",
        "longsightednesses",
        "precertifications",
        "disfranchisements",
        "reindustrializing",
        "epithelialization",
        "nonestablishments",
        "hypochondriacally",
        "departmentalizing",
        "paraformaldehydes",
        "industrialization",
        "overambitiousness",
        "uninhibitednesses",
        "interpopulational",
        "introspectiveness",
        "medulloblastomata",
        "substantivenesses",
        "indubitablenesses",
        "diphthongizations",
        "videoconferencing",
        "nonentertainments",
        "revolutionariness",
        "hyperintellectual",
        "parameterizations",
        "depersonalization",
        "diphenylhydantoin",
        "electrochemically",
        "phonocardiography",
        "melodramatization",
        "deoxyribonuclease",
        "ineffectualnesses",
        "phonocardiographs",
        "inefficaciousness",
        "hydroelectrically",
        "revascularization",
        "ethnocentricities",
        "organophosphorous",
        "clinicopathologic",
        "editorializations",
        "turbidimetrically",
        "industriousnesses",
        "mellifluousnesses",
        "paradoxicalnesses",
        "ineffectivenesses",
        "coldheartednesses",
        "tintinnabulations",
        "nonfraternization",
        "ineffaceabilities",
        "quarrelsomenesses",
        "rehospitalization",
        "chromolithographs",
        "autotetraploidies",
        "parasitologically",
        "congregationalist",
        "individualization",
        "interprofessional",
        "lymphangiographic",
        "lymphadenopathies",
        "troublesomenesses",
        "heterosexualities",
        "hyperimmunization",
        "mechanoreceptions",
        "autoradiographies",
        "nondiscriminatory",
        "astrophotographer",
        "indistinguishable",
        "indistinguishably",
        "lymphogranulomata",
        "schizophrenically",
        "congregationalism",
        "technicalizations",
        "parathyroidectomy",
        "meaninglessnesses",
        "totalitarianizing",
        "nondiscrimination",
        "hyperinnervations",
        "phenylethylamines",
        "trueheartednesses",
        "substantialnesses",
        "parapsychological",
        "lumpenproletariat",
        "declassifications",
        "philanthropically",
        "trustworthinesses",
        "paraprofessionals",
        "nonenforceability",
        "introspectionists",
        "indomitablenesses",
        "quadricentennials",
        "parapsychologists",
        "dephosphorylating",
        "introspectionisms",
        "electroanalytical",
        "nonecclesiastical",
        "hyperinflationary",
        "unintelligibility",
        "electrocardiogram",
        "rhabdomyosarcomas",
        "dephosphorylation",
        "pheochromocytomas",
        "alternativenesses",
        "aminotransferases",
        "transdisciplinary",
        "fantasticalnesses",
        "amphitheatrically",
        "incongruousnesses",
        "countercomplaints",
        "psychosomatically",
        "counterconspiracy",
        "subcategorization",
        "counterconvention",
        "psychotherapeutic",
        "countercriticisms",
        "strongyloidosises",
        "countercommercial",
        "psychosexualities",
        "neuropathological",
        "intersubjectively",
        "warrantablenesses",
        "perfunctorinesses",
        "structuralization",
        "psychophysiologic",
        "warmheartednesses",
        "hyperemotionality",
        "aerothermodynamic",
        "rumbustiousnesses",
        "counterchallenges",
        "inconsequentially",
        "psychobiographies",
        "neurodegenerative",
        "counterdeployment",
        "inconspicuousness",
        "subclassification",
        "rudimentarinesses",
        "anagrammatization",
        "misclassification",
        "counterespionages",
        "miscommunications",
        "permissiblenesses",
        "counterculturists",
        "interstimulations",
        "refrangiblenesses",
        "inconsiderateness",
        "neurofibromatoses",
        "neurofibromatosis",
        "countercyclically",
        "defenselessnesses",
        "psychobiographers",
        "unmelodiousnesses",
        "treacherousnesses",
        "implicativenesses",
        "approachabilities",
        "neuropathologists",
        "inconceivableness",
        "embourgeoisements",
        "counteradaptation",
        "transubstantiates",
        "transubstantiated",
        "mischaracterizing",
        "configurationally",
        "counteraggression",
        "neuroradiologists",
        "transparentnesses",
        "neuroradiological",
        "miscellaneousness",
        "transthoracically",
        "transplantability",
        "psycholinguistics",
        "saccharifications",
        "neurotransmitters",
        "hardheartednesses",
        "postresurrections",
        "intertranslatable",
        "maintainabilities",
        "neurotransmission",
        "appropriatenesses",
        "counteraccusation",
        "structurelessness",
        "chlortetracycline",
        "neuropsychologist",
        "mischievousnesses",
        "neurophysiologies",
        "neurophysiologist",
        "transnationalisms",
        "maladministration",
        "neuropharmacology",
        "counterblockading",
        "psychodynamically",
        "intersubjectivity",
        "malapportionments",
        "incommunicability",
        "flirtatiousnesses",
        "posttranslational",
        "unmitigatednesses",
        "incomparabilities",
        "neuropsychologies",
        "anachronistically",
        "incompatibilities",
        "neuropsychiatries",
        "neuropsychiatrist",
        "psychopathologist",
        "psychopathologies",
        "softheartednesses",
        "fashionablenesses",
        "hyperexcitability",
        "pentachlorophenol",
        "indefeasibilities",
        "atrabiliousnesses",
        "indefatigableness",
        "counterpropaganda",
        "dedifferentiation",
        "cholangiographies",
        "dedifferentiating",
        "indefectibilities",
        "practicablenesses",
        "indefensibilities",
        "sanctimoniousness",
        "housewifelinesses",
        "pseudoclassicisms",
        "otolaryngological",
        "nonbiodegradables",
        "cyclophosphamides",
        "counterproductive",
        "perspicaciousness",
        "transgenerational",
        "trichloroethylene",
        "depressurizations",
        "intolerablenesses",
        "dextroamphetamine",
        "perspicuousnesses",
        "counterquestioned",
        "transferabilities",
        "indestructibility",
        "countersignatures",
        "subjectivizations",
        "indescribableness",
        "pestiferousnesses",
        "tridimensionality",
        "provocativenesses",
        "unobtrusivenesses",
        "saponaceousnesses",
        "disadvantageously",
        "misappropriations",
        "purposelessnesses",
        "disadvantagedness",
        "otolaryngologists",
        "indefinablenesses",
        "counterscientific",
        "cholecystectomies",
        "postfertilization",
        "authoritarianisms",
        "counterrevolution",
        "authoritativeness",
        "exhaustlessnesses",
        "nonbelligerencies",
        "counterpetitioned",
        "orthopsychiatries",
        "postmillennialist",
        "orthopsychiatrist",
        "disproportionated",
        "counterinfluences",
        "counterinsurgency",
        "incorrigibilities",
        "counterinsurgents",
        "nephelometrically",
        "postmillennialism",
        "translatabilities",
        "counterinfluenced",
        "disproportionates",
        "coadministrations",
        "countergovernment",
        "miscomprehensions",
        "magnetostrictions",
        "counterincentives",
        "intervisibilities",
        "counterguerrillas",
        "perchloroethylene",
        "counterhypothesis",
        "counterhypotheses",
        "floriferousnesses",
        "roundheadednesses",
        "domineeringnesses",
        "transilluminating",
        "persnicketinesses",
        "transillumination",
        "emotionlessnesses",
        "transilluminators",
        "punctiliousnesses",
        "nonavailabilities",
        "australopithecine",
        "hyperdevelopments",
        "carnivorousnesses",
        "socioeconomically",
        "counteroffensives",
        "pseudoparenchymas",
        "magnetoresistance",
        "maneuverabilities",
        "disqualifications",
        "pentylenetetrazol",
        "transistorization",
        "chlordiazepoxides",
        "nonanthropologist",
        "pseudopregnancies",
        "triboluminescence",
        "hyperirritability",
        "myelosuppressions",
        "halfheartednesses",
        "inappropriateness",
        "semiautomatically",
        "photomechanically",
        "unalterablenesses",
        "electrodeposition",
        "photomicrographic",
        "informativenesses",
        "programmabilities",
        "nonsensicalnesses",
        "lexicographically",
        "telephotographies",
        "disestablishments",
        "radioisotopically",
        "electrodepositing",
        "photolithographic",
        "progressivenesses",
        "photolithographed",
        "hypermutabilities",
        "accountablenesses",
        "radioimmunoassays",
        "metapsychological",
        "iontophoretically",
        "adventuresomeness",
        "photojournalistic",
        "importunatenesses",
        "thermostabilities",
        "nonsuperimposable",
        "allegoricalnesses",
        "semidocumentaries",
        "synchrocyclotrons",
        "methemoglobinemia",
        "internationalizes",
        "homogeneousnesses",
        "radiotelegraphies",
        "supercivilization",
        "photopolarimeters",
        "multibillionaires",
        "restrictivenesses",
        "photoperiodically",
        "semiconsciousness",
        "standoffishnesses",
        "unanswerabilities",
        "thermoregulations",
        "superbillionaires",
        "levelheadednesses",
        "conceptualization",
        "illusionistically",
        "cytomegaloviruses",
        "unapproachability",
        "inflammablenesses",
        "radiochromatogram",
        "polymorphonuclear",
        "overcommunicating",
        "paleogeographical",
        "nonproliferations",
        "ultrastructurally",
        "overcommunication",
        "opprobriousnesses",
        "invulnerabilities",
        "destructivenesses",
        "photofluorography",
        "accommodationists",
        "nonprofessionally",
        "gastroenteritises",
        "epiphenomenalisms",
        "paleomagnetically",
        "cooperativenesses",
        "involuntarinesses",
        "nonproductiveness",
        "ultrasonographies",
        "ultrasonographers",
        "allotetraploidies",
        "multimillionaires",
        "nonrepresentative",
        "accommodativeness",
        "paleoclimatologic",
        "paleoanthropology",
        "overcompensations",
        "unacceptabilities",
        "radioautographies",
        "adventurousnesses",
        "extradepartmental",
        "photointerpreters",
        "radiobiologically",
        "descriptivenesses",
        "multidisciplinary",
        "multigenerational",
        "photogrammetrists",
        "extragovernmental",
        "inattentivenesses",
        "dictatorialnesses",
        "hyperstimulations",
        "synchronousnesses",
        "nonreappointments",
        "prohibitivenesses",
        "discombobulations",
        "impersonalization",
        "illimitablenesses",
        "gastroenteritides",
        "inapplicabilities",
        "imperishabilities",
        "efficaciousnesses",
        "mispronunciations",
        "thermographically",
        "dehumidifications",
        "semipornographies",
        "methylnaphthalene",
        "acetylsalicylates",
        "semiprofessionals",
        "respectablenesses",
        "opportunistically",
        "irrecoverableness",
        "superfluousnesses",
        "internationalised",
        "injudiciousnesses",
        "clandestinenesses",
        "antiassimilations",
        "ovoviviparousness",
        "irreconcilability",
        "phototypesettings",
        "antiauthoritarian",
        "inadmissibilities",
        "conversationalist",
        "internationalises",
        "thermoluminescent",
        "conventionalizing",
        "overzealousnesses",
        "inopportunenesses",
        "valetudinarianism",
        "bronchopneumonias",
        "inoperativenesses",
        "unceremoniousness",
        "resolidifications",
        "rationalistically",
        "unchangeabilities",
        "irreformabilities",
        "cytotechnologists",
        "superheavyweights",
        "dehydrochlorinate",
        "thermodynamicists",
        "resourcefulnesses",
        "thermoelectricity",
        "heterogeneousness",
        "thermodynamically",
        "dehydrochlorinase",
        "predestinarianism",
        "cytotaxonomically",
        "conventionalities",
        "inoffensivenesses",
        "hydrometallurgies",
        "epidemiologically",
        "consecutivenesses",
        "anthropologically",
        "blameworthinesses",
        "illustriousnesses",
        "professionalizing",
        "superconservative",
        "conscientiousness",
        "vasoconstrictions",
        "photoreproduction",
        "supercorporations",
        "denominationalism",
        "photorespirations",
        "superconglomerate",
        "superconductivity",
        "semidomestication",
        "internationalized",
        "hydrometallurgist",
        "hemochromatosises",
        "thermoperiodicity",
        "photoreactivation",
        "photoreactivating",
        "unassailabilities",
        "anthropocentrisms",
        "internationalisms",
        "anthropomorphisms",
        "anthropomorphists",
        "imaginativenesses",
        "internationalists",
        "diaphragmatically",
        "crestfallennesses",
        "superenthusiastic",
        "photosynthesizing",
        "superfecundations",
        "phototelegraphies",
        "mountainousnesses",
        "responsiblenesses",
        "inalterablenesses",
        "disequilibrations",
        "lepidopterologies",
        "anthropomorphizes",
        "anthropomorphized",
        "inheritablenesses",
        "cytopathogenicity",
        "overconcentration",
        "overconscientious",
        "superefficiencies",
        "lepidopterologist",
        "convertiblenesses",
        "dispassionateness",
        "confidentialities",
        "photocoagulations",
        "ultracontemporary",
        "inexplicabilities",
        "coproprietorships",
        "dorsoventralities",
        "precipitousnesses",
        "hyperventilations",
        "telecommunication",
        "ultraconservative",
        "photocompositions",
        "ultracentrifuging",
        "stereochemistries",
        "ultraconservatism",
        "mineralocorticoid",
        "hemagglutinations",
        "misinterpretation",
        "stereospecificity",
        "photoconductivity",
        "merchantabilities",
        "denuclearizations",
        "phosphoglycerates",
        "fragmentarinesses",
        "grammaticalnesses",
        "blasphemousnesses",
        "thoughtlessnesses",
        "unpretentiousness",
        "quattuordecillion",
        "ethnomusicologies",
        "choreographically",
        "inexpressibleness",
        "fractionalization",
        "ethnomusicologist",
        "photodisintegrate",
        "ineradicabilities",
        "incalculabilities",
        "decentralizations",
        "stereomicroscopes",
        "stereomicroscopic",
        "inexcusablenesses",
        "pancreatectomized",
        "copolymerizations",
        "extraterrestrials",
        "choriocarcinomata",
        "dorsiventralities",
        "mesembryanthemums",
        "teleconferencings",
        "encephalographies",
        "inexhaustibleness",
        "ignominiousnesses",
        "crashworthinesses",
        "bureaucratization",
        "redistributionist",
        "stereophotography",
        "meritoriousnesses",
        "retroperitoneally",
        "nonmathematicians",
        "multitudinousness",
        "chorioallantoides",
        "thrombocytopenias",
        "uniformitarianism",
        "encephalomyelitis",
        "unidimensionality",
        "ferrimagnetically",
        "inexpensivenesses",
        "ceremoniousnesses",
        "nonmanufacturings",
        "interpenetrations",
        "reinterpretations",
        "multiprogrammings",
        "collectivizations",
        "destructibilities",
        "photoduplications",
        "electroconvulsive",
        "misidentification",
        "ultraprofessional",
        "overcommercialize",
        "precipitatenesses",
        "ultranationalists",
        "municipalizations",
        "tightfistednesses",
        "ultranationalisms",
        "quatercentenaries",
        "phosphodiesterase",
        "nonparticipations",
        "precipitantnesses",
        "collaborationists",
        "paleopathologists",
        "proportionalities",
        "paleopathological",
        "bibliographically",
        "retransformations",
        "ultraprogressives",
        "venturesomenesses",
        "hypnotizabilities",
        "extraordinariness",
        "idiosyncratically",
        "glycosaminoglycan",
        "photoelectrically",
        "collaborationisms",
        "inextricabilities",
        "clearheadednesses",
        "photodissociation",
        "epistemologically",
        "ultraminiaturized",
        "photodissociating",
        "nonindustrialized",
        "promiscuousnesses",
        "interventricular",
        "exemplifications",
        "irreducibilities",
        "osteoarthritides",
        "relativistically",
        "geomorphologists",
        "disentanglements",
        "terminologically",
        "chemoprophylaxis",
        "interventionists",
        "hyperinnervation",
        "interventionisms",
        "disfranchisement",
        "imperviousnesses",
        "uneventfulnesses",
        "miniaturizations",
        "remorsefulnesses",
        "enteropathogenic",
        "conjunctivitides",
        "remarkablenesses",
        "reindustrialized",
        "overarticulating",
        "imperceptiveness",
        "intervocalically",
        "unfriendlinesses",
        "chemoprophylaxes",
        "ostentatiousness",
        "unindustrialized",
        "intussusceptions",
        "hyperinvolutions",
        "microsporophylls",
        "introspectionist",
        "unfaithfulnesses",
        "gynandromorphies",
        "overcultivations",
        "despitefulnesses",
        "cumbersomenesses",
        "overaccentuating",
        "overdevelopments",
        "apocryphalnesses",
        "conservativeness",
        "refractivenesses",
        "intervisitations",
        "geomorphological",
        "teleconferencing",
        "postpositionally",
        "irrefutabilities",
        "invaluablenesses",
        "overconstructing",
        "technostructures",
        "heterokaryosises",
        "demagnetizations",
        "hyperparasitisms",
        "conjunctivitises",
        "irremediableness",
        "refrangibilities",
        "diversifications",
        "unexpectednesses",
        "excommunications",
        "overconsumptions",
        "consequentiality",
        "reindustrializes",
        "constitutionless",
        "hyperintelligent",
        "overachievements",
        "polydispersities",
        "cumulativenesses",
        "unfruitfulnesses",
        "polysynaptically",
        "conservationists",
        "forehandednesses",
        "disequilibrating",
        "overconservative",
        "polysyllabically",
        "reincorporations",
        "relentlessnesses",
        "curvilinearities",
        "imperturbability",
        "postresurrection",
        "postpresidential",
        "microsporangiate",
        "enfranchisements",
        "constitutionally",
        "irremovabilities",
        "polyelectrolytes",
        "confirmabilities",
        "hyperinsulinisms",
        "disequilibration",
        "hyperpituitarism",
        "polarizabilities",
        "gynandromorphism",
        "chemotherapeutic",
        "chemotaxonomists",
        "polycondensation",
        "refractorinesses",
        "connoisseurships",
        "simplemindedness",
        "overcompensating",
        "curmudgeonliness",
        "enterochromaffin",
        "reinterpretation",
        "overcompensation",
        "overapplications",
        "polyphyletically",
        "overcentralizing",
        "miraculousnesses",
        "postencephalitic",
        "universalization",
        "possessivenesses",
        "intracutaneously",
        "misapprehensions",
        "geochronological",
        "implausibilities",
        "hexylresorcinols",
        "polyrhythmically",
        "unflappabilities",
        "heterozygosities",
        "teratocarcinomas",
        "intraventricular",
        "diffractometries",
        "misappropriation",
        "intractabilities",
        "hexachlorethanes",
        "misappropriating",
        "chivalrousnesses",
        "hexachloroethane",
        "aggressivenesses",
        "overcompensatory",
        "imperativenesses",
        "exceptionalities",
        "microradiography",
        "microradiographs",
        "hypermetabolisms",
        "despicablenesses",
        "differentiations",
        "overcommunicated",
        "hyperfunctioning",
        "outdoorsmanships",
        "misanthropically",
        "overcommunicates",
        "irresponsibility",
        "blepharoplasties",
        "intransitivities",
        "geochronologists",
        "reinvestigations",
        "irresolutenesses",
        "heterogenousness",
        "intransitiveness",
        "affectlessnesses",
        "outlandishnesses",
        "conspiratorially",
        "overenthusiastic",
        "invinciblenesses",
        "intramolecularly",
        "invulnerableness",
        "confrontationist",
        "irresistibleness",
        "postadolescences",
        "postdepositional",
        "chemoautotrophic",
        "simultaneousness",
        "intrapsychically",
        "regressivenesses",
        "hexachlorophenes",
        "inviolablenesses",
        "politicalization",
        "microvasculature",
        "outrageousnesses",
        "weltanschauungen",
        "overexpectations",
        "ungrammaticality",
        "appreciativeness",
        "irrevocabilities",
        "imperishableness",
        "unidirectionally",
        "shortsightedness",
        "overcomplicating",
        "slanderousnesses",
        "pornographically",
        "postindependence",
        "otherworldliness",
        "regardlessnesses",
        "posthumousnesses",
        "intolerabilities",
        "cyanocobalamines",
        "overcapitalizing",
        "ungraciousnesses",
        "cyanoethylations",
        "hyperexcitements",
        "diverticulosises",
        "remilitarization",
        "postmillenarians",
        "overexploitation",
        "terminablenesses",
        "apprehensiveness",
        "chloramphenicols",
        "unmannerlinesses",
        "introspectionism",
        "chlordiazepoxide",
        "forebodingnesses",
        "fluoroscopically",
        "postexperimental",
        "regeneratenesses",
        "consanguineously",
        "technicalization",
        "impermissibility",
        "teratogenicities",
        "deliverabilities",
        "microprojections",
        "overembellishing",
        "microprogramming",
        "intolerantnesses",
        "micropublishings",
        "conservatorships",
        "overelaborations",
        "positivistically",
        "irresponsiveness",
        "irrepressibility",
        "disenfranchising",
        "overexaggeration",
        "despiritualizing",
        "disestablishment",
        "otolaryngologies",
        "diverticulitises",
        "chemiluminescent",
        "ungratefulnesses",
        "appendicectomies",
        "exceptionability",
        "otolaryngologist",
        "portentousnesses",
        "irreplaceability",
        "militaristically",
        "irretrievability",
        "overexaggerating",
        "diverticulitides",
        "impermeabilities",
        "regionalizations",
        "latensifications",
        "calamitousnesses",
        "departmentalized",
        "paraformaldehyde",
        "departmentalizes",
        "longheadednesses",
        "etherealizations",
        "tumorigenicities",
        "paradigmatically",
        "paradoxicalities",
        "tumultuousnesses",
        "diphenhydramines",
        "melodramatically",
        "aluminosilicates",
        "loquaciousnesses",
        "megalomaniacally",
        "paramagnetically",
        "fraudulentnesses",
        "revisualizations",
        "dependablenesses",
        "censoriousnesses",
        "diphthongization",
        "megasporogenesis",
        "megasporogeneses",
        "sclerenchymatous",
        "revengefulnesses",
        "editorialization",
        "phosphocreatines",
        "phosphatizations",
        "capriciousnesses",
        "weightlessnesses",
        "phosphoglycerate",
        "alphanumerically",
        "ethnomethodology",
        "phosphorescently",
        "phosphorescences",
        "tintinnabulation",
        "worthwhilenesses",
        "mendaciousnesses",
        "localizabilities",
        "phonocardiograph",
        "phonocardiograms",
        "coquettishnesses",
        "turbomachineries",
        "phonographically",
        "phonogrammically",
        "ethnographically",
        "papillomaviruses",
        "scrupulousnesses",
        "philoprogenitive",
        "disciplinarities",
        "mechanoreceptive",
        "mechanoreceptors",
        "mechanoreception",
        "phenomenologists",
        "mechanochemistry",
        "celebratednesses",
        "phenylethylamine",
        "epizootiological",
        "phenylketonurias",
        "meddlesomenesses",
        "phenylketonurics",
        "iconographically",
        "lymphangiography",
        "meaningfulnesses",
        "pardonablenesses",
        "lymphogranulomas",
        "phenomenological",
        "equalitarianisms",
        "totalitarianizes",
        "parasympathetics",
        "totalitarianisms",
        "totalitarianized",
        "parameterization",
        "dogmaticalnesses",
        "schoolmistresses",
        "meditativenesses",
        "hypocoristically",
        "freehandednesses",
        "paraphrastically",
        "medulloblastomas",
        "megacorporations",
        "lugubriousnesses",
        "parametrizations",
        "megagametophytes",
        "amateurishnesses",
        "bewilderednesses",
        "paraprofessional",
        "dephosphorylates",
        "rhabdomyosarcoma",
        "pheochromocytoma",
        "derivativenesses",
        "dephosphorylated",
        "ecclesiastically",
        "ecclesiasticisms",
        "parapsychologies",
        "parapsychologist",
        "phenolphthaleins",
        "idolatrousnesses",
        "alphabetizations",
        "paleopathologies",
        "ultrarespectable",
        "paleopathologist",
        "ultraprogressive",
        "coordinatenesses",
        "retransformation",
        "ultrasonographer",
        "epiphenomenalism",
        "paleographically",
        "ultrasonographic",
        "antagonistically",
        "sedimentologists",
        "ultraparadoxical",
        "photodissociates",
        "photodissociated",
        "retrievabilities",
        "photodynamically",
        "sedimentological",
        "photoduplication",
        "photoduplicating",
        "ultranationalist",
        "ultranationalism",
        "ultramicrotomies",
        "paleogeographies",
        "hypersusceptible",
        "paleobotanically",
        "photogrammetrist",
        "umbrageousnesses",
        "photogrammetries",
        "hyperstimulation",
        "hyperstimulating",
        "photographically",
        "licentiousnesses",
        "photointerpreter",
        "allopolyploidies",
        "metamathematical",
        "illimitabilities",
        "gastroesophageal",
        "photoexcitations",
        "gastroenterology",
        "discombobulation",
        "gastrointestinal",
        "lightheartedness",
        "paleoclimatology",
        "discombobulating",
        "retinoblastomata",
        "desacralizations",
        "thoughtfulnesses",
        "ultramicroscopes",
        "mesembryanthemum",
        "hematoporphyrins",
        "seasonablenesses",
        "meristematically",
        "tyrannicalnesses",
        "photochemistries",
        "capitalistically",
        "hypervitaminosis",
        "hypervitaminoses",
        "ubiquitousnesses",
        "copolymerization",
        "photoautotrophic",
        "meretriciousness",
        "hemagglutinating",
        "thyroidectomized",
        "lithographically",
        "retroreflections",
        "hemagglutination",
        "coproprietorship",
        "thyrocalcitonins",
        "phosphorylations",
        "scurrilousnesses",
        "ultramicroscopic",
        "pancreatectomies",
        "weatherproofness",
        "threadbarenesses",
        "ultrafiltrations",
        "thriftlessnesses",
        "hyperventilating",
        "ultraliberalisms",
        "ultramarathoners",
        "ultralightweight",
        "denuclearization",
        "hyperthyroidisms",
        "hyperviscosities",
        "hyperventilation",
        "thrombocytopenia",
        "thromboembolisms",
        "thrombophlebitis",
        "photocoagulation",
        "photocomposition",
        "thrombocytopenic",
        "ultracentrifugal",
        "denumerabilities",
        "ultracentrifuges",
        "ultracentrifuged",
        "creaturelinesses",
        "parliamentarians",
        "frenchifications",
        "counterguerrilla",
        "counterincentive",
        "perniciousnesses",
        "counterguerillas",
        "magnetostriction",
        "counterinflation",
        "perceptivenesses",
        "counterinfluence",
        "counterinstances",
        "perceptibilities",
        "counterinsurgent",
        "magnetostrictive",
        "transliterations",
        "tremendousnesses",
        "malpractitioners",
        "malodorousnesses",
        "amphibiousnesses",
        "erythroblastoses",
        "harmoniousnesses",
        "permissivenesses",
        "erythroblastosis",
        "percussivenesses",
        "fundamentalistic",
        "counterintrigues",
        "manageablenesses",
        "transilluminated",
        "personablenesses",
        "transilluminates",
        "transilluminator",
        "disagreeableness",
        "counterpicketing",
        "counterpetitions",
        "personalizations",
        "salubriousnesses",
        "counterintuitive",
        "counteroffensive",
        "countermovements",
        "transitorinesses",
        "counterirritants",
        "perpendicularity",
        "triboluminescent",
        "transitivenesses",
        "roundaboutnesses",
        "futilitarianisms",
        "triboelectricity",
        "futurelessnesses",
        "salvageabilities",
        "counterevidences",
        "counterespionage",
        "counterattackers",
        "counterattacking",
        "transparentizing",
        "counterarguments",
        "hysterectomizing",
        "periphrastically",
        "counterbalancing",
        "sacrilegiousness",
        "counterblockaded",
        "maladministering",
        "transnationalism",
        "transubstantiate",
        "transplacentally",
        "disarticulations",
        "transportational",
        "periodontologies",
        "majoritarianisms",
        "transsexualities",
        "transportability",
        "saccharification",
        "cartographically",
        "transplantations",
        "peremptorinesses",
        "counterblockades",
        "countercampaigns",
        "transmissivities",
        "countercurrently",
        "transmissometers",
        "counterculturist",
        "transmissibility",
        "anagrammatically",
        "ecophysiological",
        "permissibilities",
        "perfectibilities",
        "malapportionment",
        "perfectivenesses",
        "countercomplaint",
        "hardhandednesses",
        "hardheadednesses",
        "counterchallenge",
        "countercriticism",
        "malcontentedness",
        "performabilities",
        "maldistributions",
        "counterclockwise",
        "perfidiousnesses",
        "iconoclastically",
        "personifications",
        "manipulabilities",
        "pharmaceutically",
        "directionalities",
        "hypophysectomies",
        "correspondencies",
        "echocardiography",
        "courageousnesses",
        "pharmacodynamics",
        "ridiculousnesses",
        "macrophotographs",
        "macrophotography",
        "trafficabilities",
        "pathophysiologic",
        "phantasmagorical",
        "counterweighting",
        "hypopituitarisms",
        "cardiotoxicities",
        "depoliticization",
        "catheterizations",
        "triphenylmethane",
        "cardiomyopathies",
        "hypophysectomize",
        "depolymerization",
        "counterviolences",
        "scandalmongering",
        "macrolepidoptera",
        "materializations",
        "ichthyologically",
        "partridgeberries",
        "friendlessnesses",
        "machineabilities",
        "mathematizations",
        "tracheobronchial",
        "carboxypeptidase",
        "deplorablenesses",
        "scandalousnesses",
        "anesthesiologist",
        "anesthesiologies",
        "carcinosarcomata",
        "pharmacokinetics",
        "macroinstruction",
        "rhynchocephalian",
        "traditionalizing",
        "passionatenesses",
        "carcinomatosises",
        "heavyheartedness",
        "traditionalistic",
        "cosmopolitanisms",
        "masculinizations",
        "corruptibilities",
        "counterrebuttals",
        "pertinaciousness",
        "transfigurations",
        "counterreactions",
        "persuasivenesses",
        "romanticizations",
        "counterresponses",
        "counterreformers",
        "cataphoretically",
        "marginalizations",
        "countersignature",
        "transformational",
        "cosmochemistries",
        "anaphylactically",
        "manipulativeness",
        "benevolentnesses",
        "counterquestions",
        "depressurization",
        "catachrestically",
        "counterpressures",
        "beneficialnesses",
        "counterproposals",
        "trinitrotoluenes",
        "eclaircissements",
        "hypostatizations",
        "robustiousnesses",
        "dolichocephalies",
        "triiodothyronine",
        "petrographically",
        "counterterrorism",
        "roadworthinesses",
        "counterterrorist",
        "countertradition",
        "satisfactoriness",
        "catastrophically",
        "transcendentally",
        "eschatologically",
        "roentgenologists",
        "petrochemistries",
        "trifluoperazines",
        "transcontinental",
        "aminotransferase",
        "roentgenological",
        "counterstatement",
        "roentgenographic",
        "transcriptionist",
        "digressivenesses",
        "photoionizations",
        "photojournalisms",
        "pithecanthropine",
        "reprivatizations",
        "immunodiffusions",
        "antipathetically",
        "immunodiagnostic",
        "microenvironment",
        "underemphasizing",
        "overprescription",
        "sesquicarbonates",
        "underemployments",
        "underestimations",
        "underdevelopment",
        "immunodeficiency",
        "entrepreneurship",
        "biotechnological",
        "undercapitalized",
        "microencapsulate",
        "immunocompetence",
        "serviceabilities",
        "biotechnologists",
        "antiorganization",
        "microelectronics",
        "microearthquakes",
        "discriminability",
        "contiguousnesses",
        "overorchestrates",
        "underinvestments",
        "immunogenicities",
        "bathythermograph",
        "representatively",
        "immunohematology",
        "overorchestrated",
        "discriminatorily",
        "representational",
        "sesquicentennial",
        "representativity",
        "antiprostitution",
        "desexualizations",
        "discriminatingly",
        "repressivenesses",
        "immunogeneticist",
        "generalizability",
        "discriminational",
        "repressibilities",
        "antiprofiteering",
        "antipornographic",
        "microgametocytes",
        "overproportioned",
        "biosynthetically",
        "crossopterygians",
        "piezoelectricity",
        "antilibertarians",
        "immortalizations",
        "requalifications",
        "environmentalist",
        "environmentalism",
        "characterization",
        "antimaterialists",
        "antimaterialisms",
        "undecidabilities",
        "unconvincingness",
        "biometeorologies",
        "antihumanitarian",
        "contraindicating",
        "contraindication",
        "microcirculatory",
        "pictorialization",
        "microcirculation",
        "biomathematician",
        "antihypertensive",
        "unconventionally",
        "immunochemically",
        "antimetaphysical",
        "antimilitaristic",
        "charitablenesses",
        "knowledgeability",
        "underappreciated",
        "antinationalists",
        "discourteousness",
        "biostatisticians",
        "continuousnesses",
        "microdissections",
        "biostratigraphic",
        "dimensionalities",
        "pinealectomizing",
        "microcrystalline",
        "seronegativities",
        "theocentricities",
        "discountenancing",
        "underachievement",
        "seropositivities",
        "undemocratically",
        "overrepresenting",
        "undenominational",
        "undeniablenesses",
        "bioluminescences",
        "contemptuousness",
        "democratizations",
        "antituberculosis",
        "hyperproductions",
        "crystallographic",
        "crystallographer",
        "crystallizations",
        "heterochromatins",
        "antiuniversities",
        "antiunemployment",
        "plethysmographic",
        "journalistically",
        "undesirabilities",
        "reorchestrations",
        "antitotalitarian",
        "immunoregulatory",
        "antitechnologies",
        "cryptozoologists",
        "immunosuppresses",
        "micrometeorology",
        "underutilization",
        "reorganizational",
        "foreseeabilities",
        "immunosuppressed",
        "pleasurabilities",
        "pleuropneumonias",
        "overgenerosities",
        "impassablenesses",
        "microphotometers",
        "remunerativeness",
        "microphotography",
        "microphotometric",
        "undiscriminating",
        "territorializing",
        "agriculturalists",
        "territorialities",
        "renormalizations",
        "microphotographs",
        "constructionists",
        "demineralization",
        "calculatednesses",
        "overgeneralizing",
        "constructionally",
        "undifferentiated",
        "demilitarization",
        "undiplomatically",
        "constructiveness",
        "dihydroxyacetone",
        "undernourishment",
        "overhomogenizing",
        "antistrophically",
        "antireductionism",
        "antireductionist",
        "antirecessionary",
        "calorimetrically",
        "immunopathologic",
        "underproductions",
        "antiromanticisms",
        "discursivenesses",
        "hyperrationality",
        "shamefacednesses",
        "underrepresented",
        "immunomodulatory",
        "immunomodulators",
        "contemptibleness",
        "reprehensibility",
        "micrographically",
        "evangelistically",
        "hermaphroditisms",
        "forethoughtfully",
        "antiracketeering",
        "antirationalists",
        "antirationalisms",
        "jurisdictionally",
        "undersecretaries",
        "chauvinistically",
        "immunoregulation",
        "justiciabilities",
        "immunoreactivity",
        "contagiousnesses",
        "tetramethylleads",
        "evenhandednesses",
        "micromanagements",
        "micromanipulator",
        "tetrahydrofurans",
        "cryopreservation",
        "containerisation",
        "overindebtedness",
        "microlepidoptera",
        "microinstruction",
        "disdainfulnesses",
        "justifiabilities",
        "enthusiastically",
        "repetitivenesses",
        "calligraphically",
        "containerization",
        "platitudinarians",
        "unaccountability",
        "discontinuations",
        "microcircuitries",
        "photosensitizing",
        "hemoglobinopathy",
        "photosensitizers",
        "anthropopathisms",
        "unavailingnesses",
        "methodologically",
        "photosynthesises",
        "unbecomingnesses",
        "photosynthesizes",
        "photosynthesized",
        "convertibilities",
        "photosensitivity",
        "anthropomorphize",
        "unassumingnesses",
        "semigovernmental",
        "unassailableness",
        "unavailabilities",
        "photorespiration",
        "anthropomorphism",
        "unattractiveness",
        "imaginablenesses",
        "anthropomorphist",
        "anthropocentrism",
        "antiabortionists",
        "oxytetracyclines",
        "thermolabilities",
        "semipermeability",
        "phototypesetting",
        "phototypesetters",
        "cannibalizations",
        "semipornographic",
        "respiritualizing",
        "semiprofessional",
        "methylcelluloses",
        "desensitizations",
        "conversationally",
        "responsibilities",
        "thermometrically",
        "responsivenesses",
        "forthrightnesses",
        "antiassimilation",
        "oxyphenbutazones",
        "antiaphrodisiacs",
        "denitrifications",
        "antiaristocratic",
        "euphoniousnesses",
        "phrasemongerings",
        "thermoperiodisms",
        "semidomesticated",
        "unalterabilities",
        "semiabstractions",
        "hypersomnolences",
        "unaffectionately",
        "convulsivenesses",
        "photomicrographs",
        "photomicrography",
        "dodecaphonically",
        "thermostatically",
        "photomorphogenic",
        "photomultipliers",
        "unaffectednesses",
        "photolithography",
        "photojournalists",
        "libidinousnesses",
        "bigheartednesses",
        "antepenultimates",
        "illiteratenesses",
        "metapsychologies",
        "creditablenesses",
        "photolithographs",
        "creditworthiness",
        "photoproductions",
        "convincingnesses",
        "resurrectionists",
        "thermoplasticity",
        "thermoregulating",
        "thermoregulation",
        "leukodystrophies",
        "cantankerousness",
        "hypersensitizing",
        "paedogenetically",
        "methodicalnesses",
        "photopolarimeter",
        "fortuitousnesses",
        "thermoregulators",
        "methamphetamines",
        "meteorologically",
        "semicolonialisms",
        "epigrammatically",
        "thermoregulatory",
        "hypersexualities",
        "semiconservative",
        "unapologetically",
        "conveyorizations",
        "thermoremanences",
        "antihierarchical",
        "respectivenesses",
        "methylphenidates",
        "phytochemistries",
        "uncompromisingly",
        "sentimentalities",
        "sentimentalising",
        "biodeterioration",
        "bioelectricities",
        "antievolutionism",
        "antievolutionary",
        "sentimentalizing",
        "antievolutionist",
        "phytoflagellates",
        "controversialism",
        "physiotherapists",
        "physiopathologic",
        "biocompatibility",
        "effortlessnesses",
        "controversialist",
        "largeheartedness",
        "denaturalization",
        "uncommercialized",
        "biodegradability",
        "oversubscription",
        "changelessnesses",
        "phytogeographers",
        "landlubberliness",
        "overspecializing",
        "microcalorimetry",
        "microcalorimeter",
        "phytosociologies",
        "discontentedness",
        "hypersalivations",
        "unconstitutional",
        "immoderatenesses",
        "formidablenesses",
        "phytogeographies",
        "overspeculations",
        "lamentablenesses",
        "overstimulations",
        "demystifications",
        "antiferromagnets",
        "septendecillions",
        "phytopathologies",
        "uncongenialities",
        "disconsolateness",
        "formularizations",
        "gelatinousnesses",
        "criminalizations",
        "physiognomically",
        "changeablenesses",
        "conventionalists",
        "anticholinergics",
        "thermodynamicist",
        "anticarcinogenic",
        "hendecasyllables",
        "conventionalisms",
        "unchangeableness",
        "resolidification",
        "unchangingnesses",
        "immeasurableness",
        "uncharacteristic",
        "epichlorohydrins",
        "semisubmersibles",
        "antibureaucratic",
        "semiquantitative",
        "respectfulnesses",
        "anticapitalistic",
        "hendecasyllabics",
        "conventionalizes",
        "respectabilities",
        "conventionalized",
        "criminologically",
        "hepatotoxicities",
        "resocializations",
        "dendrochronology",
        "disconnectedness",
        "anticolonialists",
        "anticolonialisms",
        "hepatopancreases",
        "diminutivenesses",
        "anticonservation",
        "anticonglomerate",
        "lasciviousnesses",
        "anticonventional",
        "uncharitableness",
        "desertifications",
        "phylogenetically",
        "resistlessnesses",
        "overutilizations",
        "meticulousnesses",
        "sensationalizing",
        "sensationalising",
        "anticlericalists",
        "anticlericalisms",
        "sensationalistic",
        "hypersensitivity",
        "stupendousnesses",
        "slatternlinesses",
        "processibilities",
        "monochromaticity",
        "surrealistically",
        "videoconferences",
        "prenotifications",
        "interchromosomal",
        "quadruplications",
        "dichlorobenzenes",
        "determinableness",
        "historiographers",
        "reclassification",
        "nonentertainment",
        "intercommunities",
        "indubitabilities",
        "compatiblenesses",
        "aristocratically",
        "myelosuppression",
        "unsubstantiality",
        "intercommunicate",
        "electrophoresing",
        "substitutability",
        "compartmentation",
        "comparablenesses",
        "rechoreographing",
        "monocotyledonous",
        "historiographies",
        "substitutionally",
        "preposterousness",
        "impressibilities",
        "autotransfusions",
        "victoriousnesses",
        "surefootednesses",
        "rechromatography",
        "autotransformers",
        "proselytizations",
        "rechromatographs",
        "compartmentalize",
        "intercalibration",
        "compartmentalise",
        "unsystematically",
        "disjointednesses",
        "addressabilities",
        "prosopographical",
        "historicalnesses",
        "oleaginousnesses",
        "intercorrelating",
        "electrooculogram",
        "susceptivenesses",
        "dichotomizations",
        "indivisibilities",
        "susceptibilities",
        "hygroscopicities",
        "intercorrelation",
        "abstemiousnesses",
        "clitoridectomies",
        "impregnabilities",
        "radiotelephonies",
        "chymotrypsinogen",
        "villainousnesses",
        "unsophistication",
        "autoradiographic",
        "compensabilities",
        "adenohypophysial",
        "adenocarcinomata",
        "electrophilicity",
        "expressionlessly",
        "indomitabilities",
        "intercontinental",
        "premodifications",
        "expressivenesses",
        "interconnections",
        "intercomparisons",
        "adenohypophyseal",
        "declassification",
        "premillennialist",
        "prosperousnesses",
        "substantialities",
        "abstractednesses",
        "interconvertible",
        "electropherogram",
        "premillennialism",
        "interconversions",
        "breathlessnesses",
        "supraventricular",
        "companionability",
        "supplementations",
        "intellectualness",
        "hydroelectricity",
        "quarterfinalists",
        "intellectualizes",
        "intellectualized",
        "intellectualizer",
        "presentabilities",
        "intellectualists",
        "electrotonically",
        "hydrodynamicists",
        "felicitousnesses",
        "climatologically",
        "extemporaneously",
        "intelligibleness",
        "extemporaneities",
        "hydrodynamically",
        "obstreperousness",
        "communitarianism",
        "intellectualisms",
        "extemporisations",
        "grammaticalities",
        "collaborationist",
        "rebelliousnesses",
        "collaborationism",
        "preservationists",
        "quasiperiodicity",
        "insusceptibility",
        "insurrectionists",
        "avariciousnesses",
        "suburbanizations",
        "circularizations",
        "circuitousnesses",
        "communicableness",
        "preservabilities",
        "propitiousnesses",
        "ineluctabilities",
        "extemporizations",
        "intangiblenesses",
        "dispiritednesses",
        "obstructionistic",
        "ineffectualities",
        "cinematographers",
        "prequalification",
        "untouchabilities",
        "enantiomorphisms",
        "recentralization",
        "preregistrations",
        "quantificational",
        "cinematographies",
        "supposititiously",
        "dispersivenesses",
        "recertifications",
        "unthinkabilities",
        "nonestablishment",
        "feeblemindedness",
        "supranationality",
        "interassociation",
        "supranationalist",
        "supranationalism",
        "supportabilities",
        "intentionalities",
        "prerevolutionary",
        "sphygmomanometry",
        "recapitalization",
        "untruthfulnesses",
        "electrotherapies",
        "electrothermally",
        "ununderstandable",
        "nongravitational",
        "determinednesses",
        "greatheartedness",
        "sphygmomanometer",
        "nonexploitations",
        "impressivenesses",
        "supportivenesses",
        "electrosurgeries",
        "intensionalities",
        "quantitativeness",
        "intensifications",
        "nonindependences",
        "disintoxications",
        "protectivenesses",
        "openhandednesses",
        "unrestrainedness",
        "nonconstructions",
        "experimentalists",
        "indiscreetnesses",
        "spatiotemporally",
        "experimentations",
        "suborganizations",
        "governmentalisms",
        "deconcentrations",
        "experimentalisms",
        "stoutheartedness",
        "suboptimizations",
        "nonconservatives",
        "operationalistic",
        "recontaminations",
        "nationalizations",
        "unresponsiveness",
        "recontextualized",
        "autoimmunization",
        "fissionabilities",
        "governmentalized",
        "noncontradictory",
        "noncontradiction",
        "disruptivenesses",
        "governmentalizes",
        "indispensability",
        "histochemistries",
        "comptrollerships",
        "factitiousnesses",
        "indiscrimination",
        "governmentalists",
        "compulsivenesses",
        "indiscriminately",
        "disingenuousness",
        "indiscriminating",
        "autointoxication",
        "mistranscription",
        "syllabifications",
        "daguerreotypists",
        "recontextualizes",
        "nonconservations",
        "decorativenesses",
        "electrohydraulic",
        "intermediateness",
        "sympathomimetics",
        "straightforwards",
        "chronobiological",
        "southwesternmost",
        "submissivenesses",
        "archiepiscopally",
        "desulfurizations",
        "ophthalmoscopies",
        "impossiblenesses",
        "rectifiabilities",
        "straightjacketed",
        "rectangularities",
        "indigenousnesses",
        "adrenalectomized",
        "pyelonephritides",
        "unreservednesses",
        "archiepiscopates",
        "decontaminations",
        "chronometrically",
        "distributivities",
        "ophthalmological",
        "naturalistically",
        "goitrogenicities",
        "computerizations",
        "flabbergastingly",
        "hyperawarenesses",
        "nonconfrontation",
        "unrepresentative",
        "submitochondrial",
        "chronobiologists",
        "recoverabilities",
        "sympathectomized",
        "distributorships",
        "ophthalmologists",
        "protrusivenesses",
        "intercrystalline",
        "interjectionally",
        "emancipationists",
        "nondestructively",
        "oligomerizations",
        "oligonucleotides",
        "speechlessnesses",
        "interdependently",
        "nondeterministic",
        "oligodendroglias",
        "oligodendroglial",
        "nondiscretionary",
        "prekindergartens",
        "histophysiologic",
        "featherstitching",
        "nondeductibility",
        "oligosaccharides",
        "asymptomatically",
        "interdigitations",
        "vindictivenesses",
        "indistinctnesses",
        "reconcentrations",
        "interdependences",
        "electromyographs",
        "nondisjunctional",
        "histoplasmosises",
        "autopolyploidies",
        "unskillfulnesses",
        "unsociablenesses",
        "mysteriousnesses",
        "complementations",
        "nondocumentaries",
        "oligodendrocytes",
        "villianousnesses",
        "astrophotography",
        "suspiciousnesses",
        "sustainabilities",
        "astrophotographs",
        "devitrifications",
        "premanufacturing",
        "electromyography",
        "bottomlessnesses",
        "reconsiderations",
        "nanotechnologies",
        "reconceptualized",
        "noncontroversial",
        "misvocalizations",
        "absentmindedness",
        "pyrometallurgies",
        "interinfluencing",
        "indisputableness",
        "electrolytically",
        "unsatisfactorily",
        "interhemispheric",
        "dissatisfactions",
        "interiorizations",
        "subprofessionals",
        "onomatopoeically",
        "administratively",
        "preformationists",
        "misunderstanding",
        "gregariousnesses",
        "administratrices",
        "impracticalities",
        "preimmunizations",
        "intergradational",
        "interferometries",
        "impracticability",
        "interfertilities",
        "unseasonableness",
        "histopathologist",
        "indissolubleness",
        "reconceptualizes",
        "omnivorousnesses",
        "spectroheliogram",
        "histopathologies",
        "intergenerations",
        "reconfigurations",
        "unscrupulousness",
        "preincorporation",
        "unscientifically",
        "bullheadednesses",
        "electromagnetism",
        "autocorrelations",
        "spiritlessnesses",
        "acanthocephalans",
        "colonizationists",
        "inordinatenesses",
        "superimpositions",
        "multifactorially",
        "radioautographic",
        "bronchopneumonia",
        "deglamorizations",
        "extracurriculars",
        "superhumannesses",
        "multifariousness",
        "superincumbently",
        "boneheadednesses",
        "vaingloriousness",
        "decalcifications",
        "ferroelectricity",
        "nucleophilically",
        "nonreappointment",
        "morphometrically",
        "rationalizations",
        "combustibilities",
        "multidisciplines",
        "hydrophilicities",
        "superheavyweight",
        "radiographically",
        "motherlessnesses",
        "externalizations",
        "noteworthinesses",
        "motionlessnesses",
        "inarticulateness",
        "hydrophobicities",
        "extracorporeally",
        "superheterodynes",
        "multidirectional",
        "cladogenetically",
        "extractabilities",
        "radiochemistries",
        "inflammabilities",
        "multidimensional",
        "endarterectomies",
        "acetylsalicylate",
        "infectiousnesses",
        "multihandicapped",
        "proletarianising",
        "insatiablenesses",
        "multimillionaire",
        "acclimatizations",
        "nullificationist",
        "externalisations",
        "dissuasivenesses",
        "nonprofessionals",
        "nonproliferation",
        "fictionalization",
        "proletarianizing",
        "endocrinological",
        "extraneousnesses",
        "inscrutabilities",
        "montmorillonites",
        "diastereoisomers",
        "montmorillonitic",
        "supermillionaire",
        "processabilities",
        "glossopharyngeal",
        "nonproprietaries",
        "nonpsychiatrists",
        "assaultivenesses",
        "superintendences",
        "nonpsychological",
        "accommodationist",
        "dehydrogenations",
        "superintelligent",
        "civilianizations",
        "multilateralisms",
        "deacidifications",
        "degeneratenesses",
        "multilingualisms",
        "glottochronology",
        "infantilizations",
        "multilateralists",
        "superintensities",
        "sprightfulnesses",
        "reaccreditations",
        "accountabilities",
        "procrastinations",
        "hydrometeorology",
        "inharmoniousness",
        "inheritabilities",
        "rambunctiousness",
        "dissociabilities",
        "radiosensitivity",
        "supercorporation",
        "supercalendering",
        "professionalisms",
        "inappreciatively",
        "inalterabilities",
        "rampageousnesses",
        "superenciphering",
        "vascularizations",
        "productivenesses",
        "superbureaucrats",
        "inhospitableness",
        "disorganizations",
        "superenthusiasms",
        "muddleheadedness",
        "professionalized",
        "radiotelemetries",
        "superciliousness",
        "ingressivenesses",
        "profitablenesses",
        "supercompetitive",
        "ingloriousnesses",
        "supercomfortable",
        "worshipfulnesses",
        "vasoconstriction",
        "diaphanousnesses",
        "inappositenesses",
        "vasoconstrictive",
        "professionalizes",
        "accumulativeness",
        "standardizations",
        "vasoconstrictors",
        "accustomednesses",
        "dissipatednesses",
        "supergovernments",
        "radioprotections",
        "grandparenthoods",
        "nonrevolutionary",
        "inadequatenesses",
        "northwesternmost",
        "encyclopedically",
        "acetophenetidins",
        "superficialities",
        "exterritoriality",
        "disorderednesses",
        "disorderlinesses",
        "inflexiblenesses",
        "dehumidification",
        "detribalizations",
        "innovativenesses",
        "extracontinental",
        "radioimmunoassay",
        "multiculturalism",
        "gluttonousnesses",
        "colorblindnesses",
        "superbillionaire",
        "nonschizophrenic",
        "colorimetrically",
        "multibillionaire",
        "inimitablenesses",
        "stadtholderships",
        "prodigiousnesses",
        "vegetativenesses",
        "infrangibilities",
        "inalienabilities",
        "programmatically",
        "iniquitousnesses",
        "deuterocanonical",
        "inadvisabilities",
        "extrachromosomal",
        "nonsignificantly",
        "superfecundation",
        "multicellularity",
        "northeasternmost",
        "prognostications",
        "subversivenesses",
        "supernaturalisms",
        "supernaturalists",
        "succinylcholines",
        "commodifications",
        "superserviceable",
        "noninterventions",
        "decentralization",
        "stereoscopically",
        "supersensitivity",
        "stereoregularity",
        "supersensitively",
        "encephalitogenic",
        "instrumentalisms",
        "upgradeabilities",
        "instrumentalists",
        "supersexualities",
        "commodiousnesses",
        "monopolistically",
        "pretechnological",
        "questionableness",
        "hydroxylapatites",
        "sufferablenesses",
        "figurativenesses",
        "extraterritorial",
        "reapportionments",
        "institutionalise",
        "stereophonically",
        "stereomicroscope",
        "commissionership",
        "distensibilities",
        "inexorablenesses",
        "collectivization",
        "institutionalism",
        "associationistic",
        "uproariousnesses",
        "inauthenticities",
        "institutionalist",
        "inexhaustibility",
        "institutionalize",
        "pronunciamentoes",
        "upstandingnesses",
        "pronounceability",
        "noninterferences",
        "reasonablenesses",
        "boisterousnesses",
        "spiritualization",
        "obsequiousnesses",
        "commonsensically",
        "gratuitousnesses",
        "prestidigitators",
        "prestidigitation",
        "noninstitutional",
        "propertylessness",
        "collapsibilities",
        "supersubstantial",
        "circumambulating",
        "municipalization",
        "subvocalizations",
        "homoscedasticity",
        "circumambulation",
        "reauthorizations",
        "prophylactically",
        "inevitablenesses",
        "decertifications",
        "superstimulating",
        "superspecialized",
        "insubordinations",
        "presuppositional",
        "successivenesses",
        "instrumentations",
        "superspecialists",
        "extensionalities",
        "noninstructional",
        "insubstantiality",
        "insufferableness",
        "successfulnesses",
        "detestablenesses",
        "superspectacular",
        "superspeculation",
        "nonintellectuals",
        "presumptuousness",
        "endopolyploidies",
        "endocrinologists",
        "inauspiciousness",
        "supersaturations",
        "objectlessnesses",
        "decasualizations",
        "insignificancies",
        "commensurability",
        "monotonousnesses",
        "inextinguishably",
        "inextinguishable",
        "objectifications",
        "decarburizations",
        "inexpugnableness",
        "exteriorizations",
        "circumvallations",
        "quintessentially",
        "nonobjectivities",
        "superpatriotisms",
        "inexpressiveness",
        "multiprocessings",
        "superparasitisms",
        "inexpressibility",
        "suggestivenesses",
        "multiplicatively",
        "nutritiousnesses",
        "nonphilosophical",
        "inseparabilities",
        "supernormalities",
        "insensiblenesses",
        "sporotrichosises",
        "artificialnesses",
        "supernaturalness",
        "fictitiousnesses",
        "nonpartisanships",
        "stenographically",
        "nonparticipating",
        "acknowledgements",
        "nonparticipatory",
        "articulatenesses",
        "nonparticipation",
        "accidentalnesses",
        "decarboxylations",
        "extraterrestrial",
        "insolubilization",
        "circumstantiates",
        "dispensabilities",
        "nonmathematician",
        "nonmaterialistic",
        "monosyllabically",
        "assimilationists",
        "weatherboardings",
        "assimilationisms",
        "monosynaptically",
        "preventivenesses",
        "nonmanufacturing",
        "preventabilities",
        "elementarinesses",
        "stereoisomerisms",
        "acceptablenesses",
        "circumnavigating",
        "circumnavigators",
        "circumnavigation",
        "superromanticism",
        "weatherabilities",
        "deindustrializes",
        "assimilabilities",
        "accessiblenesses",
        "reafforestations",
        "arteriosclerotic",
        "suggestibilities",
        "circumstantially",
        "encephalopathies",
        "circumstantiated",
        "deindustrialized",
        "arteriosclerosis",
        "multiprogramming",
        "verifiablenesses",
        "monotheistically",
        "arterioscleroses",
        "circumscriptions",
        "inexplicableness",
        "nonmetropolitans",
        "acquaintanceship",
        "incautiousnesses",
        "quadricentennial",
        "organophosphates",
        "nonauthoritarian",
        "flexographically",
        "electroacoustics",
        "archaeologically",
        "neurophysiologic",
        "intersexualities",
        "incomprehensible",
        "cytopathological",
        "cholangiographic",
        "subjectivization",
        "misconstructions",
        "fathomlessnesses",
        "cyclophosphamide",
        "practicabilities",
        "neurochemistries",
        "incompletenesses",
        "aeroelasticities",
        "vulvovaginitises",
        "fallaciousnesses",
        "redistributional",
        "bloodthirstiness",
        "cholecalciferols",
        "hypercorrectness",
        "neoconservatives",
        "incomprehensions",
        "neglectfulnesses",
        "organizationally",
        "internationalize",
        "referentialities",
        "dishonorableness",
        "solicitousnesses",
        "unprincipledness",
        "tachyarrhythmias",
        "stroboscopically",
        "archaeoastronomy",
        "predaceousnesses",
        "interpenetrating",
        "systematicnesses",
        "incomprehensibly",
        "internationality",
        "interpenetration",
        "softheadednesses",
        "internationalist",
        "newsworthinesses",
        "psychopathologic",
        "pseudoscientific",
        "autobiographical",
        "internalizations",
        "sociolinguistics",
        "voluminousnesses",
        "nonarbitrariness",
        "diabolicalnesses",
        "auspiciousnesses",
        "incommodiousness",
        "chromolithograph",
        "noncommunication",
        "neuroradiologies",
        "neuroradiologist",
        "organoleptically",
        "cytotechnologies",
        "orthopsychiatric",
        "noncommunicating",
        "incontrovertible",
        "choriocarcinomas",
        "flibbertigibbety",
        "unreasonableness",
        "hyperdevelopment",
        "conclusivenesses",
        "hypercorrections",
        "diagonalizations",
        "fashionabilities",
        "incestuousnesses",
        "syncategorematic",
        "indestrucibility",
        "reflectivenesses",
        "nonarchitectures",
        "pseudonymousness",
        "definitivenesses",
        "mispronunciation",
        "internationalise",
        "flibbertigibbets",
        "internationalism",
        "cytophotometries",
        "pseudoparenchyma",
        "vulnerablenesses",
        "groundlessnesses",
        "neoconservatisms",
        "incontestability",
        "orthographically",
        "existentialistic",
        "inconsiderations",
        "indefinabilities",
        "misdistributions",
        "psychobiologists",
        "strongyloidiases",
        "strongyloidiasis",
        "fantasticalities",
        "interoperability",
        "unprofitableness",
        "nonbiodegradable",
        "psychophysiology",
        "indefinitenesses",
        "psychobiographer",
        "psychotomimetics",
        "pseudoclassicism",
        "falsifiabilities",
        "codeterminations",
        "neighborlinesses",
        "psychotherapists",
        "indecisivenesses",
        "unpalatabilities",
        "vociferousnesses",
        "neurohypophysial",
        "noncannibalistic",
        "psychobiological",
        "deliberatenesses",
        "indefatigability",
        "neurohypophyseal",
        "oppressivenesses",
        "pseudepigraphies",
        "electrodeposited",
        "atrioventricular",
        "diagrammatically",
        "praiseworthiness",
        "indecorousnesses",
        "dedifferentiated",
        "dedifferentiates",
        "unostentatiously",
        "attractivenesses",
        "dithiocarbamates",
        "dessertspoonfuls",
        "redeterminations",
        "dessertspoonsful",
        "chromatographing",
        "pseudocoelomates",
        "cholecystokinins",
        "prussianizations",
        "psychophysicists",
        "neuropathologies",
        "interrelatedness",
        "hypercatabolisms",
        "bureaucratically",
        "soporiferousness",
        "neuropathologist",
        "inconceivability",
        "purposefulnesses",
        "psychophysically",
        "synchrocyclotron",
        "electrifications",
        "psychoanalytical",
        "advantageousness",
        "synchronizations",
        "synchronisations",
        "inconsolableness",
        "systematizations",
        "whatchamacallits",
        "nonbibliographic",
        "indelicatenesses",
        "orthogenetically",
        "adventitiousness",
        "reestablishments",
        "unprofessionally",
        "authoritarianism",
        "indemnifications",
        "inconclusiveness",
        "chromatographies",
        "conductibilities",
        "conditionalities",
        "chromatographers",
        "subjectivenesses",
        "precociousnesses",
        "disillusionments",
        "nonchronological",
        "cytotechnologist",
        "neuropsychiatric",
        "organophosphorus",
        "predictabilities",
        "inconvertibility",
        "unpredictability",
        "intermissionless",
        "disqualification",
        "precariousnesses",
        "psychopathically",
        "misrecollections",
        "hieroglyphically",
        "interpretability",
        "incombustibility",
        "psychohistorians",
        "incorruptibility",
        "southeasternmost",
        "fastidiousnesses",
        "psycholinguistic",
        "miscomprehension",
        "disproportionate",
        "predetermination",
        "intertestamental",
        "interterritorial",
        "incommensurables",
        "symptomatologies",
        "incorrigibleness",
        "ornithologically",
        "incrediblenesses",
        "embourgeoisement",
        "noncomplementary",
        "interministerial",
        "intermolecularly",
        "interpretatively",
        "humanitarianisms",
        "intermodulations",
        "necessitarianism",
        "psychohistorical",
        "destabilizations",
        "psychometricians",
        "interstimulation",
        "voluptuousnesses",
        "unpleasantnesses",
        "subcontraoctaves",
        "opinionativeness",
        "unpreparednesses",
        "confessionalisms",
        "misregistrations",
        "faintheartedness",
        "exhaustivenesses",
        "electrochemistry",
        "precancellations",
        "noncomprehension",
        "nephrotoxicities",
        "interpretational",
        "confessionalists",
        "miscommunication",
        "intersterilities",
        "watertightnesses",
        "psychometrically",
        "conceivabilities",
        "puzzleheadedness",
        "interstratifying",
        "highhandednesses",
        "flagitiousnesses",
        "waterproofnesses",
        "deliberativeness",
        "sobersidednesses",
        "hospitalizations",
        "enforceabilities",
        "farsightednesses",
        "noncomparability",
        "disreputableness",
        "organomercurials",
        "neurasthenically",
        "hypercompetitive",
        "farfetchednesses",
        "familiarizations",
        "precertification",
        "interminableness",
        "refortifications",
        "newfanglednesses",
        "exhaustibilities",
        "noncommutativity",
        "fastiduousnesses",
        "cyclohexylamines",
        "neurotransmitter",
        "pseudoscientists",
        "noncommunicative",
        "mischaracterizes",
        "postsynaptically",
        "coadministration",
        "stresslessnesses",
        "incontrovertibly",
        "chordamesodermal",
        "archconservative",
        "stretchabilities",
        "subconsciousness",
        "pugnaciousnesses",
        "mischaracterized",
        "disputatiousness",
        "disproportioning",
        "indeterminations",
        "delightfulnesses"
}
    
local KeyCodes = {
    A = 0x41,
    B = 0x42,
    C = 0x43,
    D = 0x44,
    E = 0x45,
    F = 0x46,
    G = 0x47,
    H = 0x48,
    I = 0x49,
    J = 0x4A,
    K = 0x4B,
    L = 0x4C,
    M = 0x4D,
    N = 0x4E,
    O = 0x4F,
    P = 0x50,
    Q = 0x51,
    R = 0x52,
    S = 0x53,
    T = 0x54,
    U = 0x55,
    V = 0x56,
    W = 0x57,
    X = 0x58,
    Y = 0x59,
    Z = 0x5B
}

local ui_options = {
	main_color = Color3.fromRGB(41, 74, 122),
	min_size = Vector2.new(400, 300),
	toggle_key = Enum.KeyCode.RightShift,
	can_resize = true,
}

do --ui
    local imgui = game:GetService("CoreGui"):FindFirstChild("imgui")
	if imgui then imgui:Destroy() end

    local imgui = Instance.new("ScreenGui")
    local Prefabs = Instance.new("Frame")
    local Label = Instance.new("TextLabel")
    local Window = Instance.new("ImageLabel")
    local Resizer = Instance.new("Frame")
    local Bar = Instance.new("Frame")
    local Toggle = Instance.new("ImageButton")
    local Base = Instance.new("ImageLabel")
    local Top = Instance.new("ImageLabel")
    local Tabs = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local TabSelection = Instance.new("ImageLabel")
    local TabButtons = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local Frame = Instance.new("Frame")
    local Tab = Instance.new("Frame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local TextBox = Instance.new("TextBox")
    local TextBox_Roundify_4px = Instance.new("ImageLabel")
    local Slider = Instance.new("ImageLabel")
    local Title_2 = Instance.new("TextLabel")
    local Indicator = Instance.new("ImageLabel")
    local Value = Instance.new("TextLabel")
    local TextLabel = Instance.new("TextLabel")
    local TextLabel_2 = Instance.new("TextLabel")
    local Circle = Instance.new("ImageLabel")
    local UIListLayout_3 = Instance.new("UIListLayout")
    local Dropdown = Instance.new("TextButton")
    local Indicator_2 = Instance.new("ImageLabel")
    local Box = Instance.new("ImageButton")
    local Objects = Instance.new("ScrollingFrame")
    local UIListLayout_4 = Instance.new("UIListLayout")
    local TextButton_Roundify_4px = Instance.new("ImageLabel")
    local TabButton = Instance.new("TextButton")
    local TextButton_Roundify_4px_2 = Instance.new("ImageLabel")
    local Folder = Instance.new("ImageLabel")
    local Button = Instance.new("TextButton")
    local TextButton_Roundify_4px_3 = Instance.new("ImageLabel")
    local Toggle_2 = Instance.new("ImageLabel")
    local Objects_2 = Instance.new("Frame")
    local UIListLayout_5 = Instance.new("UIListLayout")
    local HorizontalAlignment = Instance.new("Frame")
    local UIListLayout_6 = Instance.new("UIListLayout")
    local Console = Instance.new("ImageLabel")
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local Source = Instance.new("TextBox")
    local Comments = Instance.new("TextLabel")
    local Globals = Instance.new("TextLabel")
    local Keywords = Instance.new("TextLabel")
    local RemoteHighlight = Instance.new("TextLabel")
    local Strings = Instance.new("TextLabel")
    local Tokens = Instance.new("TextLabel")
    local Numbers = Instance.new("TextLabel")
    local Info = Instance.new("TextLabel")
    local Lines = Instance.new("TextLabel")
    local ColorPicker = Instance.new("ImageLabel")
    local Palette = Instance.new("ImageLabel")
    local Indicator_3 = Instance.new("ImageLabel")
    local Sample = Instance.new("ImageLabel")
    local Saturation = Instance.new("ImageLabel")
    local Indicator_4 = Instance.new("Frame")
    local Switch = Instance.new("TextButton")
    local TextButton_Roundify_4px_4 = Instance.new("ImageLabel")
    local Title_3 = Instance.new("TextLabel")
    local Button_2 = Instance.new("TextButton")
    local TextButton_Roundify_4px_5 = Instance.new("ImageLabel")
    local DropdownButton = Instance.new("TextButton")
    local Keybind = Instance.new("ImageLabel")
    local Title_4 = Instance.new("TextLabel")
    local Input = Instance.new("TextButton")
    local Input_Roundify_4px = Instance.new("ImageLabel")
    local Windows = Instance.new("Frame")

    imgui.Name = "imgui"
    imgui.Parent = game:GetService("CoreGui")

    Prefabs.Name = "Prefabs"
    Prefabs.Parent = imgui
    Prefabs.BackgroundColor3 = Color3.new(1, 1, 1)
    Prefabs.Size = UDim2.new(0, 100, 0, 100)
    Prefabs.Visible = false

    Label.Name = "Label"
    Label.Parent = Prefabs
    Label.BackgroundColor3 = Color3.new(1, 1, 1)
    Label.BackgroundTransparency = 1
    Label.Size = UDim2.new(0, 200, 0, 20)
    Label.Font = Enum.Font.GothamSemibold
    Label.Text = "Hello, world 123"
    Label.TextColor3 = Color3.new(1, 1, 1)
    Label.TextSize = 14
    Label.TextXAlignment = Enum.TextXAlignment.Left

    Window.Name = "Window"
    Window.Parent = Prefabs
    Window.Active = true
    Window.BackgroundColor3 = Color3.new(1, 1, 1)
    Window.BackgroundTransparency = 1
    Window.ClipsDescendants = true
    Window.Position = UDim2.new(0, 20, 0, 20)
    Window.Selectable = true
    Window.Size = UDim2.new(0, 200, 0, 200)
    Window.Image = "rbxassetid://2851926732"
    Window.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
    Window.ScaleType = Enum.ScaleType.Slice
    Window.SliceCenter = Rect.new(12, 12, 12, 12)

    Resizer.Name = "Resizer"
    Resizer.Parent = Window
    Resizer.Active = true
    Resizer.BackgroundColor3 = Color3.new(1, 1, 1)
    Resizer.BackgroundTransparency = 1
    Resizer.BorderSizePixel = 0
    Resizer.Position = UDim2.new(1, -20, 1, -20)
    Resizer.Size = UDim2.new(0, 20, 0, 20)

    Bar.Name = "Bar"
    Bar.Parent = Window
    Bar.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
    Bar.BorderSizePixel = 0
    Bar.Position = UDim2.new(0, 0, 0, 5)
    Bar.Size = UDim2.new(1, 0, 0, 15)

    Toggle.Name = "Toggle"
    Toggle.Parent = Bar
    Toggle.BackgroundColor3 = Color3.new(1, 1, 1)
    Toggle.BackgroundTransparency = 1
    Toggle.Position = UDim2.new(0, 5, 0, -2)
    Toggle.Rotation = 90
    Toggle.Size = UDim2.new(0, 20, 0, 20)
    Toggle.ZIndex = 2
    Toggle.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"

    Base.Name = "Base"
    Base.Parent = Bar
    Base.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
    Base.BorderSizePixel = 0
    Base.Position = UDim2.new(0, 0, 0.800000012, 0)
    Base.Size = UDim2.new(1, 0, 0, 10)
    Base.Image = "rbxassetid://2851926732"
    Base.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
    Base.ScaleType = Enum.ScaleType.Slice
    Base.SliceCenter = Rect.new(12, 12, 12, 12)

    Top.Name = "Top"
    Top.Parent = Bar
    Top.BackgroundColor3 = Color3.new(1, 1, 1)
    Top.BackgroundTransparency = 1
    Top.Position = UDim2.new(0, 0, 0, -5)
    Top.Size = UDim2.new(1, 0, 0, 10)
    Top.Image = "rbxassetid://2851926732"
    Top.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
    Top.ScaleType = Enum.ScaleType.Slice
    Top.SliceCenter = Rect.new(12, 12, 12, 12)

    Tabs.Name = "Tabs"
    Tabs.Parent = Window
    Tabs.BackgroundColor3 = Color3.new(1, 1, 1)
    Tabs.BackgroundTransparency = 1
    Tabs.Position = UDim2.new(0, 15, 0, 60)
    Tabs.Size = UDim2.new(1, -30, 1, -60)

    Title.Name = "Title"
    Title.Parent = Window
    Title.BackgroundColor3 = Color3.new(1, 1, 1)
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.new(0, 30, 0, 3)
    Title.Size = UDim2.new(0, 200, 0, 20)
    Title.Font = Enum.Font.GothamBold
    Title.Text = "Gamer Time"
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.TextSize = 14
    Title.TextXAlignment = Enum.TextXAlignment.Left

    TabSelection.Name = "TabSelection"
    TabSelection.Parent = Window
    TabSelection.BackgroundColor3 = Color3.new(1, 1, 1)
    TabSelection.BackgroundTransparency = 1
    TabSelection.Position = UDim2.new(0, 15, 0, 30)
    TabSelection.Size = UDim2.new(1, -30, 0, 25)
    TabSelection.Visible = false
    TabSelection.Image = "rbxassetid://2851929490"
    TabSelection.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
    TabSelection.ScaleType = Enum.ScaleType.Slice
    TabSelection.SliceCenter = Rect.new(4, 4, 4, 4)

    TabButtons.Name = "TabButtons"
    TabButtons.Parent = TabSelection
    TabButtons.BackgroundColor3 = Color3.new(1, 1, 1)
    TabButtons.BackgroundTransparency = 1
    TabButtons.Size = UDim2.new(1, 0, 1, 0)

    UIListLayout.Parent = TabButtons
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 2)

    Frame.Parent = TabSelection
    Frame.BackgroundColor3 = Color3.new(0.12549, 0.227451, 0.372549)
    Frame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0, 0, 1, 0)
    Frame.Size = UDim2.new(1, 0, 0, 2)

    Tab.Name = "Tab"
    Tab.Parent = Prefabs
    Tab.BackgroundColor3 = Color3.new(1, 1, 1)
    Tab.BackgroundTransparency = 1
    Tab.Size = UDim2.new(1, 0, 1, 0)
    Tab.Visible = false

    UIListLayout_2.Parent = Tab
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0, 5)

    TextBox.Parent = Prefabs
    TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
    TextBox.BackgroundTransparency = 1
    TextBox.BorderSizePixel = 0
    TextBox.Size = UDim2.new(1, 0, 0, 20)
    TextBox.ZIndex = 2
    TextBox.Font = Enum.Font.GothamSemibold
    TextBox.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
    TextBox.PlaceholderText = "Input Text"
    TextBox.Text = ""
    TextBox.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    TextBox.TextSize = 14

    TextBox_Roundify_4px.Name = "TextBox_Roundify_4px"
    TextBox_Roundify_4px.Parent = TextBox
    TextBox_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
    TextBox_Roundify_4px.BackgroundTransparency = 1
    TextBox_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
    TextBox_Roundify_4px.Image = "rbxassetid://2851929490"
    TextBox_Roundify_4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
    TextBox_Roundify_4px.ScaleType = Enum.ScaleType.Slice
    TextBox_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

    Slider.Name = "Slider"
    Slider.Parent = Prefabs
    Slider.BackgroundColor3 = Color3.new(1, 1, 1)
    Slider.BackgroundTransparency = 1
    Slider.Position = UDim2.new(0, 0, 0.178571433, 0)
    Slider.Size = UDim2.new(1, 0, 0, 20)
    Slider.Image = "rbxassetid://2851929490"
    Slider.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
    Slider.ScaleType = Enum.ScaleType.Slice
    Slider.SliceCenter = Rect.new(4, 4, 4, 4)

    Title_2.Name = "Title"
    Title_2.Parent = Slider
    Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
    Title_2.BackgroundTransparency = 1
    Title_2.Position = UDim2.new(0.5, 0, 0.5, -10)
    Title_2.Size = UDim2.new(0, 0, 0, 20)
    Title_2.ZIndex = 2
    Title_2.Font = Enum.Font.GothamBold
    Title_2.Text = "Slider"
    Title_2.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    Title_2.TextSize = 14

    Indicator.Name = "Indicator"
    Indicator.Parent = Slider
    Indicator.BackgroundColor3 = Color3.new(1, 1, 1)
    Indicator.BackgroundTransparency = 1
    Indicator.Size = UDim2.new(0, 0, 0, 20)
    Indicator.Image = "rbxassetid://2851929490"
    Indicator.ImageColor3 = Color3.new(0.254902, 0.262745, 0.278431)
    Indicator.ScaleType = Enum.ScaleType.Slice
    Indicator.SliceCenter = Rect.new(4, 4, 4, 4)

    Value.Name = "Value"
    Value.Parent = Slider
    Value.BackgroundColor3 = Color3.new(1, 1, 1)
    Value.BackgroundTransparency = 1
    Value.Position = UDim2.new(1, -55, 0.5, -10)
    Value.Size = UDim2.new(0, 50, 0, 20)
    Value.Font = Enum.Font.GothamBold
    Value.Text = "0%"
    Value.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    Value.TextSize = 14

    TextLabel.Parent = Slider
    TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Position = UDim2.new(1, -20, -0.75, 0)
    TextLabel.Size = UDim2.new(0, 26, 0, 50)
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.Text = "]"
    TextLabel.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
    TextLabel.TextSize = 14

    TextLabel_2.Parent = Slider
    TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
    TextLabel_2.BackgroundTransparency = 1
    TextLabel_2.Position = UDim2.new(1, -65, -0.75, 0)
    TextLabel_2.Size = UDim2.new(0, 26, 0, 50)
    TextLabel_2.Font = Enum.Font.GothamBold
    TextLabel_2.Text = "["
    TextLabel_2.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
    TextLabel_2.TextSize = 14

    Circle.Name = "Circle"
    Circle.Parent = Prefabs
    Circle.BackgroundColor3 = Color3.new(1, 1, 1)
    Circle.BackgroundTransparency = 1
    Circle.Image = "rbxassetid://266543268"
    Circle.ImageTransparency = 0.5

    UIListLayout_3.Parent = Prefabs
    UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.Padding = UDim.new(0, 20)

    Dropdown.Name = "Dropdown"
    Dropdown.Parent = Prefabs
    Dropdown.BackgroundColor3 = Color3.new(1, 1, 1)
    Dropdown.BackgroundTransparency = 1
    Dropdown.BorderSizePixel = 0
    Dropdown.Position = UDim2.new(-0.055555556, 0, 0.0833333284, 0)
    Dropdown.Size = UDim2.new(0, 200, 0, 20)
    Dropdown.ZIndex = 2
    Dropdown.Font = Enum.Font.GothamBold
    Dropdown.Text = "      Dropdown"
    Dropdown.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    Dropdown.TextSize = 14
    Dropdown.TextXAlignment = Enum.TextXAlignment.Left

    Indicator_2.Name = "Indicator"
    Indicator_2.Parent = Dropdown
    Indicator_2.BackgroundColor3 = Color3.new(1, 1, 1)
    Indicator_2.BackgroundTransparency = 1
    Indicator_2.Position = UDim2.new(0.899999976, -10, 0.100000001, 0)
    Indicator_2.Rotation = -90
    Indicator_2.Size = UDim2.new(0, 15, 0, 15)
    Indicator_2.ZIndex = 2
    Indicator_2.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4744658743"

    Box.Name = "Box"
    Box.Parent = Dropdown
    Box.BackgroundColor3 = Color3.new(1, 1, 1)
    Box.BackgroundTransparency = 1
    Box.Position = UDim2.new(0, 0, 0, 25)
    Box.Size = UDim2.new(1, 0, 0, 150)
    Box.ZIndex = 3
    Box.Image = "rbxassetid://2851929490"
    Box.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
    Box.ScaleType = Enum.ScaleType.Slice
    Box.SliceCenter = Rect.new(4, 4, 4, 4)

    Objects.Name = "Objects"
    Objects.Parent = Box
    Objects.BackgroundColor3 = Color3.new(1, 1, 1)
    Objects.BackgroundTransparency = 1
    Objects.BorderSizePixel = 0
    Objects.Size = UDim2.new(1, 0, 1, 0)
    Objects.ZIndex = 3
    Objects.CanvasSize = UDim2.new(0, 0, 0, 0)
    Objects.ScrollBarThickness = 8

    UIListLayout_4.Parent = Objects
    UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

    TextButton_Roundify_4px.Name = "TextButton_Roundify_4px"
    TextButton_Roundify_4px.Parent = Dropdown
    TextButton_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
    TextButton_Roundify_4px.BackgroundTransparency = 1
    TextButton_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
    TextButton_Roundify_4px.Image = "rbxassetid://2851929490"
    TextButton_Roundify_4px.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
    TextButton_Roundify_4px.ScaleType = Enum.ScaleType.Slice
    TextButton_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

    TabButton.Name = "TabButton"
    TabButton.Parent = Prefabs
    TabButton.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
    TabButton.BackgroundTransparency = 1
    TabButton.BorderSizePixel = 0
    TabButton.Position = UDim2.new(0.185185179, 0, 0, 0)
    TabButton.Size = UDim2.new(0, 71, 0, 20)
    TabButton.ZIndex = 2
    TabButton.Font = Enum.Font.GothamSemibold
    TabButton.Text = "Test tab"
    TabButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    TabButton.TextSize = 14

    TextButton_Roundify_4px_2.Name = "TextButton_Roundify_4px"
    TextButton_Roundify_4px_2.Parent = TabButton
    TextButton_Roundify_4px_2.BackgroundColor3 = Color3.new(1, 1, 1)
    TextButton_Roundify_4px_2.BackgroundTransparency = 1
    TextButton_Roundify_4px_2.Size = UDim2.new(1, 0, 1, 0)
    TextButton_Roundify_4px_2.Image = "rbxassetid://2851929490"
    TextButton_Roundify_4px_2.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
    TextButton_Roundify_4px_2.ScaleType = Enum.ScaleType.Slice
    TextButton_Roundify_4px_2.SliceCenter = Rect.new(4, 4, 4, 4)

    Folder.Name = "Folder"
    Folder.Parent = Prefabs
    Folder.BackgroundColor3 = Color3.new(1, 1, 1)
    Folder.BackgroundTransparency = 1
    Folder.Position = UDim2.new(0, 0, 0, 50)
    Folder.Size = UDim2.new(1, 0, 0, 20)
    Folder.Image = "rbxassetid://2851929490"
    Folder.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
    Folder.ScaleType = Enum.ScaleType.Slice
    Folder.SliceCenter = Rect.new(4, 4, 4, 4)

    Button.Name = "Button"
    Button.Parent = Folder
    Button.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
    Button.BackgroundTransparency = 1
    Button.BorderSizePixel = 0
    Button.Size = UDim2.new(1, 0, 0, 20)
    Button.ZIndex = 2
    Button.Font = Enum.Font.GothamSemibold
    Button.Text = "      Folder"
    Button.TextColor3 = Color3.new(1, 1, 1)
    Button.TextSize = 14
    Button.TextXAlignment = Enum.TextXAlignment.Left

    TextButton_Roundify_4px_3.Name = "TextButton_Roundify_4px"
    TextButton_Roundify_4px_3.Parent = Button
    TextButton_Roundify_4px_3.BackgroundColor3 = Color3.new(1, 1, 1)
    TextButton_Roundify_4px_3.BackgroundTransparency = 1
    TextButton_Roundify_4px_3.Size = UDim2.new(1, 0, 1, 0)
    TextButton_Roundify_4px_3.Image = "rbxassetid://2851929490"
    TextButton_Roundify_4px_3.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
    TextButton_Roundify_4px_3.ScaleType = Enum.ScaleType.Slice
    TextButton_Roundify_4px_3.SliceCenter = Rect.new(4, 4, 4, 4)

    Toggle_2.Name = "Toggle"
    Toggle_2.Parent = Button
    Toggle_2.BackgroundColor3 = Color3.new(1, 1, 1)
    Toggle_2.BackgroundTransparency = 1
    Toggle_2.Position = UDim2.new(0, 5, 0, 0)
    Toggle_2.Size = UDim2.new(0, 20, 0, 20)
    Toggle_2.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"

    Objects_2.Name = "Objects"
    Objects_2.Parent = Folder
    Objects_2.BackgroundColor3 = Color3.new(1, 1, 1)
    Objects_2.BackgroundTransparency = 1
    Objects_2.Position = UDim2.new(0, 10, 0, 25)
    Objects_2.Size = UDim2.new(1, -10, 1, -25)
    Objects_2.Visible = false

    UIListLayout_5.Parent = Objects_2
    UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_5.Padding = UDim.new(0, 5)

    HorizontalAlignment.Name = "HorizontalAlignment"
    HorizontalAlignment.Parent = Prefabs
    HorizontalAlignment.BackgroundColor3 = Color3.new(1, 1, 1)
    HorizontalAlignment.BackgroundTransparency = 1
    HorizontalAlignment.Size = UDim2.new(1, 0, 0, 20)

    UIListLayout_6.Parent = HorizontalAlignment
    UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_6.Padding = UDim.new(0, 5)

    Console.Name = "Console"
    Console.Parent = Prefabs
    Console.BackgroundColor3 = Color3.new(1, 1, 1)
    Console.BackgroundTransparency = 1
    Console.Size = UDim2.new(1, 0, 0, 200)
    Console.Image = "rbxassetid://2851928141"
    Console.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
    Console.ScaleType = Enum.ScaleType.Slice
    Console.SliceCenter = Rect.new(8, 8, 8, 8)

    ScrollingFrame.Parent = Console
    ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
    ScrollingFrame.BackgroundTransparency = 1
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.Size = UDim2.new(1, 0, 1, 1)
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollingFrame.ScrollBarThickness = 4

    Source.Name = "Source"
    Source.Parent = ScrollingFrame
    Source.BackgroundColor3 = Color3.new(1, 1, 1)
    Source.BackgroundTransparency = 1
    Source.Position = UDim2.new(0, 40, 0, 0)
    Source.Size = UDim2.new(1, -40, 0, 10000)
    Source.ZIndex = 3
    Source.ClearTextOnFocus = false
    Source.Font = Enum.Font.Code
    Source.MultiLine = true
    Source.PlaceholderColor3 = Color3.new(0.8, 0.8, 0.8)
    Source.Text = ""
    Source.TextColor3 = Color3.new(1, 1, 1)
    Source.TextSize = 15
    Source.TextStrokeColor3 = Color3.new(1, 1, 1)
    Source.TextWrapped = true
    Source.TextXAlignment = Enum.TextXAlignment.Left
    Source.TextYAlignment = Enum.TextYAlignment.Top

    Comments.Name = "Comments"
    Comments.Parent = Source
    Comments.BackgroundColor3 = Color3.new(1, 1, 1)
    Comments.BackgroundTransparency = 1
    Comments.Size = UDim2.new(1, 0, 1, 0)
    Comments.ZIndex = 5
    Comments.Font = Enum.Font.Code
    Comments.Text = ""
    Comments.TextColor3 = Color3.new(0.231373, 0.784314, 0.231373)
    Comments.TextSize = 15
    Comments.TextXAlignment = Enum.TextXAlignment.Left
    Comments.TextYAlignment = Enum.TextYAlignment.Top

    Globals.Name = "Globals"
    Globals.Parent = Source
    Globals.BackgroundColor3 = Color3.new(1, 1, 1)
    Globals.BackgroundTransparency = 1
    Globals.Size = UDim2.new(1, 0, 1, 0)
    Globals.ZIndex = 5
    Globals.Font = Enum.Font.Code
    Globals.Text = ""
    Globals.TextColor3 = Color3.new(0.517647, 0.839216, 0.968628)
    Globals.TextSize = 15
    Globals.TextXAlignment = Enum.TextXAlignment.Left
    Globals.TextYAlignment = Enum.TextYAlignment.Top

    Keywords.Name = "Keywords"
    Keywords.Parent = Source
    Keywords.BackgroundColor3 = Color3.new(1, 1, 1)
    Keywords.BackgroundTransparency = 1
    Keywords.Size = UDim2.new(1, 0, 1, 0)
    Keywords.ZIndex = 5
    Keywords.Font = Enum.Font.Code
    Keywords.Text = ""
    Keywords.TextColor3 = Color3.new(0.972549, 0.427451, 0.486275)
    Keywords.TextSize = 15
    Keywords.TextXAlignment = Enum.TextXAlignment.Left
    Keywords.TextYAlignment = Enum.TextYAlignment.Top

    RemoteHighlight.Name = "RemoteHighlight"
    RemoteHighlight.Parent = Source
    RemoteHighlight.BackgroundColor3 = Color3.new(1, 1, 1)
    RemoteHighlight.BackgroundTransparency = 1
    RemoteHighlight.Size = UDim2.new(1, 0, 1, 0)
    RemoteHighlight.ZIndex = 5
    RemoteHighlight.Font = Enum.Font.Code
    RemoteHighlight.Text = ""
    RemoteHighlight.TextColor3 = Color3.new(0, 0.568627, 1)
    RemoteHighlight.TextSize = 15
    RemoteHighlight.TextXAlignment = Enum.TextXAlignment.Left
    RemoteHighlight.TextYAlignment = Enum.TextYAlignment.Top

    Strings.Name = "Strings"
    Strings.Parent = Source
    Strings.BackgroundColor3 = Color3.new(1, 1, 1)
    Strings.BackgroundTransparency = 1
    Strings.Size = UDim2.new(1, 0, 1, 0)
    Strings.ZIndex = 5
    Strings.Font = Enum.Font.Code
    Strings.Text = ""
    Strings.TextColor3 = Color3.new(0.678431, 0.945098, 0.584314)
    Strings.TextSize = 15
    Strings.TextXAlignment = Enum.TextXAlignment.Left
    Strings.TextYAlignment = Enum.TextYAlignment.Top

    Tokens.Name = "Tokens"
    Tokens.Parent = Source
    Tokens.BackgroundColor3 = Color3.new(1, 1, 1)
    Tokens.BackgroundTransparency = 1
    Tokens.Size = UDim2.new(1, 0, 1, 0)
    Tokens.ZIndex = 5
    Tokens.Font = Enum.Font.Code
    Tokens.Text = ""
    Tokens.TextColor3 = Color3.new(1, 1, 1)
    Tokens.TextSize = 15
    Tokens.TextXAlignment = Enum.TextXAlignment.Left
    Tokens.TextYAlignment = Enum.TextYAlignment.Top

    Numbers.Name = "Numbers"
    Numbers.Parent = Source
    Numbers.BackgroundColor3 = Color3.new(1, 1, 1)
    Numbers.BackgroundTransparency = 1
    Numbers.Size = UDim2.new(1, 0, 1, 0)
    Numbers.ZIndex = 4
    Numbers.Font = Enum.Font.Code
    Numbers.Text = ""
    Numbers.TextColor3 = Color3.new(1, 0.776471, 0)
    Numbers.TextSize = 15
    Numbers.TextXAlignment = Enum.TextXAlignment.Left
    Numbers.TextYAlignment = Enum.TextYAlignment.Top

    Info.Name = "Info"
    Info.Parent = Source
    Info.BackgroundColor3 = Color3.new(1, 1, 1)
    Info.BackgroundTransparency = 1
    Info.Size = UDim2.new(1, 0, 1, 0)
    Info.ZIndex = 5
    Info.Font = Enum.Font.Code
    Info.Text = ""
    Info.TextColor3 = Color3.new(0, 0.635294, 1)
    Info.TextSize = 15
    Info.TextXAlignment = Enum.TextXAlignment.Left
    Info.TextYAlignment = Enum.TextYAlignment.Top

    Lines.Name = "Lines"
    Lines.Parent = ScrollingFrame
    Lines.BackgroundColor3 = Color3.new(1, 1, 1)
    Lines.BackgroundTransparency = 1
    Lines.BorderSizePixel = 0
    Lines.Size = UDim2.new(0, 40, 0, 10000)
    Lines.ZIndex = 4
    Lines.Font = Enum.Font.Code
    Lines.Text = "1\n"
    Lines.TextColor3 = Color3.new(1, 1, 1)
    Lines.TextSize = 15
    Lines.TextWrapped = true
    Lines.TextYAlignment = Enum.TextYAlignment.Top

    ColorPicker.Name = "ColorPicker"
    ColorPicker.Parent = Prefabs
    ColorPicker.BackgroundColor3 = Color3.new(1, 1, 1)
    ColorPicker.BackgroundTransparency = 1
    ColorPicker.Size = UDim2.new(0, 180, 0, 110)
    ColorPicker.Image = "rbxassetid://2851929490"
    ColorPicker.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
    ColorPicker.ScaleType = Enum.ScaleType.Slice
    ColorPicker.SliceCenter = Rect.new(4, 4, 4, 4)

    Palette.Name = "Palette"
    Palette.Parent = ColorPicker
    Palette.BackgroundColor3 = Color3.new(1, 1, 1)
    Palette.BackgroundTransparency = 1
    Palette.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
    Palette.Size = UDim2.new(0, 100, 0, 100)
    Palette.Image = "rbxassetid://698052001"
    Palette.ScaleType = Enum.ScaleType.Slice
    Palette.SliceCenter = Rect.new(4, 4, 4, 4)

    Indicator_3.Name = "Indicator"
    Indicator_3.Parent = Palette
    Indicator_3.BackgroundColor3 = Color3.new(1, 1, 1)
    Indicator_3.BackgroundTransparency = 1
    Indicator_3.Size = UDim2.new(0, 5, 0, 5)
    Indicator_3.ZIndex = 2
    Indicator_3.Image = "rbxassetid://2851926732"
    Indicator_3.ImageColor3 = Color3.new(0, 0, 0)
    Indicator_3.ScaleType = Enum.ScaleType.Slice
    Indicator_3.SliceCenter = Rect.new(12, 12, 12, 12)

    Sample.Name = "Sample"
    Sample.Parent = ColorPicker
    Sample.BackgroundColor3 = Color3.new(1, 1, 1)
    Sample.BackgroundTransparency = 1
    Sample.Position = UDim2.new(0.800000012, 0, 0.0500000007, 0)
    Sample.Size = UDim2.new(0, 25, 0, 25)
    Sample.Image = "rbxassetid://2851929490"
    Sample.ScaleType = Enum.ScaleType.Slice
    Sample.SliceCenter = Rect.new(4, 4, 4, 4)

    Saturation.Name = "Saturation"
    Saturation.Parent = ColorPicker
    Saturation.BackgroundColor3 = Color3.new(1, 1, 1)
    Saturation.Position = UDim2.new(0.649999976, 0, 0.0500000007, 0)
    Saturation.Size = UDim2.new(0, 15, 0, 100)
    Saturation.Image = "rbxassetid://3641079629"

    Indicator_4.Name = "Indicator"
    Indicator_4.Parent = Saturation
    Indicator_4.BackgroundColor3 = Color3.new(1, 1, 1)
    Indicator_4.BorderSizePixel = 0
    Indicator_4.Size = UDim2.new(0, 20, 0, 2)
    Indicator_4.ZIndex = 2

    Switch.Name = "Switch"
    Switch.Parent = Prefabs
    Switch.BackgroundColor3 = Color3.new(1, 1, 1)
    Switch.BackgroundTransparency = 1
    Switch.BorderSizePixel = 0
    Switch.Position = UDim2.new(0.229411766, 0, 0.20714286, 0)
    Switch.Size = UDim2.new(0, 20, 0, 20)
    Switch.ZIndex = 2
    Switch.Font = Enum.Font.SourceSans
    Switch.Text = ""
    Switch.TextColor3 = Color3.new(1, 1, 1)
    Switch.TextSize = 18

    TextButton_Roundify_4px_4.Name = "TextButton_Roundify_4px"
    TextButton_Roundify_4px_4.Parent = Switch
    TextButton_Roundify_4px_4.BackgroundColor3 = Color3.new(1, 1, 1)
    TextButton_Roundify_4px_4.BackgroundTransparency = 1
    TextButton_Roundify_4px_4.Size = UDim2.new(1, 0, 1, 0)
    TextButton_Roundify_4px_4.Image = "rbxassetid://2851929490"
    TextButton_Roundify_4px_4.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
    TextButton_Roundify_4px_4.ImageTransparency = 0.5
    TextButton_Roundify_4px_4.ScaleType = Enum.ScaleType.Slice
    TextButton_Roundify_4px_4.SliceCenter = Rect.new(4, 4, 4, 4)

    Title_3.Name = "Title"
    Title_3.Parent = Switch
    Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
    Title_3.BackgroundTransparency = 1
    Title_3.Position = UDim2.new(1.20000005, 0, 0, 0)
    Title_3.Size = UDim2.new(0, 20, 0, 20)
    Title_3.Font = Enum.Font.GothamSemibold
    Title_3.Text = "Switch"
    Title_3.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    Title_3.TextSize = 14
    Title_3.TextXAlignment = Enum.TextXAlignment.Left

    Button_2.Name = "Button"
    Button_2.Parent = Prefabs
    Button_2.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
    Button_2.BackgroundTransparency = 1
    Button_2.BorderSizePixel = 0
    Button_2.Size = UDim2.new(0, 91, 0, 20)
    Button_2.ZIndex = 2
    Button_2.Font = Enum.Font.GothamSemibold
    Button_2.TextColor3 = Color3.new(1, 1, 1)
    Button_2.TextSize = 14

    TextButton_Roundify_4px_5.Name = "TextButton_Roundify_4px"
    TextButton_Roundify_4px_5.Parent = Button_2
    TextButton_Roundify_4px_5.BackgroundColor3 = Color3.new(1, 1, 1)
    TextButton_Roundify_4px_5.BackgroundTransparency = 1
    TextButton_Roundify_4px_5.Size = UDim2.new(1, 0, 1, 0)
    TextButton_Roundify_4px_5.Image = "rbxassetid://2851929490"
    TextButton_Roundify_4px_5.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
    TextButton_Roundify_4px_5.ScaleType = Enum.ScaleType.Slice
    TextButton_Roundify_4px_5.SliceCenter = Rect.new(4, 4, 4, 4)

    DropdownButton.Name = "DropdownButton"
    DropdownButton.Parent = Prefabs
    DropdownButton.BackgroundColor3 = Color3.new(0.129412, 0.133333, 0.141176)
    DropdownButton.BorderSizePixel = 0
    DropdownButton.Size = UDim2.new(1, 0, 0, 20)
    DropdownButton.ZIndex = 3
    DropdownButton.Font = Enum.Font.GothamBold
    DropdownButton.Text = "      Button"
    DropdownButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    DropdownButton.TextSize = 14
    DropdownButton.TextXAlignment = Enum.TextXAlignment.Left

    Keybind.Name = "Keybind"
    Keybind.Parent = Prefabs
    Keybind.BackgroundColor3 = Color3.new(1, 1, 1)
    Keybind.BackgroundTransparency = 1
    Keybind.Size = UDim2.new(0, 200, 0, 20)
    Keybind.Image = "rbxassetid://2851929490"
    Keybind.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
    Keybind.ScaleType = Enum.ScaleType.Slice
    Keybind.SliceCenter = Rect.new(4, 4, 4, 4)

    Title_4.Name = "Title"
    Title_4.Parent = Keybind
    Title_4.BackgroundColor3 = Color3.new(1, 1, 1)
    Title_4.BackgroundTransparency = 1
    Title_4.Size = UDim2.new(0, 0, 1, 0)
    Title_4.Font = Enum.Font.GothamBold
    Title_4.Text = "Keybind"
    Title_4.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    Title_4.TextSize = 14
    Title_4.TextXAlignment = Enum.TextXAlignment.Left

    Input.Name = "Input"
    Input.Parent = Keybind
    Input.BackgroundColor3 = Color3.new(1, 1, 1)
    Input.BackgroundTransparency = 1
    Input.BorderSizePixel = 0
    Input.Position = UDim2.new(1, -85, 0, 2)
    Input.Size = UDim2.new(0, 80, 1, -4)
    Input.ZIndex = 2
    Input.Font = Enum.Font.GothamSemibold
    Input.Text = "RShift"
    Input.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
    Input.TextSize = 12
    Input.TextWrapped = true

    Input_Roundify_4px.Name = "Input_Roundify_4px"
    Input_Roundify_4px.Parent = Input
    Input_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
    Input_Roundify_4px.BackgroundTransparency = 1
    Input_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
    Input_Roundify_4px.Image = "rbxassetid://2851929490"
    Input_Roundify_4px.ImageColor3 = Color3.new(0.290196, 0.294118, 0.313726)
    Input_Roundify_4px.ScaleType = Enum.ScaleType.Slice
    Input_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

    Windows.Name = "Windows"
    Windows.Parent = imgui
    Windows.BackgroundColor3 = Color3.new(1, 1, 1)
    Windows.BackgroundTransparency = 1
    Windows.Position = UDim2.new(0, 20, 0, 20)
    Windows.Size = UDim2.new(1, 20, 1, -20)

    --[[ Script ]]--
    script.Parent = imgui

    local UIS = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    local RS = game:GetService("RunService")
    local ps = game:GetService("Players")

    local p = ps.LocalPlayer
    local mouse = p:GetMouse()

    local Prefabs = script.Parent:WaitForChild("Prefabs")
    local Windows = script.Parent:FindFirstChild("Windows")

    local checks = {
        ["binding"] = false,
    }

    UIS.InputBegan:Connect(function(input, gameProcessed)
        if input.KeyCode == ((typeof(ui_options.toggle_key) == "EnumItem") and ui_options.toggle_key or Enum.KeyCode.RightShift) then
            if script.Parent then
                if not checks.binding then
                    script.Parent.Enabled = not script.Parent.Enabled
                end
            end
        end
    end)

    local function Resize(part, new, _delay)
        _delay = _delay or 0.5
        local tweenInfo = TweenInfo.new(_delay, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = TweenService:Create(part, tweenInfo, new)
        tween:Play()
    end

    local function rgbtohsv(r, g, b) -- idk who made this function, but thanks
        r, g, b = r / 255, g / 255, b / 255
        local max, min = math.max(r, g, b), math.min(r, g, b)
        local h, s, v
        v = max

        local d = max - min
        if max == 0 then
            s = 0
        else
            s = d / max
        end

        if max == min then
            h = 0
        else
            if max == r then
                h = (g - b) / d
                if g < b then
                    h = h + 6
                end
            elseif max == g then
                h = (b - r) / d + 2
            elseif max == b then
                h = (r - g) / d + 4
            end
            h = h / 6
        end

        return h, s, v
    end

    local function hasprop(object, prop)
        local a, b = pcall(function()
            return object[tostring(prop)]
        end)
        if a then
            return b
        end
    end

    local function gNameLen(obj)
        return obj.TextBounds.X + 15
    end

    local function gMouse()
        return Vector2.new(UIS:GetMouseLocation().X + 1, UIS:GetMouseLocation().Y - 35)
    end

    local function ripple(button, x, y)
        spawn(function()
            button.ClipsDescendants = true

            local circle = Prefabs:FindFirstChild("Circle"):Clone()

            circle.Parent = button
            circle.ZIndex = 1000

            local new_x = x - circle.AbsolutePosition.X
            local new_y = y - circle.AbsolutePosition.Y
            circle.Position = UDim2.new(0, new_x, 0, new_y)

            local size = 0
            if button.AbsoluteSize.X > button.AbsoluteSize.Y then
                size = button.AbsoluteSize.X * 1.5
            elseif button.AbsoluteSize.X < button.AbsoluteSize.Y then
                size = button.AbsoluteSize.Y * 1.5
            elseif button.AbsoluteSize.X == button.AbsoluteSize.Y then
                size = button.AbsoluteSize.X * 1.5
            end

            circle:TweenSizeAndPosition(UDim2.new(0, size, 0, size), UDim2.new(0.5, -size / 2, 0.5, -size / 2), "Out", "Quad", 0.5, false, nil)
            Resize(circle, {ImageTransparency = 1}, 0.5)

            wait(0.5)
            circle:Destroy()
        end)
    end

    local windows = 0
    local library = {}

    local function format_windows()
        local ull = Prefabs:FindFirstChild("UIListLayout"):Clone()
        ull.Parent = Windows
        local data = {}

        for i,v in next, Windows:GetChildren() do
            if not (v:IsA("UIListLayout")) then
                data[v] = v.AbsolutePosition
            end
        end

        ull:Destroy()

        for i,v in next, data do
            i.Position = UDim2.new(0, v.X, 0, v.Y)
        end
    end

    function library:FormatWindows()
        format_windows()
    end

    function library:AddWindow(title, options)
        windows = windows + 1
        local dropdown_open = false
        title = tostring(title or "New Window")
        options = (typeof(options) == "table") and options or ui_options
        options.tween_time = 0.1

        local Window = Prefabs:FindFirstChild("Window"):Clone()
        Window.Parent = Windows
        Window:FindFirstChild("Title").Text = title
        Window.Size = UDim2.new(0, options.min_size.X, 0, options.min_size.Y)
        Window.ZIndex = Window.ZIndex + (windows * 10)

        do -- Altering Window Color
            local Title = Window:FindFirstChild("Title")
            local Bar = Window:FindFirstChild("Bar")
            local Base = Bar:FindFirstChild("Base")
            local Top = Bar:FindFirstChild("Top")
            local SplitFrame = Window:FindFirstChild("TabSelection"):FindFirstChild("Frame")
            local Toggle = Bar:FindFirstChild("Toggle")

            spawn(function()
                while true do
                    Bar.BackgroundColor3 = options.main_color
                    Base.BackgroundColor3 = options.main_color
                    Base.ImageColor3 = options.main_color
                    Top.ImageColor3 = options.main_color
                    SplitFrame.BackgroundColor3 = options.main_color

                    RS.Heartbeat:Wait()
                end
            end)

        end

        local Resizer = Window:WaitForChild("Resizer")

        local window_data = {}
        Window.Draggable = true

        do -- Resize Window
            local oldIcon = mouse.Icon
            local Entered = false
            Resizer.MouseEnter:Connect(function()
                Window.Draggable = false
                if options.can_resize then
                    oldIcon = mouse.Icon
                    -- mouse.Icon = "http://www.roblox.com/asset?id=4745131330"
                end
                Entered = true
            end)

            Resizer.MouseLeave:Connect(function()
                Entered = false
                if options.can_resize then
                    mouse.Icon = oldIcon
                end
                Window.Draggable = true
            end)

            local Held = false
            UIS.InputBegan:Connect(function(inputObject)
                if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
                    Held = true

                    spawn(function() -- Loop check
                        if Entered and Resizer.Active and options.can_resize then
                            while Held and Resizer.Active do

                                local mouse_location = gMouse()
                                local x = mouse_location.X - Window.AbsolutePosition.X
                                local y = mouse_location.Y - Window.AbsolutePosition.Y

                                --
                                if x >= options.min_size.X and y >= options.min_size.Y then
                                    Resize(Window, {Size = UDim2.new(0, x, 0, y)}, options.tween_time)
                                elseif x >= options.min_size.X then
                                    Resize(Window, {Size = UDim2.new(0, x, 0, options.min_size.Y)}, options.tween_time)
                                elseif y >= options.min_size.Y then
                                    Resize(Window, {Size = UDim2.new(0, options.min_size.X, 0, y)}, options.tween_time)
                                else
                                    Resize(Window, {Size = UDim2.new(0, options.min_size.X, 0, options.min_size.Y)}, options.tween_time)
                                end

                                RS.Heartbeat:Wait()
                            end
                        end
                    end)
                end
            end)
            UIS.InputEnded:Connect(function(inputObject)
                if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
                    Held = false
                end
            end)
        end

        do -- [Open / Close] Window
            local open_close = Window:FindFirstChild("Bar"):FindFirstChild("Toggle")
            local open = true
            local canopen = true

            local oldwindowdata = {}
            local oldy = Window.AbsoluteSize.Y
            open_close.MouseButton1Click:Connect(function()
                if canopen then
                    canopen = false

                    if open then
                        -- Close

                        oldwindowdata = {}
                        for i,v in next, Window:FindFirstChild("Tabs"):GetChildren() do
                            oldwindowdata[v] = v.Visible
                            v.Visible = false
                        end

                        Resizer.Active = false

                        oldy = Window.AbsoluteSize.Y
                        Resize(open_close, {Rotation = 0}, options.tween_time)
                        Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, 26)}, options.tween_time)
                        open_close.Parent:FindFirstChild("Base").Transparency = 1

                    else
                        -- Open

                        for i,v in next, oldwindowdata do
                            i.Visible = v
                        end

                        Resizer.Active = true

                        Resize(open_close, {Rotation = 90}, options.tween_time)
                        Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, oldy)}, options.tween_time)
                        open_close.Parent:FindFirstChild("Base").Transparency = 0

                    end

                    open = not open
                    wait(options.tween_time)
                    canopen = true

                end
            end)
        end

        do -- UI Elements
            local tabs = Window:FindFirstChild("Tabs")
            local tab_selection = Window:FindFirstChild("TabSelection")
            local tab_buttons = tab_selection:FindFirstChild("TabButtons")

            do -- Add Tab
                function window_data:AddTab(tab_name)
                    local tab_data = {}
                    tab_name = tostring(tab_name or "New Tab")
                    tab_selection.Visible = true

                    local new_button = Prefabs:FindFirstChild("TabButton"):Clone()
                    new_button.Parent = tab_buttons
                    new_button.Text = tab_name
                    new_button.Size = UDim2.new(0, gNameLen(new_button), 0, 20)
                    new_button.ZIndex = new_button.ZIndex + (windows * 10)
                    new_button:GetChildren()[1].ZIndex = new_button:GetChildren()[1].ZIndex + (windows * 10)

                    local new_tab = Prefabs:FindFirstChild("Tab"):Clone()
                    new_tab.Parent = tabs
                    new_tab.ZIndex = new_tab.ZIndex + (windows * 10)

                    local function show()
                        if dropdown_open then return end
                        for i, v in next, tab_buttons:GetChildren() do
                            if not (v:IsA("UIListLayout")) then
                                v:GetChildren()[1].ImageColor3 = Color3.fromRGB(52, 53, 56)
                                Resize(v, {Size = UDim2.new(0, v.AbsoluteSize.X, 0, 20)}, options.tween_time)
                            end
                        end
                        for i, v in next, tabs:GetChildren() do
                            v.Visible = false
                        end

                        Resize(new_button, {Size = UDim2.new(0, new_button.AbsoluteSize.X, 0, 25)}, options.tween_time)
                        new_button:GetChildren()[1].ImageColor3 = Color3.fromRGB(73, 75, 79)
                        new_tab.Visible = true
                    end

                    new_button.MouseButton1Click:Connect(function()
                        show()
                    end)

                    function tab_data:Show()
                        show()
                    end

                    do -- Tab Elements

                        function tab_data:AddLabel(label_text) -- [Label]
                            label_text = tostring(label_text or "New Label")

                            local label = Prefabs:FindFirstChild("Label"):Clone()

                            label.Parent = new_tab
                            label.Text = label_text
                            label.Size = UDim2.new(0, gNameLen(label), 0, 20)
                            label.ZIndex = label.ZIndex + (windows * 10)

                            return label
                        end

                        function tab_data:AddButton(button_text, callback) -- [Button]
                            button_text = tostring(button_text or "New Button")
                            callback = typeof(callback) == "function" and callback or function()end

                            local button = Prefabs:FindFirstChild("Button"):Clone()

                            button.Parent = new_tab
                            button.Text = button_text
                            button.Size = UDim2.new(0, gNameLen(button), 0, 20)
                            button.ZIndex = button.ZIndex + (windows * 10)
                            button:GetChildren()[1].ZIndex = button:GetChildren()[1].ZIndex + (windows * 10)

                            spawn(function()
                                while true do
                                    if button and button:GetChildren()[1] then
                                        button:GetChildren()[1].ImageColor3 = options.main_color
                                    end
                                    RS.Heartbeat:Wait()
                                end
                            end)

                            button.MouseButton1Click:Connect(function()
                                ripple(button, mouse.X, mouse.Y)
                                pcall(callback)
                            end)

                            return button
                        end

                        function tab_data:AddSwitch(switch_text, callback) -- [Switch]
                            local switch_data = {}

                            switch_text = tostring(switch_text or "New Switch")
                            callback = typeof(callback) == "function" and callback or function()end

                            local switch = Prefabs:FindFirstChild("Switch"):Clone()

                            switch.Parent = new_tab
                            switch:FindFirstChild("Title").Text = switch_text

                            switch:FindFirstChild("Title").ZIndex = switch:FindFirstChild("Title").ZIndex + (windows * 10)
                            switch.ZIndex = switch.ZIndex + (windows * 10)
                            switch:GetChildren()[1].ZIndex = switch:GetChildren()[1].ZIndex + (windows * 10)

                            spawn(function()
                                while true do
                                    if switch and switch:GetChildren()[1] then
                                        switch:GetChildren()[1].ImageColor3 = options.main_color
                                    end
                                    RS.Heartbeat:Wait()
                                end
                            end)

                            local toggled = false
                            switch.MouseButton1Click:Connect(function()
                                toggled = not toggled
                                switch.Text = toggled and utf8.char(10003) or ""
                                pcall(callback, toggled)
                            end)

                            function switch_data:Set(bool)
                                toggled = (typeof(bool) == "boolean") and bool or false
                                switch.Text = toggled and utf8.char(10003) or ""
                                pcall(callback,toggled)
                            end

                            return switch_data, switch
                        end

                        function tab_data:AddTextBox(textbox_text, callback, textbox_options)
                            textbox_text = tostring(textbox_text or "New TextBox")
                            callback = typeof(callback) == "function" and callback or function()end
                            textbox_options = typeof(textbox_options) == "table" and textbox_options or {["clear"] = true}
                            textbox_options = {
                                ["clear"] = ((textbox_options.clear) == true)
                            }

                            local textbox = Prefabs:FindFirstChild("TextBox"):Clone()

                            textbox.Parent = new_tab
                            textbox.PlaceholderText = textbox_text
                            textbox.ZIndex = textbox.ZIndex + (windows * 10)
                            textbox:GetChildren()[1].ZIndex = textbox:GetChildren()[1].ZIndex + (windows * 10)

                            textbox.FocusLost:Connect(function(ep)
                                if ep then
                                    if #textbox.Text > 0 then
                                        pcall(callback, textbox.Text)
                                        if textbox_options.clear then
                                            textbox.Text = ""
                                        end
                                    end
                                end
                            end)

                            return textbox
                        end

                        function tab_data:AddSlider(slider_text, callback, slider_options)
                            local slider_data = {}

                            slider_text = tostring(slider_text or "New Slider")
                            callback = typeof(callback) == "function" and callback or function()end
                            slider_options = typeof(slider_options) == "table" and slider_options or {}
                            slider_options = {
                                ["min"] = slider_options.min or 0,
                                ["max"] = slider_options.max or 100,
                                ["readonly"] = slider_options.readonly or false,
                            }

                            local slider = Prefabs:FindFirstChild("Slider"):Clone()

                            slider.Parent = new_tab
                            slider.ZIndex = slider.ZIndex + (windows * 10)

                            local title = slider:FindFirstChild("Title")
                            local indicator = slider:FindFirstChild("Indicator")
                            local value = slider:FindFirstChild("Value")
                            title.ZIndex = title.ZIndex + (windows * 10)
                            indicator.ZIndex = indicator.ZIndex + (windows * 10)
                            value.ZIndex = value.ZIndex + (windows * 10)

                            title.Text = slider_text

                            do -- Slider Math
                                local Entered = false
                                slider.MouseEnter:Connect(function()
                                    Entered = true
                                    Window.Draggable = false
                                end)
                                slider.MouseLeave:Connect(function()
                                    Entered = false
                                    Window.Draggable = true
                                end)

                                local Held = false
                                UIS.InputBegan:Connect(function(inputObject)
                                    if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
                                        Held = true

                                        spawn(function() -- Loop check
                                            if Entered and not slider_options.readonly then
                                                while Held and (not dropdown_open) do
                                                    local mouse_location = gMouse()
                                                    local x = (slider.AbsoluteSize.X - (slider.AbsoluteSize.X - ((mouse_location.X - slider.AbsolutePosition.X)) + 1)) / slider.AbsoluteSize.X

                                                    local min = 0
                                                    local max = 1

                                                    local size = min
                                                    if x >= min and x <= max then
                                                        size = x
                                                    elseif x < min then
                                                        size = min
                                                    elseif x > max then
                                                        size = max
                                                    end

                                                    Resize(indicator, {Size = UDim2.new(size or min, 0, 0, 20)}, options.tween_time)
                                                    local p = math.floor((size or min) * 100)

                                                    local maxv = slider_options.max
                                                    local minv = slider_options.min
                                                    local diff = maxv - minv

                                                    local sel_value = math.floor(((diff / 100) * p) + minv)

                                                    value.Text = tostring(sel_value)
                                                    pcall(callback, sel_value)

                                                    RS.Heartbeat:Wait()
                                                end
                                            end
                                        end)
                                    end
                                end)
                                UIS.InputEnded:Connect(function(inputObject)
                                    if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
                                        Held = false
                                    end
                                end)

                                function slider_data:Set(new_value)
                                    new_value = tonumber(new_value) or 0
                                    new_value = (((new_value >= 0 and new_value <= 100) and new_value) / 100)

                                    Resize(indicator, {Size = UDim2.new(new_value or 0, 0, 0, 20)}, options.tween_time)
                                    local p = math.floor((new_value or 0) * 100)

                                    local maxv = slider_options.max
                                    local minv = slider_options.min
                                    local diff = maxv - minv

                                    local sel_value = math.floor(((diff / 100) * p) + minv)

                                    value.Text = tostring(sel_value)
                                    pcall(callback, sel_value)
                                end

                                slider_data:Set(slider_options["min"])
                            end

                            return slider_data, slider
                        end

                        function tab_data:AddKeybind(keybind_name, callback, keybind_options)
                            local keybind_data = {}

                            keybind_name = tostring(keybind_name or "New Keybind")
                            callback = typeof(callback) == "function" and callback or function()end
                            keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
                            keybind_options = {
                                ["standard"] = keybind_options.standard or Enum.KeyCode.RightShift,
                            }

                            local keybind = Prefabs:FindFirstChild("Keybind"):Clone()
                            local input = keybind:FindFirstChild("Input")
                            local title = keybind:FindFirstChild("Title")
                            keybind.ZIndex = keybind.ZIndex + (windows * 10)
                            input.ZIndex = input.ZIndex + (windows * 10)
                            input:GetChildren()[1].ZIndex = input:GetChildren()[1].ZIndex + (windows * 10)
                            title.ZIndex = title.ZIndex + (windows * 10)

                            keybind.Parent = new_tab
                            title.Text = "  " .. keybind_name
                            keybind.Size = UDim2.new(0, gNameLen(title) + 80, 0, 20)

                            local shortkeys = { -- thanks to stroketon for helping me out with this
                                RightControl = 'RightCtrl',
                                LeftControl = 'LeftCtrl',
                                LeftShift = 'LShift',
                                RightShift = 'RShift',
                                MouseButton1 = "Mouse1",
                                MouseButton2 = "Mouse2"
                            }

                            local keybind = keybind_options.standard

                            function keybind_data:SetKeybind(Keybind)
                                local key = shortkeys[Keybind.Name] or Keybind.Name
                                input.Text = key
                                keybind = Keybind
                            end

                            UIS.InputBegan:Connect(function(a, b)
                                if checks.binding then
                                    spawn(function()
                                        wait()
                                        checks.binding = false
                                    end)
                                    return
                                end
                                if a.KeyCode == keybind and not b then
                                    pcall(callback, keybind)
                                end
                            end)

                            keybind_data:SetKeybind(keybind_options.standard)

                            input.MouseButton1Click:Connect(function()
                                if checks.binding then return end
                                input.Text = "..."
                                checks.binding = true
                                local a, b = UIS.InputBegan:Wait()
                                keybind_data:SetKeybind(a.KeyCode)
                            end)

                            return keybind_data, keybind
                        end

                        function tab_data:AddDropdown(dropdown_name, callback)
                            local dropdown_data = {}
                            dropdown_name = tostring(dropdown_name or "New Dropdown")
                            callback = typeof(callback) == "function" and callback or function()end

                            local dropdown = Prefabs:FindFirstChild("Dropdown"):Clone()
                            local box = dropdown:FindFirstChild("Box")
                            local objects = box:FindFirstChild("Objects")
                            local indicator = dropdown:FindFirstChild("Indicator")
                            dropdown.ZIndex = dropdown.ZIndex + (windows * 10)
                            box.ZIndex = box.ZIndex + (windows * 10)
                            objects.ZIndex = objects.ZIndex + (windows * 10)
                            indicator.ZIndex = indicator.ZIndex + (windows * 10)
                            dropdown:GetChildren()[3].ZIndex = dropdown:GetChildren()[3].ZIndex + (windows * 10)

                            dropdown.Parent = new_tab
                            dropdown.Text = "      " .. dropdown_name
                            box.Size = UDim2.new(1, 0, 0, 0)

                            local open = false
                            dropdown.MouseButton1Click:Connect(function()
                                open = not open

                                local len = (#objects:GetChildren() - 1) * 20
                                if #objects:GetChildren() - 1 >= 10 then
                                    len = 10 * 20
                                    objects.CanvasSize = UDim2.new(0, 0, (#objects:GetChildren() - 1) * 0.1, 0)
                                end

                                if open then -- Open
                                    if dropdown_open then return end
                                    dropdown_open = true
                                    Resize(box, {Size = UDim2.new(1, 0, 0, len)}, options.tween_time)
                                    Resize(indicator, {Rotation = 90}, options.tween_time)
                                else -- Close
                                    dropdown_open = false
                                    Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
                                    Resize(indicator, {Rotation = -90}, options.tween_time)
                                end

                            end)

                            function dropdown_data:Add(n)
                                local object_data = {}
                                n = tostring(n or "New Object")

                                local object = Prefabs:FindFirstChild("DropdownButton"):Clone()

                                object.Parent = objects
                                object.Text = n
                                object.ZIndex = object.ZIndex + (windows * 10)

                                object.MouseEnter:Connect(function()
                                    object.BackgroundColor3 = options.main_color
                                end)
                                object.MouseLeave:Connect(function()
                                    object.BackgroundColor3 = Color3.fromRGB(33, 34, 36)
                                end)

                                if open then
                                    local len = (#objects:GetChildren() - 1) * 20
                                    if #objects:GetChildren() - 1 >= 10 then
                                        len = 10 * 20
                                        objects.CanvasSize = UDim2.new(0, 0, (#objects:GetChildren() - 1) * 0.1, 0)
                                    end
                                    Resize(box, {Size = UDim2.new(1, 0, 0, len)}, options.tween_time)
                                end

                                object.MouseButton1Click:Connect(function()
                                    if dropdown_open then
                                        dropdown.Text = "      [ " .. n .. " ]"
                                        dropdown_open = false
                                        open = false
                                        Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, options.tween_time)
                                        Resize(indicator, {Rotation = -90}, options.tween_time)
                                        pcall(callback, n)
                                    end
                                end)

                                function object_data:Remove()
                                    object:Destroy()
                                end

                                return object, object_data
                            end

                            return dropdown_data, dropdown
                        end

                        function tab_data:AddColorPicker(callback)
                            local color_picker_data = {}
                            callback = typeof(callback) == "function" and callback or function()end

                            local color_picker = Prefabs:FindFirstChild("ColorPicker"):Clone()

                            color_picker.Parent = new_tab
                            color_picker.ZIndex = color_picker.ZIndex + (windows * 10)

                            local palette = color_picker:FindFirstChild("Palette")
                            local sample = color_picker:FindFirstChild("Sample")
                            local saturation = color_picker:FindFirstChild("Saturation")
                            palette.ZIndex = palette.ZIndex + (windows * 10)
                            sample.ZIndex = sample.ZIndex + (windows * 10)
                            saturation.ZIndex = saturation.ZIndex + (windows * 10)

                            do -- Color Picker Math
                                local h = 0
                                local s = 1
                                local v = 1

                                local function update()
                                    local color = Color3.fromHSV(h, s, v)
                                    sample.ImageColor3 = color
                                    saturation.ImageColor3 = Color3.fromHSV(h, 1, 1)
                                    pcall(callback, color)
                                end

                                do
                                    local color = Color3.fromHSV(h, s, v)
                                    sample.ImageColor3 = color
                                    saturation.ImageColor3 = Color3.fromHSV(h, 1, 1)
                                end

                                local Entered1, Entered2 = false, false
                                palette.MouseEnter:Connect(function()
                                    Window.Draggable = false
                                    Entered1 = true
                                end)
                                palette.MouseLeave:Connect(function()
                                    Window.Draggable = true
                                    Entered1 = false
                                end)
                                saturation.MouseEnter:Connect(function()
                                    Window.Draggable = false
                                    Entered2 = true
                                end)
                                saturation.MouseLeave:Connect(function()
                                    Window.Draggable = true
                                    Entered2 = false
                                end)

                                local palette_indicator = palette:FindFirstChild("Indicator")
                                local saturation_indicator = saturation:FindFirstChild("Indicator")
                                palette_indicator.ZIndex = palette_indicator.ZIndex + (windows * 10)
                                saturation_indicator.ZIndex = saturation_indicator.ZIndex + (windows * 10)

                                local Held = false
                                UIS.InputBegan:Connect(function(inputObject)
                                    if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
                                        Held = true

                                        spawn(function() -- Loop check
                                            while Held and Entered1 and (not dropdown_open) do -- Palette
                                                local mouse_location = gMouse()

                                                local x = ((palette.AbsoluteSize.X - (mouse_location.X - palette.AbsolutePosition.X)) + 1)
                                                local y = ((palette.AbsoluteSize.Y - (mouse_location.Y - palette.AbsolutePosition.Y)) + 1.5)

                                                local color = Color3.fromHSV(x / 100, y / 100, 0)
                                                h = x / 100
                                                s = y / 100

                                                Resize(palette_indicator, {Position = UDim2.new(0, math.abs(x - 100) - (palette_indicator.AbsoluteSize.X / 2), 0, math.abs(y - 100) - (palette_indicator.AbsoluteSize.Y / 2))}, options.tween_time)

                                                update()
                                                RS.Heartbeat:Wait()
                                            end

                                            while Held and Entered2 and (not dropdown_open) do -- Saturation
                                                local mouse_location = gMouse()
                                                local y = ((palette.AbsoluteSize.Y - (mouse_location.Y - palette.AbsolutePosition.Y)) + 1.5)
                                                v = y / 100

                                                Resize(saturation_indicator, {Position = UDim2.new(0, 0, 0, math.abs(y - 100))}, options.tween_time)

                                                update()
                                                RS.Heartbeat:Wait()
                                            end
                                        end)
                                    end
                                end)
                                UIS.InputEnded:Connect(function(inputObject)
                                    if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
                                        Held = false
                                    end
                                end)

                                function color_picker_data:Set(color)
                                    color = typeof(color) == "Color3" and color or Color3.new(1, 1, 1)
                                    local h2, s2, v2 = rgbtohsv(color.r * 255, color.g * 255, color.b * 255)
                                    sample.ImageColor3 = color
                                    saturation.ImageColor3 = Color3.fromHSV(h2, 1, 1)
                                    pcall(callback, color)
                                end
                            end

                            return color_picker_data, color_picker
                        end

                        function tab_data:AddConsole(console_options)
                            local console_data = {}

                            console_options = typeof(console_options) == "table" and console_options or {["readonly"] = true,["full"] = false,}
                            console_options = {
                                ["y"] = tonumber(console_options.y) or 200,
                                ["source"] = console_options.source or "Logs",
                                ["readonly"] = ((console_options.readonly) == true),
                                ["full"] = ((console_options.full) == true),
                            }

                            local console = Prefabs:FindFirstChild("Console"):Clone()

                            console.Parent = new_tab
                            console.ZIndex = console.ZIndex + (windows * 10)
                            console.Size = UDim2.new(1, 0, console_options.full and 1 or 0, console_options.y)

                            local sf = console:GetChildren()[1]
                            local Source = sf:FindFirstChild("Source")
                            local Lines = sf:FindFirstChild("Lines")
                            Source.ZIndex = Source.ZIndex + (windows * 10)
                            Lines.ZIndex = Lines.ZIndex + (windows * 10)

                            Source.TextEditable = not console_options.readonly

                            do -- Syntax Zindex
                                for i,v in next, Source:GetChildren() do
                                    v.ZIndex = v.ZIndex + (windows * 10) + 1
                                end
                            end
                            Source.Comments.ZIndex = Source.Comments.ZIndex + 1

                            do -- Highlighting (thanks to whoever made this)
                                local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"}
                                local global_env = {"getrawmetatable", "newcclosure", "islclosure", "setclipboard", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16", "load", "fire", "Fire"}

                                local Highlight = function(string, keywords)
                                    local K = {}
                                    local S = string
                                    local Token =
                                    {
                                        ["="] = true,
                                        ["."] = true,
                                        [","] = true,
                                        ["("] = true,
                                        [")"] = true,
                                        ["["] = true,
                                        ["]"] = true,
                                        ["{"] = true,
                                        ["}"] = true,
                                        [":"] = true,
                                        ["*"] = true,
                                        ["/"] = true,
                                        ["+"] = true,
                                        ["-"] = true,
                                        ["%"] = true,
                                        [";"] = true,
                                        ["~"] = true
                                    }
                                    for i, v in pairs(keywords) do
                                        K[v] = true
                                    end
                                    S = S:gsub(".", function(c)
                                        if Token[c] ~= nil then
                                            return "\32"
                                        else
                                            return c
                                        end
                                    end)
                                    S = S:gsub("%S+", function(c)
                                        if K[c] ~= nil then
                                            return c
                                        else
                                            return (" "):rep(#c)
                                        end
                                    end)

                                    return S
                                end

                                local hTokens = function(string)
                                    local Token =
                                    {
                                        ["="] = true,
                                        ["."] = true,
                                        [","] = true,
                                        ["("] = true,
                                        [")"] = true,
                                        ["["] = true,
                                        ["]"] = true,
                                        ["{"] = true,
                                        ["}"] = true,
                                        [":"] = true,
                                        ["*"] = true,
                                        ["/"] = true,
                                        ["+"] = true,
                                        ["-"] = true,
                                        ["%"] = true,
                                        [";"] = true,
                                        ["~"] = true
                                    }
                                    local A = ""
                                    string:gsub(".", function(c)
                                        if Token[c] ~= nil then
                                            A = A .. c
                                        elseif c == "\n" then
                                            A = A .. "\n"
                                        elseif c == "\t" then
                                            A = A .. "\t"
                                        else
                                            A = A .. "\32"
                                        end
                                    end)

                                    return A
                                end

                                local strings = function(string)
                                    local highlight = ""
                                    local quote = false
                                    string:gsub(".", function(c)
                                        if quote == false and c == "\34" then
                                            quote = true
                                        elseif quote == true and c == "\34" then
                                            quote = false
                                        end
                                        if quote == false and c == "\34" then
                                            highlight = highlight .. "\34"
                                        elseif c == "\n" then
                                            highlight = highlight .. "\n"
                                        elseif c == "\t" then
                                            highlight = highlight .. "\t"
                                        elseif quote == true then
                                            highlight = highlight .. c
                                        elseif quote == false then
                                            highlight = highlight .. "\32"
                                        end
                                    end)

                                    return highlight
                                end

                                local info = function(string)
                                    local highlight = ""
                                    local quote = false
                                    string:gsub(".", function(c)
                                        if quote == false and c == "[" then
                                            quote = true
                                        elseif quote == true and c == "]" then
                                            quote = false
                                        end
                                        if quote == false and c == "\]" then
                                            highlight = highlight .. "\]"
                                        elseif c == "\n" then
                                            highlight = highlight .. "\n"
                                        elseif c == "\t" then
                                            highlight = highlight .. "\t"
                                        elseif quote == true then
                                            highlight = highlight .. c
                                        elseif quote == false then
                                            highlight = highlight .. "\32"
                                        end
                                    end)

                                    return highlight
                                end

                                local comments = function(string)
                                    local ret = ""
                                    string:gsub("[^\r\n]+", function(c)
                                        local comm = false
                                        local i = 0
                                        c:gsub(".", function(n)
                                            i = i + 1
                                            if c:sub(i, i + 1) == "--" then
                                                comm = true
                                            end
                                            if comm == true then
                                                ret = ret .. n
                                            else
                                                ret = ret .. "\32"
                                            end
                                        end)
                                        ret = ret
                                    end)

                                    return ret
                                end

                                local numbers = function(string)
                                    local A = ""
                                    string:gsub(".", function(c)
                                        if tonumber(c) ~= nil then
                                            A = A .. c
                                        elseif c == "\n" then
                                            A = A .. "\n"
                                        elseif c == "\t" then
                                            A = A .. "\t"
                                        else
                                            A = A .. "\32"
                                        end
                                    end)

                                    return A
                                end

                                local highlight_lua = function(type)
                                    if type == "Text" then
                                        Source.Text = Source.Text:gsub("\13", "")
                                        Source.Text = Source.Text:gsub("\t", "      ")
                                        local s = Source.Text

                                        Source.Keywords.Text = Highlight(s, lua_keywords)
                                        Source.Globals.Text = Highlight(s, global_env)
                                        Source.RemoteHighlight.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
                                        Source.Tokens.Text = hTokens(s)
                                        Source.Numbers.Text = numbers(s)
                                        Source.Strings.Text = strings(s)
                                        Source.Comments.Text = comments(s)

                                        local lin = 1
                                        s:gsub("\n", function()
                                            lin = lin + 1
                                        end)

                                        Lines.Text = ""
                                        for i = 1, lin do
                                            Lines.Text = Lines.Text .. i .. "\n"
                                        end

                                        sf.CanvasSize = UDim2.new(0, 0, lin * 0.153846154, 0)
                                    end

                                local highlight_logs = function(type)
                                end
                                    if type == "Text" then
                                        Source.Text = Source.Text:gsub("\13", "")
                                        Source.Text = Source.Text:gsub("\t", "      ")
                                        local s = Source.Text

                                        Source.Info.Text = info(s)

                                        local lin = 1
                                        s:gsub("\n", function()
                                            lin = lin + 1
                                        end)

                                        sf.CanvasSize = UDim2.new(0, 0, lin * 0.153846154, 0)
                                    end
                                end

                                if console_options.source == "Lua" then
                                    highlight_lua("Text")
                                    Source.Changed:Connect(highlight_lua)
                                elseif console_options.source == "Logs" then
                                    Lines.Visible = false

                                    highlight_logs("Text")
                                    Source.Changed:Connect(highlight_logs)
                                end

                                function console_data:Set(code)
                                    Source.Text = tostring(code)
                                end

                                function console_data:Get()
                                    return Source.Text
                                end

                                function console_data:Log(msg)
                                    Source.Text = Source.Text .. "[*] " .. tostring(msg) .. "\n"
                                end

                            end

                            return console_data, console
                        end

                        function tab_data:AddHorizontalAlignment()
                            local ha_data = {}

                            local ha = Prefabs:FindFirstChild("HorizontalAlignment"):Clone()
                            ha.Parent = new_tab

                            function ha_data:AddButton(...)
                                local data, object
                                local ret = {tab_data:AddButton(...)}
                                if typeof(ret[1]) == "table" then
                                    data = ret[1]
                                    object = ret[2]
                                    object.Parent = ha
                                    return data, object
                                else
                                    object = ret[1]
                                    object.Parent = ha
                                    return object
                                end
                            end

                            return ha_data, ha
                        end

                        function tab_data:AddFolder(folder_name) -- [Folder]
                            local folder_data = {}

                            folder_name = tostring(folder_name or "New Folder")

                            local folder = Prefabs:FindFirstChild("Folder"):Clone()
                            local button = folder:FindFirstChild("Button")
                            local objects = folder:FindFirstChild("Objects")
                            local toggle = button:FindFirstChild("Toggle")
                            folder.ZIndex = folder.ZIndex + (windows * 10)
                            button.ZIndex = button.ZIndex + (windows * 10)
                            objects.ZIndex = objects.ZIndex + (windows * 10)
                            toggle.ZIndex = toggle.ZIndex + (windows * 10)
                            button:GetChildren()[1].ZIndex = button:GetChildren()[1].ZIndex + (windows * 10)

                            folder.Parent = new_tab
                            button.Text = "      " .. folder_name

                            spawn(function()
                                while true do
                                    if button and button:GetChildren()[1] then
                                        button:GetChildren()[1].ImageColor3 = options.main_color
                                    end
                                    RS.Heartbeat:Wait()
                                end
                            end)

                            local function gFolderLen()
                                local n = 25
                                for i,v in next, objects:GetChildren() do
                                    if not (v:IsA("UIListLayout")) then
                                        n = n + v.AbsoluteSize.Y + 5
                                    end
                                end
                                return n
                            end

                            local open = false
                            button.MouseButton1Click:Connect(function()
                                if open then -- Close
                                    Resize(toggle, {Rotation = 0}, options.tween_time)
                                    objects.Visible = false
                                else -- Open
                                    Resize(toggle, {Rotation = 90}, options.tween_time)
                                    objects.Visible = true
                                end

                                open = not open
                            end)

                            spawn(function()
                                while true do
                                    Resize(folder, {Size = UDim2.new(1, 0, 0, (open and gFolderLen() or 20))}, options.tween_time)
                                    wait()
                                end
                            end)

                            for i,v in next, tab_data do
                                folder_data[i] = function(...)
                                    local data, object
                                    local ret = {v(...)}
                                    if typeof(ret[1]) == "table" then
                                        data = ret[1]
                                        object = ret[2]
                                        object.Parent = objects
                                        return data, object
                                    else
                                        object = ret[1]
                                        object.Parent = objects
                                        return object
                                    end
                                end
                            end

                            return folder_data, folder
                        end

                    end

                    return tab_data, new_tab
                end
            end
        end

        do
            for i, v in next, Window:GetDescendants() do
                if hasprop(v, "ZIndex") then
                    v.ZIndex = v.ZIndex + (windows * 10)
                end
            end
        end

        return window_data, Window
    end

    local Window = library:AddWindow("Word Bomb", {
        main_color = Color3.fromRGB(41, 74, 122),
        min_size = Vector2.new(500, 150),
        toggle_key = Enum.KeyCode.RightShift,
        can_resize = true
    })
    
    local Tab = Window:AddTab("Main")
    
    local AutoTypeSwitch = Tab:AddSwitch("Auto Type", function(Value)
        Settings.AutoType = Value
    end)
    AutoTypeSwitch:Set(Settings.AutoType)
    
    local AutoJoinSwitch = Tab:AddSwitch("Auto Join", function(Value)
        Settings.AutoJoin = Value
    end)
    AutoJoinSwitch:Set(Settings.AutoJoin)

    local TypeTimeSlider = Tab:AddSlider("Type Time", function(Value)
        Settings.TypeTime = Value
    end, {
        ["min"] = 0,
        ["max"] = 5,
        ["readonly"] = false
    })
    TypeTimeSlider:Set(Settings.TypeTime)
    
    Tab:Show()
    library:FormatWindows()
end

local Used = {}
local Random = Random.new()

local Typing = false

function CanType()
    local GameSpace = PlayerGui.GameUI.Container.GameSpace
    if GameSpace:FindFirstChild("DefaultUI") and GameSpace.DefaultUI:FindFirstChild("GameContainer") and GameSpace.DefaultUI.GameContainer:FindFirstChild("DesktopContainer") then
        return GameSpace.DefaultUI.GameContainer.DesktopContainer.Typebar.Typebox.Visible
    end
    return false
end

function GetJoinButton()
    local GameSpace = PlayerGui.GameUI.Container.GameSpace
    if GameSpace:FindFirstChild("DefaultUI") and GameSpace.DefaultUI:FindFirstChild("DesktopFrame") then
        return GameSpace.DefaultUI.DesktopFrame:FindFirstChild("JoinButton")
    end
end

function GetCurrentPattern()
    local GameSpace = PlayerGui.GameUI.Container.GameSpace
    if GameSpace:FindFirstChild("DefaultUI") and GameSpace.DefaultUI:FindFirstChild("GameContainer") and GameSpace.DefaultUI.GameContainer:FindFirstChild("DesktopContainer") then
        local Pattern = ""
        for _, LetterFrame in next, GameSpace.DefaultUI.GameContainer.DesktopContainer.InfoFrameContainer.InfoFrame.TextFrame:GetChildren() do
            if LetterFrame:IsA("Frame") and LetterFrame.Letter.ImageColor3 ~= Color3.new(255, 255, 255) then
                Pattern ..= LetterFrame.Letter.TextLabel.Text
            end
        end
        return Pattern
    end
end
    
function FindWord(Pattern)
    for _, Word in next, Words do
        if string.find(Word, Pattern) and not table.find(Used, Word) then
            table.insert(Used, Word)
            return Word
        end
    end
end
    
function Type(Word)
    local Typebox = PlayerGui.GameUI.Container.GameSpace.DefaultUI.GameContainer.DesktopContainer.Typebar.Typebox
    local WaitTime = Settings.TypeTime / string.len(Word)
    for _, Letter in next, string.split(Word, "") do
        Typebox.Text ..= Letter
        wait(WaitTime)
    end
    firesignal(Typebox.FocusLost, true)
end
    
function TypeWord(Pattern)
    local Word = FindWord(string.lower(Pattern))
    if Word then
        Type(Word)
    end
    wait(0.25)
    Typing = false
end

while wait() do
    if CanType() then
        if not Typing then
            Typing = true
            TypeWord(GetCurrentPattern())
        end
    end
    local JoinButton = GetJoinButton()
    if JoinButton then
        Used = {}
        firesignal(JoinButton.MouseButton1Down)
    end
    if Settings.AutoType and CanType() then
        if not Typing then
            Typing = true
            TypeWord(GetCurrentPattern())
        end
    end
    if Settings.AutoJoin then
        local JoinButton = GetJoinButton()
        
    end
end