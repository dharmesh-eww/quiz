import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz/App/routes/app_routes.dart';

class QColors {
  static const p=Color(0xFF494BD6), p2=Color(0xFF6063EE), bg=Color(0xFFFAF8FF);
  static const surface=Colors.white, low=Color(0xFFF2F3FF), high=Color(0xFFE2E7FF);
  static const text=Color(0xFF131B2E), muted=Color(0xFF464554), border=Color(0xFFC7C4D7);
  static const green=Color(0xFF00885D), amber=Color(0xFFFEA619), red=Color(0xFFBA1A1A);
}

class QShell extends StatelessWidget {
  final Widget child; final String? title; final bool back,bottom; final int nav;
  const QShell({super.key,required this.child,this.title,this.back=false,this.bottom=false,this.nav=0});
  @override Widget build(BuildContext c)=>Scaffold(
    backgroundColor:QColors.bg,
    appBar:title==null?null:AppBar(
      backgroundColor:QColors.bg,elevation:0,scrolledUnderElevation:0,
      leading:back?IconButton(icon:const Icon(Icons.arrow_back),onPressed:()=>Navigator.pop(c)):null,
      title:Text(title!,style:const TextStyle(color:QColors.text,fontSize:20,fontWeight:FontWeight.w800)),
    ),
    body:SafeArea(child:child),
    bottomNavigationBar:bottom?NavigationBar(
      selectedIndex:nav,backgroundColor:Colors.white,elevation:0,
      indicatorColor:QColors.high,
      onDestinationSelected:(i){
        const r=[Routes.homeScreen,Routes.subjectSelection,Routes.statistic,Routes.quizHistory,Routes.settings];
        if(i!=nav) Navigator.pushReplacementNamed(c,r[i]);
      },
      destinations:const[
        NavigationDestination(icon:Icon(Icons.home_outlined),selectedIcon:Icon(Icons.home),label:'Home'),
        NavigationDestination(icon:Icon(Icons.menu_book_outlined),selectedIcon:Icon(Icons.menu_book),label:'Subjects'),
        NavigationDestination(icon:Icon(Icons.bar_chart_outlined),selectedIcon:Icon(Icons.bar_chart),label:'Stats'),
        NavigationDestination(icon:Icon(Icons.history),selectedIcon:Icon(Icons.history),label:'History'),
        NavigationDestination(icon:Icon(Icons.settings_outlined),selectedIcon:Icon(Icons.settings),label:'Settings'),
      ],
    ):null,
  );
}

class QCard extends StatelessWidget {
  final Widget child; final Color color; final VoidCallback? onTap; final EdgeInsets padding;
  const QCard({super.key,required this.child,this.color=QColors.surface,this.onTap,this.padding=const EdgeInsets.all(17)});
  @override Widget build(BuildContext c){
    final x=Container(width:double.infinity,padding:padding,decoration:BoxDecoration(
      color:color,borderRadius:BorderRadius.circular(18),border:Border.all(color:QColors.border.withOpacity(.55)),
      boxShadow:[BoxShadow(color:QColors.p.withOpacity(.04),blurRadius:18,offset:const Offset(0,7))]),child:child);
    return onTap==null?x:InkWell(onTap:onTap,borderRadius:BorderRadius.circular(18),child:x);
  }
}

class QButton extends StatelessWidget {
  final String text; final VoidCallback? onTap; final IconData? icon;
  const QButton({super.key,required this.text,this.onTap,this.icon});
  @override Widget build(BuildContext c)=>SizedBox(height:54,width:double.infinity,child:DecoratedBox(
    decoration:BoxDecoration(gradient:const LinearGradient(colors:[QColors.p,QColors.p2]),borderRadius:BorderRadius.circular(28)),
    child:ElevatedButton.icon(onPressed:onTap,icon:icon==null?const SizedBox(width:0):Icon(icon),label:Text(text),
      style:ElevatedButton.styleFrom(backgroundColor:Colors.transparent,shadowColor:Colors.transparent,foregroundColor:Colors.white,shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(28)),textStyle:const TextStyle(fontWeight:FontWeight.w800))))); 
}

class QSection extends StatelessWidget {
  final String title; final String? action;
  const QSection(this.title,{super.key,this.action});
  @override Widget build(BuildContext c)=>Row(children:[Expanded(child:Text(title,style:const TextStyle(fontSize:18,fontWeight:FontWeight.w800,color:QColors.text))),if(action!=null)Text(action!,style:const TextStyle(fontSize:12,fontWeight:FontWeight.w800,color:QColors.p))]);
}

class SplashScreen extends StatefulWidget{const SplashScreen({super.key});@override State<SplashScreen> createState()=>_SplashState();}
class _SplashState extends State<SplashScreen>{
 @override void initState(){super.initState();Timer(const Duration(milliseconds:1800),(){if(mounted)Navigator.pushReplacementNamed(context,Routes.introduction);});}
 @override Widget build(BuildContext c)=>Scaffold(backgroundColor:QColors.bg,body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[
  Container(width:96,height:96,decoration:BoxDecoration(gradient:const LinearGradient(colors:[QColors.p,QColors.p2]),borderRadius:BorderRadius.circular(28)),child:const Icon(Icons.psychology,color:Colors.white,size:54)),
  const SizedBox(height:22),const Text('Quiz Master',style:TextStyle(fontSize:30,fontWeight:FontWeight.w900,color:QColors.text)),
  const SizedBox(height:7),const Text('Learn. Play. Master.',style:TextStyle(color:QColors.muted,fontSize:16)),
  const SizedBox(height:28),Container(padding:const EdgeInsets.symmetric(horizontal:15,vertical:9),decoration:BoxDecoration(color:QColors.high,borderRadius:BorderRadius.circular(30)),child:const Row(mainAxisSize:MainAxisSize.min,children:[Icon(Icons.offline_bolt,color:QColors.green,size:17),SizedBox(width:6),Text('Offline First • 100% Free',style:TextStyle(fontSize:12,fontWeight:FontWeight.w700))]))
 ])));
}

class Introduction extends StatefulWidget {
  const Introduction({super.key});
  @override
  State<Introduction> createState() => _IntroState();
}

