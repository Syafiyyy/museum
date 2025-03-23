import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class GalleryItem {
  final String title;
  final String image;
  final String? description;
  final String? date;
  final String? origin;
  final String? conservationNotes;

  const GalleryItem({
    required this.title,
    required this.image,
    this.description,
    this.date,
    this.origin,
    this.conservationNotes,
  });
}

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  static final List<GalleryItem> galleryItems = [
    GalleryItem(
      title: 'China Gallery',
      image: 'assets/images/China_Gallery.jpg',
      description: 'The China Gallery showcases the rich history of Islam in China, featuring unique calligraphic works, cloisonné wares, and ceramics. Notable items include Ming dynasty blue-and-white wares with Islamic inscriptions and calligraphic scrolls that blend Chinese and Islamic artistic traditions.',
      date: null,
      origin: null,
      conservationNotes: 'The delicate porcelain and ceramic pieces in this gallery require special humidity control (40-50%) and minimal light exposure to prevent fading of the cobalt blue pigments. Artifacts are rotated every six months to limit light damage, and specialized mounting systems protect items from vibration damage.',
    ),
    GalleryItem(
      title: 'Coin & Seal Gallery',
      image: 'assets/images/coin_gallery.jpg',
      description: 'This gallery presents an extensive collection of Islamic coins and seals, showcasing the evolution of Islamic currency and official documentation. From early Umayyad and Abbasid coins to intricate seals made of jade, agate, and carnelian, each piece tells a story of Islamic civilization\'s rich history.',
      date: null,
      origin: null,
      conservationNotes: 'Metal coins undergo regular desalination treatments to prevent bronze disease and corrosion. Seals made of semi-precious stones are stored in acid-free containers when not on display. The collection is handled with nitrile gloves to prevent oils from damaging the metal surfaces.',
    ),
    GalleryItem(
      title: 'India Gallery',
      image: 'assets/images/india_gallery.jpg',
      description: 'The India Gallery highlights the magnificent Mughal era (1526-1828), featuring exquisite miniature paintings, jewel-encrusted weapons, jade artifacts, and opulent metalwork. The gallery showcases the unique synthesis of Central Asian and Indian cultural elements in Islamic art.',
      date: null,
      origin: null,
      conservationNotes: 'Mughal miniature paintings require strict light control (50 lux maximum) and are displayed on rotation. Organic pigments used in these works are particularly susceptible to light damage. Jeweled artifacts undergo quarterly inspections to check for loose settings, with specialized gemologists conducting annual condition assessments.',
    ),
    GalleryItem(
      title: 'Jewellery Gallery',
      image: 'assets/images/jewelry_gallery.jpg',
      description: 'Discover the splendor of Islamic jewelry, from tribal Turkoman silver pieces to magnificent Mughal court jewels. The collection features diverse styles and materials, including gold filigree work, precious gems, and unique pieces like traditional amulet holders and bridal crowns.',
      date: null,
      origin: null,
      conservationNotes: 'The jewelry collection is maintained in a low-oxygen environment to prevent tarnishing of silver and other reactive metals. Each piece undergoes ultrasonic cleaning annually, and gemstones are inspected for microscopic cracks. Specialized security measures protect these high-value artifacts.',
    ),
    GalleryItem(
      title: 'Living With Wood Gallery',
      image: 'assets/images/wood_gallery.jpg',
      description: 'Experience the mastery of Islamic woodwork, featuring intricately carved pieces combining wood with precious materials like ivory and mother-of-pearl. The gallery showcases essential items from Qur\'an stands (rehal) to ornate boxes, and architectural elements like minbars and mashrabiya screens.',
      date: null,
      origin: null,
      conservationNotes: 'Wooden artifacts are treated with anoxic fumigation every three years to prevent insect infestation. Humidity is strictly maintained between 45-55% to prevent warping and cracking. Mother-of-pearl inlays receive special attention, with micro-adhesives used to secure any loose elements.',
    ),
    GalleryItem(
      title: 'Malay World Gallery',
      image: 'assets/images/malay_gallery.jpg',
      description: 'Explore the Islamic art of Southeast Asia, where nature-inspired designs meet religious artistry. The gallery features unique textiles with gold thread, Qur\'anic manuscripts with distinctive vegetal motifs, masterful woodwork, and the legendary kris daggers that symbolize the warrior spirit of the region.',
      date: null,
      origin: null,
      conservationNotes: 'The tropical origins of these artifacts require special climate considerations. Textiles with gold thread undergo gentle vacuuming annually, and kris daggers receive specialized oil treatments to prevent rust. Manuscripts are stored in custom-made solander boxes when not on display.',
    ),
    GalleryItem(
      title: 'Metalwork Gallery',
      image: 'assets/images/metal_gallery.jpg',
      description: 'Discover the pinnacle of Islamic metalwork, featuring exquisite pieces from Iranian bronze works to Mamluk masterpieces. The gallery showcases intricate inlays of precious metals, featuring everything from elegant ewers and basins to sophisticated inkwells and candlestands.',
      date: null,
      origin: null,
      conservationNotes: 'Metal artifacts undergo regular monitoring for active corrosion. Inlaid pieces with silver and gold require specialized cleaning protocols using non-abrasive methods. Electrolytic reduction treatments are occasionally used to stabilize bronze disease in ancient pieces.',
    ),
    GalleryItem(
      title: 'Qur\'an & Manuscript Gallery',
      image: 'assets/images/quran_gallery.jpg',
      description: 'Experience the evolution of Islamic calligraphy through sacred texts and manuscripts. From early Kufic Qur\'ans to richly illuminated manuscripts, this gallery celebrates the written word in Islam, featuring works of religious significance, scientific treatises, and beautifully decorated literary masterpieces.',
      date: null,
      origin: null,
      conservationNotes: 'Our most sensitive collection, these manuscripts are kept at 18°C with 45% relative humidity. Pages are turned monthly to prevent stress on bindings, and special UV-filtered cases protect the organic pigments and gold leaf. Conservators use Japanese tissue for repairs to damaged parchment and paper.',
    ),
    GalleryItem(
      title: 'Textile Gallery',
      image: 'assets/images/textile_gallery.jpg',
      description: 'Explore the luxurious world of Islamic textiles, from intricate Tiraz cloths to magnificent Mughal fabrics. The gallery features Kashmir shawls, Central Asian ikats, and Indo-Persian embroidery, showcasing the rich traditions of weaving, printing, and needlework that defined Islamic textile artistry.',
      date: null,
      origin: null,
      conservationNotes: 'Textiles are displayed on a six-month rotation schedule to minimize light exposure. They are mounted on acid-free supports and displayed at angles that minimize stress on fibers. Silk items receive special attention due to their susceptibility to light damage and mechanical stress.',
    ),
    GalleryItem(
      title: 'Architecture Gallery',
      image: 'assets/images/architecture_gallery.png',
      description: 'Discover Islamic architectural masterpieces through scale models, from the sacred Ka\'ba to the Taj Mahal. The gallery features diverse styles from Malay mosques to Ottoman palaces, demonstrating Islam\'s architectural adaptability across different cultures and environments.',
      date: null,
      origin: null,
      conservationNotes: 'Scale models undergo quarterly dusting with specialized micro-vacuum equipment. Models with moving parts receive annual mechanical maintenance, and those with delicate elements are housed in custom-built display cases that protect against vibration and dust accumulation.',
    ),
    GalleryItem(
      title: 'Arms & Armour Gallery',
      image: 'assets/images/armour_gallery.jpg',
      description: 'Explore the artistry of Islamic weaponry, featuring Damascus steel blades, ornate firearms, and ceremonial armor. The gallery showcases beautifully crafted swords, daggers, and military standards, each piece combining practical function with religious inscriptions and decorative excellence.',
      date: null,
      origin: null,
      conservationNotes: 'Damascus steel weapons receive specialized conservation, including micro-crystalline wax coatings to prevent oxidation. Leather components of armor undergo conditioning treatments annually, and firearms are maintained in dehumidified cases to prevent deterioration of metal and wooden components.',
    ),
    GalleryItem(
      title: 'Ceramics Gallery',
      image: 'assets/images/ceramics_gallery.png',
      description: 'Experience the vibrant world of Islamic ceramics, from early calligraphic bowls to stunning Iznik tiles. The gallery presents innovations in glazing techniques, lusterwares, and the fusion of Chinese influences, showcasing the evolution of Islamic pottery from functional vessels to artistic masterpieces.',
      date: null,
      origin: null,
      conservationNotes: 'Ceramic artifacts are mounted on custom seismic mounts to prevent damage during minor tremors. Restoration work uses reversible materials following international conservation standards. Particularly fragile pieces are displayed in micro-climate cases that maintain optimal humidity levels.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Header section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.teal,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Islamic Art Collection',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Explore our collection of Islamic artifacts spanning centuries of artistic tradition',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.collections,
                        color: Colors.teal,
                        size: 16,
                      ),
                      SizedBox(width: 6),
                      Text(
                        '12 ITEMS',
                        style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // Gallery grid
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: galleryItems.length,
                itemBuilder: (context, index) {
                  return _buildGalleryItem(context, galleryItems[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGalleryItem(BuildContext context, GalleryItem item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => GalleryDetailPage(item: item),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        item.image,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[200],
                            child: const Center(
                              child: Icon(
                                Icons.image_not_supported,
                                color: Colors.grey,
                                size: 40,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    if (item.origin != null)
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            item.origin!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              
              // Info
              Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (item.date != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          item.date!,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GalleryDetailPage extends StatelessWidget {
  final GalleryItem item;

  const GalleryDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(item.title),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          // Hero image
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            child: Stack(
              children: [
                // Image
                Positioned.fill(
                  child: Image.asset(
                    item.image,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[200],
                        child: const Center(
                          child: Icon(
                            Icons.image_not_supported,
                            color: Colors.grey,
                            size: 80,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Gradient overlay
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.transparent,
                          Colors.black.withOpacity(0.6),
                        ],
                        stops: const [0.0, 0.5, 1.0],
                      ),
                    ),
                  ),
                ),
                // Title and origin
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              offset: Offset(0, 2),
                              blurRadius: 4,
                              color: Colors.black45,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      if (item.origin != null)
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              item.origin!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // Details section
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Date
                  if (item.date != null)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.teal.shade50,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: 16,
                            color: Colors.teal.shade700,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            item.date!,
                            style: TextStyle(
                              color: Colors.teal.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  
                  const SizedBox(height: 24),
                  
                  // Description section
                  const Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      item.description ?? 'No description available.',
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Conservation notes section
                  const Text(
                    'Conservation Notes',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      item.conservationNotes ?? 'This artifact is preserved in a climate-controlled environment to prevent deterioration. It undergoes regular conservation assessments to ensure its longevity for future generations.',
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
