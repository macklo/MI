function [y1,xf1] = lm10_10v3(x1,xi1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 10-Jun-2019 01:18:08.
%
% [y1,xf1] = myNeuralNetworkFunction(x1,xi1) takes these arguments:
%   x1 = 13xTS matrix, input #1
%   xi1 = 13x10 matrix, initial 10 delay states for input #1.
% and returns:
%   y1 = 2xTS matrix, output #1
%   xf1 = 13x10 matrix, final 10 delay states for input #1.
% where TS is the number of timesteps.

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1;-1];
x1_step1.gain = [1;1;1;1;1;1;1;1;1;1;1;1;1];
x1_step1.ymin = -1;

% Layer 1
b1 = [1.5225620541342756997;-1.6557685327394553454;1.4443105829862119549;0.12955697168481411508;0.16654264682225305982;-0.088865286773589693969;0.39955539354332941793;-0.63518828409650718303;-0.70836333648357030501;1.6977651881301265568];
IW1_1 = [-0.10654742077563833513 0.036759004153822119609 0.038737806265199216382 -0.020376668466335793456 0.0018522919196838870393 -0.30743127347483273359 0.08794129188354685156 -0.034279460254236310268 0.16698611182305461709 0.029847969781551159096 -0.0034219109110948716518 0.035337272970361578717 0.23851467375841090002 0.11613516571244673903 0.069851927635254135174 0.0096135601641626818731 -0.23056285952210581192 -0.022681275361646099226 -0.14728653110552708538 -0.048903312957484283696 -0.12713907198671262067 -0.059920022195097802364 0.071532347908110485712 0.16830324026091544876 -0.0077314115065972906921 -0.010887756776058167552 0.1835891448242283619 -0.15053829153888836911 0.016436769005738781357 -0.55970942255620692585 0.012386887160688156428 -0.050869663251408119009 0.12410109220427156806 0.13378348620323599061 -0.01574192812183816681 0.054958966963714273035 0.35966119792401768374 -0.064502537550077843065 0.16927160965565468675 -0.3673457563702729467 0.088608770829800606594 0.053718815735611498419 -0.11274206206692369281 0.12763318436755452523 0.12550425014897528819 0.095944524523172730612 0.20071287203564708301 -0.099266164046401622612 -0.045770179542812081119 0.04036603680618545964 -0.14074573652905492116 -0.076261765906301390294 -0.059034352288132592446 0.058662059551874409791 -0.042057952388120725673 -0.083629675868183664389 0.12713945761819722691 0.062564199339655152121 0.009513242692431813155 -0.033201248122046250755 -0.026031812943105695629 -0.18914797658741858144 0.10688981296666062726 0.16875364188456520864 -0.091281722412828170121 -0.0034065425653092163555 -0.18924907153583103714 -0.078324696491599593573 -0.20369373541918553427 0.18163299318958614492 -0.084598950485383642151 0.008694831380165583129 0.019377266564235152285 -0.2699519748165065125 0.12223584348661153953 0.50173332444896057147 0.029900275440250669717 0.18168481681039558295 -0.033730265938763555333 0.18544293099076422648 0.12981499342804364572 0.20938753922373956606 -0.021062947108557564246 0.027967625405859529442 0.048424685827813729322 -0.32872653962545667072 0.17877453819900751553 -0.042112228686973479652 -0.033501945048170764241 -0.14094865765614209008 0.082596794326275591036 -0.13540003005816397819 0.11382806363652847592 0.26875978902565689221 0.094693298579536705484 0.0095548661111436328924 0.13417968268258542719 -0.11969294442885911045 -0.04495209466242717361 0.17595793576264207037 -0.082529854288177217914 -0.20460364026532840143 0.028501832865231040842 0.040223870018155132022 -0.13163396494282403326 -0.11515447704422934749 0.025824337261424631235 -0.34497626024262412203 -0.13864978267048286287 0.091042832681956342711 0.056221372986133694161 0.046347190882500402531 0.041812598629019551155 0.037203691399707451704 -0.39232247554910870679 -0.21851738627731762121 0.089928277791875080305 0.012686913875891055181 0.024757932350903247287 -0.13278238925892799083 0.13401751664005723264 0.20456658163604801715 -0.0067716832339213620107 -0.09541712744409508451 0.21195890032679090553 -0.19547063439180531463 -0.12691090125008980261 -0.073009865431790679779 -0.06666825680306356916 -0.051159841241901725384;0.75098236998441947332 -0.11069949568164424991 -0.069244181546607580513 -0.66267462266679899585 -0.57382422855130343908 0.075836400411076004824 0.0028358086050479115042 0.039274886852569891593 -0.32786166691625273639 -0.011399385903365989378 -0.1604141778589900369 -0.19784740428571856441 -0.11358265209126722217 0.22264607892386961696 0.10030132802193958419 0.052023581498337537199 -0.081489448950187365339 -0.26418535645230939446 0.027457011834985001197 -0.01401411066493003614 0.0051895646772813861652 0.088517010445425189924 -0.09484737292696175659 0.32525455258676916337 0.043018253108398414597 -0.06155051893844413341 -0.34113729403652254257 0.11727813816794528667 -0.3279741001206761819 0.037662658710804750029 0.86201082518348060013 0.0473264949575470939 -0.11959526723673186144 0.29761312914441634403 -0.052362633205896055855 -0.45473956400498777297 0.24511117086663322673 -0.40871872722775015596 -0.10558868981380831187 0.17176524763556658137 -0.057397866871685826462 0.25504052334721655226 0.043597148813621464103 -0.33188931026158552395 0.0640000267564538039 0.18774611679615385573 -0.3573387657727402078 0.13671048662131141116 0.67968907616628482238 -0.28254852997947244031 0.41513136426358626663 0.53535700430882937617 0.17001700697138036333 0.0018221967571336781209 0.22366667857381103413 -0.20700067584483888838 -0.096437865159573546436 0.030641678584375775518 -0.037270653524530676648 0.021824322905736916189 -0.032999410709986284895 0.33937455283049422494 -0.18989291218743936662 -0.17651241416570045972 0.10959399873065088504 -0.14771573637429952219 0.086663537055584036195 0.23398417025217399523 -0.010266049575194387961 0.045926364206860512129 0.080755048387990413516 -0.16779683572976139549 0.26466971414080753267 -0.24568385374809384447 0.2162990473685479087 -0.42336175020704358563 0.24814266041632115911 0.12813051478605691491 0.024722614588876472286 -0.052389051567071777404 -0.43514062512636991764 -0.15734738484943294745 -0.31822482284900277527 -0.00057982323788637220308 0.16259225014008824028 0.16807072058553210181 0.10493685253811367575 0.27151354754717593742 0.079502777177075295567 0.12471739877686421893 -0.00019016449270898606871 0.065304418047659684721 0.0081211385737724479245 -0.0017949932883412548883 -0.12970389794728479083 0.076006300629497508536 0.090794329789194355707 0.086964198698780956209 -0.20576344782082789386 0.019643569024510854765 0.024655535341084326706 0.19437955792254324461 0.08533988061264730085 -0.052398913512647221635 -0.17304600224039176637 0.12338479453514819562 -0.15298258440626094634 -0.02184884811823754186 -0.071723622289615041048 0.038023143948464288577 0.013055026815620700276 -0.43809474646247725804 0.097930794216138122854 0.31694006080035175277 0.27095968189666969073 -0.1834881944044394475 0.04690676587461500846 0.12897658766770908612 -0.051863334523767574968 0.16219628376642047929 0.11488767519942259809 0.1240781397605168479 -0.095662407642492952586 -0.069784703587613780562 0.2763270894766501895 -0.34292210052240701401 -0.16982589363006328487 -0.052405141801518402567 0.086789470900983919921 0.079357977994624850915;-0.2867616685083339001 -0.13869615670187368517 0.15606475919923601392 0.10105014107409251989 0.1145262811219828758 0.047515758436305371992 -0.015264798620977383659 -0.19454259374861207488 0.00027881074160667883993 -0.049352943139982348442 0.061211348898398347529 -0.24596250113291989736 0.37150148833001722659 0.015783477224894551516 -0.049355907354471068027 -0.12305608116032813737 0.1199873397350974813 0.035170711102612668697 -0.03988693304897822367 0.045123390596712539824 0.011336332413840292943 -0.084275181989057382226 -0.028439562683575371482 0.15337093752633579324 -0.21745316553853408226 0.23232887805436938655 0.18009819583240541108 -0.26965953664964775749 0.001878025919289958573 0.11485788926186998871 0.07692092045680357093 -0.088049456724051761158 0.37432835842547379501 -0.29673963521292845424 0.13041306756504766895 0.18302779076045166962 0.27821592087358648637 -0.26731980621589851443 0.073270340159006741576 -0.10443301003270268057 -0.10744466221429371799 -0.15713428557685293896 0.37099740503773304123 0.020823203713204792298 0.0056203848686116148967 -0.31201979291489334578 -0.011630522715562776476 0.12996242293689780345 -0.21118320509185170564 0.22886948690173128385 0.00044274309361681200153 -0.025632701449326014687 -0.17246145225760475816 -0.05421459346782577654 -0.042370139879926077553 0.10288618591730995522 -0.017863759790019320683 0.064184300938909519263 0.030867785721987478498 0.054679656683354699309 0.0069607747369148809807 -0.2123334863471728895 0.11630785530590263821 0.17200347256054843159 -0.074075662575050646441 0.35631136160482629327 -0.026930281380546101933 0.17097783163752094948 0.16001022792116412208 0.25418053193513967525 0.10038006939037937004 -0.20534576890443065333 0.16779208772350789891 -0.20025494482226940951 0.087717727161836969718 -0.037629071665759961096 -0.26574667293361831089 -0.15866181794411468586 -0.29670268602327853902 -0.18196009442333299644 0.044366425357113492556 0.058437559769718240565 -0.037320781158590776716 0.17876985413456836227 0.18929994638726710399 0.1578613940189820819 0.14147550029647437686 -0.070643678325470291024 0.05452517492287495271 0.081592974489551467476 -0.39673377855967945083 -0.19991047926962016157 -0.23238418968618734795 -0.12544756727636915961 -0.081076622763634087487 -0.040128184277942333114 -0.15930940551743544287 -0.14377028162993968352 0.16045191030036673463 0.24158564764134196623 -0.016871173099090135128 0.045120557000553937477 -0.012812442964672123707 -0.30850000752964984452 0.062147603374509252649 0.38224261444822993372 0.0843358304375243506 -0.081085519658420909805 0.28974407204624885726 0.13501672963744493217 0.13535159609867944419 0.18141275342527976577 -0.10846683043882307529 -0.0066522742894082696058 0.026734140628715832855 0.19593629239791723884 0.018128499511174858694 -0.15513167960779150611 -0.12710525726884983055 -0.18982915443319409166 -0.013542378889923330221 -0.26073691645345553614 -0.11358581438347803427 0.12767458082596963576 0.35079665053985237266 0.2225494029330973289 -0.070916476403608680323 -0.22252211519288964126 -0.18945848511345431131 -0.26004495013816214533;0.29106309120153833758 0.055123756160908865542 -0.096696106331982348281 -0.28350172312158011811 0.23811264074534543855 0.14681374060773649814 0.024584369913148385045 -0.11440247147150847673 -0.034653640727354301232 0.035720420371187812381 -0.16640633813151892162 0.058462872558645087584 -0.066341732915130180448 -0.16683703388670520495 0.034104483820666608995 0.082364178119680692136 0.24199146663680773384 -0.043534009456259181725 0.049565636024104874069 0.019513832751705650903 0.11976032234023378797 -0.28840008855053639314 0.15342426554406252137 -0.05173755580769263257 0.088740233362779780135 0.020025323998904030059 -0.36585299276654376088 0.082867405038350799851 0.14505569204576146403 0.37690465110587262343 0.16571638930360962916 -0.20932133176270067976 -0.083204803881294892021 0.081906159436475597935 -0.19613026349752957223 -0.08924969783219051378 -0.045031795204012278755 0.054272773368906457314 0.29280183172241469602 -0.0060221426110894466996 0.08644029168510806993 -0.022485866733136482265 -0.1297547129455834114 -0.014864620415613233329 -0.0063662626500770947216 0.075809396278499516231 0.053276130861843268294 -0.091909816710718905686 0.22536818239391762098 -0.01660922528413547386 -0.041317797450166351969 -0.01458138189079083262 0.18301135732737314199 -0.023077865457618883249 -0.22314071342741892412 -0.054989833852759920085 -0.028067716934650259464 0.05730051033988871334 -0.012357284037160739393 -0.050730759916937165355 -0.046015800206578950926 0.10666199594114061933 -0.094830173559614511225 0.035222905561861653223 0.035555093467980303235 0.10800235277070793782 -0.044864146022664697089 -0.13026104963158921524 0.10827307155054172183 -0.040305891660042392211 -0.10503386787414679959 -0.40001575321957449916 -0.22194904513637736532 0.15006334349154962227 -0.10500578492408099707 -0.012101997093498814348 -0.2665456234764362331 0.079386888963302024158 0.040218297934238617097 0.035976119819630711372 0.11780879759469220502 -0.14239551731424260339 0.067597989978755268492 -0.061941511187280591522 0.30848147000107872806 0.075591253385829448863 0.19019668808946052496 -0.037625190077096797026 -0.049161463315202380553 0.10759234868285690034 -0.13017093634040502459 0.029165666697661678242 -0.028563360722310394968 0.041439633867020507496 -0.14790973198383369769 0.1575998193397850633 0.16537867360857785859 -0.034955257681872797804 -0.068887172741642285767 0.053380258774562622248 -0.16193333607555088216 -0.081159207388810827855 0.12297442521526077974 0.098340409245997989496 -0.1008178258123245824 -0.079954706856173785035 -0.21089429729233463706 0.11950110778768469055 -0.06120488026103695911 0.12896657239303105369 0.089637967510148283679 -0.35443449741699573075 -0.18872601516206616301 -0.26698610272170403279 -0.14499821434703449863 0.20047616359954845144 0.087688762399680347803 -0.11127440755740169998 -0.060811574542604870941 0.10301860615123560605 -0.14179325616614629757 0.072085748177279404536 -0.0066266199003096413339 0.056522429138920610159 -0.0082040541517891182877 0.062672235586217164838 -0.3072001648001211338 -0.14122512579423929235 -0.077364411632432392163 -0.11596650845135962615;-0.05692129938371885689 0.11990560798884758453 -0.065498690584192664765 0.3641640587711076904 0.3197967756563382391 -0.11242142079463993132 0.10473539180744849408 0.42207190950390632844 -0.13168101908062243566 -0.035032549965220878552 -0.26833179032811693698 0.057832598282887982821 0.10899837418063638983 0.10631854378039171105 -0.11215529662005170597 -0.051941430814743214106 0.13705994467409390869 0.17743379479208928884 -0.034763458403599123425 0.0075212649839693900694 0.18417697180884498587 0.21645951150875869518 0.2543164824075295205 -0.26029694803845515594 0.075622574949343185358 0.15546606515564806439 0.32837353989999201742 0.22521917911809011259 0.23740542842722731076 -0.10614291956683449825 0.13180132288425169818 -0.095722562993656015728 0.080892527621925669479 0.050499253071771180168 0.046528167691709233778 0.067344452085003878028 0.064583333358770936283 0.43833877578284252685 0.025204455580273260606 -0.17123215634731125956 -0.042053561087916024874 0.028209934968889537055 -0.084969517858109175346 0.027713468831511670065 -0.038699995276396018107 -0.0063894686502358848113 -0.015640696264474226312 0.017173728815461006963 0.020491198750662045075 0.044565797934519715828 -0.2583060910564233259 0.12650616568703085263 -0.13766990240703935733 -0.034345825431481839807 -0.054064062084215547266 -0.028201112582522561839 0.00029334307152677555064 0.074207692275580702801 0.00088516466696107222456 -0.11337151928178998417 -0.05423547012115662036 -0.15739129102078361355 0.077057134301394936138 0.18994727338442901621 -0.068642396484340548191 0.15649440678791046166 -0.019036120137728360091 -0.036039049215669249904 -0.21623285918767748415 0.23972534702754458302 0.071884016754128268745 -0.20363123596195698006 -0.0087885953313809554027 0.040888692302193475892 -0.18692782807698193892 -0.1262734051735705243 -0.094054097352178525626 -0.081143344719474735927 -0.14390203425796516123 -0.00016746240917352335498 -0.16303326070682222504 -0.23947832962950260649 -0.15434871960906793031 -0.036010512377676447138 0.19909861707875259329 -0.042234152622813866951 -0.052181072461619217029 -0.045893670159528200669 0.045097612453202012839 -0.18262061792362985213 -0.072711242385212301875 -0.01451394854533521149 0.021848585582743614009 -0.054927691607794461304 0.081422206412326794678 -0.01732490551589440167 0.013137663482297482279 -0.13183809132421611676 -0.059359930730907325969 -0.077196879498346568371 0.069707148563796672569 0.10766944260338079387 -0.080889527936046271006 0.063382274484208689369 0.076146092302843873534 -0.18400647301330624872 -0.093780584441071526691 -0.27936058703643057433 -0.28731832667228407452 0.0065957024557200209097 -0.0081937189690909142947 0.041283807994528749774 -0.33496015848672100468 0.11973361724890400903 -0.1149035983253778731 0.045014553618292249548 0.12879047517054914573 0.13317128678401909947 0.0075821684774065589707 0.26666639232858729835 -0.095041136276894200297 -0.14735927687622460414 -0.23193537295561073019 0.030529184838594472517 0.069951072904932840024 -0.073303856216377222266 0.0018391968041496196962 -0.40962181882998194293 -0.31381759063399128351 0.050994188979158680541;-0.6309072804163556869 0.046040667895953048261 0.11997522285716519241 0.02767155283764386256 0.34207632157020700925 0.059183894594354559404 -0.04609688656181150368 0.27145217549260036716 0.075253311335821290728 -0.021739125852673540917 0.10908570040217485664 -0.30093923802119221245 -0.016916099944172906938 -0.31008976380616987134 -0.013554954010059261718 -0.072933916740779466958 0.35038786267884064474 0.28125994756714550737 0.1014030705655745157 0.069185141842763558939 -0.0087577847640113726246 0.032059402485311090658 -0.21331523199526286616 -0.094298144311571269194 -0.0037165893305813671454 -0.0029149776251337989122 -0.52107194581423399438 0.11595400651421948479 -0.018683203790892506657 0.14022054499502839553 0.23186489348362496199 -0.091547534607921879357 -0.061191853013056886346 -0.28584220534237275713 -0.068278534121233691589 -0.02502443079645179369 -0.074940756584228773729 -0.024794857934656262116 -0.061274507384527734932 0.24693889807985103246 -0.068240903661468621522 0.13168952139096840037 0.11529176505759605731 0.077035416548822330252 0.14987317355476012515 0.014616431196619667637 -0.28347366757675179771 0.26219655185687962273 -0.10970799238596828928 -0.012486604543029133918 0.43122318529877340376 -0.18146933739688142495 -0.060379684780973552627 0.012326450508160492064 0.012367799858956800285 0.25447290333563277187 0.05638205298489321754 -0.030122296937241301723 0.0033532873175238283453 0.034221775117876884753 0.015809737539857805083 -0.038757283766340036579 0.0026759011228715398265 0.044183861045886917152 0.047592082627376811055 -0.35663266215271910431 0.17845560385213052323 0.13470984206434136188 0.12493274744067492388 0.28786514525706419221 0.07205314022467962376 -0.052475239367507468813 -0.11228506595135136215 0.14291242983091709262 -0.25018074138735624246 -0.27437617291217625271 -0.26974715576804070283 -0.20364436012154202293 0.20950686903479451284 -0.10357721419169071964 -0.14816969232414972657 0.39072231345870411801 -0.022273553192404288437 0.17548166229711306685 0.038403440885488443479 -0.085496376761320241888 0.08001105421396742523 -0.013389069494184115475 0.040386287430349054883 0.1540379578544207595 -0.16720739112155219575 0.078391450737838430651 -0.065703064764934968056 0.0070444586662308013997 0.07721302974161314836 0.18674597887999430657 0.14635090469976891336 -0.069973845107472981697 -0.068336922163160146448 0.036683475207521062944 -0.26398943338193586738 -0.1591357202735547427 -0.021227935306271455973 -0.063299292816028293607 0.15547880233626593105 0.09552677810611520659 -0.18430958287693949282 0.10016711095963133638 -0.052254850503581168342 -0.078306076935643592618 0.10688158806494993391 -0.12404070965870968302 0.23876997718618742095 -0.21903547335223583215 0.1330948953686182934 0.078141776135708385098 0.10110107434588933017 -0.12390917710173500466 -0.15341587085914495936 0.14950993702333473245 0.27059561227847866993 -0.1598357693484808717 -0.36770077686034247089 0.027649579197607316444 -0.13008562404728490902 -0.11612984247360963463 -0.25978445400848237945 -0.24924781277780738709 0.072928431406195204367 -0.07123050340343853315;-0.3237611919846181685 0.043810933358859549536 -0.11582476246310380308 0.49764909063743306694 -0.17048307825391248449 0.023654998918629824983 0.042698902718482485696 -0.066532901318465703655 -0.24257183452231936838 -0.22690865022231024306 -0.037208452659462626366 0.18452740898706149197 0.075131525574292062908 0.14560001099649919065 -0.10230673732017049604 0.031715431073531710759 -0.010944223359474499965 0.038527108941442712864 -0.0041333565754869778727 -0.0482645504960754132 0.17420903722901218136 0.048459166838639482211 0.19761792971090633153 0.020454105469915308257 0.1159943605394996996 0.037330375866121937034 0.52269335305432063077 0.16455948206813986179 -0.066653490320416675097 -0.25789359246963172723 -0.11291186905706193655 -0.10350427999324111894 -0.026212473072655763373 0.4004421362182493116 -0.039114729652467761234 0.71006917294555593756 0.12843679213604408673 0.19727257779819737382 0.069520555558004126784 -0.44657367429360389499 -0.085903463301369678562 0.12143580576333248833 0.053778258710533377585 0.023746438015085094553 -0.14817249056508460803 -0.00077261208745489466654 0.088912305365487553921 -0.050244476415491387544 -0.29648895850996670465 0.12103176241982595285 -0.14726522895218355225 0.12687333596941088865 0.087873222052076677135 -0.018028892898938761458 -0.048573796773487963596 -0.21431370431858459691 -0.097677953383612028948 0.0084312148865371191325 -0.028110371282155315054 -0.12127127892231273631 -0.074465926432237122823 0.10210548518067086299 -0.19339456055999076911 0.028411189219129093231 -0.027389586403154767003 0.54329920691582256342 -0.031103973570859155123 -0.11095133582132389594 -0.50573887767901981594 -0.073530689692692413617 0.039544931042483404127 -0.11030700120136936737 0.08069751831338543846 -0.15912661608164480054 0.44138428946221563987 -0.2630457588618934639 0.15322590273875208444 -0.15824667924408211683 -0.28555442731137481438 -0.027806323989834798305 -0.082693933930764129681 -0.056315979710458458074 -0.16383846945488650393 -0.096433432751758196844 0.14261437458672018841 0.12916984750818247263 0.011137322262250448635 0.093589411858342116957 0.1243204549786542934 -0.17775625356707550062 -0.021432240232878589647 -0.0037758052736862812368 0.060865695472738519378 -0.087674949481723815636 0.023627571583731868388 -0.14088895126226197441 -0.045420506982416820885 -0.012779863722097798903 -0.069156465716485676642 0.060096265384343233729 0.26981273769024327613 0.15711876078331185602 0.012411376141219170044 -0.046643469981153609649 0.16374813485968608973 -0.04854481110446834391 -0.10699521505604979443 -0.23241564090077193594 0.0042337073283172706878 0.15555141509244063691 -0.05966073593924262064 -0.1858655606823710893 -0.20950832114932552153 -0.1203195608710299902 -0.17766171858604579148 0.093851783535640775913 0.33390681579281200619 0.069132146231139196546 0.017808176681103751737 0.18995872583830025748 -0.2028426133195237735 0.077858358333442068133 -0.090746354196854450702 0.082672423319778823303 0.005149006160173184854 0.10486944278975565692 -0.26592036997800194698 -0.075444060335936424799 -0.0578243475152717748 -0.14097149791765398175;-0.34389272493714306833 -0.053733790480708309989 0.049175986421251177694 -0.10634603781674416279 -0.068320293809994506185 0.052661395306825259377 -0.14397298703458524805 0.28286590039511122496 -0.033389737588620883868 0.21180625874394479191 -0.10372712248666933477 -0.047965479887663704794 0.20006791096003659347 -0.11483792487341744348 0.20972692067540751881 0.059000290127114538019 -0.03605346486101930481 -0.29543350018793673728 0.094156163480643040309 -0.034956713258965453617 -0.1304724590018274677 -0.23962229544602769993 -0.073224778156989134281 -0.069218654595791129225 -0.036565323691828639785 0.045332399482969583382 0.019592223766215305369 -0.2537387507663108055 -0.050424571531079424858 -0.1466308847103484081 -0.19073101843883202844 -0.096272327344204433608 0.023551781481281293396 -0.10760971740749714076 -0.16234387985837769874 0.28469189941338207683 0.06365360457010969808 0.22029974179523917344 0.08505187371782629846 -0.18995427050583593709 0.1617042962603293943 0.0036457668297807141293 -0.075769142205767345266 -0.0081483223928872465514 0.092471575285050927606 -0.032867824053123238792 -0.22245643828564570788 -0.018837550972933554683 -0.0056886253939061647358 -0.15764928020392249275 -0.05206204986273856028 0.093109043659127907477 0.1979421290481644391 0.024099546859301809731 -0.014928624110774788361 -0.22037684524863174196 0.15098707998872620828 -0.04557926594731556702 -0.030539323963943855456 0.074527819962078870053 0.04131899576241701566 -0.18339712036159225295 -0.00077828167786691258324 -0.16372497101685934418 0.094513546411993151763 0.25074538289277958913 -0.068550401305297867238 -0.16504673183668749914 0.0049279777758462987164 -0.12163332449353488063 -0.1604486745442738338 -0.054822925741270178701 0.029677370694234567194 -0.069288124126047595519 -0.025023824096540851769 0.017829155583251890538 0.204112744541811858 -0.004247243050299352729 -0.026731260126943857947 0.10403268288897479787 0.050921263107442882312 0.10807057303687712946 0.11731811009980441796 -0.031511859519505601435 0.022563140908557113851 0.054288556464938346469 0.20210685128355965201 -0.18867162451863009331 0.10527301207147901629 -0.076725369587258882009 0.11634671200585192108 -0.044841841152676670257 -0.037725740003916805043 0.17266225711219190808 -0.1329270832189982654 0.15194903555768113357 0.038832743785037968087 0.077630708964100680891 0.15279617926304933651 0.019520928804555307684 -0.074985069824196851074 -0.16407127646069216698 0.14162545035880902411 0.045384381184652947128 0.082506821496950627504 0.12558590934044930321 -0.062902315091116531298 0.1552165909511934172 0.0049521440922442854643 0.2848996221641365012 0.013781780829510472883 -0.086670010363061600334 0.056178940448786157669 -0.010264965703696529026 -0.012360240468362447552 0.034341876526785386492 0.20190362591209387588 -0.3907134094708951122 -0.041074372225632538314 -0.039784212223375567397 0.16981840677010623386 0.13956733737673723827 0.22979801825676038352 -0.093335566081159837548 -0.072111174636104918845 0.028029202588882726893 0.072407493292042768296 0.10186647292071654425 -0.04595593798492635107 -0.069856221527705084084;0.2925769261812588562 -0.047935063710647846102 -0.12353434988216036028 -0.22846579676729145136 0.074572455243224949895 -0.014264834446766438622 0.015634580083856052662 -0.46037832435606917958 0.085892324510264600468 -0.01803125222882305187 -0.35559997142158217276 -0.1944284787437597084 -0.21184369986016635123 0.11648248972001740142 0.22527235931349798292 0.057065618763041246753 0.048441814520112168319 -0.013207581932946752326 0.22773022762981542932 0.096296151872722474119 -0.09402001787542663136 0.11115834379585720626 -0.0084419831843424997242 -0.23969097029426658652 -0.17161243442089946232 0.14631757328143238372 0.21861940805783469655 0.025174271763822912706 0.30425396786681813133 0.21165365239840291944 0.18358441704029238029 0.19558821523402472597 0.19015659442036625393 -0.3033357245484101794 0.2275904113977426646 0.03939766693328254632 -0.11708581887279853606 -0.23883518349269106107 -0.036556300227874288788 -0.015416264186017601331 0.13298671853553936661 -0.125040950068086687 0.21208212643230966998 0.24360643228597397836 0.1378583256730137041 0.069258965560360194469 0.14404442182877194578 0.13979155456347025499 -0.11524093625601193602 -0.042017949225929815404 -0.19701091204471485319 -0.10940083302441944157 -0.087519639553228625872 -0.04790032996740069271 -0.039938385751736645013 0.20405376575625897018 0.1060232495635171357 0.25152986214105499396 0.032750613834139505331 -0.041315922065685080355 -0.036147787286132194995 -0.051937466803529952486 0.068594395365489793659 -0.10479806492183749156 0.19925068564440184815 0.072686247721886129702 0.062766361003130669016 0.21624544116311747444 -0.045370444112219618371 0.20367741059969302064 0.059292569421838310639 -0.24683449176420799165 -0.27008022046747182099 -0.0067279246889421287503 -0.024504934785302939781 0.10643759169749984761 0.16470839542023302249 0.099910474125018439162 -0.17087930802982087553 0.016841828244726957109 -0.1616054538841638355 -0.060772834489457971952 0.024570127153228090572 -0.10782933446191728111 0.11147979707980187891 0.025555006254225413193 -0.10853422440367045676 0.01398453542191734067 -0.0054187995996917009967 0.16541281512201741477 0.42370618430413997668 -0.012757878507732500414 -0.10537880251303037571 -0.035495532606779206519 -0.14437960532142293801 -0.023501377229651322642 0.046042621848835202369 0.037538872762062761024 0.091137013794162557989 -0.15057013083564546596 -0.19947869088642372626 0.24219428326936659479 -0.0060372251605669228353 0.36217732791802204062 -0.060048492179115606215 -0.10534562940643908691 0.15360170668290840101 0.056835984467440252288 0.15809785792525671289 -0.15893258669943660655 0.13539416910690263429 0.24040284605562819986 0.040496158833865480986 0.13266449504143795757 -0.048718920170042985529 0.0015649231579161742428 0.029535382561640396298 -0.15350301469997751358 0.026567522798252515837 0.058174724879513341202 -0.011758435902198501044 0.014902071949580573268 -0.11518985646230198161 -0.2404294380192591174 0.32848972562927708507 -0.37554625961318960359 -0.070269656671788388591 -0.0033970545910718200067 -0.45654435458970071826 -0.016490071095440272247;-0.22864653900816564458 0.08858922170059366219 0.1457208648239899651 -0.1025633312759765825 0.20705304403344340636 0.079971296776577022181 -0.14393632454651517083 -0.060451061229648869744 0.35639455499575595221 -0.20599562018521791473 0.070534723490626088926 0.18487395775133946829 0.29884704234510839349 -0.045095091979903613455 0.049039111386252082214 -0.11022496521289604221 -0.1071300191621157305 0.46753776891671311455 0.076429086924637276712 -0.010742023085411495434 -0.079973472345311769072 -0.0068648988106926288333 -0.10018251342958349459 0.03861028326092174473 -0.065683433201980570559 0.22341087755269697923 0.088708012254787346751 -0.074470168823728644103 0.41499446120585520292 -0.045520943325948179381 0.20411533033831472106 -0.11332255132753048243 0.23358259140395010167 -0.22105496444553129898 0.069562405928036585845 -0.1062992863242261804 0.023675346575323941156 0.50342732867500117333 -0.10435205949278664184 -0.11110519502088558874 0.097784277768598285019 -0.26798338265733551156 0.13853026733899601042 -0.23246630991935698929 0.19598355971046188539 -0.085185772204572768329 -0.1310206268175103661 0.049411642290930000987 0.2220666193014177725 -0.019214465595613416243 -0.018883096439934750344 -0.12633107385210390339 -0.10621880856052748343 0.015790252190512124586 -0.048184911057425484915 0.069274793590063915572 -0.0401713191640495626 -0.088558813870634647825 0.022381100893296576593 -0.042618777603420712752 -0.0098806724846646730442 -0.010077016576664748343 -0.16461541137080010211 -0.083202896530847544887 -0.11162325193074557061 0.2092151667976469287 -0.010608339007634850701 0.1049604876191436581 -0.15494927132907482248 0.059866621890661157745 -0.059386636326173670997 0.42990857745428057157 0.013449498277598054621 -0.49680940845276688744 0.11391162062152991596 0.095603007766986436433 0.27781457707541040714 -0.28486829563373866625 -0.10076917297435339371 0.15150351431764016996 -0.044480988563536993929 0.10059767766097080233 -0.17175872639420888821 -0.023454113788523578421 -0.31459264320105212454 -0.022617326296092109261 0.067483413485534146647 -0.032317648780954583154 0.090380002149045082782 0.016762548846193416063 0.11976905779723329148 -0.19556489783651540004 0.1266488118240707561 0.031126026593066326298 0.12168631604127429224 -0.13662055486837873519 -0.028527247541466346087 -0.022493422641100851989 -0.01980699135048336057 0.22323464430874587205 -0.15647905217777605125 0.051910132254647356476 -0.11525826961196068698 0.1660439653645889857 0.23516999323393378285 -0.035477823345962770929 -0.14816056543290076486 0.34881255348914841363 0.014624381836296175205 0.17200396567950518301 0.12526605188174452787 0.1175600727738364687 0.57657687096568543961 -0.30278921415492915381 0.081746695310533065704 -0.49656692324444201558 0.22915084642460803455 -0.21501698481642861349 0.093425312482639091827 0.22497634046790471185 0.46046637181790506244 0.11790163666977104828 -0.34401060677318207048 -0.28334017102139291699 -0.0129401533177261642 0.047004417517553874484 -0.19448867106777148472 -0.23742548542165392567 0.073611644492142261353 -0.21447918630672432871];