class _IntroState extends State<Introduction> {
  int page = 0;

  final data = const [
    ['Test Your Knowledge', 'Challenge yourself with quizzes across science, math, history and more, fully offline without interruptions.', Icons.lightbulb_outline],
    ['Build Your Streak', 'Answer consistently, earn XP and turn short practice sessions into lasting learning momentum.', Icons.local_fire_department],
    ['Track Your Progress', 'See accuracy, mastery and quiz history locally on your device.', Icons.trending_up],
  ];

  @override
  Widget build(BuildContext c) {
    final d = data[page];

    return Scaffold(
      backgroundColor: QColors.bg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.local_fire_department, color: QColors.amber),
                  const SizedBox(width: 7),
                  const Text('QuizMaster', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
                  const Spacer(),
                  TextButton(
                    onPressed: () => Navigator.pushReplacementNamed(c, Routes.languageSelection),
                    child: const Text('Skip'),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (i) => AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: i == page ? 26 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: i == page ? QColors.p : QColors.border,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 220,
                height: 220,
                decoration: const BoxDecoration(color: QColors.high, shape: BoxShape.circle),
                child: Icon(d[2] as IconData, size: 94, color: QColors.p),
              ),
              const SizedBox(height: 35),
              Text(
                d[0] as String,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: QColors.text),
              ),
              const SizedBox(height: 12),
              Text(
                d[1] as String,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 15, height: 1.5, color: QColors.muted),
              ),
              const Spacer(),
              Row(
                children: [
                  if (page > 0)
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => setState(() => page--),
                        child: const Text('Previous'),
                      ),
                    ),
                  if (page > 0) const SizedBox(width: 10),
                  Expanded(
                    child: QButton(
                      text: page == 2 ? 'Get Started' : 'Next',
                      onTap: () {
                        if (page == 2) {
                          Navigator.pushReplacementNamed(c, Routes.languageSelection);
                        } else {
                          setState(() => page++);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LanguageSelection extends StatefulWidget{const LanguageSelection({super.key});@override State<LanguageSelection> createState()=>_LangState();}
class _LangState extends State<LanguageSelection>{
 String selected='English';
 @override Widget build(BuildContext c)=>QShell(title:'Choose Your Language',back:true,child:ListView(padding:const EdgeInsets.fromLTRB(20,8,20,28),children:[
  const Text('Step 1 of 2',style:TextStyle(color:QColors.p,fontWeight:FontWeight.w800)),const SizedBox(height:7),
  const Text('Choose Your Language',style:TextStyle(fontSize:28,fontWeight:FontWeight.w900,color:QColors.text)),const SizedBox(height:7),
  const Text('Select your preferred language for quizzes and interface.',style:TextStyle(color:QColors.muted)),const SizedBox(height:20),
  ...[['English','EN','Default • Global Standard (US/UK)'],['ગુજરાતી','GU','સંપૂર્ણ ઇન્ટરફેસ અને ક્વિઝ'],['हिन्दी','HI','संपूर्ण क्विज़ और अध्ययन सामग्री']].map((x)=>Padding(padding:const EdgeInsets.only(bottom:10),child:QCard(
   color:selected==x[0]?QColors.high:Colors.white,onTap:()=>setState(()=>selected=x[0]),child:Row(children:[
    Container(width:48,height:48,alignment:Alignment.center,decoration:BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(14)),child:Text(x[1],style:const TextStyle(fontWeight:FontWeight.w900,color:QColors.p))),
    const SizedBox(width:12),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(x[0],style:const TextStyle(fontSize:16,fontWeight:FontWeight.w800)),const SizedBox(height:4),Text(x[2],style:const TextStyle(fontSize:11,color:QColors.muted))])),
    if(selected==x[0])const Icon(Icons.check_circle,color:QColors.green)
  ])))),
  const SizedBox(height:8),const QCard(color:QColors.low,child:Row(crossAxisAlignment:CrossAxisAlignment.start,children:[Icon(Icons.translate,color:QColors.p),SizedBox(width:10),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('More Languages Coming Soon',style:TextStyle(fontWeight:FontWeight.w800)),SizedBox(height:4),Text('RTL-ready layouts can support Arabic and other languages later.',style:TextStyle(fontSize:12,color:QColors.muted))]))])),
  const SizedBox(height:20),QButton(text:'Continue',icon:Icons.arrow_forward,onTap:()=>Navigator.pushReplacementNamed(c,Routes.homeScreen))
 ]));
}

