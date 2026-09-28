import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Inter',
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const Color _ink = Color(0xFF0F172A);
  static const Color _muted = Color(0xFF64748B);
  static const Color _border = Color(0xFFE2E8F0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 390,

            // Figma:
            // Top 44
            // Right 24
            // Bottom 36
            // Left 24
            padding: const EdgeInsets.fromLTRB(
              24,
              44,
              24,
              36,
            ),

            decoration: BoxDecoration(
              color: const Color(0xFFF8FAFC),
              border: Border.all(
                width: 3,
                color: const Color(0xFFCBD5E1),
              ),
              borderRadius: BorderRadius.circular(44),
            ),

            clipBehavior: Clip.antiAlias,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTopBar(),

                const SizedBox(height: 24),

                _buildProfileHeader(),

                const SizedBox(height: 24),

                _buildStatsCard(),

                const SizedBox(height: 24),

                _buildAboutSection(),

                const SizedBox(height: 24),

                _buildSkillsSection(),

                const SizedBox(height: 24),

                _buildProjectsSection(),

                const SizedBox(height: 24),

                _buildContactCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // =========================================================
  // 1. TOP BAR
  // 336 x 42
  // =========================================================

  Widget _buildTopBar() {
    return SizedBox(
      width: 336,
      height: 42,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _topBarButton(Icons.chevron_left),

          const SizedBox(
            width: 58,
            height: 22,
            child: Center(
              child: Text(
                'Profile',
                maxLines: 1,
                softWrap: false,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: _ink,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  height: 1,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),

          _topBarButton(Icons.share_outlined),
        ],
      ),
    );
  }

  Widget _topBarButton(IconData icon) {
    return Container(
      width: 20,
      height: 42,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: _border,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: Icon(
        icon,
        size: 18,
        color: _ink,
      ),
    );
  }

  // =========================================================
  // 2. PROFILE HEADER
  // 336 x 241
  // =========================================================

  Widget _buildProfileHeader() {
    return SizedBox(
      width: 336,
      height: 241,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ---------------------------------------------------
          // Avatar Stack
          // 140 x 140
          // Image 124 x 124
          // ---------------------------------------------------

          SizedBox(
            width: 140,
            height: 140,
            child: Stack(
              children: [
                Container(
                  width: 140,
                  height: 140,
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFFF758C),
                        Color(0xFFFF8A65),
                        Color(0xFFFFC857),
                      ],
                    ),
                  ),
                  child: Container(
                    width: 132,
                    height: 132,
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const ClipOval(
                      child: Image(
                        image: AssetImage(
                          'images/4ea7c60fd89e3534a4f3d7b465b9a702f4e925c1.png',
                        ),
                        width: 124,
                        height: 124,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                const Positioned(
                  right: 12,
                  bottom: 8,
                  child: SizedBox(
                    width: 12,
                    height: 28,
                    child: Center(
                      child: SizedBox(
                        width: 12,
                        height: 22,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Color(0xFF1CA7EC),
                            border: Border.fromBorderSide(
                              BorderSide(color: Colors.white, width: 1.5),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                          child: Icon(
                            Icons.check,
                            size: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

          // ---------------------------------------------------
          // Alex Rivers
          // 132 x 29
          // 24px
          // w800
          // #0F172A
          // ---------------------------------------------------

          const SizedBox(
            width: 132,
            height: 29,
            child: Center(
              child: Text(
                'Alex Rivers',
                maxLines: 1,
                softWrap: false,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: _ink,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  height: 1,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),

          const SizedBox(height: 8),

          // ---------------------------------------------------
          // Job title
          // 155 x 18
          // 15px w500
          // ---------------------------------------------------

          const SizedBox(
            width: 155,
            height: 18,
            child: Text(
              'Lead Mobile Engineer',
              maxLines: 1,
              softWrap: false,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: _muted,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 1,
                letterSpacing: 0,
              ),
            ),
          ),

          const SizedBox(height: 8),

          // ---------------------------------------------------
          // Location Pill
          // 134 x 30
          // Radius 20
          // Padding 6 / 14
          // ---------------------------------------------------

          Container(
            width: 134,
            height: 30,
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F5F9),
              border: Border.all(
                width: 1,
                color: _border,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 16,
                  color: _muted,
                ),

                SizedBox(width: 6),

                Text(
                  'Tokyo, Japan',
                  maxLines: 1,
                  softWrap: false,
                  style: TextStyle(
                    color: _muted,
                    fontSize: 12,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // =========================================================
  // 3. STATS CARD
  // 336 x 78
  // =========================================================

  Widget _buildStatsCard() {
    return Container(
      width: 336,
      height: 78,

      padding: const EdgeInsets.fromLTRB(
        20,
        18,
        20,
        18,
      ),

      decoration: BoxDecoration(
        color: Colors.white,

        border: Border.all(
          width: 1,
          color: const Color(0xFFF1F5F9),
        ),

        borderRadius: BorderRadius.circular(20),

        boxShadow: const [
          BoxShadow(
            color: Color(0x0F0F172A),
            blurRadius: 18,
            offset: Offset(0, 8),
          ),
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _statItem(
            '148',
            'Projects',
          ),

          _statsDivider(),

          _statItem(
            '9 Yrs',
            'Experience',
          ),

          _statsDivider(),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '4.9',
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(
                        color: Color(0xFFFFBF19),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        height: 1,
                      ),
                    ),

                    SizedBox(width: 4),

                    Icon(
                      Icons.star,
                      size: 17,
                      color: Color(0xFFFFBF19),
                    ),
                  ],
                ),

                const SizedBox(height: 4),

                const Text(
                  'Rating',
                  maxLines: 1,
                  softWrap: false,
                  style: TextStyle(
                    color: _muted,
                    fontSize: 10,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _statItem(
    String value,
    String label,
  ) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            maxLines: 1,
            softWrap: false,
            style: const TextStyle(
              color: _ink,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              height: 1,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            label,
            maxLines: 1,
            softWrap: false,
            style: const TextStyle(
              color: _muted,
              fontSize: 10,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _statsDivider() {
    return Container(
      width: 1,
      height: 28,
      color: _border,
    );
  }

  // =========================================================
  // 4. ABOUT ME
  // 336 x 90
  // =========================================================

  Widget _buildAboutSection() {
    return const SizedBox(
      width: 336,
      height: 90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            maxLines: 1,
            softWrap: false,
            style: TextStyle(
              color: _ink,
              fontSize: 17,
              fontWeight: FontWeight.w700,
              height: 1,
            ),
          ),

          SizedBox(height: 8),

          // Figma:
          // 14px Regular
          // Line-height 21px
          // Đúng 3 dòng theo thiết kế.
          Text(
            'Passionate Lead Mobile Engineer specialized in\n'
            'Flutter, Dart, and building high-performance\n'
            'cross-platform applications. Focused on elegant',
            softWrap: false,
            style: TextStyle(
              color: _muted,
              fontSize: 14,
              fontWeight: FontWeight.w400,

              // 14 × 1.5 = 21px
              height: 1.5,

              letterSpacing: 0,
            ),
          ),
        ],
      ),
    );
  }

  // =========================================================
  // 5. SKILLS & EXPERTISE
  // 336 x 105
  // =========================================================

  Widget _buildSkillsSection() {
    return SizedBox(
      width: 336,
      height: 105,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skills & Expertise',
            maxLines: 1,
            softWrap: false,
            style: TextStyle(
              color: _ink,
              fontSize: 17,
              fontWeight: FontWeight.w700,
              height: 1,
            ),
          ),

          const SizedBox(height: 10),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _skillChip(
                Icons.flutter_dash,
                'Flutter',
                const Color(0xFF159BD7),
                const Color(0xFFE7F7FF),
              ),

              _skillChip(
                Icons.code,
                'Dart',
                const Color(0xFF1E9B68),
                const Color(0xFFE8F8EF),
              ),

              _skillChip(
                Icons.layers_outlined,
                'Clean Arch',
                const Color(0xFFD94672),
                const Color(0xFFFFE9EF),
              ),

              _skillChip(
                Icons.design_services_outlined,
                'UI/UX',
                const Color(0xFF8D4CC4),
                const Color(0xFFF3EAFE),
              ),

              _skillChip(
                Icons.local_fire_department_outlined,
                'Firebase',
                const Color(0xFFD88B08),
                const Color(0xFFFFF3D7),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _skillChip(
    IconData icon,
    String label,
    Color color,
    Color background,
  ) {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(
        horizontal: 11,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 14,
            color: color,
          ),

          const SizedBox(width: 5),

          Text(
            label,
            maxLines: 1,
            softWrap: false,
            style: TextStyle(
              color: color,
              fontSize: 11,
              fontWeight: FontWeight.w600,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }

  // =========================================================
  // 6. FEATURED PROJECTS
  // 336 x 185
  // =========================================================

  Widget _buildProjectsSection() {
    return SizedBox(
      width: 336,
      height: 185,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 336,
            height: 28,
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Featured Projects',
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                  color: _ink,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            width: 336,
            height: 145,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _projectCard(
                  imagePath:
                      'images/64b761eb1277bb3e6735db235ad3e50ed911271f.png',
                  title: 'E-Shop Flutter',
                  subtitle: 'Mobile App • 2026',
                ),

                _projectCard(
                  imagePath:
                      'images/720413e084dc754f5b64aa264225cbf5380c957a.png',
                  title: 'Crypto Vault',
                  subtitle: 'Finance • Clean Arch',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _projectCard({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Container(
      width: 165,
      height: 145,

      decoration: BoxDecoration(
        color: Colors.white,

        border: Border.all(
          width: 1,
          color: _border,
        ),

        borderRadius: BorderRadius.circular(16),

        boxShadow: const [
          BoxShadow(
            color: Color(0x0A0F1729),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),

      clipBehavior: Clip.antiAlias,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 84,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(
              10,
              8,
              8,
              0,
            ),
            child: Text(
              title,
              maxLines: 1,
              softWrap: false,
              style: const TextStyle(
                color: _ink,
                fontSize: 11,
                fontWeight: FontWeight.w700,
                height: 1,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 5,
            ),
            child: Text(
              subtitle,
              maxLines: 1,
              softWrap: false,
              style: const TextStyle(
                color: _muted,
                fontSize: 8,
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // =========================================================
  // 7. CONTACT CARD
  // 336 x 192
  // =========================================================

  Widget _buildContactCard() {
    return Container(
      width: 336,
      height: 192,

      decoration: BoxDecoration(
        color: Colors.white,

        border: Border.all(
          width: 1,
          color: _border,
        ),

        borderRadius: BorderRadius.circular(20),

        boxShadow: const [
          BoxShadow(
            color: Color(0x0A0F1729),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),

      clipBehavior: Clip.antiAlias,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _contactRow(
            Icons.alternate_email,
            'Contact Information',
            true,
          ),

          const Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFF1F5F9),
          ),

          _contactRow(
            Icons.mail_outline,
            'alex.rivers@email.com',
            false,
          ),

          const Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFF1F5F9),
          ),

          _contactRow(
            Icons.phone_outlined,
            '+81 (90) 1234-5678',
            false,
          ),
        ],
      ),
    );
  }

  Widget _contactRow(
    IconData icon,
    String text,
    bool heading,
  ) {
    final isEmail = text == 'alex.rivers@email.com';
    final isPhone = text == '+81 (90) 1234-5678';

    final contactContent = Row(
      children: [
        Container(
          width: 18,
          height: 34,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xFFF8FAFC),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: _muted,
            size: 18,
          ),
        ),

        const SizedBox(width: 14),

        if (heading)
          SizedBox(
            width: 138,
            height: 17,
            child: Text(
              text,
              maxLines: 1,
              softWrap: false,
              style: const TextStyle(
                color: _ink,
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                height: 1,
                letterSpacing: 0,
              ),
            ),
          )
        else if (isEmail)
          SizedBox(
            width: 151,
            height: 17,
            child: Text(
              text,
              maxLines: 1,
              softWrap: false,
              style: const TextStyle(
                color: _ink,
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1,
                letterSpacing: 0,
              ),
            ),
          )
        else if (isPhone)
          SizedBox(
            width: 135,
            height: 17,
            child: Text(
              text,
              maxLines: 1,
              softWrap: false,
              style: const TextStyle(
                color: _ink,
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1,
                letterSpacing: 0,
              ),
            ),
          )
        else
          Text(
            text,
            maxLines: 1,
            softWrap: false,
            style: const TextStyle(
              color: _ink,
              fontSize: 11,
              fontWeight: FontWeight.w400,
              height: 1,
            ),
          ),
      ],
    );

    return SizedBox(
      width: 334,
      height: 62,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child:
                  heading
                      ? Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 170,
                          height: 34,
                          child: contactContent,
                        ),
                      )
                      : isEmail
                      ? Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 183,
                          height: 34,
                          child: contactContent,
                        ),
                      )
                      : isPhone
                      ? Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 167,
                          height: 34,
                          child: contactContent,
                        ),
                      )
                      : contactContent,
            ),

            const SizedBox(
              width: 18,
              height: 18,
              child: Center(
                child: SizedBox(
                  width: 4.5,
                  height: 9,
                  child: CustomPaint(
                    painter: _ChevronPainter(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChevronPainter extends CustomPainter {
  const _ChevronPainter();

  @override
  void paint(Canvas canvas, Size size) {
    const strokeWidth = 1.5;
    const inset = strokeWidth / 2;

    final paint = Paint()
      ..color = const Color(0xFF94A3B8)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final path = Path()
      ..moveTo(inset, inset)
      ..lineTo(size.width - inset, size.height / 2)
      ..lineTo(inset, size.height - inset);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_ChevronPainter oldDelegate) => false;
}
