import 'package:hilol/domain/model/questionModel.dart';

List<List<QuestionModel>> allQuestionLists = [
  baxtiyorOilaQuestions,
  mominningQalqoni,
  mominningUmrSafari,
  qarz,
  yolgon,
  hadisHayot25,
  mominningmeroji,
  ijtimoiyodoblar,
  aqoidilmlari,
  amallar,
  iymon,
  ruhiyTarbiya,
  hadisHayot23,
  hadis1,
  soglomBola,
  quronIlmlari,
  folbinlik,
  ruhiyTarbiya2,
  sofTabiatDini,
  hadis20,
  mazhablar,
  hadis14,
  oltinSilsila,
  hadis36,
  hadis28,
  odoblarHazinasi,
  mukammalSaodat
];

List<QuestionModel> tezkorTest = [
  QuestionModel("«Ar Risola» va «Al Umm» asarlarining muallifi kim?", {
    "Imom Shofe'iy rahimahulloh": true,
    "Imom Molik rahimahulloh": false,
    "Imom Hanbal rahimahulloh": false
  }),
  QuestionModel("Farzi kifoya qanday amal?", {
    "g'ayridinlar qilishi shart bo'lgan amal": false,
    "hamma qilishi shart bo'lgan amal": false,
    "hamma musulmonlar qilishi shart bo'lgan amal": false,
    "ba'zi bir musulmonlar ado etishi bilan boshqa musulmonlarning zimmasidan soqit bo'ladigan amal":
        true
  }),
  QuestionModel("Gunohi kabiralar bu?", {
    //
    "Allohga shirk keltirish": false,
    "Ota-onaga oq bo'lish,yolg'on qasam": false,
    "Barchasi to'g'ri": true
  }),
  QuestionModel("«Umra» so'zi qanday ma'noni anglatadi?", {
    "Ulug' narsani qasd qilish": false,
    "Yaxshilikka chorlov": false,
    "Ziyorat": true
  }),
  QuestionModel(
      "Rasululloh sollallohu alayhi vasallamga zaharlangan qo'y go'shtini keltirgan yahudiy ayol kim edi?",
      {
        "Oisha onamiz": false,
        "Zaynab bint Horis": true,
        "Xadiyja onamiz": false
      }),
  QuestionModel("Zamzam suvini tik turgan holda ichsa bo'ladimi?", {
    "Bu sunnatga xilof": false,
    "Yo'q, ichib bo'lmaydi": false,
    "Ha ichsa bo'ladi": true
  }),
  QuestionModel("Taroveh so'zining ma'nosi nima?", {
    "Orom oldirish,dam berish": true,
    "Rohatlanish,xursand bo'lish": false,
    "Salqinlanish,huzurlanish": false,
  }),
  QuestionModel("Oisha onamizning onalarini ismi?", {
    "Ummu Jaxsh": false,
    "Sofiya": false,
    "Ummu Rummon": true,
  }),
  QuestionModel("Qur'on Karimda nechta payg'ambarlarning nomi zikr etilgan?",
      {"25 ta": true, "114 ta": false, "15 ta": false, "35 ta": false}),
  QuestionModel("Zamzam suvida g'usl qilish mumkinmi?", {
    "Aslo mumkin emas": false,
    "Ha mumkin": true,
    "Boshqa suv topilmasa mumkin": false,
  }),
  QuestionModel("«Ruku'» so'zining ma'nosi nima?",
      {"tik Turrish": false, "egilish": true, "o'tirish": false}),
  QuestionModel("Taroveh so'zining ma'nosi nima?", {
    "Orom oldirish,dam berish": true,
    "Rohatlanish,xursand bo'lish": false,
    "Salqinlanish,huzurlanish": false,
  }),
  QuestionModel("Zamzam suvini tik turgan holda ichsa bo'ladimi?", {
    "Bu sunnatga xilof": false,
    "Yo'q, ichib bo'lmaydi": false,
    "Ha ichsa bo'ladi": true
  }),
  QuestionModel("Oisha onamizning onalarini ismi?", {
    "Ummu Jaxsh": false,
    "Sofiya": false,
    "Ummu Rummon": true,
  }),
];