class HomeScreen extends StatelessWidget{const HomeScreen({super.key});
 @override Widget build(BuildContext c)=>QShell(bottom:true,nav:0,child:ListView(padding:const EdgeInsets.fromLTRB(20,16,20,28),children:[
  Row(children:[const Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('Hello, Scholar 👋',style:TextStyle(color:QColors.muted,fontSize:14)),SizedBox(height:4),Text('Ready to elevate your rank?',style:TextStyle(fontSize:23,fontWeight:FontWeight.w900))])),IconButton(onPressed:()=>Navigator.pushNamed(c,Routes.settings),icon:const Icon(Icons.settings_outlined))]),
  const SizedBox(height:16),QCard(color:QColors.high,child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
   const Row(children:[Icon(Icons.auto_awesome,color:QColors.p),SizedBox(width:7),Text('Daily Quest Active',style:TextStyle(fontWeight:FontWeight.w900))]),const SizedBox(height:8),
   const Text('Ready for a Quiz?',style:TextStyle(fontSize:22,fontWeight:FontWeight.w900)),const SizedBox(height:5),const Text('Challenge yourself and boost your brain power today.',style:TextStyle(color:QColors.muted)),const SizedBox(height:15),
   QButton(text:'Start Quiz',icon:Icons.play_arrow,onTap:()=>Navigator.pushNamed(c,Routes.subjectSelection))
  ])),
  const SizedBox(height:22),Row(children:[_m('12','Quizzes',Icons.quiz),_m('86%','Accuracy',Icons.track_changes),_m('920','Questions',Icons.psychology)]),
  const SizedBox(height:22),const QSection('Explore Subjects',action:'View All'),const SizedBox(height:10),
  ...[['📐','Mathematics','120 Qs',.72],['🔬','Science','180 Qs',.85],['🏛️','History','95 Qs',.48],['🌍','Geography','110 Qs',.60]].map((x)=>Padding(padding:const EdgeInsets.only(bottom:9),child:QCard(onTap:()=>Navigator.pushNamed(c,Routes.subSubjectSelection),padding:const EdgeInsets.all(14),child:Row(children:[
   Text(x[0] as String,style:const TextStyle(fontSize:25)),const SizedBox(width:12),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(x[1] as String,style:const TextStyle(fontWeight:FontWeight.w800)),const SizedBox(height:6),LinearProgressIndicator(value:x[3] as double,minHeight:6,borderRadius:BorderRadius.circular(8),color:QColors.p,backgroundColor:QColors.high),const SizedBox(height:5),Text((x[2] as String)+' • Progress '+((x[3] as double)*100).round().toString()+'%',style:const TextStyle(fontSize:11,color:QColors.muted))])),const Icon(Icons.chevron_right)
  ])))),
  const SizedBox(height:7),const QSection('Recent Quiz',action:'Last activity'),const SizedBox(height:10),QCard(child:Row(children:[Container(width:44,height:44,decoration:BoxDecoration(color:QColors.high,borderRadius:BorderRadius.circular(13)),child:const Icon(Icons.biotech,color:QColors.p)),const SizedBox(width:10),const Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('Science — Biology',style:TextStyle(fontWeight:FontWeight.w800)),SizedBox(height:4),Text('Oct 6 • Score: 8/10 • 80%',style:TextStyle(fontSize:11,color:QColors.muted))])),TextButton(onPressed:()=>Navigator.pushNamed(c,Routes.quizResult),child:const Text('View'))]))
 ]));
 Widget _m(String a,String b,IconData i)=>Expanded(child:Column(children:[Icon(i,color:QColors.p,size:21),const SizedBox(height:4),Text(a,style:const TextStyle(fontWeight:FontWeight.w900,fontSize:18)),Text(b,style:const TextStyle(fontSize:10,color:QColors.muted))]));
}

class SubjectSelection extends StatefulWidget{const SubjectSelection({super.key});@override State<SubjectSelection> createState()=>_SubjectState();}
class _SubjectState extends State<SubjectSelection>{String selected='Science';
 @override Widget build(BuildContext c)=>QShell(title:'Choose a Subject',back:true,bottom:true,nav:1,child:ListView(padding:const EdgeInsets.fromLTRB(20,8,20,28),children:[
  const Text('Select a subject to test your knowledge',style:TextStyle(color:QColors.muted)),const SizedBox(height:14),Wrap(spacing:7,children:['All Subjects 6','In Progress','Mastered'].map((x)=>Chip(label:Text(x))).toList()),const SizedBox(height:12),
  ...[['🔬','Science','Medium','4 Sub-topics • 180 Questions',.75],['📐','Mathematics','Hard','5 Sub-topics • 120 Questions',.60],['🏛️','History','Easy','3 Sub-topics • 95 Questions',.90],['🌍','Geography','Standard','4 Sub-topics • 110 Questions',.40],['📚','English Literature','Standard','3 Sub-topics • 85 Questions',.50],['💡','General Knowledge','Popular','6 Sub-topics • 250 Questions',.82]].map((x)=>Padding(padding:const EdgeInsets.only(bottom:9),child:QCard(
   color:selected==x[1]?QColors.high:Colors.white,onTap:()=>setState(()=>selected=x[1] as String),child:Row(children:[
    Text(x[0] as String,style:const TextStyle(fontSize:27)),const SizedBox(width:11),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Row(children:[Text(x[1] as String,style:const TextStyle(fontWeight:FontWeight.w900,fontSize:16)),const SizedBox(width:6),Container(padding:const EdgeInsets.symmetric(horizontal:6,vertical:2),decoration:BoxDecoration(color:QColors.low,borderRadius:BorderRadius.circular(20)),child:Text(x[2] as String,style:const TextStyle(fontSize:9,fontWeight:FontWeight.w700)))]),const SizedBox(height:4),Text(x[3] as String,style:const TextStyle(fontSize:11,color:QColors.muted)),const SizedBox(height:4),Text('Mastery Level '+((x[4] as double)*100).round().toString()+'%',style:const TextStyle(fontSize:10,color:QColors.green,fontWeight:FontWeight.w700))])),const Icon(Icons.chevron_right)
  ])))),
  QButton(text:'Start '+selected+' Challenge',icon:Icons.play_arrow,onTap:()=>Navigator.pushNamed(c,Routes.subSubjectSelection))
 ]));
}

class SubSubjectSelection extends StatefulWidget{const SubSubjectSelection({super.key});@override State<SubSubjectSelection> createState()=>_SubState();}
class _SubState extends State<SubSubjectSelection>{String selected='Biology';
 @override Widget build(BuildContext c)=>QShell(title:'Choose a Topic',back:true,child:ListView(padding:const EdgeInsets.fromLTRB(20,8,20,28),children:[
  const Row(children:[Icon(Icons.science,color:QColors.p),SizedBox(width:7),Text('Science Quizzes',style:TextStyle(fontWeight:FontWeight.w800))]),const SizedBox(height:7),const Text('Select a specialty discipline to configure questions, difficulty, and streak multipliers.',style:TextStyle(color:QColors.muted)),const SizedBox(height:15),
  const QCard(color:QColors.high,child:Row(children:[Icon(Icons.shuffle,color:QColors.p),SizedBox(width:10),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('All Topics (Mixed)',style:TextStyle(fontWeight:FontWeight.w900)),SizedBox(height:4),Text('Comprehensive blend across all disciplines',style:TextStyle(fontSize:11,color:QColors.muted))])),Icon(Icons.star,color:QColors.amber)])),const SizedBox(height:18),const QSection('Available Modules'),const SizedBox(height:10),
  ...[['🧬','Biology',60,.80,48],['⚛️','Physics',50,.65,32],['🧪','Chemistry',45,.40,18],['🔭','Astronomy & Space',25,.90,22]].map((x)=>Padding(padding:const EdgeInsets.only(bottom:9),child:QCard(color:selected==x[1]?QColors.high:Colors.white,onTap:()=>setState(()=>selected=x[1] as String),child:Row(children:[
   Text(x[0] as String,style:const TextStyle(fontSize:26)),const SizedBox(width:11),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(x[1] as String,style:const TextStyle(fontWeight:FontWeight.w900)),const SizedBox(height:4),Text(x[2].toString()+' Questions • '+((x[3] as double)*100).round().toString()+'% Mastered',style:const TextStyle(fontSize:11,color:QColors.muted)),const SizedBox(height:4),Text('Progress '+x[4].toString()+'/'+x[2].toString(),style:const TextStyle(fontSize:10,color:QColors.green,fontWeight:FontWeight.w700))])),if(selected==x[1])const Icon(Icons.check_circle,color:QColors.green)
  ])))),
  QCard(color:QColors.low,child:Row(children:[const Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('Selected: Biology',style:TextStyle(fontWeight:FontWeight.w900)),SizedBox(height:4),Text('60 Questions ready',style:TextStyle(fontSize:11,color:QColors.muted))])),TextButton.icon(onPressed:()=>Navigator.pushNamed(c,Routes.quizConfiguration),icon:const Icon(Icons.arrow_forward),label:const Text('Continue'))]))
 ]));
}

