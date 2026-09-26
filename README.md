# مرصاد (Mirsad) - فاحص أمان وتحليل الملفات متعدد المحركات

> **مرصاد** هو تطبيق دفاعي متقدم ومفتوح المصدر لفحص وتحليل أمان الملفات عبر محركات أمنية متعددة ومتوازية للكشف السريع والموثوق عن البرمجيات الخبيثة والتهديدات الرقمية.

[العربية](#عن-المشروع) • [English](#about-the-project)

---

## عن المشروع

صُمم تطبيق **مرصاد** ليوفر أداة موحدة للمستخدمين ومختصي الأمن السيبراني لتحليل الملفات المشبوهة والتحقق من سلامتها قبل فتحها أو تشغيلها. يجمع التطبيق نتائج الفحص من أبرز المحركات ومنصات التهديد العالمية في واجهة موحدة، عصرية، وسريعة، مع وضع الخصوصية في المقام الأول.

### أبرز المميزات

- **فحص متوازي متعدد المحركات:** فحص متزامن عبر 7 محركات أمنية عالمية في وقت واحد لاختصار الوقت وتحقيق أعلى دقة.
- **وضع الخصوصية المشددة (Hash-First Mode):** حساب البصمات الرقمية (SHA-256، SHA-1، MD5) محلياً على جهازك والاستعلام عنها أولاً دون رفع محتوى الملف، لضمان سرية بياناتك وملفاتك الحساسة.
- **الفحص العميق بتأكيد المستخدم:** في حال عدم توفر سجل سابق لبصمة الملف، يطلب التطبيق تأكيدك صراحةً قبل رفع محتوى الملف للتحليل المعمق.
- **تقييم موحد وواضح (Aggregated Verdict):** تصنيف نهائي مباشر للملف (سليم، مشبوه، خبيث) مع تفصيل دقيق لعدد ونسب المحركات التي رصدت التهديد.
- **سجل الفحوصات والتحليلات:** حفظ محلي آمن لكافة الفحوصات السابقة للرجوع إليها ومشاركتها في أي وقت مع إمكانية مسح السجل بضغطة زر.
- **دعم شامل للغات:** دعم 49 لغة عالمية مع دعم كامل ومتقن لواجهات الكتابة من اليمين إلى اليسار (RTL).
- **تصميم عصري متكيف:** واجهات مستوحاة من أدوات التحليل السيبراني الاحترافية تدعم الوضع الداكن (Dark Mode)، والوضع الفاتح (Light Mode)، ووضع النظام.
- **تكامل سلس مع النظام:** دعم سحب وإفلات الملفات (Drag & Drop)، والتشغيل المباشر من سطر الأوامر (CLI Arguments)، ومشاركة الملفات (Share Intent).
- **حزم جاهزة لأنظمة لينكس:** سكربتات أتمتة مدمجة لبناء حزم لكافة توزيعات لينكس (Flatpak, AppImage, Deb, RPM, Arch Linux).

---

## لقطات الشاشة

### الصفحة الرئيسية
<p align="center">
  <img src="https://github.com/user-attachments/assets/d1de3f23-14d7-498e-af63-b444f7e04dac" alt="الصفحة الرئيسية - Home Screen" width="100%" />
</p>

### ملخص نتائج الفحص (مخرجات)
<p align="center">
  <img src="https://github.com/user-attachments/assets/027fc283-87e0-4847-9a88-732dd2700162" alt="ملخص نتائج الفحص - Scan Results" width="100%" />
</p>

### تفاصيل نتائج المحركات الأمنية (مخرجات 1)
<p align="center">
  <img src="https://github.com/user-attachments/assets/cb48e840-6535-45e0-bf24-d00b86e6580d" alt="تفاصيل نتائج المحركات - Engine Findings" width="100%" />
</p>

### تقارير المحركات والتحليل التفصيلي (مخرجات 2)
<p align="center">
  <img src="https://github.com/user-attachments/assets/33cb30b7-4850-468d-8106-1d0b56c91a21" alt="تقارير المحركات والروابط - Provider Reports" width="100%" />
</p>

### شاشة الإعدادات والتحكم بالمزودين
<p align="center">
  <img src="https://github.com/user-attachments/assets/d6aa7474-e1d4-4d7b-bee5-7ba83cbf71a5" alt="شاشة الإعدادات - Settings" width="100%" />
</p>

---

## المحركات الأمنية المدعومة

| المحرك الأمني | المزايا والقدرات | الحد الأقصى لحجم الملف |
| :--- | :--- | :--- |
| **VirusTotal** | فحص البصمات ومطابقتها مع أكثر من 70 محرك مكافحة فيروسات | 32 ميجابايت (API مجاني) |
| **ANY.RUN** | منصة بيئة معزولة تفاعلية (Interactive Sandbox) لتحليل السلوك | 100 ميجابايت |
| **Hybrid Analysis** | تحليل عميق متعدد التقنيات وفحص سلوك الملفات والبرمجيات الخبيثة | 100 ميجابايت |
| **Intezer** | تحليل الجينات الرقمية للكود وتصنيف العائلات البرمجية الخبيثة | 50 ميجابايت |
| **MetaDefender** | فحص متعدد بمحركات الحماية المتقدمة وتقنية تفكيك التهديدات CDR | 140 ميجابايت |
| **FileScan** | تحليل التهديدات المتقدمة واستخراج مؤشرات الاختراق (IOCs) | 128 ميجابايت |
| **Triage (Hatching)** | بيئة رملية متطورة لتحليل التهديدات وتصنيف المخاطر | 100 ميجابايت |

---

## التثبيت والتشغيل

### المتطلبات الأساسية
- تثبيت [Flutter SDK](https://docs.flutter.dev/get-started/install) (الإصدار 3.13 أو أحدث).
- بيئة تطوير وأدوات البناء للمنصة المستهدفة (Linux, Windows, macOS, Android, Web).

### 1. استنساخ المستودع
```bash
git clone https://github.com/username/mirsad.git
cd mirsad
```

### 2. تثبيت الحزم والتبعيات
```bash
flutter pub get
```

### 3. إعداد مفاتيح المزودين (API Keys)
يمكنك تفعيل المحركات الأمنية عبر إحدى طريقتين:

**الطريقة الأولى (ملف الإعدادات):**
قم بتعديل الملف `assets/config/secrets.json` وضع المفاتيح الخاصة بحساباتك:
```json
{
  "virustotal_api_key": "YOUR_VIRUSTOTAL_API_KEY",
  "metadefender_api_key": "YOUR_METADEFENDER_API_KEY",
  "hybrid_analysis_api_key": "YOUR_HYBRID_ANALYSIS_API_KEY",
  "intezer_api_key": "YOUR_INTEZER_API_KEY",
  "filescan_api_key": "YOUR_FILESCAN_API_KEY",
  "triage_api_key": "YOUR_TRIAGE_API_KEY",
  "anyrun_api_key": "YOUR_ANYRUN_API_KEY"
}
```

**الطريقة الثانية (عبر سطر الأوامر أثناء التشغيل/البناء):**
```bash
flutter run --dart-define=virustotal_api_key=YOUR_KEY --dart-define=metadefender_api_key=YOUR_KEY
```

### 4. تشغيل التطبيق
```bash
# تشغيل التطبيق على منصة سطح المكتب (لينكس كمثال)
flutter run -d linux

# تشغيل التطبيق على متصفح الويب
flutter run -d chrome
```

---

## بناء حزم التوزيع لأنظمة لينكس

يتضمن المشروع سكربتات جاهزة للبناء والتجميع التلقائي لكافة صيغ حزم توزيعات لينكس:

### بناء جميع الحزم (Deb, RPM, Arch, AppImage, Tar):
```bash
chmod +x build_linux.sh
./build_linux.sh
```

### بناء حزمة Flatpak:
```bash
chmod +x flatpak_linux.sh
./flatpak_linux.sh
```

يتم تصدير جميع الحزم المبنية تلقائياً إلى مجلد `dist/`.

---

## معلومات المطور والتواصل

- **المطور:** حسام حسن مجرشي
- **الاستوديو:** جذور استوديو (Juthoor Studio)
- **البريد الإلكتروني:** [Hossam.Majrashi@gmail.com](mailto:Hossam.Majrashi@gmail.com)
- **الموقع الشخصي:** [hossam-majrashi.github.io/Works](https://hossam-majrashi.github.io/Works/)

---
---

# Mirsad - Multi-Engine File Security & Threat Scanner

> **Mirsad** is an advanced open-source defensive security platform for scanning and analyzing files across multiple parallel security engines to detect malware and cyber threats rapidly and reliably.

[العربية](#عن-المشروع) • [English](#about-the-project)

---

## About The Project

**Mirsad** was created to empower users, security analysts, and developers with a centralized desktop and multi-platform solution for inspecting suspicious files before execution. It aggregates reports from premier threat intelligence platforms into a streamlined, reactive interface designed with privacy and speed at its core.

### Key Features

- **Parallel Multi-Engine Scanning:** Concurrently interrogates 7 top-tier threat intelligence and sandbox providers to minimize turnaround time and maximize threat detection.
- **Hash-First Privacy Mode:** Locally computes cryptographic hashes (SHA-256, SHA-1, MD5) and queries provider databases first, keeping sensitive file content strictly private.
- **Explicit Consent for Deep Scans:** When no prior hash record is found, Mirsad requests explicit user confirmation before uploading file content to external engines.
- **Consolidated Verdict:** Instantly delivers a unified verdict (Clean, Suspicious, Malicious) along with exact detection metrics from every engine.
- **Local Scan History:** Securely maintains a history of past scans locally for offline reference, searching, and sharing.
- **Comprehensive Internationalization:** Built-in localization for 49 languages with first-class Right-to-Left (RTL) support.
- **Adaptive Modern Theme:** Thoughtfully designed dark and light themes crafted for prolonged professional usage, plus system theme tracking.
- **System Integration:** Supports drag-and-drop file inputs, CLI execution arguments for automated workflows, and native share intents.
- **Complete Linux Packaging:** Automated scripts ready to package the app for Flatpak, AppImage, Debian (.deb), Red Hat (.rpm), and Arch Linux (.pkg.tar.zst).

---

## Screenshots

### Home Screen
<p align="center">
  <img src="https://github.com/user-attachments/assets/d1de3f23-14d7-498e-af63-b444f7e04dac" alt="Home Screen" width="100%" />
</p>

### Scan Results Summary (Outputs)
<p align="center">
  <img src="https://github.com/user-attachments/assets/027fc283-87e0-4847-9a88-732dd2700162" alt="Scan Results Summary" width="100%" />
</p>

### Engine Findings Detail (Outputs 1)
<p align="center">
  <img src="https://github.com/user-attachments/assets/cb48e840-6535-45e0-bf24-d00b86e6580d" alt="Engine Findings Detail" width="100%" />
</p>

### Provider Reports & Deep Analysis (Outputs 2)
<p align="center">
  <img src="https://github.com/user-attachments/assets/33cb30b7-4850-468d-8106-1d0b56c91a21" alt="Provider Reports" width="100%" />
</p>

### Settings & Provider Configuration
<p align="center">
  <img src="https://github.com/user-attachments/assets/d6aa7474-e1d4-4d7b-bee5-7ba83cbf71a5" alt="Settings Screen" width="100%" />
</p>

---

## Supported Security Providers

| Provider | Description & Capabilities | File Size Limit |
| :--- | :--- | :--- |
| **VirusTotal** | Hash lookup and aggregation across 70+ antivirus engines | 32 MB (Free API) |
| **ANY.RUN** | Interactive cloud sandbox for dynamic behavioral analysis | 100 MB |
| **Hybrid Analysis** | Multi-engine malware analysis and deep behavioral inspection | 100 MB |
| **Intezer** | Genetic code analysis and malware family classification | 50 MB |
| **MetaDefender** | Multi-scanning engine with content disarm & reconstruction (CDR) | 140 MB |
| **FileScan** | Advanced threat intelligence and IOC extraction | 128 MB |
| **Triage (Hatching)** | Modern high-throughput automated malware sandbox | 100 MB |

---

## Installation & Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version 3.13 or newer).
- Target platform build tools (Linux, Windows, macOS, Android, Web).

### 1. Clone Repository
```bash
git clone https://github.com/username/mirsad.git
cd mirsad
```

### 2. Fetch Dependencies
```bash
flutter pub get
```

### 3. Setup API Keys
You can configure API keys using either method:

**Option A (Configuration File):**
Update `assets/config/secrets.json` with your API keys:
```json
{
  "virustotal_api_key": "YOUR_VIRUSTOTAL_API_KEY",
  "metadefender_api_key": "YOUR_METADEFENDER_API_KEY",
  "hybrid_analysis_api_key": "YOUR_HYBRID_ANALYSIS_API_KEY",
  "intezer_api_key": "YOUR_INTEZER_API_KEY",
  "filescan_api_key": "YOUR_FILESCAN_API_KEY",
  "triage_api_key": "YOUR_TRIAGE_API_KEY",
  "anyrun_api_key": "YOUR_ANYRUN_API_KEY"
}
```

**Option B (Compile-time / Runtime Flags):**
```bash
flutter run --dart-define=virustotal_api_key=YOUR_KEY --dart-define=metadefender_api_key=YOUR_KEY
```

### 4. Run Application
```bash
# Run on Desktop (Linux example)
flutter run -d linux

# Run on Web
flutter run -d chrome
```

---

## Linux Distribution Packaging

Mirsad includes automated scripts to package the application across major Linux formats:

### Build All Formats (Deb, RPM, Arch, AppImage, Tarball):
```bash
chmod +x build_linux.sh
./build_linux.sh
```

### Build Flatpak:
```bash
chmod +x flatpak_linux.sh
./flatpak_linux.sh
```

All generated packaging artifacts will be located in the `dist/` directory.

---

## Developer & Contact Information

- **Developer:** Hossam Hassan Majrashi
- **Studio:** Juthoor Studio
- **Email:** [Hossam.Majrashi@gmail.com](mailto:Hossam.Majrashi@gmail.com)
- **Website:** [hossam-majrashi.github.io/Works](https://hossam-majrashi.github.io/Works/)

---

## License

This project is licensed under the MIT License - see the LICENSE file for details.

