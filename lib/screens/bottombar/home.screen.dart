import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_sustain/screens/bottombar/account.screen.dart';
import 'package:flutter_sustain/screens/bottombar/favorites_screen.dart';
import 'package:flutter_sustain/screens/bottombar/notification_screen.dart';

void main() => runApp(MaterialApp(
      home: HomeScreen(),
    ));

class HomeScreen extends StatelessWidget {
  get image => null;

  @override
  Widget build(BuildContext context) {
    var username = "Yasemin";
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 34, 73, 18),
                  Color.fromARGB(246, 161, 191, 106),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Merhaba $username",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Bul",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(
                                title: 'Sürdürülebilirlik neden önemlidir?',
                                text:
                                    'Sürdürülebilirlik, doğal kaynakların tükenmesini önlemek ve ekosistemlerin sağlığını korumak için hayati öneme sahiptir. Dünyanın sınırlı kaynakları üzerinde artan insan etkisi, iklim değişikliği, biyolojik çeşitlilik kaybı ve çevre kirliliği gibi ciddi sorunlara yol açmaktadır. Sürdürülebilirlik, bu sorunlara karşı kaynakların verimli ve akılcı kullanılmasını gerektirir, böylece gelecek nesillerin de bu kaynaklardan faydalanabilmesi sağlanır.\n\n'
                                    'Ekonomik ve sosyal boyutlarıyla sürdürülebilirlik, sadece çevresel koruma ile sınırlı değildir. Uzun vadeli ekonomik büyüme ve toplumsal refah, sürdürülebilir iş uygulamaları ve politikaları ile desteklenir. Yeşil teknolojiler ve yenilenebilir enerji kaynaklarının kullanımı, hem çevresel ayak izini azaltır hem de ekonomiye yeni fırsatlar sunar. Aynı zamanda, toplumsal eşitlik ve adaletin sağlanması, herkesin temel ihtiyaçlarına erişimini garanti altına alarak daha adil ve yaşanabilir bir dünya oluşturur.')));
                  },
                  child: blogPost(
                    '.dart_tool/images/sustainable.png',
                    'Sürdürülebilirlik neden önemlidir?',
                    'Sürdürülebilirlik, gelecek nesillerin ihtiyaçlarını tehlikeye atmadan bugünün ihtiyaçlarını karşılamaktır.',
                  ),
                ),
                SizedBox(height: 35),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                              title: 'Kimyasal ürünler hakkında',
                              text:
                                  'Kimyasal ürünler, çevre ve insan sağlığı üzerinde ciddi olumsuz etkilere sahip olabilir. Tarımda kullanılan pestisitler ve gübreler, su kaynaklarını kirleterek ekosistemlere zarar verirken, plastikler ve diğer sentetik malzemeler, biyolojik çeşitliliği tehdit eden kirliliğe yol açar. Ayrıca, kimyasal ürünlerin üretimi ve kullanımı sırasında açığa çıkan toksik maddeler, hava ve su kalitesini düşürerek insan sağlığını tehdit eder. Sürdürülebilirlik ise, bu zararlı etkileri en aza indirgemek amacıyla, doğa dostu alternatifler ve yenilikçi teknolojiler geliştirilmesini teşvik eder. Bu sayede, çevresel ayak izimizi azaltarak hem ekosistemlerin korunmasını hem de toplumların uzun vadeli refahını sağlar.')),
                    );
                  },
                  child: blogPost(
                    '.dart_tool/images/chemical.png',
                    'Kimyasal ürünler hakkında ',
                    'Kimyasal temizlik ürünleri, görünmeyen tehlikelerle dolu olup sağlığımızı ve gezegenimizi sessizce tehdit ediyor.',
                  ),
                ),
                SizedBox(height: 35),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        var detailScreen = DetailScreen(
                            title: 'Doğal Temizlik Malzemeleri',
                            text:
                                'Kimyasallardan uzak bir yaşam için doğanın gücünü keşfedin. İşte temizlikte kullanabileceğiniz alternatif ürünler:\n\n'
                                'Beyaz Sirke: Yüzey temizliği, cam temizliği ve kireç çözücü olarak kullanılır. Sirke, antibakteriyel özelliklere sahiptir ve kötü kokuları giderir.'
                                '\n\nKarbonat (Sodyum Bikarbonat): Çok amaçlı temizleyici olarak kullanılır. Halı temizliği, lavabo tıkanıklıklarının açılması ve kötü kokuların giderilmesinde etkilidir.'
                                '\n\nLimon Suyu: Doğal bir dezenfektan ve yağ çözücüdür. Mutfak yüzeylerinde, banyo temizliğinde ve pas lekelerinin giderilmesinde kullanılabilir.'
                                '\n\nZeytinyağı: Ahşap mobilyaların parlatılması ve deri yüzeylerin temizlenmesi için kullanılır. Zeytinyağı, doğal bir nemlendirici olarak da etkilidir.'
                                '\n\nUçucu Yağlar: Çay ağacı yağı, lavanta yağı, limon yağı gibi uçucu yağlar, antibakteriyel ve antifungal özelliklere sahiptir. Temizlik malzemelerine hoş koku eklemek ve dezenfeksiyon sağlamak için kullanılabilir.'
                                '\n\nLavanta Yağı: Doğal bir dezenfektan olan lavanta yağı, temizlik sularına eklenerek yüzeyleri temizler ve hoş bir koku bırakır. Ayrıca çamaşırların yumuşak kalmasını sağlar.'
                                '\n\nBu uçucu yağlar, doğal temizlik malzemeleri olarak kullanıldıklarında hem etkili bir temizlik sağlar hem de kimyasal içermeyen doğal bir seçenek sunarlar. Her bir yağın kendine özgü kokusu ve özellikleri, temizlikte farklı alanlarda kullanılmasına olanak tanır.');
                        return detailScreen;
                      }),
                    );
                  },
                  child: blogPost(
                    '.dart_tool/images/essential1.png',
                    'Doğal Temizlik Malzemeleri',
                    'Kimyasallardan uzak bir yaşam için doğanın gücünü keşfedin.',
                  ),
                ),
                SizedBox(height: 35),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                              title: 'Doğal Tarifler',
                              text:
                                  'Doğanın sunduğu ürünlerle yapılan tariflerle sağlıklı ve çevre dostu bir yaşam sürün.İşte doğal ürünler kullanılarak yapılabilecek bazı temizlik tarifleri:'
                                  '\n\nDoğal Çok Amaçlı Temizleyici: 1 su bardağı su, 1 su bardağı sirke, 10 damla çay ağacı yağı(isteğe bağlı, antibakteriyel için)'
                                  '\n\nHazırlanışı:İlk olarak bir sprey şişesine suyu ve sirkeyi ekleyin ve isteğe bağlı olarak çay ağacı yağı ekleyin sonra karışımı iyice çalkalayın ve kullanıma hazır hale getirin.'
                                  '\n\nKullanım yerleri:Mutfak tezgahları, lavabo, banyo yüzeyleri gibi temizlik yapılacak alanlarda kullanabilirsiniz.'
                                  '\n\n\nDoğal Cam Temizleyici: 1 su bardağı su, 1 su bardağı sirke, 1 yemek kaşığı limon suyu ve 5-10 damla lavanta yağı(isteğe bağlı, hoş koku için)'
                                  '\n\nHazırlanışı:Bir sprey şişesine suyu, sirkeyi ve limon suyunu ekleyin.İsteğe bağlı olarak lavanta yağı ekleyin.Karışımı iyice çalkalayın ve cam yüzeyleri temizlemek için kullanın.'
                                  '\n\nKullanım yerleri:Gazete kağıdı veya mikrofiber bez ile camları silin, temiz ve parlatılmış bir yüzey elde edin.'
                                  '\n\n\nBu tarifler doğal malzemeler kullanılarak yapılan etkili temizlik solüsyonları sunar. Kullanırken dikkat edilmesi gereken nokta, herhangi bir alerjiye duyarlıysanız malzemeleri önceden test etmek ve kullanım sırasında iyi havalandırılmış bir alanı tercih etmektir.')),
                    );
                  },
                  child: blogPost(
                    '.dart_tool/images/doğal.png',
                    'Doğal Tarifler',
                    'Doğanın sunduğu ürünlerle yapılan tariflerle sağlıklı ve çevre dostu bir yaşam sürün.',
                  ),
                ),
                SizedBox(height: 35),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.black,
          color: Color.fromARGB(255, 47, 71, 2),
          height: 50,
          items: <Widget>[
            Icon(Icons.home, size: 25, color: Colors.white),
            Icon(Icons.favorite, size: 25, color: Colors.white),
            Icon(Icons.person, size: 25, color: Colors.white),
            Icon(Icons.notifications, size: 25, color: Colors.white),
          ],
          onTap: (index) {
            if (index == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            }
            if (index == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FavoritesScreen()));
            }
            if (index == 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccountScreen()));
            }
            if (index == 3) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationScreen()));
            }
          }),
    );
  }

  Widget blogPost(String imagePath, String title, String description) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(246, 203, 218, 171),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  images(String s) {}
}

class DetailScreen extends StatelessWidget {
  final String title;
  final String text;

  DetailScreen({required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(text),
      ),
    );
  }
}