class QuizConfiguration extends StatefulWidget{const QuizConfiguration({super.key});@override State<QuizConfiguration> createState()=>_ConfigState();}
class _ConfigState extends State<QuizConfiguration>{int q=10;String diff='Mixed';bool timed=true;
 @override Widget build(BuildContext c)=>QShell(title:'Customize Your Quiz',back:true,child:ListView(padding:const EdgeInsets.fromLTRB(20,8,20,28),children:[
  const Text('Step 2 / 3',style:TextStyle(color:QColors.p,fontWeight:FontWeight.w800)),const SizedBox(height:5),const Text('Fine-tune your session settings',style:TextStyle(fontSize:24,fontWeight:FontWeight.w900)),const SizedBox(height:16),
  const QCard(child:Row(children:[Icon(Icons.menu_book,color:QColors.p),SizedBox(width:10),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('Subject & Domain',style:TextStyle(fontWeight:FontWeight.w800)),SizedBox(height:4),Text('Science • Biology',style:TextStyle(fontSize:11,color:QColors.muted))])),Text('Edit',style:TextStyle(color:QColors.p,fontWeight:FontWeight.w800))])),const SizedBox(height:16),
  const Text('Number of Questions',style:TextStyle(fontWeight:FontWeight.w900)),const SizedBox(height:7),Wrap(spacing:7,children:[5,10,15,20].map((n)=>ChoiceChip(label:Text(n.toString()),selected:q==n,onSelected:(_)=>setState(()=>q=n))).toList()),const SizedBox(height:15),
  const Text('Difficulty',style:TextStyle(fontWeight:FontWeight.w900)),const SizedBox(height:7),Wrap(spacing:7,children:['Easy','Medium','Hard','Mixed'].map((x)=>ChoiceChip(label:Text(x),selected:diff==x,onSelected:(_)=>setState(()=>diff=x))).toList()),const SizedBox(height:15),
  const Text('Quiz Mode',style:TextStyle(fontWeight:FontWeight.w900)),const SizedBox(height:7),QCard(child:Row(children:[Icon(timed?Icons.timer:Icons.school,color:QColors.p),const SizedBox(width:10),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(timed?'Timed Quiz':'Practice',style:const TextStyle(fontWeight:FontWeight.w800)),const SizedBox(height:3),Text(timed?'Countdown challenge':'Untimed, instant feedback',style:const TextStyle(fontSize:11,color:QColors.muted))])),Switch(value:timed,onChanged:(v)=>setState(()=>timed=v))])),const SizedBox(height:14),
  const QCard(color:QColors.high,child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('Session Overview',style:TextStyle(fontWeight:FontWeight.w900)),SizedBox(height:7),Text('Science • Biology • 10 Questions • Mixed Difficulty • 10 Mins'),SizedBox(height:7),Row(children:[Icon(Icons.bolt,color:QColors.amber),SizedBox(width:5),Text('Max +1,000 XP',style:TextStyle(fontWeight:FontWeight.w800))])])),const SizedBox(height:16),
  QButton(text:'Start Quiz',icon:Icons.play_arrow,onTap:()=>Navigator.pushNamed(c,Routes.quizPlay))
 ]));
}

class Question{final String q;final List<String> a;final int correct;const Question(this.q,this.a,this.correct);}
const questions=[
 Question('What is the largest planet in our solar system?',['Earth','Mars','Jupiter','Saturn'],2),
 Question('What is the powerhouse of the cell?',['Nucleus','Ribosome','Mitochondria','Golgi apparatus'],2),
 Question('How many chambers are in the human heart?',['2','3','4','5'],2),
 Question('Which gas do plants primarily absorb during photosynthesis?',['Oxygen','Nitrogen','Carbon dioxide','Hydrogen'],2),
 Question('What is the chemical symbol for gold?',['Ag','Au','Gd','Go'],1),
 Question('Which planet is known as the Red Planet?',['Venus','Mars','Jupiter','Mercury'],1),
 Question('What is H2O commonly known as?',['Salt','Water','Oxygen','Hydrogen'],1),
 Question('Which organ is mainly responsible for filtering blood?',['Heart','Liver','Kidneys','Lungs'],2),
 Question('What is the capital of Japan?',['Seoul','Beijing','Tokyo','Kyoto'],2),
 Question('Which force keeps planets in orbit around the Sun?',['Magnetism','Friction','Gravity','Electricity'],2),
];

class QuizPlay extends StatefulWidget {
  const QuizPlay({super.key});
  @override
  State<QuizPlay> createState() => _PlayState();
}

class _PlayState extends State<QuizPlay> {
  int i = 0;
  int? selected;
  bool answered = false;

  void pick(int x) {
    if (answered) return;
    setState(() {
      selected = x;
      answered = true;
    });
  }

  void next() {
    if (!answered) return;
    if (i == questions.length - 1) {
      Navigator.pushReplacementNamed(context, Routes.quizResult);
      return;
    }
    setState(() {
      i++;
      selected = null;
      answered = false;
    });
  }

