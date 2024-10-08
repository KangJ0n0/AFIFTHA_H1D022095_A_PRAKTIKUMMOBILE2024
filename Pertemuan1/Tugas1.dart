import 'dart:io';
import 'dart:math';

Map<String, List<String>> categorizedWords = {
  "random": [
    "random",
    "absurd",
    "aneh",
    "nggak nyambung",
    "konyol",
    "lucu",
    "aneh bin ajaib",
    "gila",
    "nyeleneh",
    "absurd",
    "kaget",
    "terkejut",
    "nyelip",
    "bingung",
    "menggelikan",
    "aneh",
    "gokil",
    "bikin ngakak",
    "komedi",
    "ajaib",
    "konyol banget",
    "sangat lucu",
    "ngakak",
    "kebetulan",
    "kekonyolan",
    "nyentil",
    "mengejutkan",
    "membingungkan",
    "mencengangkan",
    "out of the blue",
    "unexpected",
    "bisa-bisa aja",
    "sotoy",
    "outlandish",
    "weird",
    "bisa gitu",
    "dari luar angkasa",
    "tak terduga",
    "nggak masuk akal",
    "absurd",
    "spontan",
    "ridiculous",
    "unexpectedly funny",
    "out of nowhere",
    "offbeat",
    "whimsical",
    "surreal",
    "wacky",
    "bizarre",
    "hilarious",
    "wild",
    "eccentric",
    "off-the-wall",
    "laughable",
    "shocking",
    "unusual",
    "crazy",
    "quirky",
    "comical",
    "fantastical",
    "peculiar",
    "mystifying",
    "strange",
    "unexpectedly weird",
    "konyol abis",
    "keluar dari kebiasaan",
    "sangat aneh",
    "aneh banget",
    "bingung abis",
    "ngacau",
    "out of the ordinary",
    "freaky",
    "sangat bingung",
    "pecah"
  ],
  "brutal": [
    "brutal",
    "kasar",
    "kejam",
    "sadis",
    "ganas",
    "barbar",
    "bengis",
    "liar",
    "beringas",
    "biadab",
    "tak berperikemanusiaan",
    "keras",
    "sengit",
    "tak kenal ampun",
    "mematikan",
    "tidak manusiawi",
    "sangat ganas",
    "tanpa belas kasihan",
    "dahsyat",
    "keji",
    "jahat",
    "menggila",
    "tanpa perasaan",
    "serampangan",
    "garang",
    "sangat keras",
    "ekstrem",
    "tak terkendali",
    "tak terbendung",
    "brutality",
    "rigid",
    "kaku",
    "destruktif",
    "gahar",
    "ngeri",
    "gila-gilaan",
    "rusuh",
    "kacau",
    "remuk redam",
    "parah",
    "tak kenal kompromi",
    "sadistis",
    "bebas batas",
    "berdarah dingin",
    "nggak ada otaknya",
    "nggak pake otak",
    "bantai habis",
    "hajar bleh",
    "gak ada ampun",
    "bikin rusuh",
    "total abis",
    "abis-abisan",
    "spartan",
    "gila bener",
    "keras abis",
    "tak tertandingi",
    "mengamuk",
    "bermasalah",
    "pecah banget",
    "gempar",
    "sinting",
    "tak terkira",
    "berbahaya",
    "gak kenal takut",
    "gahar abis",
    "bikin kacau",
    "gak masuk akal",
    "gila sadis",
    "heboh parah",
    "kejam banget",
    "tak bisa dihentikan",
    "luar biasa kasar",
    "luar kendali",
    "baku hantam",
    "brutality mode on",
    "merusak",
    "bringas",
    "keras kejam"
  ],
  "negatif": [
    "negatif",
    "buruk",
    "jelek",
    "minus",
    "tidak baik",
    "merugikan",
    "memburuk",
    "menurun",
    "mengkhawatirkan",
    "pesimis",
    "suram",
    "keburukan",
    "kontra",
    "kurang menyenangkan",
    "tidak menguntungkan",
    "tidak produktif",
    "melemah",
    "meluntur",
    "kotor",
    "sinis",
    "skeptis",
    "menggerogoti",
    "menghambat",
    "merusak",
    "menyusahkan",
    "menjengkelkan",
    "mengurangi",
    "melemahkan",
    "membingungkan",
    "membuat repot",
    "gak enak",
    "sebel",
    "bete",
    "bad vibes",
    "gak oke",
    "gak bagus",
    "toxic",
    "kontroversial",
    "oposisi",
    "kontradiktif",
    "buntu",
    "mentok",
    "kelam",
    "suram",
    "gelap",
    "musnah",
    "problematis",
    "sulit",
    "keras kepala",
    "krisis",
    "pahit",
    "tajam",
    "krik-krik",
    "remuk",
    "nyebelin",
    "gak asik",
    "penuh rintangan",
    "nggak jelas",
    "gak ada harapan",
    "ambyar",
    "penuh kendala",
    "susah banget",
    "ga guna",
    "menghancurkan",
    "parah",
    "fatal",
    "surut",
    "ancaman",
    "muram",
    "menyesakkan",
    "menjenuhkan",
    "menakutkan",
    "downer",
    "bad news",
    "dark",
    "tragedi",
    "menyakitkan",
    "menggelisahkan",
    "kacau",
    "kritis",
    "waspada",
    "mendesak",
    "depresif",
    "merusak mood",
    "gloomy",
    "melenceng",
    "jatuh",
    "rugi",
    "keluhan",
    "problem",
    "kekurangan",
    "tantangan",
    "backfire",
    "malapetaka",
    "gawat",
    "bencana",
    "sengsara",
    "sial",
    "mencekam",
    "kekecewaan",
    "pukulan",
    "keras",
    "tak menyenangkan",
    "keluar jalur",
    "menurun drastis",
    "hambar",
    "tak tertahankan"
  ],
  "kerensukses(orang)": [
    "orang sukses",
    "sukses",
    "hebat",
    "top",
    "luar biasa",
    "fantastis",
    "brilian",
    "cemerlang",
    "gemilang",
    "unggul",
    "menonjol",
    "terkenal",
    "prestisius",
    "berhasil",
    "tampil",
    "top notch",
    "excellent",
    "amazing",
    "superb",
    "great",
    "impressive",
    "classy",
    "wonderful",
    "outstanding",
    "remarkable",
    "stellar",
    "magnificent",
    "powerful",
    "extraordinary",
    "sensational",
    "remarkable",
    "top-tier",
    "phenomenal",
    "ace",
    "amazing",
    "terrific",
    "epic",
    "fantastic",
    "bravo",
    "kick-ass",
    "legendary",
    "wow",
    "kickass",
    "super",
    "dahsyat",
    "bombastic",
    "prime",
    "wow factor",
    "pro",
    "proficient",
    "superstar",
    "extraordinary",
    "best",
    "greatest",
    "standout",
    "bravura",
    "splendid",
    "high-profile",
    "superlative",
    "awesome",
    "vibrant",
    "awesome",
    "stellar",
    "fantastico",
    "top-grade",
    "majestic",
    "masterful"
  ],
  "gagal": [
    "gagal",
    "tidak berhasil",
    "terpuruk",
    "frustrasi",
    "jatuh",
    "mandek",
    "tersandung",
    "kalah",
    "pecundang",
    "gagal total",
    "out",
    "failed",
    "malang",
    "tergagap",
    "linglung",
    "buntu",
    "kekalahan",
    "rugi",
    "tidak sukses",
    "fail",
    "terjatuh",
    "bubar",
    "tertinggal",
    "gagal berat",
    "minder",
    "lemah",
    "tidak mampu",
    "kurang beruntung",
    "terbelakang",
    "nggak berhasil",
    "meleset",
    "tidak memadai",
    "kehilangan",
    "batal",
    "frustrated",
    "terdesak",
    "terpuruk",
    "gagal paham",
    "gagal total",
    "mengalami kekalahan",
    "pegi jatuh",
    "bermasalah",
    "short",
    "patah",
    "menyerah",
    "underperform",
    "runtuh",
    "out of luck",
    "breakdown",
    "drop out",
    "incompetent",
    "berantakan",
    "terpuruk dalam kegagalan",
    "tak berdaya",
    "masalah besar",
    "gagal besar",
    "kalah total",
    "crash and burn",
    "keok",
    "lost",
    "gagal",
    "dihantam kegagalan",
    "ko",
    "defeat",
    "downfall",
    "out of steam",
    "drop the ball",
    "unsuccessful"
  ],
  "bro": [
    "bro"
        "teman",
    "sobat",
    "kawan",
    "guy",
    "dude",
    "mate",
    "pal",
    "homie",
    "fren",
    "acquaintance",
    "associate",
    "partner",
    "compadre",
    "chum",
    "comrade",
    "cohort",
    "buddy",
    "peer",
    "fellow",
    "matey",
    "buddy-boy",
    "colleague",
    "rekan",
    "kenalan",
    "teammate",
    "sidekick",
    "brother",
    "co-worker",
    "workmate",
    "colleague",
    "friend",
    "casual friend"
  ],
  "bro(positif)": [
    "saudara",
    "bestie",
    "amigo",
    "homie",
    "bos",
    "geng",
    "keluarga",
    "boski",
    "sahabat",
    "rekans",
    "good friend",
    "brother-in-arms",
    "ally",
    "wingman",
    "confidant",
    "close friend",
    "faithful friend",
    "true friend",
    "BFF",
    "chummy",
    "old friend",
    "right-hand man",
    "faithful companion",
    "trusted friend",
    "solid friend",
    "great friend",
    "true buddy",
    "brosef",
    "brotherly friend",
    "supportive friend",
    "loyal friend"
  ],
  "takjub": [
    "takjub",
    "kagum",
    "terpesona",
    "terkagum-kagum",
    "terpana",
    "heran",
    "tercengang",
    "terkejut",
    "terhormat",
    "terbengong",
    "tertarik",
    "wow",
    "merinding",
    "mengesankan",
    "terpukau",
    "sangat kagum",
    "gugup",
    "bengong",
    "terheran-heran",
    "terbelalak",
    "kaget",
    "terpanah",
    "terpesona",
    "terpana",
    "sangat terkesan",
    "terpukau",
    "terpana",
    "menakjubkan",
    "terkesima",
    "mengagumi",
    "membanggakan",
    "terpana",
    "terpesona luar biasa",
    "terheran-heran",
    "terpukau luar biasa"
  ],
  "dingin": [
    "keren",
    "gaya",
    "trend",
    "stylish",
    "cool",
    "tampil menarik",
    "fashionable",
    "elegan",
    "keren banget",
    "up-to-date",
    "modis",
    "berkelas",
    "bergaya",
    "smart",
    "chic",
    "classy",
    "elegant",
    "sophisticated",
    "high-fashion",
    "trendy",
    "iconic",
    "memikat",
    "menawan",
    "outstanding",
    "sangat keren",
    "top",
    "super",
    "menarik",
    "coolness",
    "impressive"
  ],
  "mendingin": [
    "sok keren",
    "berusaha tampil keren",
    "tampan",
    "pura-pura cool",
    "berlagak cool",
    "trying hard",
    "berusaha tampil stylish",
    "berusaha tampil menarik",
    "pamer gaya",
    "show off",
    "cool pose",
    "cool act",
    "showing off",
    "berusaha keren",
    "pura-pura santai",
    "berusaha menarik perhatian",
    "pamer",
    "cooling off",
    "daring",
    "posing",
    "stylish act",
    "trying to be cool",
    "berusaha tampak modis",
    "showy",
    "gaya-gayaan",
    "pretentious",
    "acting cool",
    "trying too hard",
    "acting stylish"
  ],
  "orang dingin": [
    "orang keren",
    "berwibawa",
    "wibawa nya"
        "wibawanya",
    "berkelas",
    "elegan",
    "stylish",
    "dapat dipercaya",
    "tenang",
    "tampil anggun",
    "impressive",
    "canggih",
    "modis",
    "berkelas",
    "keren banget",
    "serius",
    "gak banyak omong",
    "cool-headed",
    "santuy",
    "berkarisma",
    "outstanding",
    "tampil menawan",
    "menarik perhatian",
    "terlihat keren",
    "calm",
    "berwibawa",
    "gentleman",
    "graceful",
    "berprofil tinggi",
    "dapat diandalkan",
    "charming",
    "cool demeanor",
    "suave",
    "refined",
    "composed",
    "appealing",
    "classy",
    "impressive presence",
    "confident",
    "stylish appearance"
  ],
  "lawak": [
    "lawak",
    "lucu",
    "gokil",
    "kocak",
    "ngegemesin",
    "menghibur",
    "bercanda",
    "humoris",
    "ngakak",
    "konyol",
    "komedi",
    "funny",
    "hilarious",
    "jokes",
    "garing",
    "ngakak banget",
    "berkelakar",
    "sangat lucu",
    "konyol banget",
    "gila",
    "lucu banget",
    "membuat tertawa",
    "canda",
    "lucu-lucuan",
    "menguji tawa",
    "lucunya",
    "guyonan",
    "seru",
    "konyolan",
    "tawaan",
    "goofy",
    "entertaining",
    "comical",
    "hilarious",
    "silly",
    "crazy",
    "wacky",
    "offbeat",
    "laughable",
    "sangat konyol",
    "hilarious",
    "funny bone",
    "absurd",
    "punny",
    "spontan",
    "lucu abis",
    "guyonan",
    "pecah",
    "membuat ngakak",
    "bikin ngakak",
    "funny stuff",
    "sangat konyol",
    "bisa bikin ketawa",
    "gokil abis"
  ],
  "gede(deskripsi)": [
    "besar",
    "tinggi",
    "raksasa",
    "gigantic",
    "besar sekali",
    "enormous",
    "huge",
    "massive",
    "colossal",
    "tahu",
    "besar bener",
    "besar banget",
    "besar badan",
    "bongkok",
    "super besar",
    "mega",
    "super",
    "besar luar biasa",
    "terbesar",
    "dominant",
    "gagah",
    "besar sekali",
    "hebat",
    "menonjol",
    "besar dan kuat",
    "king-size",
    "extra-large",
    "powerful",
    "gigantic",
    "immense",
    "grand",
    "towering",
    "bulky",
    "overwhelming",
    "substantial",
    "giant",
    "majestic",
    "sizeable",
    "massive size",
    "imposing",
    "formidable",
    "prominent",
    "high-profile",
    "large-scale",
    "outsize",
    "expansive",
    "expansive",
    "huge-scale",
    "monstrous",
    "giant-size",
    "highly visible",
    "gargantuan",
    "large",
    "broad",
    "full-size",
    "vast",
    "prominent"
  ],
  "betul": [
    "betul",
    "tepat",
    "akurat",
    "valid",
    "pas",
    "gak salah",
    "sah",
    "pasti",
    "jujur",
    "betul-betul",
    "real",
    "gak meleset",
    "setepatnya",
    "murni",
    "gak diragukan",
    "gak ngawur",
    "nyata",
    "correct",
    "right",
    "exact",
    "fit",
    "gak keliru",
    "on point",
    "authentic",
    "proper",
    "straightforward",
    "true to form",
    "factually accurate",
    "solid",
    "reliable",
    "just right"
  ],
  "benar": [
    "benar",
    "valid",
    "sah",
    "dapat dipercaya",
    "otentik",
    "terverifikasi",
    "pasti",
    "benar-benar",
    "sejati",
    "tulus",
    "gak diragukan",
    "benar adanya",
    "terbukti",
    "gak bisa diperdebatkan",
    "tulen",
    "asli",
    "absolut",
    "sure",
    "factual",
    "authentic",
    "genuine",
    "legitimate",
    "verifiable",
    "definitif",
    "legit",
    "true",
    "undisputed",
    "reliable",
    "authentically true",
    "gak salah",
    "incontestable",
    "undeniable",
    "unquestionable",
    "truthful",
    "unequivocal"
  ],
  "maluin": [
    "maluin",
    "memalukan",
    "cringe",
    "memalukan",
    "mempermalukan",
    "konyol",
    "memerahkan",
    "awkward",
    "janggal",
    "kurang ajar",
    "hambar",
    "garing",
    "kelihatan jelek",
    "sangat memalukan",
    "membuat malu",
    "nggak enak",
    "nggak nyaman",
    "malu-maluin",
    "nyebelin",
    "memalukan diri sendiri",
    "offensive",
    "uncomfortable",
    "embarrassing",
    "lucu",
    "konyol banget",
    "kelakuan cringe",
    "terasa janggal",
    "berlebihan",
    "gak nyambung",
    "cringeworthy",
    "diluar kebiasaan",
    "nggak patut",
    "tidak pantas",
    "nggak beres",
    "gak sesuai",
    "ridiculous",
    "melenceng",
    "gak sopan",
    "nggak cocok",
    "memalukan banget",
    "gak make sense",
    "menjengkelkan",
    "konyol abis",
    "gak relevan",
    "nyeleneh",
    "membuat orang lain canggung",
    "kelihatan bodoh",
    "freaky",
    "freak",
    "kacau",
    "ngehe",
    "gak ada kelas",
    "garing",
    "hilarious",
    "hampir memalukan",
    "embarrassing",
    "awkward",
    "miskin rasa",
    "kurang peka"
  ],
  "edgy": [
    "edgy",
    "provokatif",
    "kontroversial",
    "menggugah",
    "radikal",
    "tajam",
    "berbeda",
    "avant-garde",
    "kreatif",
    "nyeleneh",
    "ekstrim",
    "berbeda dari yang lain",
    "berani tampil beda",
    "keren",
    "unik",
    "inovatif",
    "nyentrik",
    "bold",
    "unconventional",
    "daring",
    "futuristik",
    "bold",
    "punya karakter",
    "progressif",
    "sedikit gila",
    "extra",
    "striking",
    "pionir",
    "avant-garde",
    "out there",
    "offbeat",
    "eccentric",
    "radikal",
    "experimental",
    "rebel",
    "challenging",
    "cutting-edge",
    "fashionable",
    "innovative",
    "keren banget",
    "hype",
    "daring",
    "edgy",
    "out of the box",
    "extreme",
    "cool",
    "sophisticated",
    "sensitive",
    "intense",
    "extreme",
    "vanguard",
    "alternative",
    "bold",
    "daring",
    "brave",
    "pushing boundaries",
    "up-to-date",
    "contemporary",
    "in-your-face"
  ],
  "fokus": [
    "fokus",
    "konsentrasi",
    "terpusat",
    "terarah",
    "terfokus",
    "tertuju",
    "memusat",
    "menekuni",
    "terserap",
    "tertumpu",
    "tekun",
    "terfokuskan",
    "berkonsentrasi",
    "memperhatikan",
    "terpaku",
    "terkonsentrasi",
    "mengarah",
    "menyimak",
    "terarah",
    "tidak terganggu",
    "terpusatkan",
    "terpaut",
    "memperdalam",
    "mengincar",
    "mengelola",
    "mengutamakan",
    "menyoroti",
    "menargetkan",
    "mengonsentrasikan",
    "mengkhususkan",
    "memfokuskan",
    "memusatkan",
    "mengarah",
    "menggeluti",
    "mengerahkan",
    "mengamati",
    "menggali",
    "menguasai",
    "mengidentifikasi",
    "mengoptimalkan",
    "menyaring",
    "mengkaji",
    "mengolah",
    "merancang",
    "mencermati",
    "memahami",
    "menghayati",
    "meresapi",
    "menyelami",
    "memedulikan",
    "menaruh perhatian",
    "terkait erat",
    "berintensi",
    "intensif",
    "sistematis",
    "dikhususkan",
    "didalami",
    "dideteksi",
    "disaring",
    "difokuskan",
    "digarap",
    "ditelaah",
    "dikelola",
    "diidentifikasi",
    "ditargetkan",
    "terhimpun",
    "teragregasi",
    "menyelidiki",
    "terhimpun",
    "menetapkan prioritas",
    "mengantisipasi",
    "menginterpretasi",
    "memvisualisasikan",
    "ngebut",
    "ngegas",
    "nyariin celah",
    "stay alert",
    "nyari fokus",
    "on point",
    "mantep-in",
    "nyari tune-in",
    "nge-zoom",
    "stay on track",
    "ga baper",
    "gaspol",
    "nyalurin energi",
    "anteng",
    "matengin",
    "stay fokus",
    "tetap tajam",
    "gak ngelantur",
    "kepoin abis",
    "nyari benang merah",
    "ngelock target",
    "terhanyut",
    "ngulik",
    "ngetrack",
    "mikir dalam-dalam",
    "jangan ngelamun",
    "pindah gigi"
  ],
  "rill": [
    "beneran",
    "rill",
    "bukan bohongan",
    "benar-benar",
    "sesungguhnya",
    "asli",
    "nyata",
    "sejati",
    "otentik",
    "real",
    "terpercaya",
    "valid",
    "murni",
    "serius",
    "sungguh",
    "pasti",
    "faktual",
    "genuine",
    "actual",
    "terbukti",
    "konkret",
    "tulus",
    "original",
    "langsung",
    "afdol",
    "ajeg",
    "sahih",
    "terjamin",
    "bener",
    "betul",
    "nyatanya",
    "fakta",
    "tulus hati",
    "autentik",
    "gak main-main",
    "serius banget",
    "realistis",
    "bukan bohongan",
    "apa adanya",
    "gak tipu-tipu",
    "kelihatan nyata",
    "sudah terbukti",
    "bukan sekadar omong kosong",
    "gak asal-asalan",
    "pasti benar",
    "tanda tangan",
    "real deal",
    "bukan rekayasa",
    "serius banget",
    "pasti",
    "gak bohongan",
    "bukan khayalan",
    "murni",
    "gak ngasal",
    "real",
    "gak fiktif",
    "keaslian",
    "full",
    "bener-bener"
  ],
  "anomali": [
    "anomali",
    "kelainan",
    "penyimpangan",
    "keanehan",
    "keganjilan",
    "kejanggalan",
    "ketidaknormalan",
    "keabnormalan",
    "ketidakwajaran",
    "ketidaklaziman",
    "irregularitas",
    "deviasi",
    "aberrasi",
    "inkonsistensi",
    "variasi",
    "perbedaan",
    "penyimpangan dari norma",
    "keluar dari kebiasaan",
    "tidak lazim",
    "tidak umum",
    "tidak wajar",
    "tidak standar",
    "tidak sesuai pola",
    "keluar jalur",
    "di luar dugaan",
    "luar kebiasaan",
    "terdapat sesuatu yang aneh",
    "tidak sesuai ekspektasi",
    "tidak seperti biasanya",
    "ada yang salah",
    "tidak cocok",
    "aneh bin ajaib",
    "luar biasa",
    "nyeleneh",
    "beda dari yang lain",
    "langka",
    "unik",
    "tidak biasa",
    "tidak selaras",
    "berbeda",
    "aneh",
    "jarang terjadi",
    "janggal",
    "ga biasa",
    "nyentrik",
    "gak nyambung",
    "beda sendiri",
    "nggak umum",
    "nyata bedanya",
    "stand out",
    "kayak alien",
    "tak lazim",
    "beda banget",
    "nggak match",
    "outlier",
    "something off",
    "oddity",
    "quirk",
    "weirdness",
    "divergent",
    "unusual occurrence",
    "fenomena aneh",
    "kejadian ganjil",
    "out of the ordinary",
    "sangat aneh"
  ],
  "mencurigakan": [
    "mencurigakan",
    "meragukan",
    "misterius",
    "ganjil",
    "aneh",
    "janggal",
    "tidak biasa",
    "tidak wajar",
    "tidak lazim",
    "tidak normal",
    "mengundang curiga",
    "mengherankan",
    "membingungkan",
    "menggelisahkan",
    "menimbulkan tanda tanya",
    "tidak masuk akal",
    "tersembunyi",
    "terbuka untuk dipertanyakan",
    "diragukan",
    "tertutup",
    "tidak jelas",
    "tidak pasti",
    "abu-abu",
    "terkait rahasia",
    "samar-samar",
    "ambigu",
    "samar",
    "penuh teka-teki",
    "terdengar janggal",
    "ada udang di balik batu",
    "kelihatan nggak beres",
    "merasa nggak enak",
    "feeling nggak enak",
    "seperti ada yang disembunyikan",
    "nggak nyambung",
    "agak nggak beres",
    "tercium aroma busuk",
    "berbau nggak enak",
    "seperti tipu-tipu",
    "kayak ada yang aneh",
    "kayak ada yang nggak beres",
    "kelihatan curang",
    "berasa janggal",
    "agak mencurigakan",
    "sepertinya ada maksud tersembunyi",
    "suspicious",
    "shady",
    "fishy",
    "sketchy",
    "rada mencurigakan",
    "rada nggak wajar",
    "terasa aneh",
    "membuat penasaran",
    "bikin bingung",
    "kayak ada yang disembunyikan",
    "bikin merinding",
    "feeling ada yang salah",
    "mencium keanehan",
    "kelihatan dodgy",
    "kayak nggak jujur",
    "bikin tanda tanya",
    "kurang meyakinkan",
    "merasa was-was",
    "membuat cemas",
    "mengundang kecurigaan",
    "kelihatan nggak tulus",
    "kelihatan aneh"
  ],
  "bacot": [
    "bacot",
    "berisik",
    "diam",
    "cerewet",
    "nyinyir",
    "ngoceh",
    "cablak",
    "ngebacot",
    "ngegas",
    "ngedumel",
    "nyerocos",
    "nyocot",
    "belak-belok",
    "ngedabrus",
    "ngomong mulu",
    "ngelantur",
    "nyap-nyap",
    "tong kosong",
    "mulut besar",
    "banyak omong",
    "ngomel",
    "ribut",
    "ngoceh-ngoceh",
    "ngerumpi",
    "curhat mulu",
    "bacot mulu",
    "julid",
    "ngomong doang",
    "tebar omongan",
    "lidah gatal",
    "komat-kamit",
    "nyablak",
    "ceriwis",
    "bikin rame",
    "gibah",
    "nyocotin",
    "asal bunyi",
    "kurang kerjaan",
    "bawel",
    "nyumpahin",
    "ngomong kosong",
    "mengada-ngada",
    "mulut pedas",
    "mulut ember",
    "ngakak-ngakak",
    "bacot bet",
    "bacot banget",
    "sok tau",
    "ngejeplak",
    "ngeyel",
    "menggurui",
    "ngelindur"
  ],
  "kamu": [
    "kamu",
    "anda",
    "saudara",
    "teman",
    "seseorang",
    "orang",
    "kalian",
    "engkau",
    "kau",
    "sobat",
    "kamu",
    "kawan",
    "orang tersebut",
    "rekan",
    "si dia",
    "individu",
    "para",
    "sahabat",
    "si",
    "person",
    "they",
    "yourself",
    "one",
    "that person"
  ],
};