% Layer 2
b2 = [0.026535256690946917857;0.31855707893218615512];
LW2_1 = [0.77953493674864260399 -1.1041777281697868762 -0.81554601921329417102 -0.31398264458482499917 -0.44429002463534339462 0.45892930961011391133 0.87685572568181124886 0.032871125840038699362 0.3024210119617151693 -1.0266191919708627101;0.68671719906769312924 -1.1630101565143420306 -0.84863824278500588072 -0.4199013006034483797 -0.27514569709038372292 0.4816470021308955074 0.86363810323015621773 0.23398550288344824311 0.27991656703068340528 -1.000566865083882151];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = [1;1];
y1_step1.xoffset = [-1;-1];

% ===== SIMULATION ========

% Dimensions
TS = size(x1,2); % timesteps

% Input 1 Delay States
xd1 = mapminmax_apply(xi1,x1_step1);
xd1 = [xd1 zeros(13,1)];

% Allocate Outputs
y1 = zeros(2,TS);

% Time loop
for ts=1:TS
	
	% Rotating delay state position
	xdts = mod(ts+9,11)+1;
	
	% Input 1
	xd1(:,xdts) = mapminmax_apply(x1(:,ts),x1_step1);
	
	% Layer 1
	tapdelay1 = reshape(xd1(:,mod(xdts-[1 2 3 4 5 6 7 8 9 10]-1,11)+1),130,1);
	a1 = tansig_apply(b1 + IW1_1*tapdelay1);
	
	% Layer 2
	a2 = b2 + LW2_1*a1;
	
	% Output 1
	y1(:,ts) = mapminmax_reverse(a2,y1_step1);
end

% Final delay states
finalxts = TS+(1: 10);
xits = finalxts(finalxts<=10);
xts = finalxts(finalxts>10)-10;
xf1 = [xi1(:,xits) x1(:,xts)];
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end