  @override
  Widget build(BuildContext c) {
    final x = questions[i];

    return Scaffold(
      backgroundColor: QColors.bg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 10, 18, 18),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: () => Navigator.pop(c), icon: const Icon(Icons.close)),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Question ${i + 1} of 10',
                        style: const TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.timer_outlined, size: 18),
                      SizedBox(width: 4),
                      Text('09:32', style: TextStyle(fontWeight: FontWeight.w800)),
                    ],
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: LinearProgressIndicator(
                  value: (i + 1) / 10,
                  minHeight: 8,
                  color: QColors.p,
                  backgroundColor: QColors.high,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  _pill(Icons.public, 'Astronomy & Space', QColors.high, QColors.p),
                  const Spacer(),
                  _pill(Icons.local_fire_department, '3 Streak', const Color(0xFFFFF1D6), QColors.amber),
                ],
              ),
              const SizedBox(height: 14),
              Expanded(
                child: ListView(
                  children: [
                    QCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(x.q, style: const TextStyle(fontSize: 23, height: 1.25, fontWeight: FontWeight.w900)),
                          const SizedBox(height: 7),
                          const Text('Select one option to confirm your answer.', style: TextStyle(color: QColors.muted)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    ...List.generate(
                      4,
                      (n) => Padding(
                        padding: const EdgeInsets.only(bottom: 9),
                        child: _option(n, x.a[n], x.correct),
                      ),
                    ),
                    if (answered)
                      QCard(
                        color: selected == x.correct ? const Color(0xFFE6F7F0) : const Color(0xFFFFEDEC),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              selected == x.correct ? Icons.check_circle : Icons.info,
                              color: selected == x.correct ? QColors.green : QColors.red,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    selected == x.correct ? 'Well done! +50 XP' : 'Keep learning',
                                    style: const TextStyle(fontWeight: FontWeight.w900),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    selected == x.correct
                                        ? 'That is the correct answer.'
                                        : 'The correct answer is ${x.a[x.correct]}.',
                                    style: const TextStyle(fontSize: 11, color: QColors.muted),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: next,
                      child: const Text('Skip'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 2,
                    child: QButton(
                      text: i == 9 ? 'Finish' : 'Next Question',
                      icon: Icons.arrow_forward,
                      onTap: answered ? next : null,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pill(IconData icon, String t, Color bg, Color fg) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: fg, size: 15),
          const SizedBox(width: 5),
          Text(t, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w800)),
        ],
      ),
    );
  }

  Widget _option(int n, String text, int correct) {
    final sel = selected == n;
    final good = answered && n == correct;
    final bad = answered && sel && n != correct;
    final b = good ? QColors.green : bad ? QColors.red : sel ? QColors.p : QColors.border;
    final bg = good
        ? const Color(0xFFE6F7F0)
        : bad
            ? const Color(0xFFFFEDEC)
            : sel
                ? const Color(0xFFEEF0FF)
                : Colors.white;

    return InkWell(
      onTap: () => pick(n),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: b, width: sel || good ? 1.6 : 1),
        ),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              alignment: Alignment.center,
              decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: b)),
              child: Text(String.fromCharCode(65 + n), style: const TextStyle(fontWeight: FontWeight.w900)),
            ),
            const SizedBox(width: 11),
            Expanded(child: Text(text, style: const TextStyle(fontWeight: FontWeight.w700))),
            if (good)
              const Icon(Icons.check_circle, color: QColors.green)
            else if (bad)
              const Icon(Icons.cancel, color: QColors.red),
          ],
        ),
      ),
    );
  }
}

class QuizResult extends StatelessWidget{const QuizResult({super.key});
 @override Widget build(BuildContext c)=>QShell(title:'Quiz Result',back:true,child:ListView(padding:const EdgeInsets.fromLTRB(20,12,20,28),children:[
  Container(padding:const EdgeInsets.all(24),decoration:BoxDecoration(gradient:const LinearGradient(colors:[QColors.p,QColors.p2]),borderRadius:BorderRadius.circular(24)),child:const Column(children:[Icon(Icons.emoji_events,color:QColors.amber,size:58),SizedBox(height:10),Text('Quiz Complete!',style:TextStyle(color:Colors.white,fontSize:28,fontWeight:FontWeight.w900)),SizedBox(height:5),Text('Foundations of Computational Logic',style:TextStyle(color:Colors.white70)),SizedBox(height:16),Text('8 / 10',style:TextStyle(color:Colors.white,fontSize:44,fontWeight:FontWeight.w900)),Text('QUESTIONS SOLVED',style:TextStyle(color:Colors.white70,fontSize:11,fontWeight:FontWeight.w800))])),
  const SizedBox(height:14),QCard(child:Row(children:[_rm('80%','Score',Icons.track_changes),_rm('8 / 10','Correct',Icons.check_circle,QColors.green),_rm('2 / 10','Incorrect',Icons.close,QColors.red)])),
  const SizedBox(height:10),QCard(child:Row(children:[_rm('0','Skipped',Icons.horizontal_rule),_rm('06:42','Time Taken',Icons.timer),_rm('5','Streak',Icons.local_fire_department,QColors.amber)])),
  const SizedBox(height:16),QButton(text:'Review Answers',icon:Icons.arrow_forward,onTap:()=>Navigator.pushNamed(c,Routes.reviewAnswers)),const SizedBox(height:8),
  OutlinedButton.icon(onPressed:()=>Navigator.pushReplacementNamed(c,Routes.quizPlay),icon:const Icon(Icons.replay),label:const Text('Try Again')),TextButton.icon(onPressed:()=>Navigator.pushNamedAndRemoveUntil(c,Routes.homeScreen,(_)=>false),icon:const Icon(Icons.home_outlined),label:const Text('Back to Home'))
 ]));
 Widget _rm(String a,String b,IconData i,[Color col=QColors.p])=>Expanded(child:Column(children:[Icon(i,color:col,size:21),const SizedBox(height:4),Text(a,style:const TextStyle(fontWeight:FontWeight.w900)),Text(b,style:const TextStyle(fontSize:10,color:QColors.muted))]));
}

