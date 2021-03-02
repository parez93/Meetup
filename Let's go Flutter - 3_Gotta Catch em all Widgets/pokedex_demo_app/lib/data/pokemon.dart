
String getName(element){
  Map<String, String> name = element.entries.firstWhere((element) => element.key == 'name').value as Map<String, String>;
  return name['english'];
}

List<String> getTypes(element){
  return element.entries.firstWhere((element) => element.key == 'type').value as List<String>;
}

String getId(element){
  return element.entries.firstWhere((element) => element.key == 'id').value.toString().padLeft(3,'0');
}

final pokemon = [
  {
    "id": 1,
    "name": {"english": "Bulbasaur", "japanese": "フシギダネ", "chinese": "妙蛙种子", "french": "Bulbizarre"},
    "type": ["Grass", "Poison"],
    "base": {"HP": 45, "Attack": 49, "Defense": 49, "Sp. Attack": 65, "Sp. Defense": 65, "Speed": 45}
  },
  {
    "id": 2,
    "name": {"english": "Ivysaur", "japanese": "フシギソウ", "chinese": "妙蛙草", "french": "Herbizarre"},
    "type": ["Grass", "Poison"],
    "base": {"HP": 60, "Attack": 62, "Defense": 63, "Sp. Attack": 80, "Sp. Defense": 80, "Speed": 60}
  },
  {
    "id": 3,
    "name": {"english": "Venusaur", "japanese": "フシギバナ", "chinese": "妙蛙花", "french": "Florizarre"},
    "type": ["Grass", "Poison"],
    "base": {"HP": 80, "Attack": 82, "Defense": 83, "Sp. Attack": 100, "Sp. Defense": 100, "Speed": 80}
  },
  {
    "id": 4,
    "name": {"english": "Charmander", "japanese": "ヒトカゲ", "chinese": "小火龙", "french": "Salamèche"},
    "type": ["Fire"],
    "base": {"HP": 39, "Attack": 52, "Defense": 43, "Sp. Attack": 60, "Sp. Defense": 50, "Speed": 65}
  },
  {
    "id": 5,
    "name": {"english": "Charmeleon", "japanese": "リザード", "chinese": "火恐龙", "french": "Reptincel"},
    "type": ["Fire"],
    "base": {"HP": 58, "Attack": 64, "Defense": 58, "Sp. Attack": 80, "Sp. Defense": 65, "Speed": 80}
  },
  {
    "id": 6,
    "name": {"english": "Charizard", "japanese": "リザードン", "chinese": "喷火龙", "french": "Dracaufeu"},
    "type": ["Fire", "Flying"],
    "base": {"HP": 78, "Attack": 84, "Defense": 78, "Sp. Attack": 109, "Sp. Defense": 85, "Speed": 100}
  },
  {
    "id": 7,
    "name": {"english": "Squirtle", "japanese": "ゼニガメ", "chinese": "杰尼龟", "french": "Carapuce"},
    "type": ["Water"],
    "base": {"HP": 44, "Attack": 48, "Defense": 65, "Sp. Attack": 50, "Sp. Defense": 64, "Speed": 43}
  },
  {
    "id": 8,
    "name": {"english": "Wartortle", "japanese": "カメール", "chinese": "卡咪龟", "french": "Carabaffe"},
    "type": ["Water"],
    "base": {"HP": 59, "Attack": 63, "Defense": 80, "Sp. Attack": 65, "Sp. Defense": 80, "Speed": 58}
  },
  {
    "id": 9,
    "name": {"english": "Blastoise", "japanese": "カメックス", "chinese": "水箭龟", "french": "Tortank"},
    "type": ["Water"],
    "base": {"HP": 79, "Attack": 83, "Defense": 100, "Sp. Attack": 85, "Sp. Defense": 105, "Speed": 78}
  },
  {
    "id": 10,
    "name": {"english": "Caterpie", "japanese": "キャタピー", "chinese": "绿毛虫", "french": "Chenipan"},
    "type": ["Bug"],
    "base": {"HP": 45, "Attack": 30, "Defense": 35, "Sp. Attack": 20, "Sp. Defense": 20, "Speed": 45}
  },
  {
    "id": 11,
    "name": {"english": "Metapod", "japanese": "トランセル", "chinese": "铁甲蛹", "french": "Chrysacier"},
    "type": ["Bug"],
    "base": {"HP": 50, "Attack": 20, "Defense": 55, "Sp. Attack": 25, "Sp. Defense": 25, "Speed": 30}
  },
  {
    "id": 12,
    "name": {"english": "Butterfree", "japanese": "バタフリー", "chinese": "巴大蝶", "french": "Papilusion"},
    "type": ["Bug", "Flying"],
    "base": {"HP": 60, "Attack": 45, "Defense": 50, "Sp. Attack": 90, "Sp. Defense": 80, "Speed": 70}
  },
  {
    "id": 13,
    "name": {"english": "Weedle", "japanese": "ビードル", "chinese": "独角虫", "french": "Aspicot"},
    "type": ["Bug", "Poison"],
    "base": {"HP": 40, "Attack": 35, "Defense": 30, "Sp. Attack": 20, "Sp. Defense": 20, "Speed": 50}
  },
  {
    "id": 14,
    "name": {"english": "Kakuna", "japanese": "コクーン", "chinese": "铁壳蛹", "french": "Coconfort"},
    "type": ["Bug", "Poison"],
    "base": {"HP": 45, "Attack": 25, "Defense": 50, "Sp. Attack": 25, "Sp. Defense": 25, "Speed": 35}
  },
  {
    "id": 15,
    "name": {"english": "Beedrill", "japanese": "スピアー", "chinese": "大针蜂", "french": "Dardargnan"},
    "type": ["Bug", "Poison"],
    "base": {"HP": 65, "Attack": 90, "Defense": 40, "Sp. Attack": 45, "Sp. Defense": 80, "Speed": 75}
  },
  {
    "id": 16,
    "name": {"english": "Pidgey", "japanese": "ポッポ", "chinese": "波波", "french": "Roucool"},
    "type": ["Normal", "Flying"],
    "base": {"HP": 40, "Attack": 45, "Defense": 40, "Sp. Attack": 35, "Sp. Defense": 35, "Speed": 56}
  },
  {
    "id": 17,
    "name": {"english": "Pidgeotto", "japanese": "ピジョン", "chinese": "比比鸟", "french": "Roucoups"},
    "type": ["Normal", "Flying"],
    "base": {"HP": 63, "Attack": 60, "Defense": 55, "Sp. Attack": 50, "Sp. Defense": 50, "Speed": 71}
  },
  {
    "id": 18,
    "name": {"english": "Pidgeot", "japanese": "ピジョット", "chinese": "大比鸟", "french": "Roucarnage"},
    "type": ["Normal", "Flying"],
    "base": {"HP": 83, "Attack": 80, "Defense": 75, "Sp. Attack": 70, "Sp. Defense": 70, "Speed": 101}
  },
  {
    "id": 19,
    "name": {"english": "Rattata", "japanese": "コラッタ", "chinese": "小拉达", "french": "Rattata"},
    "type": ["Normal"],
    "base": {"HP": 30, "Attack": 56, "Defense": 35, "Sp. Attack": 25, "Sp. Defense": 35, "Speed": 72}
  },
  {
    "id": 20,
    "name": {"english": "Raticate", "japanese": "ラッタ", "chinese": "拉达", "french": "Rattatac"},
    "type": ["Normal"],
    "base": {"HP": 55, "Attack": 81, "Defense": 60, "Sp. Attack": 50, "Sp. Defense": 70, "Speed": 97}
  },
  {
    "id": 21,
    "name": {"english": "Spearow", "japanese": "オニスズメ", "chinese": "烈雀", "french": "Piafabec"},
    "type": ["Normal", "Flying"],
    "base": {"HP": 40, "Attack": 60, "Defense": 30, "Sp. Attack": 31, "Sp. Defense": 31, "Speed": 70}
  },
  {
    "id": 22,
    "name": {"english": "Fearow", "japanese": "オニドリル", "chinese": "大嘴雀", "french": "Rapasdepic"},
    "type": ["Normal", "Flying"],
    "base": {"HP": 65, "Attack": 90, "Defense": 65, "Sp. Attack": 61, "Sp. Defense": 61, "Speed": 100}
  },
  {
    "id": 23,
    "name": {"english": "Ekans", "japanese": "アーボ", "chinese": "阿柏蛇", "french": "Abo"},
    "type": ["Poison"],
    "base": {"HP": 35, "Attack": 60, "Defense": 44, "Sp. Attack": 40, "Sp. Defense": 54, "Speed": 55}
  },
  {
    "id": 24,
    "name": {"english": "Arbok", "japanese": "アーボック", "chinese": "阿柏怪", "french": "Arbok"},
    "type": ["Poison"],
    "base": {"HP": 60, "Attack": 95, "Defense": 69, "Sp. Attack": 65, "Sp. Defense": 79, "Speed": 80}
  },
  {
    "id": 25,
    "name": {"english": "Pikachu", "japanese": "ピカチュウ", "chinese": "皮卡丘", "french": "Pikachu"},
    "type": ["Electric"],
    "base": {"HP": 35, "Attack": 55, "Defense": 40, "Sp. Attack": 50, "Sp. Defense": 50, "Speed": 90}
  },
  {
    "id": 26,
    "name": {"english": "Raichu", "japanese": "ライチュウ", "chinese": "雷丘", "french": "Raichu"},
    "type": ["Electric"],
    "base": {"HP": 60, "Attack": 90, "Defense": 55, "Sp. Attack": 90, "Sp. Defense": 80, "Speed": 110}
  },
  {
    "id": 27,
    "name": {"english": "Sandshrew", "japanese": "サンド", "chinese": "穿山鼠", "french": "Sabelette"},
    "type": ["Ground"],
    "base": {"HP": 50, "Attack": 75, "Defense": 85, "Sp. Attack": 20, "Sp. Defense": 30, "Speed": 40}
  },
  {
    "id": 28,
    "name": {"english": "Sandslash", "japanese": "サンドパン", "chinese": "穿山王", "french": "Sablaireau"},
    "type": ["Ground"],
    "base": {"HP": 75, "Attack": 100, "Defense": 110, "Sp. Attack": 45, "Sp. Defense": 55, "Speed": 65}
  },
  {
    "id": 29,
    "name": {"english": "Nidoran♀", "japanese": "ニドラン♀", "chinese": "尼多兰", "french": "Nidoran♀"},
    "type": ["Poison"],
    "base": {"HP": 55, "Attack": 47, "Defense": 52, "Sp. Attack": 40, "Sp. Defense": 40, "Speed": 41}
  },
  {
    "id": 30,
    "name": {"english": "Nidorina", "japanese": "ニドリーナ", "chinese": "尼多娜", "french": "Nidorina"},
    "type": ["Poison"],
    "base": {"HP": 70, "Attack": 62, "Defense": 67, "Sp. Attack": 55, "Sp. Defense": 55, "Speed": 56}
  },
  {
    "id": 31,
    "name": {"english": "Nidoqueen", "japanese": "ニドクイン", "chinese": "尼多后", "french": "Nidoqueen"},
    "type": ["Poison", "Ground"],
    "base": {"HP": 90, "Attack": 92, "Defense": 87, "Sp. Attack": 75, "Sp. Defense": 85, "Speed": 76}
  },
  {
    "id": 32,
    "name": {"english": "Nidoran♂", "japanese": "ニドラン♂", "chinese": "尼多朗", "french": "Nidoran♂"},
    "type": ["Poison"],
    "base": {"HP": 46, "Attack": 57, "Defense": 40, "Sp. Attack": 40, "Sp. Defense": 40, "Speed": 50}
  },
  {
    "id": 33,
    "name": {"english": "Nidorino", "japanese": "ニドリーノ", "chinese": "尼多力诺", "french": "Nidorino"},
    "type": ["Poison"],
    "base": {"HP": 61, "Attack": 72, "Defense": 57, "Sp. Attack": 55, "Sp. Defense": 55, "Speed": 65}
  },
  {
    "id": 34,
    "name": {"english": "Nidoking", "japanese": "ニドキング", "chinese": "尼多王", "french": "Nidoking"},
    "type": ["Poison", "Ground"],
    "base": {"HP": 81, "Attack": 102, "Defense": 77, "Sp. Attack": 85, "Sp. Defense": 75, "Speed": 85}
  },
  {
    "id": 35,
    "name": {"english": "Clefairy", "japanese": "ピッピ", "chinese": "皮皮", "french": "Mélofée"},
    "type": ["Fairy"],
    "base": {"HP": 70, "Attack": 45, "Defense": 48, "Sp. Attack": 60, "Sp. Defense": 65, "Speed": 35}
  },
  {
    "id": 36,
    "name": {"english": "Clefable", "japanese": "ピクシー", "chinese": "皮可西", "french": "Mélodelfe"},
    "type": ["Fairy"],
    "base": {"HP": 95, "Attack": 70, "Defense": 73, "Sp. Attack": 95, "Sp. Defense": 90, "Speed": 60}
  },
  {
    "id": 37,
    "name": {"english": "Vulpix", "japanese": "ロコン", "chinese": "六尾", "french": "Goupix"},
    "type": ["Fire"],
    "base": {"HP": 38, "Attack": 41, "Defense": 40, "Sp. Attack": 50, "Sp. Defense": 65, "Speed": 65}
  },
  {
    "id": 38,
    "name": {"english": "Ninetales", "japanese": "キュウコン", "chinese": "九尾", "french": "Feunard"},
    "type": ["Fire"],
    "base": {"HP": 73, "Attack": 76, "Defense": 75, "Sp. Attack": 81, "Sp. Defense": 100, "Speed": 100}
  },
  {
    "id": 39,
    "name": {"english": "Jigglypuff", "japanese": "プリン", "chinese": "胖丁", "french": "Rondoudou"},
    "type": ["Normal", "Fairy"],
    "base": {"HP": 115, "Attack": 45, "Defense": 20, "Sp. Attack": 45, "Sp. Defense": 25, "Speed": 20}
  },
  {
    "id": 40,
    "name": {"english": "Wigglytuff", "japanese": "プクリン", "chinese": "胖可丁", "french": "Grodoudou"},
    "type": ["Normal", "Fairy"],
    "base": {"HP": 140, "Attack": 70, "Defense": 45, "Sp. Attack": 85, "Sp. Defense": 50, "Speed": 45}
  },
  {
    "id": 41,
    "name": {"english": "Zubat", "japanese": "ズバット", "chinese": "超音蝠", "french": "Nosferapti"},
    "type": ["Poison", "Flying"],
    "base": {"HP": 40, "Attack": 45, "Defense": 35, "Sp. Attack": 30, "Sp. Defense": 40, "Speed": 55}
  },
  {
    "id": 42,
    "name": {"english": "Golbat", "japanese": "ゴルバット", "chinese": "大嘴蝠", "french": "Nosferalto"},
    "type": ["Poison", "Flying"],
    "base": {"HP": 75, "Attack": 80, "Defense": 70, "Sp. Attack": 65, "Sp. Defense": 75, "Speed": 90}
  },
  {
    "id": 43,
    "name": {"english": "Oddish", "japanese": "ナゾノクサ", "chinese": "走路草", "french": "Mystherbe"},
    "type": ["Grass", "Poison"],
    "base": {"HP": 45, "Attack": 50, "Defense": 55, "Sp. Attack": 75, "Sp. Defense": 65, "Speed": 30}
  },
  {
    "id": 44,
    "name": {"english": "Gloom", "japanese": "クサイハナ", "chinese": "臭臭花", "french": "Ortide"},
    "type": ["Grass", "Poison"],
    "base": {"HP": 60, "Attack": 65, "Defense": 70, "Sp. Attack": 85, "Sp. Defense": 75, "Speed": 40}
  },
  {
    "id": 45,
    "name": {"english": "Vileplume", "japanese": "ラフレシア", "chinese": "霸王花", "french": "Rafflesia"},
    "type": ["Grass", "Poison"],
    "base": {"HP": 75, "Attack": 80, "Defense": 85, "Sp. Attack": 110, "Sp. Defense": 90, "Speed": 50}
  },
  {
    "id": 46,
    "name": {"english": "Paras", "japanese": "パラス", "chinese": "派拉斯", "french": "Paras"},
    "type": ["Bug", "Grass"],
    "base": {"HP": 35, "Attack": 70, "Defense": 55, "Sp. Attack": 45, "Sp. Defense": 55, "Speed": 25}
  },
  {
    "id": 47,
    "name": {"english": "Parasect", "japanese": "パラセクト", "chinese": "派拉斯特", "french": "Parasect"},
    "type": ["Bug", "Grass"],
    "base": {"HP": 60, "Attack": 95, "Defense": 80, "Sp. Attack": 60, "Sp. Defense": 80, "Speed": 30}
  },
  {
    "id": 48,
    "name": {"english": "Venonat", "japanese": "コンパン", "chinese": "毛球", "french": "Mimitoss"},
    "type": ["Bug", "Poison"],
    "base": {"HP": 60, "Attack": 55, "Defense": 50, "Sp. Attack": 40, "Sp. Defense": 55, "Speed": 45}
  },
  {
    "id": 49,
    "name": {"english": "Venomoth", "japanese": "モルフォン", "chinese": "摩鲁蛾", "french": "Aéromite"},
    "type": ["Bug", "Poison"],
    "base": {"HP": 70, "Attack": 65, "Defense": 60, "Sp. Attack": 90, "Sp. Defense": 75, "Speed": 90}
  },
  {
    "id": 50,
    "name": {"english": "Diglett", "japanese": "ディグダ", "chinese": "地鼠", "french": "Taupiqueur"},
    "type": ["Ground"],
    "base": {"HP": 10, "Attack": 55, "Defense": 25, "Sp. Attack": 35, "Sp. Defense": 45, "Speed": 95}
  },
  {
    "id": 51,
    "name": {"english": "Dugtrio", "japanese": "ダグトリオ", "chinese": "三地鼠", "french": "Triopikeur"},
    "type": ["Ground"],
    "base": {"HP": 35, "Attack": 100, "Defense": 50, "Sp. Attack": 50, "Sp. Defense": 70, "Speed": 120}
  },
  {
    "id": 52,
    "name": {"english": "Meowth", "japanese": "ニャース", "chinese": "喵喵", "french": "Miaouss"},
    "type": ["Normal"],
    "base": {"HP": 40, "Attack": 45, "Defense": 35, "Sp. Attack": 40, "Sp. Defense": 40, "Speed": 90}
  },
  {
    "id": 53,
    "name": {"english": "Persian", "japanese": "ペルシアン", "chinese": "猫老大", "french": "Persian"},
    "type": ["Normal"],
    "base": {"HP": 65, "Attack": 70, "Defense": 60, "Sp. Attack": 65, "Sp. Defense": 65, "Speed": 115}
  },
  {
    "id": 54,
    "name": {"english": "Psyduck", "japanese": "コダック", "chinese": "可达鸭", "french": "Psykokwak"},
    "type": ["Water"],
    "base": {"HP": 50, "Attack": 52, "Defense": 48, "Sp. Attack": 65, "Sp. Defense": 50, "Speed": 55}
  },
  {
    "id": 55,
    "name": {"english": "Golduck", "japanese": "ゴルダック", "chinese": "哥达鸭", "french": "Akwakwak"},
    "type": ["Water"],
    "base": {"HP": 80, "Attack": 82, "Defense": 78, "Sp. Attack": 95, "Sp. Defense": 80, "Speed": 85}
  },
  {
    "id": 56,
    "name": {"english": "Mankey", "japanese": "マンキー", "chinese": "猴怪", "french": "Férosinge"},
    "type": ["Fighting"],
    "base": {"HP": 40, "Attack": 80, "Defense": 35, "Sp. Attack": 35, "Sp. Defense": 45, "Speed": 70}
  },
  {
    "id": 57,
    "name": {"english": "Primeape", "japanese": "オコリザル", "chinese": "火暴猴", "french": "Colossinge"},
    "type": ["Fighting"],
    "base": {"HP": 65, "Attack": 105, "Defense": 60, "Sp. Attack": 60, "Sp. Defense": 70, "Speed": 95}
  },
  {
    "id": 58,
    "name": {"english": "Growlithe", "japanese": "ガーディ", "chinese": "卡蒂狗", "french": "Caninos"},
    "type": ["Fire"],
    "base": {"HP": 55, "Attack": 70, "Defense": 45, "Sp. Attack": 70, "Sp. Defense": 50, "Speed": 60}
  },
  {
    "id": 59,
    "name": {"english": "Arcanine", "japanese": "ウインディ", "chinese": "风速狗", "french": "Arcanin"},
    "type": ["Fire"],
    "base": {"HP": 90, "Attack": 110, "Defense": 80, "Sp. Attack": 100, "Sp. Defense": 80, "Speed": 95}
  },
  {
    "id": 60,
    "name": {"english": "Poliwag", "japanese": "ニョロモ", "chinese": "蚊香蝌蚪", "french": "Ptitard"},
    "type": ["Water"],
    "base": {"HP": 40, "Attack": 50, "Defense": 40, "Sp. Attack": 40, "Sp. Defense": 40, "Speed": 90}
  },
  {
    "id": 61,
    "name": {"english": "Poliwhirl", "japanese": "ニョロゾ", "chinese": "蚊香君", "french": "Têtarte"},
    "type": ["Water"],
    "base": {"HP": 65, "Attack": 65, "Defense": 65, "Sp. Attack": 50, "Sp. Defense": 50, "Speed": 90}
  },
  {
    "id": 62,
    "name": {"english": "Poliwrath", "japanese": "ニョロボン", "chinese": "蚊香泳士", "french": "Tartard"},
    "type": ["Water", "Fighting"],
    "base": {"HP": 90, "Attack": 95, "Defense": 95, "Sp. Attack": 70, "Sp. Defense": 90, "Speed": 70}
  },
  {
    "id": 63,
    "name": {"english": "Abra", "japanese": "ケーシィ", "chinese": "凯西", "french": "Abra"},
    "type": ["Psychic"],
    "base": {"HP": 25, "Attack": 20, "Defense": 15, "Sp. Attack": 105, "Sp. Defense": 55, "Speed": 90}
  },
  {
    "id": 64,
    "name": {"english": "Kadabra", "japanese": "ユンゲラー", "chinese": "勇基拉", "french": "Kadabra"},
    "type": ["Psychic"],
    "base": {"HP": 40, "Attack": 35, "Defense": 30, "Sp. Attack": 120, "Sp. Defense": 70, "Speed": 105}
  },
  {
    "id": 65,
    "name": {"english": "Alakazam", "japanese": "フーディン", "chinese": "胡地", "french": "Alakazam"},
    "type": ["Psychic"],
    "base": {"HP": 55, "Attack": 50, "Defense": 45, "Sp. Attack": 135, "Sp. Defense": 95, "Speed": 120}
  },
  {
    "id": 66,
    "name": {"english": "Machop", "japanese": "ワンリキー", "chinese": "腕力", "french": "Machoc"},
    "type": ["Fighting"],
    "base": {"HP": 70, "Attack": 80, "Defense": 50, "Sp. Attack": 35, "Sp. Defense": 35, "Speed": 35}
  },
  {
    "id": 67,
    "name": {"english": "Machoke", "japanese": "ゴーリキー", "chinese": "豪力", "french": "Machopeur"},
    "type": ["Fighting"],
    "base": {"HP": 80, "Attack": 100, "Defense": 70, "Sp. Attack": 50, "Sp. Defense": 60, "Speed": 45}
  },
  {
    "id": 68,
    "name": {"english": "Machamp", "japanese": "カイリキー", "chinese": "怪力", "french": "Mackogneur"},
    "type": ["Fighting"],
    "base": {"HP": 90, "Attack": 130, "Defense": 80, "Sp. Attack": 65, "Sp. Defense": 85, "Speed": 55}
  },
  {
    "id": 69,
    "name": {"english": "Bellsprout", "japanese": "マダツボミ", "chinese": "喇叭芽", "french": "Chétiflor"},
    "type": ["Grass", "Poison"],
    "base": {"HP": 50, "Attack": 75, "Defense": 35, "Sp. Attack": 70, "Sp. Defense": 30, "Speed": 40}
  },
  {
    "id": 70,
    "name": {"english": "Weepinbell", "japanese": "ウツドン", "chinese": "口呆花", "french": "Boustiflor"},
    "type": ["Grass", "Poison"],
    "base": {"HP": 65, "Attack": 90, "Defense": 50, "Sp. Attack": 85, "Sp. Defense": 45, "Speed": 55}
  },
  {
    "id": 71,
    "name": {"english": "Victreebel", "japanese": "ウツボット", "chinese": "大食花", "french": "Empiflor"},
    "type": ["Grass", "Poison"],
    "base": {"HP": 80, "Attack": 105, "Defense": 65, "Sp. Attack": 100, "Sp. Defense": 70, "Speed": 70}
  },
  {
    "id": 72,
    "name": {"english": "Tentacool", "japanese": "メノクラゲ", "chinese": "玛瑙水母", "french": "Tentacool"},
    "type": ["Water", "Poison"],
    "base": {"HP": 40, "Attack": 40, "Defense": 35, "Sp. Attack": 50, "Sp. Defense": 100, "Speed": 70}
  },
  {
    "id": 73,
    "name": {"english": "Tentacruel", "japanese": "ドククラゲ", "chinese": "毒刺水母", "french": "Tentacruel"},
    "type": ["Water", "Poison"],
    "base": {"HP": 80, "Attack": 70, "Defense": 65, "Sp. Attack": 80, "Sp. Defense": 120, "Speed": 100}
  },
  {
    "id": 74,
    "name": {"english": "Geodude", "japanese": "イシツブテ", "chinese": "小拳石", "french": "Racaillou"},
    "type": ["Rock", "Ground"],
    "base": {"HP": 40, "Attack": 80, "Defense": 100, "Sp. Attack": 30, "Sp. Defense": 30, "Speed": 20}
  },
  {
    "id": 75,
    "name": {"english": "Graveler", "japanese": "ゴローン", "chinese": "隆隆石", "french": "Gravalanch"},
    "type": ["Rock", "Ground"],
    "base": {"HP": 55, "Attack": 95, "Defense": 115, "Sp. Attack": 45, "Sp. Defense": 45, "Speed": 35}
  },
  {
    "id": 76,
    "name": {"english": "Golem", "japanese": "ゴローニャ", "chinese": "隆隆岩", "french": "Grolem"},
    "type": ["Rock", "Ground"],
    "base": {"HP": 80, "Attack": 120, "Defense": 130, "Sp. Attack": 55, "Sp. Defense": 65, "Speed": 45}
  },
  {
    "id": 77,
    "name": {"english": "Ponyta", "japanese": "ポニータ", "chinese": "小火马", "french": "Ponyta"},
    "type": ["Fire"],
    "base": {"HP": 50, "Attack": 85, "Defense": 55, "Sp. Attack": 65, "Sp. Defense": 65, "Speed": 90}
  },
  {
    "id": 78,
    "name": {"english": "Rapidash", "japanese": "ギャロップ", "chinese": "烈焰马", "french": "Galopa"},
    "type": ["Fire"],
    "base": {"HP": 65, "Attack": 100, "Defense": 70, "Sp. Attack": 80, "Sp. Defense": 80, "Speed": 105}
  },
  {
    "id": 79,
    "name": {"english": "Slowpoke", "japanese": "ヤドン", "chinese": "呆呆兽", "french": "Ramoloss"},
    "type": ["Water", "Psychic"],
    "base": {"HP": 90, "Attack": 65, "Defense": 65, "Sp. Attack": 40, "Sp. Defense": 40, "Speed": 15}
  },
  {
    "id": 80,
    "name": {"english": "Slowbro", "japanese": "ヤドラン", "chinese": "呆壳兽", "french": "Flagadoss"},
    "type": ["Water", "Psychic"],
    "base": {"HP": 95, "Attack": 75, "Defense": 110, "Sp. Attack": 100, "Sp. Defense": 80, "Speed": 30}
  },
  {
    "id": 81,
    "name": {"english": "Magnemite", "japanese": "コイル", "chinese": "小磁怪", "french": "Magnéti"},
    "type": ["Electric", "Steel"],
    "base": {"HP": 25, "Attack": 35, "Defense": 70, "Sp. Attack": 95, "Sp. Defense": 55, "Speed": 45}
  },
  {
    "id": 82,
    "name": {"english": "Magneton", "japanese": "レアコイル", "chinese": "三合一磁怪", "french": "Magnéton"},
    "type": ["Electric", "Steel"],
    "base": {"HP": 50, "Attack": 60, "Defense": 95, "Sp. Attack": 120, "Sp. Defense": 70, "Speed": 70}
  },
  {
    "id": 83,
    "name": {"english": "Farfetch'd", "japanese": "カモネギ", "chinese": "大葱鸭", "french": "Canarticho"},
    "type": ["Normal", "Flying"],
    "base": {"HP": 52, "Attack": 90, "Defense": 55, "Sp. Attack": 58, "Sp. Defense": 62, "Speed": 60}
  },
  {
    "id": 84,
    "name": {"english": "Doduo", "japanese": "ドードー", "chinese": "嘟嘟", "french": "Doduo"},
    "type": ["Normal", "Flying"],
    "base": {"HP": 35, "Attack": 85, "Defense": 45, "Sp. Attack": 35, "Sp. Defense": 35, "Speed": 75}
  },
  {
    "id": 85,
    "name": {"english": "Dodrio", "japanese": "ドードリオ", "chinese": "嘟嘟利", "french": "Dodrio"},
    "type": ["Normal", "Flying"],
    "base": {"HP": 60, "Attack": 110, "Defense": 70, "Sp. Attack": 60, "Sp. Defense": 60, "Speed": 110}
  },
  {
    "id": 86,
    "name": {"english": "Seel", "japanese": "パウワウ", "chinese": "小海狮", "french": "Otaria"},
    "type": ["Water"],
    "base": {"HP": 65, "Attack": 45, "Defense": 55, "Sp. Attack": 45, "Sp. Defense": 70, "Speed": 45}
  },
  {
    "id": 87,
    "name": {"english": "Dewgong", "japanese": "ジュゴン", "chinese": "白海狮", "french": "Lamantine"},
    "type": ["Water", "Ice"],
    "base": {"HP": 90, "Attack": 70, "Defense": 80, "Sp. Attack": 70, "Sp. Defense": 95, "Speed": 70}
  },
  {
    "id": 88,
    "name": {"english": "Grimer", "japanese": "ベトベター", "chinese": "臭泥", "french": "Tadmorv"},
    "type": ["Poison"],
    "base": {"HP": 80, "Attack": 80, "Defense": 50, "Sp. Attack": 40, "Sp. Defense": 50, "Speed": 25}
  },
  {
    "id": 89,
    "name": {"english": "Muk", "japanese": "ベトベトン", "chinese": "臭臭泥", "french": "Grotadmorv"},
    "type": ["Poison"],
    "base": {"HP": 105, "Attack": 105, "Defense": 75, "Sp. Attack": 65, "Sp. Defense": 100, "Speed": 50}
  },
  {
    "id": 90,
    "name": {"english": "Shellder", "japanese": "シェルダー", "chinese": "大舌贝", "french": "Kokiyas"},
    "type": ["Water"],
    "base": {"HP": 30, "Attack": 65, "Defense": 100, "Sp. Attack": 45, "Sp. Defense": 25, "Speed": 40}
  },
  {
    "id": 91,
    "name": {"english": "Cloyster", "japanese": "パルシェン", "chinese": "刺甲贝", "french": "Crustabri"},
    "type": ["Water", "Ice"],
    "base": {"HP": 50, "Attack": 95, "Defense": 180, "Sp. Attack": 85, "Sp. Defense": 45, "Speed": 70}
  },
  {
    "id": 92,
    "name": {"english": "Gastly", "japanese": "ゴース", "chinese": "鬼斯", "french": "Fantominus"},
    "type": ["Ghost", "Poison"],
    "base": {"HP": 30, "Attack": 35, "Defense": 30, "Sp. Attack": 100, "Sp. Defense": 35, "Speed": 80}
  },
  {
    "id": 93,
    "name": {"english": "Haunter", "japanese": "ゴースト", "chinese": "鬼斯通", "french": "Spectrum"},
    "type": ["Ghost", "Poison"],
    "base": {"HP": 45, "Attack": 50, "Defense": 45, "Sp. Attack": 115, "Sp. Defense": 55, "Speed": 95}
  },
  {
    "id": 94,
    "name": {"english": "Gengar", "japanese": "ゲンガー", "chinese": "耿鬼", "french": "Ectoplasma"},
    "type": ["Ghost", "Poison"],
    "base": {"HP": 60, "Attack": 65, "Defense": 60, "Sp. Attack": 130, "Sp. Defense": 75, "Speed": 110}
  },
  {
    "id": 95,
    "name": {"english": "Onix", "japanese": "イワーク", "chinese": "大岩蛇", "french": "Onix"},
    "type": ["Rock", "Ground"],
    "base": {"HP": 35, "Attack": 45, "Defense": 160, "Sp. Attack": 30, "Sp. Defense": 45, "Speed": 70}
  },
  {
    "id": 96,
    "name": {"english": "Drowzee", "japanese": "スリープ", "chinese": "催眠貘", "french": "Soporifik"},
    "type": ["Psychic"],
    "base": {"HP": 60, "Attack": 48, "Defense": 45, "Sp. Attack": 43, "Sp. Defense": 90, "Speed": 42}
  },
  {
    "id": 97,
    "name": {"english": "Hypno", "japanese": "スリーパー", "chinese": "引梦貘人", "french": "Hypnomade"},
    "type": ["Psychic"],
    "base": {"HP": 85, "Attack": 73, "Defense": 70, "Sp. Attack": 73, "Sp. Defense": 115, "Speed": 67}
  },
  {
    "id": 98,
    "name": {"english": "Krabby", "japanese": "クラブ", "chinese": "大钳蟹", "french": "Krabby"},
    "type": ["Water"],
    "base": {"HP": 30, "Attack": 105, "Defense": 90, "Sp. Attack": 25, "Sp. Defense": 25, "Speed": 50}
  },
  {
    "id": 99,
    "name": {"english": "Kingler", "japanese": "キングラー", "chinese": "巨钳蟹", "french": "Krabboss"},
    "type": ["Water"],
    "base": {"HP": 55, "Attack": 130, "Defense": 115, "Sp. Attack": 50, "Sp. Defense": 50, "Speed": 75}
  },
  {
    "id": 100,
    "name": {"english": "Voltorb", "japanese": "ビリリダマ", "chinese": "霹雳电球", "french": "Voltorbe"},
    "type": ["Electric"],
    "base": {"HP": 40, "Attack": 30, "Defense": 50, "Sp. Attack": 55, "Sp. Defense": 55, "Speed": 100}
  },
  {
    "id": 101,
    "name": {"english": "Electrode", "japanese": "マルマイン", "chinese": "顽皮雷弹", "french": "Électrode"},
    "type": ["Electric"],
    "base": {"HP": 60, "Attack": 50, "Defense": 70, "Sp. Attack": 80, "Sp. Defense": 80, "Speed": 150}
  },
  {
    "id": 102,
    "name": {"english": "Exeggcute", "japanese": "タマタマ", "chinese": "蛋蛋", "french": "Noeunoeuf"},
    "type": ["Grass", "Psychic"],
    "base": {"HP": 60, "Attack": 40, "Defense": 80, "Sp. Attack": 60, "Sp. Defense": 45, "Speed": 40}
  },
  {
    "id": 103,
    "name": {"english": "Exeggutor", "japanese": "ナッシー", "chinese": "椰蛋树", "french": "Noadkoko"},
    "type": ["Grass", "Psychic"],
    "base": {"HP": 95, "Attack": 95, "Defense": 85, "Sp. Attack": 125, "Sp. Defense": 75, "Speed": 55}
  },
  {
    "id": 104,
    "name": {"english": "Cubone", "japanese": "カラカラ", "chinese": "卡拉卡拉", "french": "Osselait"},
    "type": ["Ground"],
    "base": {"HP": 50, "Attack": 50, "Defense": 95, "Sp. Attack": 40, "Sp. Defense": 50, "Speed": 35}
  },
  {
    "id": 105,
    "name": {"english": "Marowak", "japanese": "ガラガラ", "chinese": "嘎啦嘎啦", "french": "Ossatueur"},
    "type": ["Ground"],
    "base": {"HP": 60, "Attack": 80, "Defense": 110, "Sp. Attack": 50, "Sp. Defense": 80, "Speed": 45}
  },
  {
    "id": 106,
    "name": {"english": "Hitmonlee", "japanese": "サワムラー", "chinese": "飞腿郎", "french": "Kicklee"},
    "type": ["Fighting"],
    "base": {"HP": 50, "Attack": 120, "Defense": 53, "Sp. Attack": 35, "Sp. Defense": 110, "Speed": 87}
  },
  {
    "id": 107,
    "name": {"english": "Hitmonchan", "japanese": "エビワラー", "chinese": "快拳郎", "french": "Tygnon"},
    "type": ["Fighting"],
    "base": {"HP": 50, "Attack": 105, "Defense": 79, "Sp. Attack": 35, "Sp. Defense": 110, "Speed": 76}
  },
  {
    "id": 108,
    "name": {"english": "Lickitung", "japanese": "ベロリンガ", "chinese": "大舌头", "french": "Excelangue"},
    "type": ["Normal"],
    "base": {"HP": 90, "Attack": 55, "Defense": 75, "Sp. Attack": 60, "Sp. Defense": 75, "Speed": 30}
  },
  {
    "id": 109,
    "name": {"english": "Koffing", "japanese": "ドガース", "chinese": "瓦斯弹", "french": "Smogo"},
    "type": ["Poison"],
    "base": {"HP": 40, "Attack": 65, "Defense": 95, "Sp. Attack": 60, "Sp. Defense": 45, "Speed": 35}
  },
  {
    "id": 110,
    "name": {"english": "Weezing", "japanese": "マタドガス", "chinese": "双弹瓦斯", "french": "Smogogo"},
    "type": ["Poison"],
    "base": {"HP": 65, "Attack": 90, "Defense": 120, "Sp. Attack": 85, "Sp. Defense": 70, "Speed": 60}
  },
  {
    "id": 111,
    "name": {"english": "Rhyhorn", "japanese": "サイホーン", "chinese": "独角犀牛", "french": "Rhinocorne"},
    "type": ["Ground", "Rock"],
    "base": {"HP": 80, "Attack": 85, "Defense": 95, "Sp. Attack": 30, "Sp. Defense": 30, "Speed": 25}
  },
  {
    "id": 112,
    "name": {"english": "Rhydon", "japanese": "サイドン", "chinese": "钻角犀兽", "french": "Rhinoféros"},
    "type": ["Ground", "Rock"],
    "base": {"HP": 105, "Attack": 130, "Defense": 120, "Sp. Attack": 45, "Sp. Defense": 45, "Speed": 40}
  },
  {
    "id": 113,
    "name": {"english": "Chansey", "japanese": "ラッキー", "chinese": "吉利蛋", "french": "Leveinard"},
    "type": ["Normal"],
    "base": {"HP": 250, "Attack": 5, "Defense": 5, "Sp. Attack": 35, "Sp. Defense": 105, "Speed": 50}
  },
  {
    "id": 114,
    "name": {"english": "Tangela", "japanese": "モンジャラ", "chinese": "蔓藤怪", "french": "Saquedeneu"},
    "type": ["Grass"],
    "base": {"HP": 65, "Attack": 55, "Defense": 115, "Sp. Attack": 100, "Sp. Defense": 40, "Speed": 60}
  },
  {
    "id": 115,
    "name": {"english": "Kangaskhan", "japanese": "ガルーラ", "chinese": "袋兽", "french": "Kangourex"},
    "type": ["Normal"],
    "base": {"HP": 105, "Attack": 95, "Defense": 80, "Sp. Attack": 40, "Sp. Defense": 80, "Speed": 90}
  },
  {
    "id": 116,
    "name": {"english": "Horsea", "japanese": "タッツー", "chinese": "墨海马", "french": "Hypotrempe"},
    "type": ["Water"],
    "base": {"HP": 30, "Attack": 40, "Defense": 70, "Sp. Attack": 70, "Sp. Defense": 25, "Speed": 60}
  },
  {
    "id": 117,
    "name": {"english": "Seadra", "japanese": "シードラ", "chinese": "海刺龙", "french": "Hypocéan"},
    "type": ["Water"],
    "base": {"HP": 55, "Attack": 65, "Defense": 95, "Sp. Attack": 95, "Sp. Defense": 45, "Speed": 85}
  },
  {
    "id": 118,
    "name": {"english": "Goldeen", "japanese": "トサキント", "chinese": "角金鱼", "french": "Poissirène"},
    "type": ["Water"],
    "base": {"HP": 45, "Attack": 67, "Defense": 60, "Sp. Attack": 35, "Sp. Defense": 50, "Speed": 63}
  },
  {
    "id": 119,
    "name": {"english": "Seaking", "japanese": "アズマオウ", "chinese": "金鱼王", "french": "Poissoroy"},
    "type": ["Water"],
    "base": {"HP": 80, "Attack": 92, "Defense": 65, "Sp. Attack": 65, "Sp. Defense": 80, "Speed": 68}
  },
  {
    "id": 120,
    "name": {"english": "Staryu", "japanese": "ヒトデマン", "chinese": "海星星", "french": "Stari"},
    "type": ["Water"],
    "base": {"HP": 30, "Attack": 45, "Defense": 55, "Sp. Attack": 70, "Sp. Defense": 55, "Speed": 85}
  },
  {
    "id": 121,
    "name": {"english": "Starmie", "japanese": "スターミー", "chinese": "宝石海星", "french": "Staross"},
    "type": ["Water", "Psychic"],
    "base": {"HP": 60, "Attack": 75, "Defense": 85, "Sp. Attack": 100, "Sp. Defense": 85, "Speed": 115}
  },
  {
    "id": 122,
    "name": {"english": "Mr. Mime", "japanese": "バリヤード", "chinese": "魔墙人偶", "french": "M. Mime"},
    "type": ["Psychic", "Fairy"],
    "base": {"HP": 40, "Attack": 45, "Defense": 65, "Sp. Attack": 100, "Sp. Defense": 120, "Speed": 90}
  },
  {
    "id": 123,
    "name": {"english": "Scyther", "japanese": "ストライク", "chinese": "飞天螳螂", "french": "Insécateur"},
    "type": ["Bug", "Flying"],
    "base": {"HP": 70, "Attack": 110, "Defense": 80, "Sp. Attack": 55, "Sp. Defense": 80, "Speed": 105}
  },
  {
    "id": 124,
    "name": {"english": "Jynx", "japanese": "ルージュラ", "chinese": "迷唇姐", "french": "Lippoutou"},
    "type": ["Ice", "Psychic"],
    "base": {"HP": 65, "Attack": 50, "Defense": 35, "Sp. Attack": 115, "Sp. Defense": 95, "Speed": 95}
  },
  {
    "id": 125,
    "name": {"english": "Electabuzz", "japanese": "エレブー", "chinese": "电击兽", "french": "Élektek"},
    "type": ["Electric"],
    "base": {"HP": 65, "Attack": 83, "Defense": 57, "Sp. Attack": 95, "Sp. Defense": 85, "Speed": 105}
  },
  {
    "id": 126,
    "name": {"english": "Magmar", "japanese": "ブーバー", "chinese": "鸭嘴火兽", "french": "Magmar"},
    "type": ["Fire"],
    "base": {"HP": 65, "Attack": 95, "Defense": 57, "Sp. Attack": 100, "Sp. Defense": 85, "Speed": 93}
  },
  {
    "id": 127,
    "name": {"english": "Pinsir", "japanese": "カイロス", "chinese": "凯罗斯", "french": "Scarabrute"},
    "type": ["Bug"],
    "base": {"HP": 65, "Attack": 125, "Defense": 100, "Sp. Attack": 55, "Sp. Defense": 70, "Speed": 85}
  },
  {
    "id": 128,
    "name": {"english": "Tauros", "japanese": "ケンタロス", "chinese": "肯泰罗", "french": "Tauros"},
    "type": ["Normal"],
    "base": {"HP": 75, "Attack": 100, "Defense": 95, "Sp. Attack": 40, "Sp. Defense": 70, "Speed": 110}
  },
  {
    "id": 129,
    "name": {"english": "Magikarp", "japanese": "コイキング", "chinese": "鲤鱼王", "french": "Magicarpe"},
    "type": ["Water"],
    "base": {"HP": 20, "Attack": 10, "Defense": 55, "Sp. Attack": 15, "Sp. Defense": 20, "Speed": 80}
  },
  {
    "id": 130,
    "name": {"english": "Gyarados", "japanese": "ギャラドス", "chinese": "暴鲤龙", "french": "Léviator"},
    "type": ["Water", "Flying"],
    "base": {"HP": 95, "Attack": 125, "Defense": 79, "Sp. Attack": 60, "Sp. Defense": 100, "Speed": 81}
  },
  {
    "id": 131,
    "name": {"english": "Lapras", "japanese": "ラプラス", "chinese": "拉普拉斯", "french": "Lokhlass"},
    "type": ["Water", "Ice"],
    "base": {"HP": 130, "Attack": 85, "Defense": 80, "Sp. Attack": 85, "Sp. Defense": 95, "Speed": 60}
  },
  {
    "id": 132,
    "name": {"english": "Ditto", "japanese": "メタモン", "chinese": "百变怪", "french": "Métamorph"},
    "type": ["Normal"],
    "base": {"HP": 48, "Attack": 48, "Defense": 48, "Sp. Attack": 48, "Sp. Defense": 48, "Speed": 48}
  },
  {
    "id": 133,
    "name": {"english": "Eevee", "japanese": "イーブイ", "chinese": "伊布", "french": "Évoli"},
    "type": ["Normal"],
    "base": {"HP": 55, "Attack": 55, "Defense": 50, "Sp. Attack": 45, "Sp. Defense": 65, "Speed": 55}
  },
  {
    "id": 134,
    "name": {"english": "Vaporeon", "japanese": "シャワーズ", "chinese": "水伊布", "french": "Aquali"},
    "type": ["Water"],
    "base": {"HP": 130, "Attack": 65, "Defense": 60, "Sp. Attack": 110, "Sp. Defense": 95, "Speed": 65}
  },
  {
    "id": 135,
    "name": {"english": "Jolteon", "japanese": "サンダース", "chinese": "雷伊布", "french": "Voltali"},
    "type": ["Electric"],
    "base": {"HP": 65, "Attack": 65, "Defense": 60, "Sp. Attack": 110, "Sp. Defense": 95, "Speed": 130}
  },
  {
    "id": 136,
    "name": {"english": "Flareon", "japanese": "ブースター", "chinese": "火伊布", "french": "Pyroli"},
    "type": ["Fire"],
    "base": {"HP": 65, "Attack": 130, "Defense": 60, "Sp. Attack": 95, "Sp. Defense": 110, "Speed": 65}
  },
  {
    "id": 137,
    "name": {"english": "Porygon", "japanese": "ポリゴン", "chinese": "多边兽", "french": "Porygon"},
    "type": ["Normal"],
    "base": {"HP": 65, "Attack": 60, "Defense": 70, "Sp. Attack": 85, "Sp. Defense": 75, "Speed": 40}
  },
  {
    "id": 138,
    "name": {"english": "Omanyte", "japanese": "オムナイト", "chinese": "菊石兽", "french": "Amonita"},
    "type": ["Rock", "Water"],
    "base": {"HP": 35, "Attack": 40, "Defense": 100, "Sp. Attack": 90, "Sp. Defense": 55, "Speed": 35}
  },
  {
    "id": 139,
    "name": {"english": "Omastar", "japanese": "オムスター", "chinese": "多刺菊石兽", "french": "Amonistar"},
    "type": ["Rock", "Water"],
    "base": {"HP": 70, "Attack": 60, "Defense": 125, "Sp. Attack": 115, "Sp. Defense": 70, "Speed": 55}
  },
  {
    "id": 140,
    "name": {"english": "Kabuto", "japanese": "カブト", "chinese": "化石盔", "french": "Kabuto"},
    "type": ["Rock", "Water"],
    "base": {"HP": 30, "Attack": 80, "Defense": 90, "Sp. Attack": 55, "Sp. Defense": 45, "Speed": 55}
  },
  {
    "id": 141,
    "name": {"english": "Kabutops", "japanese": "カブトプス", "chinese": "镰刀盔", "french": "Kabutops"},
    "type": ["Rock", "Water"],
    "base": {"HP": 60, "Attack": 115, "Defense": 105, "Sp. Attack": 65, "Sp. Defense": 70, "Speed": 80}
  },
  {
    "id": 142,
    "name": {"english": "Aerodactyl", "japanese": "プテラ", "chinese": "化石翼龙", "french": "Ptéra"},
    "type": ["Rock", "Flying"],
    "base": {"HP": 80, "Attack": 105, "Defense": 65, "Sp. Attack": 60, "Sp. Defense": 75, "Speed": 130}
  },
  {
    "id": 143,
    "name": {"english": "Snorlax", "japanese": "カビゴン", "chinese": "卡比兽", "french": "Ronflex"},
    "type": ["Normal"],
    "base": {"HP": 160, "Attack": 110, "Defense": 65, "Sp. Attack": 65, "Sp. Defense": 110, "Speed": 30}
  },
  {
    "id": 144,
    "name": {"english": "Articuno", "japanese": "フリーザー", "chinese": "急冻鸟", "french": "Artikodin"},
    "type": ["Ice", "Flying"],
    "base": {"HP": 90, "Attack": 85, "Defense": 100, "Sp. Attack": 95, "Sp. Defense": 125, "Speed": 85}
  },
  {
    "id": 145,
    "name": {"english": "Zapdos", "japanese": "サンダー", "chinese": "闪电鸟", "french": "Électhor"},
    "type": ["Electric", "Flying"],
    "base": {"HP": 90, "Attack": 90, "Defense": 85, "Sp. Attack": 125, "Sp. Defense": 90, "Speed": 100}
  },
  {
    "id": 146,
    "name": {"english": "Moltres", "japanese": "ファイヤー", "chinese": "火焰鸟", "french": "Sulfura"},
    "type": ["Fire", "Flying"],
    "base": {"HP": 90, "Attack": 100, "Defense": 90, "Sp. Attack": 125, "Sp. Defense": 85, "Speed": 90}
  },
  {
    "id": 147,
    "name": {"english": "Dratini", "japanese": "ミニリュウ", "chinese": "迷你龙", "french": "Minidraco"},
    "type": ["Dragon"],
    "base": {"HP": 41, "Attack": 64, "Defense": 45, "Sp. Attack": 50, "Sp. Defense": 50, "Speed": 50}
  },
  {
    "id": 148,
    "name": {"english": "Dragonair", "japanese": "ハクリュー", "chinese": "哈克龙", "french": "Draco"},
    "type": ["Dragon"],
    "base": {"HP": 61, "Attack": 84, "Defense": 65, "Sp. Attack": 70, "Sp. Defense": 70, "Speed": 70}
  },
  {
    "id": 149,
    "name": {"english": "Dragonite", "japanese": "カイリュー", "chinese": "快龙", "french": "Dracolosse"},
    "type": ["Dragon", "Flying"],
    "base": {"HP": 91, "Attack": 134, "Defense": 95, "Sp. Attack": 100, "Sp. Defense": 100, "Speed": 80}
  },
  {
    "id": 150,
    "name": {"english": "Mewtwo", "japanese": "ミュウツー", "chinese": "超梦", "french": "Mewtwo"},
    "type": ["Psychic"],
    "base": {"HP": 106, "Attack": 110, "Defense": 90, "Sp. Attack": 154, "Sp. Defense": 90, "Speed": 130}
  },
  {
    "id": 151,
    "name": {"english": "Mew", "japanese": "ミュウ", "chinese": "梦幻", "french": "Mew"},
    "type": ["Psychic"],
    "base": {"HP": 100, "Attack": 100, "Defense": 100, "Sp. Attack": 100, "Sp. Defense": 100, "Speed": 100}
  },
  {
    "id": 152,
    "name": {"english": "Chikorita", "japanese": "チコリータ", "chinese": "菊草叶", "french": "Germignon"},
    "type": ["Grass"],
    "base": {"HP": 45, "Attack": 49, "Defense": 65, "Sp. Attack": 49, "Sp. Defense": 65, "Speed": 45}
  },
  {
    "id": 153,
    "name": {"english": "Bayleef", "japanese": "ベイリーフ", "chinese": "月桂叶", "french": "Macronium"},
    "type": ["Grass"],
    "base": {"HP": 60, "Attack": 62, "Defense": 80, "Sp. Attack": 63, "Sp. Defense": 80, "Speed": 60}
  },
  {
    "id": 154,
    "name": {"english": "Meganium", "japanese": "メガニウム", "chinese": "大竺葵", "french": "Méganium"},
    "type": ["Grass"],
    "base": {"HP": 80, "Attack": 82, "Defense": 100, "Sp. Attack": 83, "Sp. Defense": 100, "Speed": 80}
  },
  {
    "id": 155,
    "name": {"english": "Cyndaquil", "japanese": "ヒノアラシ", "chinese": "火球鼠", "french": "Héricendre"},
    "type": ["Fire"],
    "base": {"HP": 39, "Attack": 52, "Defense": 43, "Sp. Attack": 60, "Sp. Defense": 50, "Speed": 65}
  },
  {
    "id": 156,
    "name": {"english": "Quilava", "japanese": "マグマラシ", "chinese": "火岩鼠", "french": "Feurisson"},
    "type": ["Fire"],
    "base": {"HP": 58, "Attack": 64, "Defense": 58, "Sp. Attack": 80, "Sp. Defense": 65, "Speed": 80}
  },
  {
    "id": 157,
    "name": {"english": "Typhlosion", "japanese": "バクフーン", "chinese": "火暴兽", "french": "Typhlosion"},
    "type": ["Fire"],
    "base": {"HP": 78, "Attack": 84, "Defense": 78, "Sp. Attack": 109, "Sp. Defense": 85, "Speed": 100}
  },
  {
    "id": 158,
    "name": {"english": "Totodile", "japanese": "ワニノコ", "chinese": "小锯鳄", "french": "Kaiminus"},
    "type": ["Water"],
    "base": {"HP": 50, "Attack": 65, "Defense": 64, "Sp. Attack": 44, "Sp. Defense": 48, "Speed": 43}
  },
  {
    "id": 159,
    "name": {"english": "Croconaw", "japanese": "アリゲイツ", "chinese": "蓝鳄", "french": "Crocrodil"},
    "type": ["Water"],
    "base": {"HP": 65, "Attack": 80, "Defense": 80, "Sp. Attack": 59, "Sp. Defense": 63, "Speed": 58}
  },
  {
    "id": 160,
    "name": {"english": "Feraligatr", "japanese": "オーダイル", "chinese": "大力鳄", "french": "Aligatueur"},
    "type": ["Water"],
    "base": {"HP": 85, "Attack": 105, "Defense": 100, "Sp. Attack": 79, "Sp. Defense": 83, "Speed": 78}
  },
  {
    "id": 161,
    "name": {"english": "Sentret", "japanese": "オタチ", "chinese": "尾立", "french": "Fouinette"},
    "type": ["Normal"],
    "base": {"HP": 35, "Attack": 46, "Defense": 34, "Sp. Attack": 35, "Sp. Defense": 45, "Speed": 20}
  },
  {
    "id": 162,
    "name": {"english": "Furret", "japanese": "オオタチ", "chinese": "大尾立", "french": "Fouinar"},
    "type": ["Normal"],
    "base": {"HP": 85, "Attack": 76, "Defense": 64, "Sp. Attack": 45, "Sp. Defense": 55, "Speed": 90}
  },
  {
    "id": 163,
    "name": {"english": "Hoothoot", "japanese": "ホーホー", "chinese": "咕咕", "french": "Hoothoot"},
    "type": ["Normal", "Flying"],
    "base": {"HP": 60, "Attack": 30, "Defense": 30, "Sp. Attack": 36, "Sp. Defense": 56, "Speed": 50}
  },
  {
    "id": 164,
    "name": {"english": "Noctowl", "japanese": "ヨルノズク", "chinese": "猫头夜鹰", "french": "Noarfang"},
    "type": ["Normal", "Flying"],
    "base": {"HP": 100, "Attack": 50, "Defense": 50, "Sp. Attack": 86, "Sp. Defense": 96, "Speed": 70}
  },
  {
    "id": 165,
    "name": {"english": "Ledyba", "japanese": "レディバ", "chinese": "芭瓢虫", "french": "Coxy"},
    "type": ["Bug", "Flying"],
    "base": {"HP": 40, "Attack": 20, "Defense": 30, "Sp. Attack": 40, "Sp. Defense": 80, "Speed": 55}
  },
  {
    "id": 166,
    "name": {"english": "Ledian", "japanese": "レディアン", "chinese": "安瓢虫", "french": "Coxyclaque"},
    "type": ["Bug", "Flying"],
    "base": {"HP": 55, "Attack": 35, "Defense": 50, "Sp. Attack": 55, "Sp. Defense": 110, "Speed": 85}
  },
  {
    "id": 167,
    "name": {"english": "Spinarak", "japanese": "イトマル", "chinese": "圆丝蛛", "french": "Mimigal"},
    "type": ["Bug", "Poison"],
    "base": {"HP": 40, "Attack": 60, "Defense": 40, "Sp. Attack": 40, "Sp. Defense": 40, "Speed": 30}
  },
  {
    "id": 168,
    "name": {"english": "Ariados", "japanese": "アリアドス", "chinese": "阿利多斯", "french": "Migalos"},
    "type": ["Bug", "Poison"],
    "base": {"HP": 70, "Attack": 90, "Defense": 70, "Sp. Attack": 60, "Sp. Defense": 70, "Speed": 40}
  },
  {
    "id": 169,
    "name": {"english": "Crobat", "japanese": "クロバット", "chinese": "叉字蝠", "french": "Nostenfer"},
    "type": ["Poison", "Flying"],
    "base": {"HP": 85, "Attack": 90, "Defense": 80, "Sp. Attack": 70, "Sp. Defense": 80, "Speed": 130}
  },
  {
    "id": 170,
    "name": {"english": "Chinchou", "japanese": "チョンチー", "chinese": "灯笼鱼", "french": "Loupio"},
    "type": ["Water", "Electric"],
    "base": {"HP": 75, "Attack": 38, "Defense": 38, "Sp. Attack": 56, "Sp. Defense": 56, "Speed": 67}
  },
  {
    "id": 171,
    "name": {"english": "Lanturn", "japanese": "ランターン", "chinese": "电灯怪", "french": "Lanturn"},
    "type": ["Water", "Electric"],
    "base": {"HP": 125, "Attack": 58, "Defense": 58, "Sp. Attack": 76, "Sp. Defense": 76, "Speed": 67}
  },
  {
    "id": 172,
    "name": {"english": "Pichu", "japanese": "ピチュー", "chinese": "皮丘", "french": "Pichu"},
    "type": ["Electric"],
    "base": {"HP": 20, "Attack": 40, "Defense": 15, "Sp. Attack": 35, "Sp. Defense": 35, "Speed": 60}
  },
  {
    "id": 173,
    "name": {"english": "Cleffa", "japanese": "ピィ", "chinese": "皮宝宝", "french": "Mélo"},
    "type": ["Fairy"],
    "base": {"HP": 50, "Attack": 25, "Defense": 28, "Sp. Attack": 45, "Sp. Defense": 55, "Speed": 15}
  },
  {
    "id": 174,
    "name": {"english": "Igglybuff", "japanese": "ププリン", "chinese": "宝宝丁", "french": "Toudoudou"},
    "type": ["Normal", "Fairy"],
    "base": {"HP": 90, "Attack": 30, "Defense": 15, "Sp. Attack": 40, "Sp. Defense": 20, "Speed": 15}
  },
  {
    "id": 175,
    "name": {"english": "Togepi", "japanese": "トゲピー", "chinese": "波克比", "french": "Togepi"},
    "type": ["Fairy"],
    "base": {"HP": 35, "Attack": 20, "Defense": 65, "Sp. Attack": 40, "Sp. Defense": 65, "Speed": 20}
  },
  {
    "id": 176,
    "name": {"english": "Togetic", "japanese": "トゲチック", "chinese": "波克基古", "french": "Togetic"},
    "type": ["Fairy", "Flying"],
    "base": {"HP": 55, "Attack": 40, "Defense": 85, "Sp. Attack": 80, "Sp. Defense": 105, "Speed": 40}
  },
  {
    "id": 177,
    "name": {"english": "Natu", "japanese": "ネイティ", "chinese": "天然雀", "french": "Natu"},
    "type": ["Psychic", "Flying"],
    "base": {"HP": 40, "Attack": 50, "Defense": 45, "Sp. Attack": 70, "Sp. Defense": 45, "Speed": 70}
  },
  {
    "id": 178,
    "name": {"english": "Xatu", "japanese": "ネイティオ", "chinese": "天然鸟", "french": "Xatu"},
    "type": ["Psychic", "Flying"],
    "base": {"HP": 65, "Attack": 75, "Defense": 70, "Sp. Attack": 95, "Sp. Defense": 70, "Speed": 95}
  },
  {
    "id": 179,
    "name": {"english": "Mareep", "japanese": "メリープ", "chinese": "咩利羊", "french": "Wattouat"},
    "type": ["Electric"],
    "base": {"HP": 55, "Attack": 40, "Defense": 40, "Sp. Attack": 65, "Sp. Defense": 45, "Speed": 35}
  },
  {
    "id": 180,
    "name": {"english": "Flaaffy", "japanese": "モココ", "chinese": "茸茸羊", "french": "Lainergie"},
    "type": ["Electric"],
    "base": {"HP": 70, "Attack": 55, "Defense": 55, "Sp. Attack": 80, "Sp. Defense": 60, "Speed": 45}
  },
  {
    "id": 181,
    "name": {"english": "Ampharos", "japanese": "デンリュウ", "chinese": "电龙", "french": "Pharamp"},
    "type": ["Electric"],
    "base": {"HP": 90, "Attack": 75, "Defense": 85, "Sp. Attack": 115, "Sp. Defense": 90, "Speed": 55}
  },
  {
    "id": 182,
    "name": {"english": "Bellossom", "japanese": "キレイハナ", "chinese": "美丽花", "french": "Joliflor"},
    "type": ["Grass"],
    "base": {"HP": 75, "Attack": 80, "Defense": 95, "Sp. Attack": 90, "Sp. Defense": 100, "Speed": 50}
  },
  {
    "id": 183,
    "name": {"english": "Marill", "japanese": "マリル", "chinese": "玛力露", "french": "Marill"},
    "type": ["Water", "Fairy"],
    "base": {"HP": 70, "Attack": 20, "Defense": 50, "Sp. Attack": 20, "Sp. Defense": 50, "Speed": 40}
  },
  {
    "id": 184,
    "name": {"english": "Azumarill", "japanese": "マリルリ", "chinese": "玛力露丽", "french": "Azumarill"},
    "type": ["Water", "Fairy"],
    "base": {"HP": 100, "Attack": 50, "Defense": 80, "Sp. Attack": 60, "Sp. Defense": 80, "Speed": 50}
  },
  {
    "id": 185,
    "name": {"english": "Sudowoodo", "japanese": "ウソッキー", "chinese": "树才怪‎", "french": "Simularbre"},
    "type": ["Rock"],
    "base": {"HP": 70, "Attack": 100, "Defense": 115, "Sp. Attack": 30, "Sp. Defense": 65, "Speed": 30}
  },
  {
    "id": 186,
    "name": {"english": "Politoed", "japanese": "ニョロトノ", "chinese": "蚊香蛙皇", "french": "Tarpaud"},
    "type": ["Water"],
    "base": {"HP": 90, "Attack": 75, "Defense": 75, "Sp. Attack": 90, "Sp. Defense": 100, "Speed": 70}
  },
  {
    "id": 187,
    "name": {"english": "Hoppip", "japanese": "ハネッコ", "chinese": "毽子草", "french": "Granivol"},
    "type": ["Grass", "Flying"],
    "base": {"HP": 35, "Attack": 35, "Defense": 40, "Sp. Attack": 35, "Sp. Defense": 55, "Speed": 50}
  },
  {
    "id": 188,
    "name": {"english": "Skiploom", "japanese": "ポポッコ", "chinese": "毽子花", "french": "Floravol"},
    "type": ["Grass", "Flying"],
    "base": {"HP": 55, "Attack": 45, "Defense": 50, "Sp. Attack": 45, "Sp. Defense": 65, "Speed": 80}
  },
  {
    "id": 189,
    "name": {"english": "Jumpluff", "japanese": "ワタッコ", "chinese": "毽子棉", "french": "Cotovol"},
    "type": ["Grass", "Flying"],
    "base": {"HP": 75, "Attack": 55, "Defense": 70, "Sp. Attack": 55, "Sp. Defense": 95, "Speed": 110}
  },
  {
    "id": 190,
    "name": {"english": "Aipom", "japanese": "エイパム", "chinese": "长尾怪手", "french": "Capumain"},
    "type": ["Normal"],
    "base": {"HP": 55, "Attack": 70, "Defense": 55, "Sp. Attack": 40, "Sp. Defense": 55, "Speed": 85}
  },
  {
    "id": 191,
    "name": {"english": "Sunkern", "japanese": "ヒマナッツ", "chinese": "向日种子", "french": "Tournegrin"},
    "type": ["Grass"],
    "base": {"HP": 30, "Attack": 30, "Defense": 30, "Sp. Attack": 30, "Sp. Defense": 30, "Speed": 30}
  },
  {
    "id": 192,
    "name": {"english": "Sunflora", "japanese": "キマワリ", "chinese": "向日花怪", "french": "Héliatronc"},
    "type": ["Grass"],
    "base": {"HP": 75, "Attack": 75, "Defense": 55, "Sp. Attack": 105, "Sp. Defense": 85, "Speed": 30}
  },
  {
    "id": 193,
    "name": {"english": "Yanma", "japanese": "ヤンヤンマ", "chinese": "蜻蜻蜓", "french": "Yanma"},
    "type": ["Bug", "Flying"],
    "base": {"HP": 65, "Attack": 65, "Defense": 45, "Sp. Attack": 75, "Sp. Defense": 45, "Speed": 95}
  },
  {
    "id": 194,
    "name": {"english": "Wooper", "japanese": "ウパー", "chinese": "乌波", "french": "Axoloto"},
    "type": ["Water", "Ground"],
    "base": {"HP": 55, "Attack": 45, "Defense": 45, "Sp. Attack": 25, "Sp. Defense": 25, "Speed": 15}
  },
  {
    "id": 195,
    "name": {"english": "Quagsire", "japanese": "ヌオー", "chinese": "沼王", "french": "Maraiste"},
    "type": ["Water", "Ground"],
    "base": {"HP": 95, "Attack": 85, "Defense": 85, "Sp. Attack": 65, "Sp. Defense": 65, "Speed": 35}
  },
  {
    "id": 196,
    "name": {"english": "Espeon", "japanese": "エーフィ", "chinese": "太阳伊布", "french": "Mentali"},
    "type": ["Psychic"],
    "base": {"HP": 65, "Attack": 65, "Defense": 60, "Sp. Attack": 130, "Sp. Defense": 95, "Speed": 110}
  },
  {
    "id": 197,
    "name": {"english": "Umbreon", "japanese": "ブラッキー", "chinese": "月亮伊布", "french": "Noctali"},
    "type": ["Dark"],
    "base": {"HP": 95, "Attack": 65, "Defense": 110, "Sp. Attack": 60, "Sp. Defense": 130, "Speed": 65}
  },
  {
    "id": 198,
    "name": {"english": "Murkrow", "japanese": "ヤミカラス", "chinese": "黑暗鸦", "french": "Cornèbre"},
    "type": ["Dark", "Flying"],
    "base": {"HP": 60, "Attack": 85, "Defense": 42, "Sp. Attack": 85, "Sp. Defense": 42, "Speed": 91}
  },
  {
    "id": 199,
    "name": {"english": "Slowking", "japanese": "ヤドキング", "chinese": "呆呆王", "french": "Roigada"},
    "type": ["Water", "Psychic"],
    "base": {"HP": 95, "Attack": 75, "Defense": 80, "Sp. Attack": 100, "Sp. Defense": 110, "Speed": 30}
  },
  {
    "id": 200,
    "name": {"english": "Misdreavus", "japanese": "ムウマ", "chinese": "梦妖", "french": "Feuforêve"},
    "type": ["Ghost"],
    "base": {"HP": 60, "Attack": 60, "Defense": 60, "Sp. Attack": 85, "Sp. Defense": 85, "Speed": 85}
  },
  {
    "id": 201,
    "name": {"english": "Unown", "japanese": "アンノーン", "chinese": "未知图腾", "french": "Zarbi"},
    "type": ["Psychic"],
    "base": {"HP": 48, "Attack": 72, "Defense": 48, "Sp. Attack": 72, "Sp. Defense": 48, "Speed": 48}
  },
  {
    "id": 202,
    "name": {"english": "Wobbuffet", "japanese": "ソーナンス", "chinese": "果然翁", "french": "Qulbutoké"},
    "type": ["Psychic"],
    "base": {"HP": 190, "Attack": 33, "Defense": 58, "Sp. Attack": 33, "Sp. Defense": 58, "Speed": 33}
  },
  {
    "id": 203,
    "name": {"english": "Girafarig", "japanese": "キリンリキ", "chinese": "麒麟奇", "french": "Girafarig"},
    "type": ["Normal", "Psychic"],
    "base": {"HP": 70, "Attack": 80, "Defense": 65, "Sp. Attack": 90, "Sp. Defense": 65, "Speed": 85}
  },
  {
    "id": 204,
    "name": {"english": "Pineco", "japanese": "クヌギダマ", "chinese": "榛果球", "french": "Pomdepik"},
    "type": ["Bug"],
    "base": {"HP": 50, "Attack": 65, "Defense": 90, "Sp. Attack": 35, "Sp. Defense": 35, "Speed": 15}
  },
  {
    "id": 205,
    "name": {"english": "Forretress", "japanese": "フォレトス", "chinese": "佛烈托斯", "french": "Foretress"},
    "type": ["Bug", "Steel"],
    "base": {"HP": 75, "Attack": 90, "Defense": 140, "Sp. Attack": 60, "Sp. Defense": 60, "Speed": 40}
  },
  {
    "id": 206,
    "name": {"english": "Dunsparce", "japanese": "ノコッチ", "chinese": "土龙弟弟", "french": "Insolourdo"},
    "type": ["Normal"],
    "base": {"HP": 100, "Attack": 70, "Defense": 70, "Sp. Attack": 65, "Sp. Defense": 65, "Speed": 45}
  },
  {
    "id": 207,
    "name": {"english": "Gligar", "japanese": "グライガー", "chinese": "天蝎", "french": "Scorplane"},
    "type": ["Ground", "Flying"],
    "base": {"HP": 65, "Attack": 75, "Defense": 105, "Sp. Attack": 35, "Sp. Defense": 65, "Speed": 85}
  },
  {
    "id": 208,
    "name": {"english": "Steelix", "japanese": "ハガネール", "chinese": "大钢蛇", "french": "Steelix"},
    "type": ["Steel", "Ground"],
    "base": {"HP": 75, "Attack": 85, "Defense": 200, "Sp. Attack": 55, "Sp. Defense": 65, "Speed": 30}
  },
  {
    "id": 209,
    "name": {"english": "Snubbull", "japanese": "ブルー", "chinese": "布鲁", "french": "Snubbull"},
    "type": ["Fairy"],
    "base": {"HP": 60, "Attack": 80, "Defense": 50, "Sp. Attack": 40, "Sp. Defense": 40, "Speed": 30}
  },
  {
    "id": 210,
    "name": {"english": "Granbull", "japanese": "グランブル", "chinese": "布鲁皇", "french": "Granbull"},
    "type": ["Fairy"],
    "base": {"HP": 90, "Attack": 120, "Defense": 75, "Sp. Attack": 60, "Sp. Defense": 60, "Speed": 45}
  },
  {
    "id": 211,
    "name": {"english": "Qwilfish", "japanese": "ハリーセン", "chinese": "千针鱼", "french": "Qwilfish"},
    "type": ["Water", "Poison"],
    "base": {"HP": 65, "Attack": 95, "Defense": 85, "Sp. Attack": 55, "Sp. Defense": 55, "Speed": 85}
  },
  {
    "id": 212,
    "name": {"english": "Scizor", "japanese": "ハッサム", "chinese": "巨钳螳螂", "french": "Cizayox"},
    "type": ["Bug", "Steel"],
    "base": {"HP": 70, "Attack": 130, "Defense": 100, "Sp. Attack": 55, "Sp. Defense": 80, "Speed": 65}
  },
  {
    "id": 213,
    "name": {"english": "Shuckle", "japanese": "ツボツボ", "chinese": "壶壶", "french": "Caratroc"},
    "type": ["Bug", "Rock"],
    "base": {"HP": 20, "Attack": 10, "Defense": 230, "Sp. Attack": 10, "Sp. Defense": 230, "Speed": 5}
  },
  {
    "id": 214,
    "name": {"english": "Heracross", "japanese": "ヘラクロス", "chinese": "赫拉克罗斯", "french": "Scarhino"},
    "type": ["Bug", "Fighting"],
    "base": {"HP": 80, "Attack": 125, "Defense": 75, "Sp. Attack": 40, "Sp. Defense": 95, "Speed": 85}
  },
  {
    "id": 215,
    "name": {"english": "Sneasel", "japanese": "ニューラ", "chinese": "狃拉", "french": "Farfuret"},
    "type": ["Dark", "Ice"],
    "base": {"HP": 55, "Attack": 95, "Defense": 55, "Sp. Attack": 35, "Sp. Defense": 75, "Speed": 115}
  },
  {
    "id": 216,
    "name": {"english": "Teddiursa", "japanese": "ヒメグマ", "chinese": "熊宝宝", "french": "Teddiursa"},
    "type": ["Normal"],
    "base": {"HP": 60, "Attack": 80, "Defense": 50, "Sp. Attack": 50, "Sp. Defense": 50, "Speed": 40}
  },
  {
    "id": 217,
    "name": {"english": "Ursaring", "japanese": "リングマ", "chinese": "圈圈熊", "french": "Ursaring"},
    "type": ["Normal"],
    "base": {"HP": 90, "Attack": 130, "Defense": 75, "Sp. Attack": 75, "Sp. Defense": 75, "Speed": 55}
  },
  {
    "id": 218,
    "name": {"english": "Slugma", "japanese": "マグマッグ", "chinese": "熔岩虫", "french": "Limagma"},
    "type": ["Fire"],
    "base": {"HP": 40, "Attack": 40, "Defense": 40, "Sp. Attack": 70, "Sp. Defense": 40, "Speed": 20}
  },
  {
    "id": 219,
    "name": {"english": "Magcargo", "japanese": "マグカルゴ", "chinese": "熔岩蜗牛", "french": "Volcaropod"},
    "type": ["Fire", "Rock"],
    "base": {"HP": 60, "Attack": 50, "Defense": 120, "Sp. Attack": 90, "Sp. Defense": 80, "Speed": 30}
  },
  {
    "id": 220,
    "name": {"english": "Swinub", "japanese": "ウリムー", "chinese": "小山猪", "french": "Marcacrin"},
    "type": ["Ice", "Ground"],
    "base": {"HP": 50, "Attack": 50, "Defense": 40, "Sp. Attack": 30, "Sp. Defense": 30, "Speed": 50}
  },
  {
    "id": 221,
    "name": {"english": "Piloswine", "japanese": "イノムー", "chinese": "长毛猪", "french": "Cochignon"},
    "type": ["Ice", "Ground"],
    "base": {"HP": 100, "Attack": 100, "Defense": 80, "Sp. Attack": 60, "Sp. Defense": 60, "Speed": 50}
  },
  {
    "id": 222,
    "name": {"english": "Corsola", "japanese": "サニーゴ", "chinese": "太阳珊瑚", "french": "Corayon"},
    "type": ["Water", "Rock"],
    "base": {"HP": 65, "Attack": 55, "Defense": 95, "Sp. Attack": 65, "Sp. Defense": 95, "Speed": 35}
  },
  {
    "id": 223,
    "name": {"english": "Remoraid", "japanese": "テッポウオ", "chinese": "铁炮鱼", "french": "Rémoraid"},
    "type": ["Water"],
    "base": {"HP": 35, "Attack": 65, "Defense": 35, "Sp. Attack": 65, "Sp. Defense": 35, "Speed": 65}
  },
  {
    "id": 224,
    "name": {"english": "Octillery", "japanese": "オクタン", "chinese": "章鱼桶", "french": "Octillery"},
    "type": ["Water"],
    "base": {"HP": 75, "Attack": 105, "Defense": 75, "Sp. Attack": 105, "Sp. Defense": 75, "Speed": 45}
  },
  {
    "id": 225,
    "name": {"english": "Delibird", "japanese": "デリバード", "chinese": "信使鸟", "french": "Cadoizo"},
    "type": ["Ice", "Flying"],
    "base": {"HP": 45, "Attack": 55, "Defense": 45, "Sp. Attack": 65, "Sp. Defense": 45, "Speed": 75}
  },
  {
    "id": 226,
    "name": {"english": "Mantine", "japanese": "マンタイン", "chinese": "巨翅飞鱼", "french": "Démanta"},
    "type": ["Water", "Flying"],
    "base": {"HP": 85, "Attack": 40, "Defense": 70, "Sp. Attack": 80, "Sp. Defense": 140, "Speed": 70}
  },
  {
    "id": 227,
    "name": {"english": "Skarmory", "japanese": "エアームド", "chinese": "盔甲鸟", "french": "Airmure"},
    "type": ["Steel", "Flying"],
    "base": {"HP": 65, "Attack": 80, "Defense": 140, "Sp. Attack": 40, "Sp. Defense": 70, "Speed": 70}
  },
  {
    "id": 228,
    "name": {"english": "Houndour", "japanese": "デルビル", "chinese": "戴鲁比", "french": "Malosse"},
    "type": ["Dark", "Fire"],
    "base": {"HP": 45, "Attack": 60, "Defense": 30, "Sp. Attack": 80, "Sp. Defense": 50, "Speed": 65}
  },
  {
    "id": 229,
    "name": {"english": "Houndoom", "japanese": "ヘルガー", "chinese": "黑鲁加", "french": "Démolosse"},
    "type": ["Dark", "Fire"],
    "base": {"HP": 75, "Attack": 90, "Defense": 50, "Sp. Attack": 110, "Sp. Defense": 80, "Speed": 95}
  },
  {
    "id": 230,
    "name": {"english": "Kingdra", "japanese": "キングドラ", "chinese": "刺龙王", "french": "Hyporoi"},
    "type": ["Water", "Dragon"],
    "base": {"HP": 75, "Attack": 95, "Defense": 95, "Sp. Attack": 95, "Sp. Defense": 95, "Speed": 85}
  },
  {
    "id": 231,
    "name": {"english": "Phanpy", "japanese": "ゴマゾウ", "chinese": "小小象", "french": "Phanpy"},
    "type": ["Ground"],
    "base": {"HP": 90, "Attack": 60, "Defense": 60, "Sp. Attack": 40, "Sp. Defense": 40, "Speed": 40}
  },
  {
    "id": 232,
    "name": {"english": "Donphan", "japanese": "ドンファン", "chinese": "顿甲", "french": "Donphan"},
    "type": ["Ground"],
    "base": {"HP": 90, "Attack": 120, "Defense": 120, "Sp. Attack": 60, "Sp. Defense": 60, "Speed": 50}
  },
  {
    "id": 233,
    "name": {"english": "Porygon2", "japanese": "ポリゴン２", "chinese": "多边兽Ⅱ", "french": "Porygon2"},
    "type": ["Normal"],
    "base": {"HP": 85, "Attack": 80, "Defense": 90, "Sp. Attack": 105, "Sp. Defense": 95, "Speed": 60}
  },
  {
    "id": 234,
    "name": {"english": "Stantler", "japanese": "オドシシ", "chinese": "惊角鹿", "french": "Cerfrousse"},
    "type": ["Normal"],
    "base": {"HP": 73, "Attack": 95, "Defense": 62, "Sp. Attack": 85, "Sp. Defense": 65, "Speed": 85}
  },
  {
    "id": 235,
    "name": {"english": "Smeargle", "japanese": "ドーブル", "chinese": "图图犬", "french": "Queulorior"},
    "type": ["Normal"],
    "base": {"HP": 55, "Attack": 20, "Defense": 35, "Sp. Attack": 20, "Sp. Defense": 45, "Speed": 75}
  },
  {
    "id": 236,
    "name": {"english": "Tyrogue", "japanese": "バルキー", "chinese": "无畏小子", "french": "Debugant"},
    "type": ["Fighting"],
    "base": {"HP": 35, "Attack": 35, "Defense": 35, "Sp. Attack": 35, "Sp. Defense": 35, "Speed": 35}
  },
  {
    "id": 237,
    "name": {"english": "Hitmontop", "japanese": "カポエラー", "chinese": "战舞郎", "french": "Kapoera"},
    "type": ["Fighting"],
    "base": {"HP": 50, "Attack": 95, "Defense": 95, "Sp. Attack": 35, "Sp. Defense": 110, "Speed": 70}
  },
  {
    "id": 238,
    "name": {"english": "Smoochum", "japanese": "ムチュール", "chinese": "迷唇娃", "french": "Lippouti"},
    "type": ["Ice", "Psychic"],
    "base": {"HP": 45, "Attack": 30, "Defense": 15, "Sp. Attack": 85, "Sp. Defense": 65, "Speed": 65}
  },
  {
    "id": 239,
    "name": {"english": "Elekid", "japanese": "エレキッド", "chinese": "电击怪", "french": "Élekid"},
    "type": ["Electric"],
    "base": {"HP": 45, "Attack": 63, "Defense": 37, "Sp. Attack": 65, "Sp. Defense": 55, "Speed": 95}
  },
  {
    "id": 240,
    "name": {"english": "Magby", "japanese": "ブビィ", "chinese": "鸭嘴宝宝", "french": "Magby"},
    "type": ["Fire"],
    "base": {"HP": 45, "Attack": 75, "Defense": 37, "Sp. Attack": 70, "Sp. Defense": 55, "Speed": 83}
  },
  {
    "id": 241,
    "name": {"english": "Miltank", "japanese": "ミルタンク", "chinese": "大奶罐", "french": "Écrémeuh"},
    "type": ["Normal"],
    "base": {"HP": 95, "Attack": 80, "Defense": 105, "Sp. Attack": 40, "Sp. Defense": 70, "Speed": 100}
  },
  {
    "id": 242,
    "name": {"english": "Blissey", "japanese": "ハピナス", "chinese": "幸福蛋", "french": "Leuphorie"},
    "type": ["Normal"],
    "base": {"HP": 255, "Attack": 10, "Defense": 10, "Sp. Attack": 75, "Sp. Defense": 135, "Speed": 55}
  },
  {
    "id": 243,
    "name": {"english": "Raikou", "japanese": "ライコウ", "chinese": "雷公", "french": "Raikou"},
    "type": ["Electric"],
    "base": {"HP": 90, "Attack": 85, "Defense": 75, "Sp. Attack": 115, "Sp. Defense": 100, "Speed": 115}
  },
  {
    "id": 244,
    "name": {"english": "Entei", "japanese": "エンテイ", "chinese": "炎帝", "french": "Entei"},
    "type": ["Fire"],
    "base": {"HP": 115, "Attack": 115, "Defense": 85, "Sp. Attack": 90, "Sp. Defense": 75, "Speed": 100}
  },
  {
    "id": 245,
    "name": {"english": "Suicune", "japanese": "スイクン", "chinese": "水君", "french": "Suicune"},
    "type": ["Water"],
    "base": {"HP": 100, "Attack": 75, "Defense": 115, "Sp. Attack": 90, "Sp. Defense": 115, "Speed": 85}
  },
  {
    "id": 246,
    "name": {"english": "Larvitar", "japanese": "ヨーギラス", "chinese": "幼基拉斯", "french": "Embrylex"},
    "type": ["Rock", "Ground"],
    "base": {"HP": 50, "Attack": 64, "Defense": 50, "Sp. Attack": 45, "Sp. Defense": 50, "Speed": 41}
  },
  {
    "id": 247,
    "name": {"english": "Pupitar", "japanese": "サナギラス", "chinese": "沙基拉斯", "french": "Ymphect"},
    "type": ["Rock", "Ground"],
    "base": {"HP": 70, "Attack": 84, "Defense": 70, "Sp. Attack": 65, "Sp. Defense": 70, "Speed": 51}
  },
  {
    "id": 248,
    "name": {"english": "Tyranitar", "japanese": "バンギラス", "chinese": "班基拉斯", "french": "Tyranocif"},
    "type": ["Rock", "Dark"],
    "base": {"HP": 100, "Attack": 134, "Defense": 110, "Sp. Attack": 95, "Sp. Defense": 100, "Speed": 61}
  },
  {
    "id": 249,
    "name": {"english": "Lugia", "japanese": "ルギア", "chinese": "洛奇亚", "french": "Lugia"},
    "type": ["Psychic", "Flying"],
    "base": {"HP": 106, "Attack": 90, "Defense": 130, "Sp. Attack": 90, "Sp. Defense": 154, "Speed": 110}
  },
  {
    "id": 250,
    "name": {"english": "Ho-Oh", "japanese": "ホウオウ", "chinese": "凤王", "french": "Ho-Oh"},
    "type": ["Fire", "Flying"],
    "base": {"HP": 106, "Attack": 130, "Defense": 90, "Sp. Attack": 110, "Sp. Defense": 154, "Speed": 90}
  },
  {
    "id": 251,
    "name": {"english": "Celebi", "japanese": "セレビィ", "chinese": "时拉比", "french": "Celebi"},
    "type": ["Psychic", "Grass"],
    "base": {"HP": 100, "Attack": 100, "Defense": 100, "Sp. Attack": 100, "Sp. Defense": 100, "Speed": 100}
  }
];