List<QuestionModel> baxtiyorOilaQuestions = [
  QuestionModel("Nikoh xutbasini o'qish qanday amal?", {
    "Mustahab amal": false,
    "Vojib amal": false,
    "Sunnat amal": true,
  }),
  QuestionModel("Mahr berish qanday amal hisonlanadi?", {
    "Farz amal": true,
    "Mandub amal": false,
    "Sunnat amal": false,
  }),
  QuestionModel("Mahrning eng oz miqdori qancha?", {
    "20 dirham": false,
    "30 dirham": false,
    "10 dirham": true,
  }),
  QuestionModel("Eri vafot etgan ayolni iddasi qancha muddat?", {
    "Olti oy": false,
    "Tort oyu o'n kun": true,
    "Uch oyu yigirma kun": false,
  })
];

List<QuestionModel> mominningQalqoni = [
  QuestionModel("Ro'zani nechta mustahab amallari bor?", {
    "10 ta": false,
    "9 ta": true,
    "8 ta": false,
  }),
  QuestionModel("iydul-fitr namozini ado etish qanday amal?", {
    "Farz amal": false,
    "Sunnat amal": false,
    "Vojib amal": true,
  })
];
List<QuestionModel> mominningUmrSafari = [
  QuestionModel("Zamzam suvida g'usl qilish mumkinmi?", {
    "Aslo mumkin emas": false,
    "Ha mumkin": true,
    "Boshqa suv topilmasa mumkin": false,
  }),
  QuestionModel("Umra qaysi oyda qilinadi", {
    "Xohlagan paytida qilsa bo'ladi": true,
    "Haj amallari tugaganidan keyin": false,
    "Muharram oyining avvalida": false,
  }),
  QuestionModel("Hajning birinchi kuni qaysi kunga to'g'ri keladi?", {
    "Zulhijja oyining 5-kuni": false,
    "Zulhijja oyining 1-kuni": true,
    "Zulhijja oyining 10-kuni": false,
  }),
];
List<QuestionModel> qarz = [
  QuestionModel("Qarzga olingan narsa kimning mulkiga aylanadi?", {
    "Qarz oluvchining": true,
    "Ikkala kishining ham": false,
    "Qarz beruvchining": false,
  }),
  QuestionModel(
      "Rasullulloh sollallohi alayhi vasallam muborak hadislarida qaysi surani kambag'allikdan najot beradi deb aytganlar?",
      {
        "Mulk surasi": false,
        "Voqi'a surasi": true,
        "Zilzila surasi": false,
      }),
  QuestionModel("Arab tilidagi 'Dayn' so'zi qanday ma'noni anglatadi?", {
    "Haqning birovga berilishi": false,
    "Haqning sobit bo'lshishi": true,
    "Haqning qo'ldan ketishi": false,
  }),
];
List<QuestionModel> yolgon = [
  QuestionModel("'Kazzob' so'zi lug'atda qanday ma'noni anglatadi?", {
    "G'iybatchi": false,
    "Riboxo'r": false,
    "O'ta yolg'onchi": true,
  }),
  QuestionModel(
      "Eshitgan narsani gapiraveradigan odamni kim deb atash mumkin?", {
    "Chaqimchi": false,
    "Benamoz": false,
    "Yolg'onchi": true,
  }),
  QuestionModel(
      "Hadisda keltirishilicha, bir ishni qilgan odam ashaddiy yolg'onchi deyilishiga sabab bo'lar ekan.U qaysi ish?",
      {
        "Qasamiga xilof qilish": true,
        "Fash ishni ochiqchasiga qiish": false,
        "Namozni shoshib o'qish": false,
      }),
];
List<QuestionModel> hadisHayot25 = [
  QuestionModel("Birinchi bo'lib islomni qabul qilgan ayol kim?", {
    "Xadiyja onamiz": true,
    "Zaynab onamiz": false,
    "Oisha onamiz": false,
  }),
  QuestionModel(
      "Zaynab binti Xuzayma onamiz necha yoshlarida vafot etganlar?", {
    "55 yoshlarida": false,
    "40 yoshlarida": false,
    "30 yoshlarida": true,
  }),
  QuestionModel("Xadiyja bintu Huvaylid onamiz qayerda tavallud topganlar?", {
    "Makkada": true,
    "Toifada": false,
    "Madinada": false,
  }),
  QuestionModel(
      "Zaynab binti Xuzayma roziyallahi anho onamizning laqablari nima edi?", {
    "Tohira": false,
    "Sayyida": false,
    "Ummul Masokin": true,
  })
];
List<QuestionModel> mominningmeroji = [
  QuestionModel("Oisha onamizning onalarini ismi?", {
    "Ummu Jaxsh": false,
    "Sofiya": false,
    "Ummu Rummon": true,
  }),
  QuestionModel("Qur'on Karimda nechta payg'ambarlarning nomi zikr etilgan?",
      {"25 ta": true, "114 ta": false, "15 ta": false, "35 ta": false}),
  QuestionModel("Qur'on Karimda ilk oyatlar qachon nozil bo'la boshlandi?", {
    "Ramazon oyining Qadr kechasida": true,
    "Isro va Me'roj kechasida": false,
    "Aqaba bay'ati kuni": false,
  }),
  QuestionModel(
      "Qiyomat kunida banda birinchi bo'lib qaysi amalidan hisob qilinadi?", {
    "Namozidan": true,
    "Zakotidan": false,
    "Ro'zasidan": false,
  })
];
List<QuestionModel> ijtimoiyodoblar = [
  QuestionModel("Zamzam suvida g'usl qilish mumkinmi?", {
    "Aslo mumkin emas": false,
    "Ha mumkin": true,
    "Boshqa suv topilmasa mumkin": false,
  }),
  QuestionModel("Umra qaysi oyda qilinadi", {
    "Xohlagan paytida qilsa bo'ladi": true,
    "Haj amallari tugaganidan keyin": false,
    "Muharram oyining avvalida": false,
  }),
  QuestionModel("Hajning birinchi kuni qaysi kunga to'g'ri keladi?", {
    "Zulhijja oyining 5-kuni": false,
    "Zulhijja oyining 1-kuni": true,
    "Zulhijja oyining 10-kuni": false,
  }),
];
List<QuestionModel> aqoidilmlari = [
  QuestionModel("'Kazzob' so'zi lug'atda qanday ma'noni anglatadi?", {
    "G'iybatchi": false,
    "Riboxo'r": false,
    "O'ta yolg'onchi": true,
  }),
  QuestionModel(
      "Eshitgan narsani gapiraveradigan odamni kim deb atash mumkin?", {
    "Chaqimchi": false,
    "Benamoz": false,
    "Yolg'onchi": true,
  }),
  QuestionModel(
      "Hadisda keltirishilicha, bir ishni qilgan odam ashaddiy yolg'onchi deyilishiga sabab bo'lar ekan.U qaysi ish?",
      {
        "Qasamiga xilof qilish": true,
        "Fash ishni ochiqchasiga qiish": false,
        "Namozni shoshib o'qish": false,
      }),
];
List<QuestionModel> iymon = [
  QuestionModel("Qarzga olingan narsa kimning mulkiga aylanadi?", {
    "Qarz oluvchining": true,
    "Ikkala kishining ham": false,
    "Qarz beruvchining": false,
  }),
  QuestionModel(
      "Rasullulloh sollallohi alayhi vasallam muborak hadislarida qaysi surani kambag'allikdan najot beradi deb aytganlar?",
      {
        "Mulk surasi": false,
        "Voqi'a surasi": true,
        "Zilzila surasi": false,
      }),
  QuestionModel("Arab tilidagi 'Dayn' so'zi qanday ma'noni anglatadi?", {
    "Haqning birovga berilishi": false,
    "Haqning sobit bo'lshishi": true,
    "Haqning qo'ldan ketishi": false,
  }),
];
List<QuestionModel> amallar = [
  QuestionModel("Qarzga olingan narsa kimning mulkiga aylanadi?", {
    "Qarz oluvchining": true,
    "Ikkala kishining ham": false,
    "Qarz beruvchining": false,
  }),
  QuestionModel("Arab tilidagi 'Dayn' so'zi qanday ma'noni anglatadi?", {
    "Haqning birovga berilishi": false,
    "Haqning sobit bo'lshishi": true,
    "Haqning qo'ldan ketishi": false,
  }),
  QuestionModel(
      "Rasullulloh sollallohi alayhi vasallam muborak hadislarida qaysi surani kambag'allikdan najot beradi deb aytganlar?",
      {
        "Mulk surasi": false,
        "Voqi'a surasi": true,
        "Zilzila surasi": false,
      }),
];
List<QuestionModel> ruhiyTarbiya = [
  QuestionModel("'Kazzob' so'zi lug'atda qanday ma'noni anglatadi?", {
    "G'iybatchi": false,
    "Riboxo'r": false,
    "O'ta yolg'onchi": true,
  }),
  QuestionModel(
      "Eshitgan narsani gapiraveradigan odamni kim deb atash mumkin?", {
    "Chaqimchi": false,
    "Benamoz": false,
    "Yolg'onchi": true,
  }),
  QuestionModel(
      "Hadisda keltirishilicha, bir ishni qilgan odam ashaddiy yolg'onchi deyilishiga sabab bo'lar ekan.U qaysi ish?",
      {
        "Qasamiga xilof qilish": true,
        "Fash ishni ochiqchasiga qiish": false,
        "Namozni shoshib o'qish": false,
      }),
];
List<QuestionModel> hadisHayot23 = [
  QuestionModel("'Juma' so'zi lug'atda qanday ma'noni anglatadi?", {
    "Saf-saf bolib turish": false,
    "Jamoat bo'lib namoz o'qish": false,
    "Jam bo'lish,to'planish": true,
  }),
  QuestionModel("Namoz islomning nachanchi rukni hisoblanadi?", {
    "Birinchi rukni": false,
    "Ikkinchi rukni": true,
    "Uchinchi rukni": false,
  }),
  QuestionModel("Farishtalar nimadan yaratilgan", {
    "Nurdan": true,
    "Olovdan": false,
    "Loydan": false,
  }),
  QuestionModel("Taroveh so'zining ma'nosi nima?", {
    "Orom oldirish,dam berish": true,
    "Rohatlanish,xursna bo'lsih": false,
    "Salqinlanish,huzurlanish": false,
  })
];
List<QuestionModel> hadis1 = [
  QuestionModel("Nikoh xutbasini o'qish qanday amal?", {
    "Mustahab amal": false,
    "Vojib amal": false,
    "Sunnat amal": true,
  }),
  QuestionModel("Mahr berish qanday amal hisonlanadi?", {
    "Farz amal": true,
    "Mandub amal": false,
    "Sunnat amal": false,
  }),
  QuestionModel("Mahrning eng oz miqdori qancha?", {
    "20 dirham": false,
    "30 dirham": false,
    "10 dirham": true,
  }),
  QuestionModel("Eri vafot etgan ayolni iddasi qancha muddat?", {
    "Olti oy": false,
    "Tort oyu o'n kun": true,
    "Uch oyu yigirma kun": false,
  })
];
List<QuestionModel> soglomBola = [
  QuestionModel("Namoz islomning nachanchi rukni hisoblanadi?", {
    "Birinchi rukni": false,
    "Ikkinchi rukni": true,
    "Uchinchi rukni": false,
  }),
  QuestionModel("Farishtalar nimadan yaratilgan", {
    "Nurdan": true,
    "Olovdan": false,
    "Loydan": false,
  }),
  QuestionModel("Taroveh so'zining ma'nosi nima?", {
    "Orom oldirish,dam berish": true,
    "Rohatlanish,xursna bo'lsih": false,
    "Salqinlanish,huzurlanish": false,
  })
];
List<QuestionModel> quronIlmlari = [
  QuestionModel("Mahr berish qanday amal hisonlanadi?", {
    "Farz amal": true,
    "Mandub amal": false,
    "Sunnat amal": false,
  }),
  QuestionModel(
      "Rasullulloh sollallohi alayhi vasallam muborak hadislarida qaysi surani kambag'allikdan najot beradi deb aytganlar?",
      {
        "Mulk surasi": false,
        "Voqi'a surasi": true,
        "Zilzila surasi": false,
      }),
  QuestionModel("Arab tilidagi 'Dayn' so'zi qanday ma'noni anglatadi?", {
    "Haqning birovga berilishi": false,
    "Haqning sobit bo'lshishi": true,
    "Haqning qo'ldan ketishi": false,
  }),
];
List<QuestionModel> folbinlik = [
  QuestionModel("Namoz islomning nachanchi rukni hisoblanadi?", {
    "Birinchi rukni": false,
    "Ikkinchi rukni": true,
    "Uchinchi rukni": false,
  }),
  QuestionModel("Farishtalar nimadan yaratilgan", {
    "Nurdan": true,
    "Olovdan": false,
    "Loydan": false,
  }),
  QuestionModel("Taroveh so'zining ma'nosi nima?", {
    "Orom oldirish,dam berish": true,
    "Rohatlanish,xursna bo'lsih": false,
    "Salqinlanish,huzurlanish": false,
  })
];
List<QuestionModel> ruhiyTarbiya2 = [
  QuestionModel("Zamzam suvida g'usl qilish mumkinmi?", {
    "Aslo mumkin emas": false,
    "Ha mumkin": true,
    "Boshqa suv topilmasa mumkin": false,
  }),
  QuestionModel("Umra qaysi oyda qilinadi", {
    "Xohlagan paytida qilsa bo'ladi": true,
    "Haj amallari tugaganidan keyin": false,
    "Muharram oyining avvalida": false,
  }),
  QuestionModel("Nikoh xutbasini o'qish qanday amal?", {
    "Mustahab amal": false,
    "Vojib amal": false,
    "Sunnat amal": true,
  }),
];
List<QuestionModel> sofTabiatDini = [
  QuestionModel("'Juma' so'zi lug'atda qanday ma'noni anglatadi?", {
    "Saf-saf bolib turish": false,
    "Jamoat bo'lib namoz o'qish": false,
    "Jam bo'lish,to'planish": true,
  }),
  QuestionModel("Namoz islomning nachanchi rukni hisoblanadi?", {
    "Birinchi rukni": false,
    "Ikkinchi rukni": true,
    "Uchinchi rukni": false,
  }),
  QuestionModel("Farishtalar nimadan yaratilgan", {
    "Nurdan": true,
    "Olovdan": false,
    "Loydan": false,
  }),
];
List<QuestionModel> hadis20 = [
  QuestionModel("Namoz islomning nachanchi rukni hisoblanadi?", {
    "Birinchi rukni": false,
    "Ikkinchi rukni": true,
    "Uchinchi rukni": false,
  }),
  QuestionModel("Farishtalar nimadan yaratilgan", {
    "Nurdan": true,
    "Olovdan": false,
    "Loydan": false,
  }),
  QuestionModel("Taroveh so'zining ma'nosi nima?", {
    "Orom oldirish,dam berish": true,
    "Rohatlanish,xursna bo'lsih": false,
    "Salqinlanish,huzurlanish": false,
  })
];
List<QuestionModel> mazhablar = [
  QuestionModel("Qarzga olingan narsa kimning mulkiga aylanadi?", {
    "Qarz oluvchining": true,
    "Ikkala kishining ham": false,
    "Qarz beruvchining": false,
  }),
  QuestionModel(
      "Rasullulloh sollallohi alayhi vasallam muborak hadislarida qaysi surani kambag'allikdan najot beradi deb aytganlar?",
      {
        "Mulk surasi": false,
        "Voqi'a surasi": true,
        "Zilzila surasi": false,
      }),
  QuestionModel("Arab tilidagi 'Dayn' so'zi qanday ma'noni anglatadi?", {
    "Haqning birovga berilishi": false,
    "Haqning sobit bo'lshishi": true,
    "Haqning qo'ldan ketishi": false,
  }),
];
List<QuestionModel> hadis14 = [
  QuestionModel("'Juma' so'zi lug'atda qanday ma'noni anglatadi?", {
    "Saf-saf bolib turish": false,
    "Jamoat bo'lib namoz o'qish": false,
    "Jam bo'lish,to'planish": true,
  }),
  QuestionModel("Namoz islomning nachanchi rukni hisoblanadi?", {
    "Birinchi rukni": false,
    "Ikkinchi rukni": true,
    "Uchinchi rukni": false,
  }),
  QuestionModel("Farishtalar nimadan yaratilgan", {
    "Nurdan": true,
    "Olovdan": false,
    "Loydan": false,
  }),
  QuestionModel("Taroveh so'zining ma'nosi nima?", {
    "Orom oldirish,dam berish": true,
    "Rohatlanish,xursna bo'lsih": false,
    "Salqinlanish,huzurlanish": false,
  })
];
List<QuestionModel> oltinSilsila = [
  QuestionModel("Namoz islomning nachanchi rukni hisoblanadi?", {
    "Birinchi rukni": false,
    "Ikkinchi rukni": true,
    "Uchinchi rukni": false,
  }),
  QuestionModel("Farishtalar nimadan yaratilgan", {
    "Nurdan": true,
    "Olovdan": false,
    "Loydan": false,
  }),
  QuestionModel("Taroveh so'zining ma'nosi nima?", {
    "Orom oldirish,dam berish": true,
    "Rohatlanish,xursna bo'lsih": false,
    "Salqinlanish,huzurlanish": false,
  })
];
List<QuestionModel> hadis36 = [
  QuestionModel("Mahr berish qanday amal hisonlanadi?", {
    "Farz amal": true,
    "Mandub amal": false,
    "Sunnat amal": false,
  }),
  QuestionModel("Mahrning eng oz miqdori qancha?", {
    "20 dirham": false,
    "30 dirham": false,
    "10 dirham": true,
  }),
  QuestionModel("Eri vafot etgan ayolni iddasi qancha muddat?", {
    "Olti oy": false,
    "Tort oyu o'n kun": true,
    "Uch oyu yigirma kun": false,
  })
];
List<QuestionModel> hadis28 = [
  QuestionModel("Zamzam suvida g'usl qilish mumkinmi?", {
    "Aslo mumkin emas": false,
    "Ha mumkin": true,
    "Boshqa suv topilmasa mumkin": false,
  }),
  QuestionModel("Umra qaysi oyda qilinadi", {
    "Xohlagan paytida qilsa bo'ladi": true,
    "Haj amallari tugaganidan keyin": false,
    "Muharram oyining avvalida": false,
  }),
  QuestionModel("Hajning birinchi kuni qaysi kunga to'g'ri keladi?", {
    "Zulhijja oyining 5-kuni": false,
    "Zulhijja oyining 1-kuni": true,
    "Zulhijja oyining 10-kuni": false,
  }),
];
List<QuestionModel> odoblarHazinasi = [
  QuestionModel("'Juma' so'zi lug'atda qanday ma'noni anglatadi?", {
    "Saf-saf bolib turish": false,
    "Jamoat bo'lib namoz o'qish": false,
    "Jam bo'lish,to'planish": true,
  }),
  QuestionModel("Namoz islomning nachanchi rukni hisoblanadi?", {
    "Birinchi rukni": false,
    "Ikkinchi rukni": true,
    "Uchinchi rukni": false,
  }),
  QuestionModel("Farishtalar nimadan yaratilgan", {
    "Nurdan": true,
    "Olovdan": false,
    "Loydan": false,
  }),
  QuestionModel("Taroveh so'zining ma'nosi nima?", {
    "Orom oldirish,dam berish": true,
    "Rohatlanish,xursna bo'lsih": false,
    "Salqinlanish,huzurlanish": false,
  })
];
List<QuestionModel> mukammalSaodat = [
  QuestionModel("Qarzga olingan narsa kimning mulkiga aylanadi?", {
    "Qarz oluvchining": true,
    "Ikkala kishining ham": false,
    "Qarz beruvchining": false,
  }),
  QuestionModel(
      "Rasullulloh sollallohi alayhi vasallam muborak hadislarida qaysi surani kambag'allikdan najot beradi deb aytganlar?",
      {
        "Mulk surasi": false,
        "Voqi'a surasi": true,
        "Zilzila surasi": false,
      }),
  QuestionModel("Arab tilidagi 'Dayn' so'zi qanday ma'noni anglatadi?", {
    "Haqning birovga berilishi": false,
    "Haqning sobit bo'lshishi": true,
    "Haqning qo'ldan ketishi": false,
  }),
];