class ReviewAnswers extends StatelessWidget{const ReviewAnswers({super.key});
 @override Widget build(BuildContext c)=>QShell(title:'Review Answers',back:true,child:ListView(padding:const EdgeInsets.fromLTRB(20,8,20,28),children:[
  const QCard(color:QColors.high,child:Row(children:[Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('Score Overview',style:TextStyle(fontWeight:FontWeight.w800)),SizedBox(height:5),Text('8 / 10 Correct • 80% Accuracy',style:TextStyle(fontSize:18,fontWeight:FontWeight.w900)),SizedBox(height:4),Text('+850 XP Earned',style:TextStyle(color:QColors.p,fontWeight:FontWeight.w800))])),Icon(Icons.military_tech,size:44,color:QColors.amber)])),
  const SizedBox(height:12),Wrap(spacing:6,children:['All (10)','Correct (8)','Incorrect (2)','Skipped (0)'].map((x)=>Chip(label:Text(x))).toList()),const SizedBox(height:10),
  ...[
   ['1',true,'What is the primary function of chlorophyll in plants?','Light Absorption','Chlorophyll captures light energy for photosynthesis.'],
   ['2',false,'What is the powerhouse of the cell?','Ribosome','Mitochondria produce most cellular ATP through cellular respiration.'],
   ['3',true,'How many chambers are in the human heart?','4 Chambers','The human heart has two atria and two ventricles.'],
   ['4',true,'Which gas do plants absorb during photosynthesis?','Carbon dioxide','Carbon dioxide is used to make sugars during photosynthesis.'],
  ].map((x)=>Padding(padding:const EdgeInsets.only(bottom:10),child:QCard(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
   Row(children:[Text('Question '+x[0].toString()+' of 10',style:const TextStyle(fontWeight:FontWeight.w800)),const Spacer(),Icon(x[1] as bool?Icons.check_circle:Icons.cancel,color:x[1] as bool?QColors.green:QColors.red,size:20)]),const SizedBox(height:9),Text(x[2] as String,style:const TextStyle(fontWeight:FontWeight.w800)),const SizedBox(height:10),
   Container(padding:const EdgeInsets.all(11),decoration:BoxDecoration(color:x[1] as bool?const Color(0xFFE6F7F0):const Color(0xFFFFEDEC),borderRadius:BorderRadius.circular(12)),child:Row(children:[Icon(x[1] as bool?Icons.check:Icons.close,color:x[1] as bool?QColors.green:QColors.red,size:17),const SizedBox(width:7),Expanded(child:Text(x[3] as String,style:const TextStyle(fontWeight:FontWeight.w700)))])),
   if(!(x[1] as bool))... [const SizedBox(height:8),const Text('Correct Answer: Mitochondria',style:TextStyle(color:QColors.green,fontWeight:FontWeight.w800))],
   const SizedBox(height:8),Row(crossAxisAlignment:CrossAxisAlignment.start,children:[const Icon(Icons.lightbulb_outline,size:17,color:QColors.amber),const SizedBox(width:6),Expanded(child:Text(x[4] as String,style:const TextStyle(fontSize:11,color:QColors.muted)))])
 ])))),
 QButton(text:'Done Reviewing',icon:Icons.check,onTap:()=>Navigator.pop(c))
 ]));
}

class Statistic extends StatelessWidget{const Statistic({super.key});
 @override Widget build(BuildContext c)=>QShell(title:'Statistics',back:true,bottom:true,nav:2,child:ListView(padding:const EdgeInsets.fromLTRB(20,8,20,28),children:[
  Row(children:[_s('24','Quizzes Taken',Icons.quiz),_s('240','Questions Answered',Icons.task_alt),_s('82%','Avg. Score',Icons.insights)]),const SizedBox(height:16),
  QCard(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[const Text('Performance Trend',style:TextStyle(fontSize:18,fontWeight:FontWeight.w900)),const SizedBox(height:4),const Text('Last 7 Quizzes • Score Progression',style:TextStyle(fontSize:11,color:QColors.muted)),const SizedBox(height:18),SizedBox(height:145,child:CustomPaint(painter:_Chart())),const SizedBox(height:6),const Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:[Text('Q18'),Text('Q19'),Text('Q20'),Text('Q21'),Text('Q22'),Text('Q23'),Text('Q24')])])),const SizedBox(height:14),
  const QSection('Subject Mastery Breakdown'),const SizedBox(height:9),
  ...[['Mathematics',.88],['Science',.76],['History',.91],['Geography',.72]].map((x)=>Padding(padding:const EdgeInsets.only(bottom:9),child:QCard(padding:const EdgeInsets.all(14),child:Column(children:[Row(children:[Expanded(child:Text(x[0] as String,style:const TextStyle(fontWeight:FontWeight.w800))),Text(((x[1] as double)*100).round().toString()+'%',style:const TextStyle(fontWeight:FontWeight.w900,color:QColors.p))]),const SizedBox(height:7),LinearProgressIndicator(value:x[1] as double,minHeight:7,borderRadius:BorderRadius.circular(8),color:QColors.p,backgroundColor:QColors.high)])))),
  const QCard(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text('Streaks & Records',style:TextStyle(fontSize:18,fontWeight:FontWeight.w900)),SizedBox(height:13),Text('🔥 Current Streak   5 Days',style:TextStyle(fontWeight:FontWeight.w800)),SizedBox(height:9),Text('🏆 Best Streak   12 Days',style:TextStyle(fontWeight:FontWeight.w800)),SizedBox(height:9),Text('🎯 Best Score   100%',style:TextStyle(fontWeight:FontWeight.w800))]))
 ]));
 Widget _s(String a,String b,IconData i)=>Expanded(child:Column(children:[Icon(i,color:QColors.p),const SizedBox(height:4),Text(a,style:const TextStyle(fontWeight:FontWeight.w900,fontSize:18)),Text(b,textAlign:TextAlign.center,style:const TextStyle(fontSize:10,color:QColors.muted))]));
}
class _Chart extends CustomPainter{@override void paint(Canvas c,Size s){final g=Paint()..color=QColors.border.withOpacity(.25);for(var i=1;i<5;i++)c.drawLine(Offset(0,s.height*i/5),Offset(s.width,s.height*i/5),g);final v=[.42,.58,.52,.72,.64,.86,.82];final p=Paint()..color=QColors.p..strokeWidth=4..style=PaintingStyle.stroke..strokeCap=StrokeCap.round;final path=Path();for(var i=0;i<v.length;i++){final x=s.width*i/(v.length-1),y=s.height*(1-v[i]);i==0?path.moveTo(x,y):path.lineTo(x,y);}c.drawPath(path,p);for(var i=0;i<v.length;i++){final x=s.width*i/(v.length-1),y=s.height*(1-v[i]);c.drawCircle(Offset(x,y),4,Paint()..color=QColors.p);}}@override bool shouldRepaint(covariant CustomPainter o)=>false;}

