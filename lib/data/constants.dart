// TODO: JSONで管理するように

enum MusicType { GAME, ZUN_MUSIC_COLLECTION, COMIC, NONE }

extension MusicTypeExt on MusicType {
  String get value {
    switch (this) {
      case MusicType.GAME:
        return "ゲーム";
        break;
      case MusicType.ZUN_MUSIC_COLLECTION:
        return "ZUN's Music Collection";
        break;
      case MusicType.COMIC:
        return "書籍";
        break;
      case MusicType.NONE:
        return "None";
        break;
    }
    return "None";
  }
}

class MusicTypeHelper {
  static MusicType typeOf(String value) {
    return MusicType.values.firstWhere((element) => element.value == value);
  }
}

enum Screen { TYPE_LIST, SERIES_LIST, MUSIC_LIST }

class Constants {
  static List<String> get musicTypes {
    var list = MusicType.values.map((e) => e.value).toList();
    list.removeWhere((element) => element == "None");
    return list;
  }

  static const comic = {
    1: {
      "東方文花帖(書籍)": [
        "風神少女",
        "おてんば恋娘の冒険",
        "花映塚 ～ after Higan Retour",
      ]
    },
    2: {
      "東方紫香花": ["六十年目の東方裁判"]
    },
    3: {
      "東方求聞史紀": [
        "ジャパニーズサーガ",
        "阿礼の子供",
        "夜の鳩山を飛ぶ - Power Mix",
      ]
    },
    4: {
      "東方三月精 ～ Eastern and Little Nature Deity.": [
        "サニールチルフレクション",
        "夜だから眠れない",
        "妖精燦々として",
      ]
    },
    5: {
      "東方三月精 ～ Strange and Bright Nature Deity. 第1巻": [
        "サニーミルクの紅霧異変",
        "雪月桜花の国",
        "スターヴォヤージュ2008",
      ]
    },
    6: {
      "東方三月精 ～ Strange and Bright Nature Deity. 第2巻": [
        "可愛い大戦争のリフレーン",
        "サニールチルフレクション",
        "夜だから眠れない",
        "妖精燦々として",
      ]
    },
    7: {
      "東方三月精 ～ Strange and Bright Nature Deity. 第3巻": [
        "フェアリー冒険譚",
        "二つの世界",
      ]
    },
    8: {
      "東方三月精 ～ Oriental Sacred Place. 第1巻": [
        "神域のかくれんぼ暮らし",
        "妖怪モダンコロニー",
      ]
    },
    9: {
      "東方三月精 ～ Oriental Sacred Place. 第2巻": [
        "年中夢中の好奇心",
        "真夜中のフェアリーダンス",
        "妖精大戦争 ～ Fairy Wars",
      ]
    },
    10: {
      "東方三月精 ～ Oriental Sacred Place. 第3巻": [
        "メイガスナイト",
        "いたずらに命をかけて",
        "古きユアンシェン",
      ]
    },
    11: {
      "東方儚月抄": [
        "妖怪宇宙旅行",
        "綿月のスペルカード ～Lunatic Blue",
        "呑んべぇのレムリア (Retro Ver)",
      ]
    },
    12: {
      "The Grimoire of Marisa": [
        "魔法使いの憂鬱",
        "スプートニク幻夜",
      ]
    },
    13: {
      "東方鈴奈庵": [
        "判読眼のビブロフィリア",
        "運河を行き交う人妖",
        "兎は舞い降りた",
      ]
    },
    14: {
      "東方外來韋編": [
        "ラストオカルティズム ～ 現し世の秘術師",
      ]
    }
  };
  static const zunMusicCollection = {
    10: {
      "蓬莱人形": [
        "蓬莱伝説",
        "二色蓮花蝶　～ Red and White",
        "桜花之恋塚　～ Japanese Flower",
        "明治十七年の上海アリス",
        "東方怪奇談",
        "エニグマティクドール",
        "サーカスレヴァリエ",
        "人形の森",
        "Witch of Love Potion",
        "リーインカーネイション",
        "U.N.オーエンは彼女なのか？",
        "永遠の巫女",
        "空飛ぶ巫女の不思議な毎日"
      ]
    },
    20: {
      "蓮台野夜行": [
        "夜のデンデラ野を逝く",
        "少女秘封倶楽部",
        "東方妖々夢　～ Ancient Temple",
        "古の冥界寺",
        "幻視の夜　～ Ghostly Eyes",
        "魔術師メリー",
        "月の妖鳥、化猫の幻",
        "過去の花　～ Fairy of Flower",
        "魔法少女十字軍",
        "少女幻葬　～ Necro-Fantasy",
        "幻想の永遠祭",
      ]
    },
    30: {
      "夢違科学世紀": [
        "童祭 ～ Innocent Treasures",
        "華胥の夢",
        "上海紅茶館 ～ Chinese Tea",
        "ヴォヤージュ1969",
        "科学世紀の少年少女",
        "永夜の報い ～ Imperishable Night",
        "夜が降りてくる ～ Evening Star",
        "人形裁判 ～ 人の形弄びし少女",
        "夢と現の境界",
        "幻想機械 ～ Phantom Factory",
        "幽玄の槭樹 ～ Eternal Dream",
      ]
    },
    40: {
      "卯酉東海道": [
        "ヒロシゲ36号 ～ Neo Super-Express",
        "53ミニッツの青い海",
        "竹取飛翔 ～ Lunatic Princess",
        "彼岸帰航 ～ Riverside View",
        "青木ヶ原の伝説",
        "お宇佐さまの素い幡",
        "月まで届け不死の煙",
        "レトロスペクティブ京都",
        "ラクトガール ～ 少女密室",
        "千年幻想郷 ～ History of the Moon",
        "最も澄みわたる空と海"
      ]
    },
    50: {
      "大空魔術": [
        "月面ツアーへようこそ",
        "天空のグリニッジ",
        "東の国の眠らない夜",
        "車椅子の未来宇宙",
        "Demystify Feast",
        "衛星カフェテラス",
        "G Free",
        "大空魔術 ～ Magical Astronomy",
        "ネクロファンタジア",
        "向こう側の月"
      ]
    },
    55: {
      "未知の花 魅知の旅": [
        "未知の花 魅知の旅",
        "無間の鐘 ～ Infinite Nightmare",
        "明日ハレの日、ケの昨日",
      ]
    },
    60: {
      "鳥船遺跡": [
        "衛星トリフネ",
        "トロヤ群の密林",
        "デザイアドライブ",
        "フェアリー冒険譚",
        "天鳥船神社",
        "夜空のユーフォーロマンス",
        "ハルトマンの妖怪少女",
        "天鳥船神社の結界",
        "感情の摩天楼 ～ Cosmic Mind",
        "宇宙に浮かぶ幻想郷",
      ]
    },
    70: {
      "伊弉諾物質": [
        "緑のサナトリウム",
        "牛に引かれて善光寺参り",
        "ハートフェルトファンシー",
        "六十年目の東方裁判 ～ Fate of Sixty Years",
        "アガルタの風",
        "イザナギオブジェクト",
        "妖怪裏参道",
        "アンノウンX ～ Unfound Adventure",
        "日本中の不思議を集めて",
        "素敵な墓場で暮しましょ",
      ]
    },
    80: {
      "燕石博物誌 ～ Dr.Latency's Freak Report.": [
        "他愛も無い二人の博物誌",
        "凍り付いた永遠の都",
        "Dr.レイテンシーの眠れなくなる瞳",
        "九月のパンプキン",
        "須臾はプランクを超えて",
        "シュレディンガーの化猫",
        "空中に沈む輝針城",
        "禁忌の膜壁",
        "故郷の星が映る海",
        "ピュアヒューリーズ ～ 心の在処",
        "永遠の三日天下"
      ]
    },
    90: {
      "旧約酒場 ～ Dateless Bar \"Old Adam\".": [
        "バー・オールドアダム",
        "燕石博物誌が連れてきた闇",
        "リバースイデオロギー",
        "アウトサイダーカクテル",
        "大神神話伝",
        "パンデモニックプラネット",
        "旧世界の冒険酒場",
        "魔界地方都市エソテリア",
        "亡失のエモーション",
        "二日酔いの同床異夢"
      ]
    }
  };
  static const game = {
    10: {
      "東方靈異伝 ～ Highly Responsive to Prayers": [
        "A Sacred Lot",
        "風の神社",
        "永遠の巫女",
        "Highly Responsive to Prayers",
        "東方怪奇談",
        "Oriental Magician",
        "破邪の小太刀",
        "The Legend of KAGE",
        "The Positive and Negative",
        "天使伝説",
        "魔鏡",
        "いざ、倒れ逝くその時まで",
        "死なばもろとも",
        "星幽剣士",
        "アイリス"
      ]
    },
    20: {
      "東方封魔録 ～ the Story of Eastern Wonderland": [
        "東方封魔録 ～浄土曼荼羅",
        "博麗 ～Eastern Wind",
        "She's in a temper!!",
        "End of Daylight",
        "やみのちから",
        "幻夢界",
        "死を賭して",
        "ひもろぎ、むらさきにもえ",
        "恋色マジック",
        "東方封魔録 ～幽幻乱舞",
        "Complete Darkness",
        "エキストララブ",
        "戦車むすめのみるゆめ",
        "遠野の森",
        "昔話わんだーらんど",
        "博麗神社境内",
        "陽落ちて",
        "封魔終演"
      ]
    },
    30: {
      "東方夢時空 ～ Phantasmagoria of Dim.Dream": [
        "夢は時空を越えて",
        "Selection",
        "東方妖恋談",
        "Reincarnation",
        "Dim. Dream",
        "Tabula rasa ～ 空白少女",
        "Maniacal Princess",
        "夢消失 ～ Lost Dream",
        "夢幻遊戯 ～ Dream War",
        "魔法決戦！ ～ Fight it out!",
        "Sailor of Time",
        "Strawberry Crisis!!",
        "非統一魔法世界論",
        "魔法鐘愛",
        "久遠の夢",
        "東方の青い空",
        "永遠の満月",
        "Maple Dream...",
        "霊人の休日",
        "勝利デモ",
        "ゲームオーバー",
        "時の風",
        "スターボウドリーム",
        "Phantasmagoria"
      ]
    },
    40: {
      "東方幻想郷 ～ Lotus Land Story": [
        "幻想郷 ～ Lotus Land Story",
        "Witching Dream",
        "Selene's light",
        "装飾戦 ～ Decoration Battle",
        "Break the Sabbath",
        "紅響曲 ～ Scarlet Phoneme",
        "Bad Apple!!",
        "霊戦 ～ Perdition crisis",
        "アリスマエステラ",
        "少女綺想曲 ～ Capriccio",
        "星の器 ～ Casket of Star",
        "Lotus Love",
        "眠れる恐怖 ～ Sleeping Terror",
        "Dream Land",
        "幽夢 ～ Inanimate Dream",
        "禁じざるをえない遊戯",
        "メイド幻想 ～ Icemilk Magic",
        "かわいい悪魔 ～ Innocence",
        "Days",
        "Peaceful",
        "Arcadian Dream",
        "幻想の住人",
        "Lotus Road",
        "Dreamy pilot",
        "Incomplete Plot",
        "Border Land",
        "Magic Shop of Raspberry",
        "Crescent Dream"
      ]
    },
    50: {
      "東方怪綺談 ～ Mystic Square": [
        "怪綺談 ～ Mystic Square",
        "Dream Express",
        "魔法陣 ～ Magic Square",
        "夢想時空",
        "霊天 ～ Spiritual Heaven",
        "Romantic Children",
        "プラスチックマインド",
        "メイプルワイズ",
        "禁断の魔法 ～ Forbidden Magic",
        "真紅の少女 ～ Crimson Dead!!",
        "裏切りの少女 ～ Judas Kiss",
        "the Last Judgement",
        "悲しき人形 ～ Doll of Misery",
        "世界の果て ～ World's End",
        "神話幻想 ～ Infinite Being",
        "不思議の国のアリス",
        "the Grimoire of Alice",
        "神社",
        "Endless",
        "久遠の楽園",
        "Mystic Dream",
        "Peaceful Romancer",
        "魂の休らむ所",
      ]
    },
    60: {
      "東方紅魔郷 ～ the Embodiment of Scarlet Devil.": [
        "赤より紅い夢",
        "ほおずきみたいに紅い魂",
        "妖魔夜行",
        "ルーネイトエルフ",
        "おてんば恋娘",
        "上海紅茶館 ～ Chinese Tea",
        "明治十七年の上海アリス",
        "ヴワル魔法図書館",
        "ラクトガール ～ 少女密室",
        "メイドと血の懐中時計",
        "月時計 ～ ルナ・ダイアル",
        "ツェペシュの幼き末裔",
        "亡き王女の為のセプテット",
        "魔法少女達の百年祭",
        "U.N.オーエンは彼女なのか？",
        "紅より儚い永遠",
        "紅楼 ～ Eastern Dream...",
      ]
    },
    70: {
      "東方妖々夢 ～ Perfect Cherry Blossom.": [
        "妖々夢 ～ Snow or Cherry Petal",
        "無何有の郷 ～ Deep Mountain",
        "クリスタライズシルバー",
        "遠野幻想物語",
        "ティアオイエツォン(withered leaf)",
        "ブクレシュティの人形師",
        "人形裁判 ～ 人の形弄びし少女",
        "天空の花の都",
        "幽霊楽団 ～ Phantom Ensemble",
        "東方妖々夢 ～ Ancient Temple",
        "広有射怪鳥事 ～ Till When?",
        "アルティメットトゥルース",
        "幽雅に咲かせ、墨染の桜 ～ Border of Life",
        "ボーダーオブライフ",
        "妖々跋扈",
        "少女幻葬 ～ Necro-Fantasy",
        "妖々跋扈 ～ Who done it!",
        "ネクロファンタジア",
        "春風の夢",
        "さくらさくら ～ Japanize Dream...",
      ]
    },
    75: {
      "東方萃夢想 ～ Immaterial and Missing Power.": [
        "Demystify Feast",
        "夜が降りてくる ～ Evening Star",
        "御伽の国の鬼が島 ～ Missing Power",
      ]
    },
    80: {
      "東方永夜抄 ～ Imperishable Night.": [
        "永夜抄 ～ Eastern Night.",
        "幻視の夜 ～ Ghostly Eyes",
        "蠢々秋月 ～ Mooned Insect",
        "夜雀の歌声 ～ Night Bird",
        "もう歌しか聞こえない",
        "懐かしき東方の血 ～ Old World",
        "プレインエイジア",
        "永夜の報い ～ Imperishable Night.",
        "少女綺想曲 ～ Dream Battle",
        "恋色マスタースパーク",
        "シンデレラケージ ～ Kagome-Kagome",
        "狂気の瞳 ～ Invisible Full Moon",
        "ヴォヤージュ1969",
        "千年幻想郷 ～ History of the Moon",
        "竹取飛翔 ～ Lunatic Princess",
        "ヴォヤージュ1970",
        "エクステンドアッシュ ～ 蓬莱人",
        "月まで届け、不死の煙",
        "月見草",
        "Eternal Dream ～ 幽玄の槭樹",
        "東方妖怪小町",
      ]
    },
    90: {
      "東方花映塚 ～ Phantasmagoria of Flower View.": [
        "花映塚 ～ Higan Retour",
        "春色小径 ～ Colorful Path",
        "オリエンタルダークフライト",
        "フラワリングナイト",
        "東方妖々夢 ～ Ancient Temple",
        "狂気の瞳 ～ Invisible Full Moon",
        "おてんば恋娘の冒険",
        "幽霊楽団 ～ Phantom Ensemble",
        "もう歌しか聞こえない ～ Flower Mix",
        "お宇佐さまの素い幡",
        "風神少女  (Short Version)",
        "ポイズンボディ ～ Forsaken Doll",
        "今昔幻想郷 ～ Flower Land",
        "彼岸帰航 ～ Riverside View",
        "六十年目の東方裁判 ～ Fate of Sixty Years",
        "花の映る塚",
        "此岸の塚",
        "花は幻想のままに",
        "魂の花 ～ Another Dream...",
      ]
    },
    95: {
      "東方文花帖 ～ Shoot the Bullet.": [
        "天狗の手帖 ～ Mysterious Note",
        "風の循環 ～ Wind Tour",
        "天狗が見ている ～ Black Eyes",
        "東の国の眠らない夜",
        "レトロスペクティブ京都",
        "風神少女",
      ]
    },
    100: {
      "東方風神録 ～ Mountain of Faith.": [
        "封印されし神々",
        "人恋し神様 ～ Romantic Fall",
        "稲田姫様に叱られるから",
        "厄神様の通り道 ～ Dark Road",
        "運命のダークサイド",
        "神々が恋した幻想郷",
        "芥川龍之介の河童 ～ Candid Friend",
        "フォールオブフォール ～ 秋めく滝",
        "妖怪の山 ～ Mysterious Mountain",
        "少女が見た日本の原風景",
        "信仰は儚き人間の為に",
        "御柱の墓場 ～ Grave of Being",
        "神さびた古戦場 ～ Suwa Foughten Field",
        "明日ハレの日、ケの昨日",
        "ネイティブフェイス",
        "麓の神社",
        "神は恵みの雨を降らす ～ Sylphid Dream",
        "プレイヤーズスコア",
      ]
    },
    105: {
      "東方緋想天 ～ Scarlet Weather Rhapsody.": [
        "黒い海に紅く ～ Legendary Fish",
        "有頂天変 ～ Wonderful Heaven",
        "幼心地の有頂天",
      ]
    },
    110: {
      "東方地霊殿 ～ Subterranean Animism.": [
        "地霊達の起床",
        "暗闇の風穴",
        "封じられた妖怪 ～ Lost Place",
        "渡る者の途絶えた橋",
        "緑眼のジェラシー",
        "旧地獄街道を行く",
        "華のさかづき大江山",
        "ハートフェルトファンシー",
        "少女さとり ～ 3rd eye",
        "廃獄ララバイ",
        "死体旅行 ～ Be of good cheer!",
        "業火マントル",
        "霊知の太陽信仰 ～ Nuclear Fusion",
        "ラストリモート",
        "ハルトマンの妖怪少女",
        "地霊達の帰宅",
        "エネルギー黎明 ～ Future Dream...",
        "プレイヤーズスコア",
      ]
    },
    120: {
      "東方星蓮船 ～ Undefined Fantastic Object.": [
        "青空の影",
        "春の湊に",
        "小さな小さな賢将",
        "閉ざせし雲の通い路",
        "万年置き傘にご注意を",
        "スカイルーイン",
        "時代親父とハイカラ少女",
        "幽霊客船の時空を越えた旅",
        "キャプテン・ムラサ",
        "魔界地方都市エソテリア",
        "虎柄の毘沙門天",
        "法界の火",
        "感情の摩天楼 ～ Cosmic Mind",
        "夜空のユーフォーロマンス",
        "平安のエイリアン",
        "妖怪寺",
        "空の帰り道 ～ Sky Dream",
        "プレイヤーズスコア",
      ]
    },
    123: {
      "東方非想天則 ～ 超弩級ギニョルの謎を追え": [
        "アンノウンX ～ Unfound Adventure",
        "空に浮かぶ物体X",
      ]
    },
    125: {
      "ダブルスポイラー ～ 東方文花帖": [
        "ニュースハウンド",
        "あなたの町の怪事件",
        "妖怪モダンコロニー",
        "ネメシスの要塞",
        "無間の鐘 ～ Infinite Nightmare",
        "妖怪の山 ～ Mysterious Mountain",
      ]
    },
    128: {
      "妖精大戦争 ～ 東方三月精": [
        "春の氷精",
        "可愛い大戦争のリフレーン",
        "いたずらに命をかけて",
        "年中夢中の好奇心",
        "真夜中のフェアリーダンス",
        "妖精大戦争 ～ Fairy Wars",
        "ルーズレイン",
        "メイガスナイト",
        "春の氷精 - 静 -",
        "プレイヤーズスコア",
      ]
    },
    130: {
      "東方神霊廟 ～ Ten Desires.": [
        "欲深き霊魂",
        "死霊の夜桜",
        "ゴーストリード",
        "妖怪寺へようこそ",
        "門前の妖怪小娘",
        "素敵な墓場で暮しましょ",
        "リジッドパラダイス",
        "デザイアドライブ",
        "古きユアンシェン",
        "夢殿大祀廟",
        "大神神話伝",
        "小さな欲望の星空",
        "聖徳伝説 ～ True Administrator",
        "妖怪裏参道",
        "佐渡の二ッ岩",
        "神社の新しい風",
        "デザイアドリーム",
        "プレイヤーズスコア",
      ]
    },
    135: {
      "東方心綺楼 ～ Hopeless Masquerade.": [
        "幻想郷の二ッ岩",
        "亡失のエモーション",
      ]
    },
    140: {
      "東方輝針城 ～ Double Dealing Character.": [
        "不思議なお祓い棒",
        "ミストレイク",
        "秘境のマーメイド",
        "運河を行き交う人妖",
        "柳の下のデュラハン",
        "満月の竹林",
        "孤独なウェアウルフ",
        "マジカルストーム",
        "幻想浄瑠璃",
        "空中に沈む輝針城",
        "リバースイデオロギー",
        "針小棒大の天守閣",
        "輝く針の小人族 ～ Little Princess",
        "魔力の雷雲",
        "始原のビート ～ Pristine Beat",
        "小槌の魔力",
        "不思議な不思議な道具達",
        "プレイヤーズスコア",
      ]
    },
    143: {
      "弾幕アマノジャク ～ Impossible Spell Card.": [
        "反則の狼煙を上げろ",
        "不可能弾幕には反則を",
        "ミッドナイトスペルカード",
        "ロマンチック逃飛行",
        "永遠の三日天下",
        "秘境のマーメイド",
        "リバースイデオロギー",
        "幻想浄瑠璃",
        "妖怪の山 ～ Mysterious Mountain",
      ]
    },
    145: {
      "東方深秘録 ～ Urban Legend in Limbo.": [
        "華狭間のバトルフィールド",
        "ラストオカルティズム ～ 現し世の秘術師",
        "アンノウンX ～ Occultly Madness",
      ]
    },
    150: {
      "東方紺珠伝 ～ Legacy of Lunatic Kingdom.": [
        "宇宙巫女現る",
        "忘れがたき、よすがの緑",
        "兎は舞い降りた",
        "湖は浄めの月光を映して",
        "九月のパンプキン",
        "宇宙を飛ぶ不思議な巫女",
        "永遠の春夢",
        "凍り付いた永遠の都",
        "逆転するホイールオブフォーチュン",
        "遥か３８万キロのボヤージュ",
        "星条旗のピエロ",
        "故郷の星が映る海",
        "ピュアヒューリーズ ～ 心の在処",
        "見た事も無い悪夢の世界",
        "パンデモニックプラネット",
        "神社から見える月",
        "宇宙巫女帰還する",
        "プレイヤーズスコア",
      ]
    },
    155: {
      "東方憑依華": [
        "アンノウンＸ ～ Occultly Madness",
        "憑坐は夢と現の間に ～ Necro-Fantasia",
        "今宵は飄逸なエゴイスト(Live ver) ～ Egoistic Flowers.",
      ]
    },
    160: {
      "東方天空璋 ～ Hidden Star in Four Seasons.": [
        "桜舞い散る天空",
        "希望の星は青霄に昇る",
        "真夏の妖精の夢",
        "色無き風は妖怪の山に",
        "山奥のエンカウンター",
        "桜色の海を泳いで",
        "一対の神獣",
        "幻想のホワイトトラベラー",
        "魔法の笠地蔵",
        "禁断の扉の向こうは、この世かあの世か",
        "クレイジーバックダンサーズ",
        "イントゥ・バックドア",
        "秘匿されたフォーシーズンズ",
        "もうドアには入れない",
        "秘神マターラ ～ Hidden Star in All Seasons",
        "不自然な自然",
        "白い旅人",
        "プレイヤーズスコア",
      ]
    },
    165: {
      "秘封ナイトメアダイアリー": [
        "悪夢日記",
        "ルーシッドドリーマー",
        "バー・オールドアダム",
        "ルナティックドリーマー",
        "燕石博物誌が連れてきた闇",
        "ナイトメアダイアリー",
      ]
    },
    170: {
      "東方鬼形獣": [
        "物言わぬ獣の霊",
        "地蔵だけが知る哀嘆",
        "ジェリーストーン",
        "ロストリバー",
        "石の赤子と水中の牛",
        "不朽の曼珠沙華",
        "セラフィックチキン",
        "アンロケイテッドヘル",
        "トータスドラゴン ～ 幸運と不運",
        "ビーストメトロポリス",
        "セラミックスの杖刀人",
        "エレクトリックヘリテージ",
        "偶像に世界を委ねて ～ Idoratrize World",
        "輝かしき弱肉強食の掟",
        "聖徳太子のペガサス ～ Dark Pegasus",
        "畜生達の休息",
        "地下からの帰還",
      ]
    },
  };
}
