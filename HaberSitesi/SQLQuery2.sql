USE [NewsDb]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12.07.2021 16:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 12.07.2021 16:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserComment] [varchar](max) NULL,
	[NewsId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[News]    Script Date: 12.07.2021 16:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[Title] [varchar](100) NULL,
	[ImagePath] [varchar](100) NULL,
	[Date] [date] NULL,
	[Body] [varchar](max) NULL,
 CONSTRAINT [PK__News__3214EC07AF049079] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12.07.2021 16:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (1, N'Spor', N'Spor kategorisi')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (2, N'Ekonomi', N'Ekonomi ve gelişim')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (3, N'İş', N'İş kategorisi')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (4, N'Teknoloji', N'Teknoloji kategorisi')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (7, N'Futbol', N'Futbol')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [UserName], [UserComment], [NewsId]) VALUES (4, N'Ahmet Çınar', N'Çok güzel bir haber', 37)
INSERT [dbo].[Comments] ([Id], [UserName], [UserComment], [NewsId]) VALUES (5, N'fatih', N'Balıkçı çalışanlar için iyi bir haber', 33)
INSERT [dbo].[Comments] ([Id], [UserName], [UserComment], [NewsId]) VALUES (6, N'furkan', N'harika bir fırsat gerçekten', 35)
INSERT [dbo].[Comments] ([Id], [UserName], [UserComment], [NewsId]) VALUES (7, N'ahmet kara', N'deneme yorumu', 37)
INSERT [dbo].[Comments] ([Id], [UserName], [UserComment], [NewsId]) VALUES (8, N'furkan karakaş', N'deneme yorumu...', 34)
INSERT [dbo].[Comments] ([Id], [UserName], [UserComment], [NewsId]) VALUES (9, N'kulllanıcı', N'güzel haber', 28)
INSERT [dbo].[Comments] ([Id], [UserName], [UserComment], [NewsId]) VALUES (10, N'furkan baş', N'kötü haber gerçekten', 29)
INSERT [dbo].[Comments] ([Id], [UserName], [UserComment], [NewsId]) VALUES (11, N'mehmet karaaslan', N'güzel bir haber', 27)
INSERT [dbo].[Comments] ([Id], [UserName], [UserComment], [NewsId]) VALUES (12, N'yunus emre', N'çok güzel bir web site', 37)
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (23, 1, N'Fenerbahçe''de Abel Ferreira heyecanı!', N'0x0-son-dakika-transfer-haberleri-fenerbahcede-abel-ferreira-heyecani-1623274261813.jpg', CAST(0x9E420B00 AS Date), N'Fenerbahçe''de teknik direktör arayışı devam ediyor. Sarı-lacivertilerde Abel Ferreira favori duruma yükseldi. Yöneticiler, teklifte bulundukları Paulo Fonseca''nın Totttenham ile anlaşması üzerine diğer alternatiflere yöneldi. Palmeiras''la Copa America''yı kazanan Ferreira ön plana çıktı.

Sarı-lacivertlilerin gözdesi olan Portekizli hoca, Braga ve PAOK''ta iyi işler yaptı. Palmeiras''ta zirveye çıktı. Yeniden Avrupa''ya dönmek isteyen Ferreira, yüksek maaşlar talep etmiyor ve gittiği takımlarda büyük transferlere gerek görmedi. Eldeki oyuncu kadrosuyla en iyisini yapmaya çalışıyor.

Abel Ferreira''nın favori olduğu listedeki diğer adaylar ise Tedesco, Sousa ve Castro. Alman futbolunun yeni Klopp''u, Tuchel''i Domenico Tedesco. Taktik anlamda Almanya''da bile dahi olarak görülmesi avantaj. Fenerbahçe ile bambaşka bir seviyeye çıkıp, Avrupa''nın zirvesine yükselebileceği düşünülüyor.')
INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (24, 1, N'Hollanda''da Donny van de Beek, EURO 2020’de yok', N'752x395-hollandada-donny-van-de-beek-euro-2020de-yok-1623153606623.jpg', CAST(0x9C420B00 AS Date), N'Hollanda Futbol Federasyonundan yapılan açıklamada, Manchester United’da forma giyen 24 yaşındaki orta saha oyuncusunun şampiyonada görev alamayacağı belirtildi.

Teknik direktör Frank de Boer’un Van de Beek’in yerine başka bir ismi kadroya dahil etmeyeceği de aktarıldı.

Hollanda, EURO 2020’de C Grubu’nda Avusturya, Ukrayna ve Kuzey Makedonya ile karşılaşacak.')
INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (26, 1, N'Beşiktaş''ın Edin Dzeko transferinde sessiz bekleyiş', N'60bdbcdbae298bb30d1b6569.jpg', CAST(0x9C420B00 AS Date), N'Beşiktaş''ın golcü listesinin başlarında olan Roma''nın yıldız futbolcusu Edin Dzeko''da belirsizlik hakim. Tatilini Türkiye’de Marmaris’te sürdüren Boşnak yıldızla ilgili Roma’lı idarecilerle temasa geçen Siyah Beyazlılar, kiralama teklifinde bulunmuştu. Ancak Roma''da yaşanan teknik direktör değişikliği nedeniyle nasıl bir yapılanma olacağı merak konusu oldu.')
INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (27, 1, N'Altay SK | Mustafa Denizli ve yeni sezon açıklaması!', N'829x469-son-dakika-spor-haberi-altayda-mustafa-denizli-karari-yeni-sezonda-1623159908066.jpeg', CAST(0x9C420B00 AS Date), N'Altay SK Başkanı Özgür Ekmekçioğlu, D-Smart''ta yayınlanan Bol''ca Futbol programında Emre Bol ve Seçil Menteş''in sorularını yanıtladı. 18 yıl aranın ardından yeniden Süper Lig''e yükselen Altay SK''de Mustafa Denizli ile yola devam edilip edilmeyeceği merak konusu olurken Başkan Özgür Ekmekçioğlu, konuya dair önemli açıklamalarda bulundu. İşte Özgür Ekmekçioğlu''nun açıklamaları...')
INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (28, 4, N'Covid-19 ilaç denemeleri: Yapay organ dönemi başlıyor', N'SV-hfBU2xUGKcE_Vpso7mg.jpg', CAST(0x9C420B00 AS Date), N'İmmünoloji araştırmalarında yeni ilaç geliştirebilmek ve vücut mekanizmalarını tam olarak anlayabilmek için yüksek teknoloji gerektiren yöntemler üzerinde de çalıştıklarını kaydeden Prof. Dr. Unutmaz, 

"Aslında Covid öncesinde bu çalışmalara başladık ancak salgınla beraber biraz yavaşladı. Ama bugünlerde yeniden o çalışmalara geri döndük. Benim ana konum bağışıklık sistemi. Bağışıklık sisteminin birçok konuya etkisi var.

Örneğin son zamanlarda biz, kanser tedavisi üzerine çalışıyoruz. Yine bağışıklık sistemine, yani ‘içimizdeki orduya’, kanser hücrelerini nasıl tanıtabiliriz ve kansere karşı bu orduyu nasıl eğitebilir, nasıl programlayabiliriz diye bazı araştırmalarımız var. Buradaki stratejimiz, bağışıklık sisteminin ‘T hücrelerini’- komuta merkezi ya da keskin nişancılarda diyebiliriz bunlara- hastalardan alıyoruz, onları laboratuvar ortamında eğitip donatıyoruz, yani genetik olarak programlıyoruz ve bu hücreleri özellikle kanser hücrelerini tanıyacak hale getirip daha sonra bunları tekrar hastaya geri veriyoruz.

Bu şekilde çok etkili bir tedavi yöntemi elde ediyoruz. Ama tabii ki çalışmanın çoğu şu an laboratuvar düzeyinde devam ediyor” dedi.

')
INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (29, 4, N'ISS''te büyük tehlike: Uzay enkazı çarptı, istasyonda delik açıldı', N'PEp0QHhRBEWu8wsuRICO6w.jpg', CAST(0x9C420B00 AS Date), N'Kanada Uzay Ajansından (CSA) yapılan açıklamada, ajansın ürettiği ve operasyonlarını uzaktan yürüttüğü "Canadarm2" adı verilen robotik kolun dirsek kısmında 35 santimetre çapında bir delik açıldığı belirtildi. Açıklamada, "Yapılan analizlerde hasarın kolun eklemlerinde birini ve onun termal kılıfını etkilediği tespit edilmiştir. Hasar, kolun performansını etkilemeyecektir." ifadelerine yer verildi.  Radar takip sistemlerinden elde edilen verilere göre, Dünya yörüngesinde 10 santimetreden büyük yaklaşık 23 bin insan yapımı nesne kontrolsüz dolaşıyor.  Aşamalı fırlatma roketlerinin geride bırakılan kısımları, uydu ve teleskoplardan kopan parçalar, yörüngede çarpışan yapay cisimlerin kalıntıları ve hatta ISS''de görevli astronot ve kozmonotların uzay yürüyüşleri sırasında düşürdükleri şeyler yörüngedeki enkaz yığınına ekleniyor.')
INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (30, 4, N'Bosch otomobil çipi üretecek', N'AItBM1iNtEGLq4h1qR7fZg.jpg', CAST(0x9C420B00 AS Date), N'Teknoloji Grubu Bosch, Avrupa otomotiv endüstrisini olumsuz etkileyen otomobil belleği (çip) krizi sürecinde Almanya''nın Dresden kentinde 1 milyar euroyla tarihinin en büyük yatırımını yapıyor.

Avrupa Komisyonu Başkan Yardımcısı Margrethe Vestager Pazartesi günü yaptığı açıklamada, teknolojinin son özellikleriyle donatılmış böylesi bir fabrikanın "İnovasyonun beşiği olan Avrupa''nın rekabet gücünü artırmaya yardımcı olacağını" söyledi.

Pandemi nedeniyle dijital olarak gerçekleştirilen açılış töreninde Almanya Başbakanı Angela Merkel de bir konuşma yaptı. Merkel yerel yarı iletken sanayisinin "Almanya ve Avrupa''yı krize karşı daha dayanıklı yapmakla kalmayacak aynı zamanda büyüme için yeni fırsatlar sunacak" dedi.

Bosch Yönetim Kurulu Başkanı Volkmar Denner, "Bu yeni fabrika ile Bosch, Almanya‘nın yüksek teknoloji üretebileceğini bir kez daha gösteriyor" dedi. Denner, yarı iletken özelliğe sahip belleklerin üretiminde yapay zeka kullanılarak üretimin yeni bir aşamaya yükseltildiğini kaydetti.

Yılın ilk günlerinden itibaren bellek ithalatında yaşanan sıkıntılar Avrupa otomobil endüstrisinin Asya''daki seri çip üreticilerine büyük ölçüde bağımlı olduğunu ortaya koydu.

Bu nedenle Avrupa Birliği 2030 yılına kadar dünya çapında otomobil çipi üretimindeki payını iki katına çıkarmayı hedefliyor.

Ancak üretim tesisi inşasında Bosch''un katettiği süreç gözönüne alındığında fabrikanın kurulması ve ve üretime başlanmasının uzun bir süre aldığı görülüyor.')
INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (31, 2, N'Nakdi ücret desteği mayıs ödemeleri başladı', N'para-1481149_2.jpg', CAST(0x9C420B00 AS Date), N'Çalışma ve Sosyal Güvenlik Bakanlığı tarafından mayıs ayına ilişkin nakdi ücret desteği ödemeleri bugün yapılacak.
Mayıs ayına ilişkin nakdi ücret desteği ödemeleri, banka hesapları üzerinden gerçekleştirilecek.

Sistemde IBAN bilgisi eksik veya hatalı olanlar ise ödemelerini PTT aracılığıyla alacak.')
INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (32, 2, N'Gram altın ne kadar? Çeyrek altın 2021 fiyatı', N'60c044edd265a22090380209.jpg', CAST(0x9C420B00 AS Date), N'Altının gram fiyatı, güne yatay başlamasının ardından 526 lira seviyesinde işlem görüyor.

Dün, dolar kurundaki düşüşe paralel değer kaybeden altının gram fiyatı, günü önceki kapanışın yüzde 0,2 altında 525,9 liradan tamamladı.

Yeni güne yatay başlayan altının gram fiyatı, saat 10.20 itibarıyla önceki kapanışın hemen üzerinde 526,0 liradan işlem görüyor. Aynı dakikalarda çeyrek altın 863 lira, Cumhuriyet altını da 3.525 liradan satılıyor.

Altının ons fiyatı, şu dakikalarda önceki kapanışa göre yüzde 0,2 azalışla 1.896 dolardan alıcı buluyor.

Analistler, enflasyonist baskılar ve para politikalarının geleceğine ilişkin belirsizliklerle güçlenen dolar endeksinin altının ons fiyatını baskıladığını söyledi.

Bugün Avro Bölgesi''nde büyüme, Almanya''da ZEW endeksleri ve ABD''de dış ticaret dengesi verilerinin takip edileceğini ifade eden analistler, teknik açıdan ons altında 1.872 ve 1.855 doların destek, 1.910 doların direnç konumunda bulunduğunu kaydetti.')
INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (33, 2, N'Balıkçılara ödenen destek 2 katına çıktı', N'musilaj-dha-1548933_2.jpg', CAST(0x9C420B00 AS Date), N'Tarım ve Orman Bakanı Bekir Pakdemirli, Marmara Denizindeki müsilajdan etkilenen küçük balıkçı teknelerine destek miktarlarını açıkladı.

Marmara''daki müsilajın, çok miktarda balıkçı ağının denizlerde kaybolmasına ya da çıkarılamamasına yol açtığına dikkati çeken Pakdemirli, şunları kaydetti:

"Bu ağların çıkarılması için çalışma yürüteceğiz. Marmara''da küçük kıyı balıkçısına ödediğimiz destekleme miktarını 2 katına çıkardık. Teknelerin büyüklüğüne göre 2 bin lira ile 2 bin 900 lira arasında destek vereceğiz. Endüstriyel (büyük) balıkçılar için düşük faizli kredi ve borç erteleme çalışması yapıyoruz."')
INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (34, 3, N'TÜBİTAK personel alımı yapacak! İşte başvuru şartları', N'60bf6fdb67b0a91ae0087d07.jpg', CAST(0x9C420B00 AS Date), N'Türkiye Bilimsel ve Teknolojik Araştırma Kurumunun (TÜBİTAK), Resmi Gazete''de yayımlanan ilanına göre, TÜBİTAK''a 9 uzman-uzman yardımcısı, 41 aday araştırmacı ve 21 Ar-Ge personeli alımı yapılacak.

Başvurulara ilişkin gerekli koşullar ve süreçler kurumun internet sayfasının (www.tubitak.gov.tr) yanı sıra Çalışma ve Sosyal Güvenlik Bakanlığı ile Türkiye İş Kurumunun internet sitelerinden öğrenilebilecek.

Başvuruların 28 Haziran''a kadar TÜBİTAK İş Başvuru Sistemi (https://kariyer.tubitak.gov.tr) üzerinden gerçekleştirilmesi gerekiyor.')
INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (35, 3, N'İki ülkeden diploma fırsatı', N'AAKPkiS.jpg', CAST(0x9C420B00 AS Date), N'Türkiye’nin uluslararası öğrenci oranı en yüksek üniversitesi konumundaki Altınbaş Üniversitesi, Azerbaycan''ın önde gelen 4 üniversitesiyle bilim ve eğitim iş birliğinin arttırılması için iş birliği anlaşması imzaladı. Anlaşmayla öğrencilere aynı anda her iki ülkeden de diploma alma imkanı sağlanacak. Altınbaş Üniversitesi Rektörü Prof. Dr. Çağrı Erhan anlaşma hakkında şöyle konuştu:

ORTAK BİLİMSEL ÇALIŞMALAR
“Kendi alanlarındaki en iyi dört üniversiteyle karşılıklı kurumsal yarar adına eğitim ve araştırma faaliyetlerinde iş birliğine gideceğiz. Ortak bilimsel çalışmalar yürüteceğiz, konferanslar ve sempozyumlar düzenleyeceğiz, eğitim-öğretimde yaz okulu ve ortak diploma programları gibi ortak müfredat faaliyetlerinde bulunacağız.

 AKADEMİSYEN – ÖĞRENCİ DEĞİŞİMİ PROGRAMI
Lisans ve lisansüstü öğrenci ve akademisyen değişimi alanlarındaki iş birlikleriyle de kardeş ülke Azerbaycan ve Türkiye arasındaki ilişkiler pekişecektir. Üniversitemizin üzerinde yoğunlaştığı, büyük önem verdiği uluslararasılaşma konusunda bu tür anlaşmalar büyük önem arz ediyor. Bu bağlamda hem tarihsel hem de kültürel bağımız bulunan kardeş ülkemiz Azerbaycan ile yaptığımız bu tür uluslararası anlaşmalar, mahiyetinden dolayı ayrı bir öneme de sahip. Azerbaycan üniversitelerinin rektörleri de ortaya çıkacak iş birliklerinin sadece eğitim/öğretim alanında değil iki ülke arasında her alanda iş birliklerinin geliştirilmesine büyük katkı sağlayacağını söyledi.')
INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (37, 3, N'Mezun Öğrencilerimize Duyuru', N'mezun-ogrencilerimize-duyuru-14246640_local_sd.jpg', CAST(0xBE420B00 AS Date), N'Değerli Mezunumuz,Hazine ve Maliye Bakanlığı - Merkezi Finans ve İhale Birimi bünyesinde, farklı pozisyonlarda "Uzman Personel" istihdam edilecektir.
Değerli Mezunumuz,Hazine ve Maliye Bakanlığı - Merkezi Finans ve İhale Birimi bünyesinde, farklı pozisyonlarda "Uzman Personel" istihdam edilecektir.İlan detaylarına Kariyer Kapısı - Kamu İş İlanları (https://isealimkariyerkapisi. cbiko. gov. tr) üzerinden ulaşabilir ve başvuruda bulunabilirsiniz.Son başvuru tarihi: 16. 07. 2021Başarılar dileriz.')
INSERT [dbo].[News] ([Id], [CategoryId], [Title], [ImagePath], [Date], [Body]) VALUES (40, 3, N'Çok Ciddi Kaza !', N'kaza_5363.jpg', CAST(0x9F420B00 AS Date), N'Otomobil, çarpmanın şiddeti ile kullanılamaz hale geldi.

Sürücü Ş.G. ve yanındaki bir kişi ağır yaralı olarak hastaneye kaldırıldı.

SOLA DÖNÜŞ YAPMAYA ÇALIŞTI
Gözaltına alınan kamyon şoförü Y.U., karakoldaki işlemlerinin ardından serbest bırakıldı.

Güvenlik kamerasına yansıyan görüntülerde Ş.G.’nin hızla, karşı yönden gelen ve sola dönüş yapmaya çalışan kamyona çarptığı görüldü.')
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [Password]) VALUES (1, N'hakan', N'12345')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_News] FOREIGN KEY([NewsId])
REFERENCES [dbo].[News] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_News]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Categories]
GO