class QuizHistory extends StatelessWidget{const QuizHistory({super.key});
 @override Widget build(BuildContext c)=>QShell(title:'Quiz History',back:true,bottom:true,nav:3,child:ListView(padding:const EdgeInsets.fromLTRB(20,8,20,28),children:[
  const QCard(color:QColors.low,child:Row(children:[Icon(Icons.cloud_done,color:QColors.green),SizedBox(width:9),Expanded(child:Text('Offline storage: 12 sessions saved\\nSynchronized locally on your device',style:TextStyle(fontSize:11,color:QColors.muted)))])),const SizedBox(height:12),
  Wrap(spacing:6,children:['All (12)','Science (5)','Math (4)','History (3)'].map((x)=>Chip(label:Text(x))).toList()),const SizedBox(height:9),
  ...[
   ['Oct 06, 2026 • 10:45 AM','Science — Biology','8/10 (80%)','10 Questions • 06:42 mins • Mixed',true],
   ['Oct 05, 2026 • 04:20 PM','Mathematics — Algebra','9/10 (90%)','10 Questions • 08:15 mins • Hard',true],
   ['Oct 03, 2026 • 02:10 PM','History — Ancient Rome','6/10 (60%)','10 Questions • 05:30 mins • Medium',false]
  ].map((x)=>Padding(padding:const EdgeInsets.only(bottom:9),child:QCard(onTap:()=>Navigator.pushNamed(c,Routes.quizResult),child:Row(children:[const Icon(Icons.schedule,color:QColors.p),const SizedBox(width:10),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(x[0] as String,style:const TextStyle(fontSize:10,color:QColors.muted)),const SizedBox(height:4),Text(x[1] as String,style:const TextStyle(fontWeight:FontWeight.w900)),const SizedBox(height:4),Text(x[2] as String,style:TextStyle(fontWeight:FontWeight.w800,color:x[4] as bool?QColors.green:QColors.red)),const SizedBox(height:3),Text(x[3] as String,style:const TextStyle(fontSize:10,color:QColors.muted))])),const Icon(Icons.chevron_right)]))))
 ]));
}

class Settings extends StatefulWidget{const Settings({super.key});@override State<Settings> createState()=>_SettingsState();}
class _SettingsState extends State<Settings>{bool sound=true,haptic=true,feedback=true,timer=true;
 @override Widget build(BuildContext c)=>QShell(title:'Settings',back:true,bottom:true,nav:4,child:ListView(padding:const EdgeInsets.fromLTRB(20,8,20,28),children:[
  const Text('Appearance',style:TextStyle(fontWeight:FontWeight.w900,color:QColors.muted)),const SizedBox(height:7),const QCard(child:Row(children:[Icon(Icons.palette_outlined,color:QColors.p),SizedBox(width:10),Expanded(child:Text('Theme Mode',style:TextStyle(fontWeight:FontWeight.w800))),Text('Light',style:TextStyle(fontSize:11,color:QColors.muted))])),const SizedBox(height:17),
  const Text('General & Language',style:TextStyle(fontWeight:FontWeight.w900,color:QColors.muted)),const SizedBox(height:7),_row('Language','English',Icons.language,()=>Navigator.pushNamed(c,Routes.languageSelection)),const SizedBox(height:17),
  const Text('Quiz Preferences',style:TextStyle(fontWeight:FontWeight.w900,color:QColors.muted)),const SizedBox(height:7),
  _toggle('Sound Effects','In-game dynamic audio triggers',Icons.volume_up,sound,(v)=>setState(()=>sound=v)),_toggle('Haptic Feedback','Physical micro-vibrations',Icons.vibration,haptic,(v)=>setState(()=>haptic=v)),_toggle('Instant Answer Feedback','Highlight correctness immediately',Icons.bolt,feedback,(v)=>setState(()=>feedback=v)),_toggle('Show Question Timer','Live visual countdown clock',Icons.timer,timer,(v)=>setState(()=>timer=v)),
  const SizedBox(height:8),const Text('Local Data Management',style:TextStyle(fontWeight:FontWeight.w900,color:QColors.muted)),const SizedBox(height:7),_row('Clear Quiz History','',Icons.delete_outline,()=>_dialog(c,'Clear Quiz History')),const SizedBox(height:9),_row('Reset Statistics','',Icons.restart_alt,()=>_dialog(c,'Reset Statistics')),const SizedBox(height:9),_row('Reset All App Data','',Icons.warning_amber,()=>_dialog(c,'Reset All App Data')),
  const SizedBox(height:17),const Text('Information & Guides',style:TextStyle(fontWeight:FontWeight.w900,color:QColors.muted)),const SizedBox(height:7),_row('How to Play','',Icons.help_outline,()=>Navigator.pushNamed(c,Routes.howToPlay)),const SizedBox(height:9),_row('About QuizMaster','v2.4.0',Icons.info_outline,()=>Navigator.pushNamed(c,Routes.about)),const SizedBox(height:20),const Center(child:Text('QuizMaster • Designed for Master Learners',style:TextStyle(fontSize:11,color:QColors.muted)))
 ]));
 Widget _row(String a,String b,IconData i,VoidCallback tap)=>QCard(onTap:tap,child:Row(children:[Icon(i,color:QColors.p),const SizedBox(width:10),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(a,style:const TextStyle(fontWeight:FontWeight.w800)),if(b.isNotEmpty)Padding(padding:const EdgeInsets.only(top:3),child:Text(b,style:const TextStyle(fontSize:11,color:QColors.muted)))])),const Icon(Icons.chevron_right)]));
 Widget _toggle(String a,String b,IconData i,bool v,ValueChanged<bool> f)=>Padding(padding:const EdgeInsets.only(bottom:9),child:QCard(child:Row(children:[Icon(i,color:QColors.p),const SizedBox(width:10),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(a,style:const TextStyle(fontWeight:FontWeight.w800)),const SizedBox(height:3),Text(b,style:const TextStyle(fontSize:10,color:QColors.muted))])),Switch(value:v,onChanged:f)])));
 void _dialog(BuildContext c,String title)=>showDialog(context:c,builder:(_)=>AlertDialog(title:Text(title),content:const Text('UI-only action for now. No data is changed.'),actions:[TextButton(onPressed:()=>Navigator.pop(c),child:const Text('Cancel')),FilledButton(onPressed:()=>Navigator.pop(c),child:const Text('OK'))]));
}

