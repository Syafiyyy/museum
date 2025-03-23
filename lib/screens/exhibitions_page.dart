import 'package:flutter/material.dart';

class Exhibition {
  final String title;
  final String logoImage;
  final List<String>? detailImages;
  final String? date;
  final String? time;
  final String? location;
  final String? fee;
  final List<String>? description;
  final bool isCurrent;

  const Exhibition({
    required this.title,
    required this.logoImage,
    this.detailImages,
    this.date,
    this.time,
    this.location,
    this.fee,
    this.description,
    this.isCurrent = false,
  });
}

class ExhibitionsPage extends StatelessWidget {
  const ExhibitionsPage({super.key});

  static final List<Exhibition> exhibitions = [
    Exhibition(
      title: 'Oceans That Speak',
      logoImage: 'assets/images/oceans_exhibition.jpg',
      detailImages: ['assets/images/gebyok.jpg'],
      date: '13 December 2024 - 15 June 2025',
      time: '09:30 am to 06:00 pm daily',
      location: 'Special Gallery 2',
      fee: 'Subject to museum entry fee',
      description: [
        'For centuries, the Malay world has been a crossroads of cultures. Geography has put it at the centre of trade networks between east and west; the monsoon winds made the region a sanctuary for merchants and mariners, bringers of more than trade cargoes. When Islam arrived in the Malay world, the aesthetic landscape changed forever. Not even European colonisation could hold back the tide that came with improved travel and communications between the Muslims of Southeast Asia and the heartlands of South Asia and the Middle East.',
        'Above all was the Spice Route, which traversed the wide expanse of the Indian Ocean and beyond, defining the Malay World\'s connection with other regions. The ports and harbours scattered throughout the archipelago served as crucial meeting points for trade, offering opportunities to replenish supplies. These were also transits for awaiting the favourable monsoon seasons and trade winds. One of the most important port cities was Melaka, which flourished as a spice emporium. It was a pivotal entrepot in collecting produce from neighbouring lands, including the Maluku Islands, famously known as the \'Spice Islands\'. The oceans encircling the region have served as an important conduit for travel, trade and migration. Over the centuries, this progression has woven a rich tapestry of cultural adaptations and interactions, shaping a cosmopolitan Malay world.',
        'Oceans that Speak: Islam and the Emergence of the Malay World gives a voice to the heritage of this region, highlighting the ever-growing collection of the Islamic Arts Museum Malaysia. The exhibition explores the complex currents of exchange that came with the movement of people, ideas and faith and the artefacts on display are the creative outcome of highly distinctive and often overlooked art from this part of the world. A special publication with the same title is now available at our Museum Shop.'
      ],
      isCurrent: true,
    ),
    Exhibition(
      title: 'Makkah, Madinah, Al-Quds and Istanbul: Through the Eyes of a Believer',
      logoImage: 'assets/images/Makkah_exhibition.jpg',
      detailImages: ['assets/images/makkah.jpg'],
      date: '30 July 2024 - 20 October 2024',
      time: '09:30 am to 06:00 pm daily',
      location: 'Special Gallery 2',
      description: [
        'Islamic Arts Museum Malaysia is pleased to present "Makkah, Madinah, Al-Quds and Istanbul: Through the Eyes of a Believer," a photography exhibition featuring the work of Orhan Durgut.',
        'The cities of Makkah, Madinah, Al-Quds and Istanbul hold immense significance in Islam. Makkah, with the Ka\'bah and the Well of Zamzam, is the most revered city, dating back to the time of the Prophet Adam (PBUH). Notable landmarks in Makkah include Maqam Ibrahim (PBUH), al-Hajar al-Aswad, the Safa and Marwah hills, and the sacred sites of Mount Arafat and Mina. Madinah, situated 340 kilometres north of Makkah, became sacred following the Prophet Muhammad\'s (PBUH) migration and establishing his mosque, house, and tomb there. Al-Quds, or Jerusalem, is the third holiest city in Islam, known for the Dome of the Rock and al-Aqsa Mosque, linked to the Prophet Muhammad\'s (PBUH) night journey and ascent to heaven. Istanbul, formerly Constantinople, gained importance after its conquest by the Ottomans in 1453. It was assigned as the \'Guardian of the Three Holy Sites,\' responsible for the care of Makkah, Madinah and Al-Quds, with the Ottomans emphasizing their religious significance.',
        'Embark on a visually captivating journey of spiritual significance through the exhibition "Makkah, Madinah, Al-Quds and Istanbul: Through the Eyes of a Believer." The exhibition showcases the exceptional work of 66-year-old Turkish photographer Orhan Durgut, a trailblazer in aerial photography in Turkey. Inspired by a transformative visit to Makkah for Umrah in 2005, Durgut spent nearly a decade capturing the essence of these holy cities. He reveals the interconnectedness of Makkah, Madinah, Al-Quds and Istanbul with special permits from the authorities, delving into their spiritual pilgrimage significance. Beyond mere documentation, the exhibition offers an intimate connection to these sacred sites, unveiling unseen layers of history through Durgut\'s lens. It serves as a visual narrative, weaving spirituality, history and architectural evolution together. Durgut\'s dedication showcases the beauty and significance of these places, providing profound insight into Islam\'s holiest sites. This photography exhibition is a testament to Durgut\'s unwavering commitment to capturing the soul of these sites, revealing a tapestry of beauty and history. Organized by the Islamic Art Museum Malaysia in collaboration with the Turkish Embassy in Malaysia, the exhibition aims to remind viewers of the rich and diverse tapestry of Islamic history, informed by reverent and sincere faith.'
      ],
      isCurrent: false,
    ),
    Exhibition(
      title: 'A Journey Through Islamic Art',
      logoImage: 'assets/images/journey_exhibition.jpg',
      detailImages: ['assets/images/journey.jpg'],
      date: '13 December 2023 - 30 June 2024',
      time: '09:30 am to 06:00 pm daily',
      location: 'Special Galleries 1 & 2',
      description: [
        'Islamic Arts Museum Malaysia shared the incredible scope of its collection in two combined exhibitions, ranging from historical artefacts produced under the great Islamic dynasties from around the globe over a span of 1400 years to the outstanding modern calligraphic art of today. With over 150 artefacts, contemporary paintings and sculpture on display, this combined exhibition was a testament to the museum\'s dedicated efforts of collecting, preserving and exhibiting the enduring legacy of Islamic art.',
        'This diverse collection helps to narrate the story of the heritage and unique artistic vision of interconnected regions of the world united in faith yet distinctive in style and substance. It allows visitors to come up close and immerse themselves in the world of master craftsmen, royal ateliers, royal patronage and the modern studios of today\'s artists. The exhibition was on display from 13th December 2023 to 30th June 2024.'
      ],
      isCurrent: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exhibitions'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Featured exhibition header
            Container(
              height: 180,
              width: double.infinity,
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
              child: Stack(
                children: [
                  // Decorative pattern
                  Positioned.fill(
                    child: Opacity(
                      opacity: 0.1,
                      child: Image.asset(
                        'assets/images/islamic_pattern.png',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const SizedBox();
                        },
                      ),
                    ),
                  ),
                  // Content
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'FEATURED',
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Discover Our Special Exhibitions',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Immerse yourself in the rich tapestry of Islamic art and culture',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            // Current Exhibition
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
              child: Row(
                children: [
                  Container(
                    height: 24,
                    width: 4,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Current Exhibition',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
            _buildExhibitionCard(
              context,
              exhibitions.firstWhere((e) => e.isCurrent),
              isLarge: true,
            ),
            
            // Past Exhibitions
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
              child: Row(
                children: [
                  Container(
                    height: 24,
                    width: 4,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Past Exhibitions',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
            ...exhibitions
                .where((e) => !e.isCurrent)
                .map((e) => _buildExhibitionCard(context, e)),
            
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildExhibitionCard(BuildContext context, Exhibition exhibition, {bool isLarge = false}) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: isLarge ? 12 : 8,
      ),
      elevation: 4,
      shadowColor: Colors.black.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExhibitionDetailPage(exhibition: exhibition),
            ),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.asset(
                    exhibition.logoImage,
                    width: double.infinity,
                    height: isLarge ? 250 : 180,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: isLarge ? 250 : 180,
                        color: Colors.grey[200],
                        child: Icon(
                          Icons.image_not_supported,
                          size: isLarge ? 80 : 60,
                          color: Colors.grey[400],
                        ),
                      );
                    },
                  ),
                ),
                if (isLarge)
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 16,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'NOW SHOWING',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exhibition.title,
                    style: TextStyle(
                      fontSize: isLarge ? 22 : 18,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 8),
                  if (exhibition.date != null)
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 16,
                          color: Colors.grey[600],
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            exhibition.date!,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (exhibition.location != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 16,
                            color: Colors.grey[600],
                          ),
                          const SizedBox(width: 8),
                          Text(
                            exhibition.location!,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (isLarge)
                        Expanded(
                          child: Text(
                            exhibition.description?.first.substring(0, 100) ?? '',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                              height: 1.4,
                            ),
                          ),
                        ),
                      Container(
                        margin: EdgeInsets.only(left: isLarge ? 16 : 0),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.teal.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'View Details',
                              style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Icon(
                              Icons.arrow_forward,
                              color: Colors.teal,
                              size: 14,
                            ),
                          ],
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
    );
  }
}

class ExhibitionDetailPage extends StatefulWidget {
  final Exhibition exhibition;

  const ExhibitionDetailPage({
    super.key,
    required this.exhibition,
  });

  @override
  State<ExhibitionDetailPage> createState() => _ExhibitionDetailPageState();
}

class _ExhibitionDetailPageState extends State<ExhibitionDetailPage> {
  final PageController _pageController = PageController();
  int _currentImageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(widget.exhibition.title),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero image section with gradient overlay
            if (widget.exhibition.detailImages != null &&
                widget.exhibition.detailImages!.isNotEmpty)
              SizedBox(
                height: 350,
                child: Stack(
                  children: [
                    // Image slider
                    PageView.builder(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          _currentImageIndex = index;
                        });
                      },
                      itemCount: widget.exhibition.detailImages!.length + 1,
                      itemBuilder: (context, index) {
                        final imagePath = index == 0
                            ? widget.exhibition.logoImage
                            : widget.exhibition.detailImages![index - 1];
                        return Stack(
                          children: [
                            // Image
                            Positioned.fill(
                              child: Image.asset(
                                imagePath,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: Colors.grey[200],
                                    child: const Icon(
                                      Icons.image_not_supported,
                                      size: 80,
                                      color: Colors.grey,
                                    ),
                                  );
                                },
                              ),
                            ),
                            // Gradient overlay for better text visibility
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
                          ],
                        );
                      },
                    ),
                    
                    // Page indicator dots
                    if ((widget.exhibition.detailImages?.length ?? 0) > 0)
                      Positioned(
                        bottom: 20,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0;
                                i < (widget.exhibition.detailImages?.length ?? 0) + 1;
                                i++)
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                width: _currentImageIndex == i ? 16 : 8,
                                height: 8,
                                margin: const EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: _currentImageIndex == i
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.5),
                                ),
                              ),
                          ],
                        ),
                      ),
                      
                    // Exhibition status badge
                    if (widget.exhibition.isCurrent)
                      Positioned(
                        top: 100,
                        left: 20,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'NOW SHOWING',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              
            // Content section
            Container(
              padding: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title section
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                    child: Text(
                      widget.exhibition.title,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        height: 1.2,
                      ),
                    ),
                  ),
                  
                  // Info cards section
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Info cards in a grid
                        Row(
                          children: [
                            if (widget.exhibition.date != null)
                              Expanded(
                                child: _buildInfoCard(
                                  Icons.calendar_today,
                                  'Date',
                                  widget.exhibition.date!,
                                  Colors.teal.shade50,
                                  Colors.teal.shade700,
                                ),
                              ),
                            const SizedBox(width: 12),
                            if (widget.exhibition.time != null)
                              Expanded(
                                child: _buildInfoCard(
                                  Icons.access_time,
                                  'Time',
                                  widget.exhibition.time!,
                                  Colors.teal.shade50,
                                  Colors.teal.shade700,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            if (widget.exhibition.location != null)
                              Expanded(
                                child: _buildInfoCard(
                                  Icons.location_on,
                                  'Location',
                                  widget.exhibition.location!,
                                  Colors.teal.shade50,
                                  Colors.teal.shade700,
                                ),
                              ),
                            const SizedBox(width: 12),
                            if (widget.exhibition.fee != null)
                              Expanded(
                                child: _buildInfoCard(
                                  Icons.confirmation_number,
                                  'Admission',
                                  widget.exhibition.fee!,
                                  Colors.teal.shade50,
                                  Colors.teal.shade700,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                  // About section
                  if (widget.exhibition.description != null) ...[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 8, 24, 16),
                      child: Row(
                        children: [
                          Container(
                            height: 24,
                            width: 4,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'About the Exhibition',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 30),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...widget.exhibition.description!.map((paragraph) => Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: Text(
                                paragraph,
                                style: TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  color: Colors.grey[800],
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(
    IconData icon,
    String label,
    String value,
    Color backgroundColor,
    Color iconColor,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.teal.shade700, size: 24),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.teal.shade700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[800],
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.teal),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