Map<String, List<String>> replacementOptions = {
  "random": ["skibidi"],
  "brutal": ["gyatt"],
  "negatif": ["-1000 aura"],
  "kerensukses(orang)": ["sigma"],
  "gagal(orang)": ["beta"],
  "bro": ["blud"],
  "takjub": ["mewing"],
  "dingin": ["rizz"],
  "mendingin": ["rizzing"],
  "orang dingin": ["rizzlers"],
  "lawak": ["goffy ah"],
  "gede(deskripsi)": ["chungus"],
  "benar": ["based"],
  "betul": ["fr"],
  "maluin ": ["cringe"],
  "edgy": ["Edgemaxxing"],
  "bro(postif)": ["fella"],
  "fokus": ["lock in"],
  "rill": ["no cap"],
  "anomali": ["ohio"],
  "mencurigakan": ["sus"],
  "bacot": ["yapping"],
  "kamu": ["ye"],
};

final random = Random();

void main() {
  print("Selamat Datang di Indonesian Brainrot Text Generator Sederhana!");
  print(
      "Ketik kalimat/kata dengan bahasa Indonesia untuk menerjemahkan ke bahasa anak gen Alpha!");

  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    String transformedSentence = transformSentence(input);
    print("Output : $transformedSentence");
  } else {
    print("Input kan kata/kalimat!");
  }
}

String transformSentence(String sentence) {
  List<String> words = sentence.split(' ');

  for (int i = 0; i < words.length; i++) {
    String word = words[i].toLowerCase();

    String? category = getCategoryForWord(word);

    if (category != null) {
      String newReplacement = getReplacementForCategory(category);
      if (newReplacement.isNotEmpty) {
        words[i] = newReplacement;
      }
    }
  }

  return words.join(' ');
}

String? getCategoryForWord(String word) {
  for (var entry in categorizedWords.entries) {
    if (entry.value.contains(word)) {
      return entry.key;
    }
  }
  return null;
}

String getReplacementForCategory(String category) {
  List<String> possibleReplacements = replacementOptions[category] ?? [];

  if (possibleReplacements.isEmpty) return '';

  return possibleReplacements[random.nextInt(possibleReplacements.length)];
}