class HowToPlay extends StatelessWidget {
  const HowToPlay({super.key});

  @override
  Widget build(BuildContext c) => QShell(
        title: 'How to Play',
        back: true,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 28),
          children: [
            const QCard(
              color: QColors.high,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.school, color: QColors.p),
                      SizedBox(width: 7),
                      Text('Beginner Guide', style: TextStyle(fontWeight: FontWeight.w900)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('Master the game in 6 simple steps', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900)),
                  SizedBox(height: 6),
                  Text('Everything you need to know to practice smart, build momentum, and improve.', style: TextStyle(color: QColors.muted)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            ...[
              ['1', 'Choose a Subject', 'Select from Mathematics, Science, History, and more.', Icons.category],
              ['2', 'Customize Your Quiz', 'Pick question count, difficulty and timed or untimed preferences.', Icons.tune],
              ['3', 'Answer Questions', 'Tap one of the 4 text choices before time expires.', Icons.touch_app],
              ['4', 'Instant Feedback', 'Learn immediately from clear explanations.', Icons.check_circle],
              ['5', 'Review Your Results', 'Inspect score, speed, accuracy and topic breakdowns.', Icons.insights],
              ['6', 'Track Improvement', 'Watch subject mastery grow in Stats and History.', Icons.trending_up],
            ].map(
              (x) => Padding(
                padding: const EdgeInsets.only(bottom: 9),
                child: QCard(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 34,
                        height: 34,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(color: QColors.p, shape: BoxShape.circle),
                        child: Text(x[0] as String, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900)),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(x[3] as IconData, color: QColors.p, size: 18),
                                const SizedBox(width: 5),
                                Text(x[1] as String, style: const TextStyle(fontWeight: FontWeight.w900)),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(x[2] as String, style: const TextStyle(fontSize: 11, color: QColors.muted)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const QCard(
              color: Color(0xFFFFF5DE),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.lightbulb, color: QColors.amber),
                  SizedBox(width: 8),
                  Expanded(child: Text('Tip: You can practice untimed quizzes to study at your own pace without pressure.', style: TextStyle(fontWeight: FontWeight.w700))),
                ],
              ),
            ),
            const SizedBox(height: 15),
            QButton(
              text: 'Try a Practice Quiz',
              icon: Icons.arrow_forward,
              onTap: () => Navigator.pushNamed(c, Routes.subjectSelection),
            ),
          ],
        ),
      );
}

class About extends StatelessWidget{const About({super.key});
 @override Widget build(BuildContext c)=>QShell(title:'About QuizMaster',back:true,child:ListView(padding:const EdgeInsets.fromLTRB(20,8,20,28),children:[
  const Center(child:Column(children:[CircleAvatar(radius:39,backgroundColor:QColors.p,child:Icon(Icons.psychology,color:Colors.white,size:44)),SizedBox(height:11),Text('QuizMaster',style:TextStyle(fontSize:28,fontWeight:FontWeight.w900)),SizedBox(height:3),Text('v2.4.0 (Offline Build)',style:TextStyle(color:QColors.muted)),SizedBox(height:3),Text('Learn. Play. Master.',style:TextStyle(color:QColors.p,fontWeight:FontWeight.w800))])),const SizedBox(height:20),
  const QCard(child:Text('QuizMaster is an offline-first educational quiz platform designed to empower students and curious minds to test and build knowledge anywhere, anytime without internet connectivity.',style:TextStyle(height:1.5,color:QColors.muted))),const SizedBox(height:17),const QSection('App Highlights'),const SizedBox(height:9),
  ...[['100% Private','No login, accounts, or telemetry required',Icons.lock],['Zero Data Usage','Pure local device storage with zero pings',Icons.flash_on],['10,000+ Curated Questions','Spanning academic subjects & topics',Icons.menu_book]].map((x)=>Padding(padding:const EdgeInsets.only(bottom:9),child:QCard(child:Row(children:[Icon(x[2] as IconData,color:QColors.green),const SizedBox(width:10),Expanded(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text(x[0] as String,style:const TextStyle(fontWeight:FontWeight.w900)),const SizedBox(height:3),Text(x[1] as String,style:const TextStyle(fontSize:11,color:QColors.muted))])),const Icon(Icons.check_circle,color:QColors.green)])))),
  const SizedBox(height:3),const QSection('Legal & Credits'),const SizedBox(height:9),_a('Open Source & Licenses',Icons.gavel),_a('Privacy & Local Storage Policy',Icons.shield_outlined),_a('Credits & Attributions',Icons.attribution),_a('Local SQLite Database • 14.8 MB Installed',Icons.storage),const SizedBox(height:20),const Center(child:Text('Crafted with ♥ for Flutter',style:TextStyle(fontSize:11,color:QColors.muted)))
 ]));
 Widget _a(String t,IconData i)=>Padding(padding:const EdgeInsets.only(bottom:9),child:QCard(child:Row(children:[Icon(i,color:QColors.p),const SizedBox(width:10),Expanded(child:Text(t,style:const TextStyle(fontWeight:FontWeight.w700))),const Icon(Icons.chevron_right)])));
}
