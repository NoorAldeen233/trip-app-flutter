import '../models/catogriess.dart';
import '../models/trips.dart';

const Categories_data = const [
  Category(
    id: 'c1',
    title: 'جبال',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRcyyzPSJGoRX80CD2r8Mr5Chcz0hnC4KtH3G-40c0J94U2cGSG7lGNczBXToFUBHL0SM&usqp=CAU'
  ),
  Category(
      id: 'c2',
      title: 'بحيرات',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhSE_NxQDlT6c40TY5kelX-bC9FqWQZycHwQ&usqp=CAU"),
  Category(
      id: 'c3',
      title: 'شواطىء',
      imageUrl:
          "https://mybayutcdn.bayut.com/mybayut/wp-content/uploads/Beaches-cover-AR20092020.jpg"),
  Category(
    id: 'c4',
    title: 'صحارى',
    imageUrl:
        "https://www.annaharar.com/ContentFiles/62576Image1-1180x677_d.jpg?version=1314962",
  ),
  Category(
      id: 'c5',
      title: 'مدن تاريخية',
      imageUrl:
          "https://layalina.awicdn.com/site-images/sites/default/files/prod/article/a/b/196282/6b63e9c738bf30b3b9fa4777d6e4989410ba2c2b-250416091408.jpg?preset=v3.0_970XDYN&rnd=12344&save-png=1"),
  Category(
    id: 'c6',
    title: 'أخرى',
    imageUrl:
        "https://storage.googleapis.com/suplift-production/2021/12/Snowboarding-hobby.....jpg",
  ),
];

const Trips_data = const [
  Trip(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'جبال الألب',
    tripType: TripsType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1611523658822-385aa008324c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8bW91bmF0aW5zfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 20,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار سيت أميت ,تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'جبال الجنوب',
    tripType: TripsType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1612456225451-bb8d10d0131d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 10,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'جبال مرتفعة',
    tripType: TripsType.Recovery,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1592221912790-2b4df8882ea9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 45,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm4',
    categories: [
      'c2',
      'c1',
    ],
    title: 'البحيرة الكبرى',
    tripType: TripsType.Activates,
    season: Season.Spring,
    imageUrl:
        'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 60,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm5',
    categories: [
      'c2',
      'c1',
    ],
    title: 'البحيرات الصغرى',
    tripType: TripsType.Activates,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1580100586938-02822d99c4a8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGxha2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 15,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'بحيرة الزمرد',
    tripType: TripsType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 240,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'شاطئ الأول',
    tripType: TripsType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 20,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'الشاطىء الكبير',
    tripType: TripsType.Recovery,
    season: Season.Spring,
    imageUrl:
        'https://images.unsplash.com/photo-1519046904884-53103b34b206?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2h8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 35,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm9',
    categories: [
      'c3',
    ],
    title: 'شاطىء الصخور',
    tripType: TripsType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://images.unsplash.com/photo-1519602035691-16ac091344ef?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjE1fHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 45,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'الصحراء الكبرى',
    tripType: TripsType.Activates,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm11',
    categories: [
      'c4',
      'c1',
    ],
    title: 'الصحراء الغربية',
    tripType: TripsType.Activates,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm12',
    categories: [
      'c4',
    ],
    title: 'الصحراء الرملية',
    tripType: TripsType.Activates,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1452022582947-b521d8779ab6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8ODN8fGRlc2VydHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm13',
    categories: [
      'c5',
    ],
    title: 'المدينة الأولى',
    tripType: TripsType.Activates,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDJ8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm14',
    categories: [
      'c5',
    ],
    title: 'المدينة الثانية',
    tripType: TripsType.Activates,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjR8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm15',
    categories: [
      'c5',
    ],
    title: 'المدينة القديمة',
    tripType: TripsType.Activates,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1519923041107-e4dc8d9193da?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Njd8fG9sZCUyMGNpdHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm16',
    categories: [
      'c6',
    ],
    title: 'رياضة التثلج',
    tripType: TripsType.Activates,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1605540436563-5bca919ae766?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c2tpaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm17',
    categories: [
      'c6',
      'c2',
    ],
    title: 'القفز المظلي',
    tripType: TripsType.Activates,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1601024445121-e5b82f020549?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBhcmFjaHV0ZSUyMGp1bXBpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'زيارة المواقع الأثرية',
      'جولة سياحية على الأقدام',
      'زيارة المراكز التجارية للتبضع',
      'تناول وجبة الغداء',
      'استمتاع المناظر الجملية'
    ],
    program: [
      'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
      'لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
      'لور دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
];
