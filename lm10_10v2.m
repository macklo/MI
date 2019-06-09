function [y1,xf1] = lm10_10v2(x1,xi1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 09-Jun-2019 21:45:22.
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
b1 = [1.1586286712947428956;-1.3625901857038329457;-0.3274646735663502839;0.54618273566527397733;0.10209834188585933945;-0.020237073212617369411;0.47613343098187888014;0.71261615264013855597;1.5431144459993928475;1.4549026581296220506];
IW1_1 = [0.23319705374555521615 -0.048645083647456108245 -0.208705727536459551 -0.60204203523227040051 -0.30799921318325940156 0.026848942533220239437 0.32213242132558678188 -0.56945521726229775261 0.43949018825893920726 0.47206614666927598778 -0.21030062645401900734 -0.058812445211458154459 0.056617632778166643304 0.19593927431656804616 0.10532164268039902189 -0.043536475182283040919 -0.022791863831180800282 0.28604146126043156206 -0.087723167502180954269 0.13752522916007883791 -0.070876415958860128352 -0.0054096017495951064652 0.41421257162742314284 0.099215527734165975815 0.16451428759417638381 0.24394291145590263348 0.17003175369249606819 -0.18051541393870512708 0.052388313885557050154 0.073214458842961627205 0.22889220967030976528 0.02739351936626868711 0.068734047142910523198 0.098711132703997894744 -0.1642218832602649059 0.25991012962830795097 0.084608717418792833698 -0.12712079174185067498 0.61336458464167287197 -0.27754442258016431833 0.026529304660787986908 0.30992226700476072088 0.31419169711216821117 -0.39860650076560188992 -0.002131105896611431693 0.047898966290690896119 -0.14773982782038547201 -0.43337211915460543965 -0.26951706464610286629 -0.042420047292541666895 -0.23963260309515271862 -0.86241794642499747248 0.014075474499839259537 0.093588460457093708422 0.09366082867291929126 0.32698457727768975856 0.4924786915628759365 0.058699881121023277097 0.0038980551104059292869 -0.21203792778771438088 -0.28321547645634148616 -0.095615439687083941811 0.52118808752800427353 0.10376636400569039242 -0.26537450379620447505 0.15068118031586627548 0.0084432213829942065475 -0.051582309976468079804 0.47547748988060550834 0.69562576027185285543 0.19054031334667964614 -0.20041856582605818704 0.21649797601231879352 0.27203942444626821873 -0.25868104968411509414 0.69101499191010862244 -0.3580750652519007482 -0.10273330207498081179 -0.034947079362121331869 -0.062201729069983120735 0.038237534368722243816 0.088351374378538502508 -0.49341161347002943094 -0.063795470277566726502 0.30559844836254074218 0.34719650124534717772 0.33557976029199237944 -0.51900387829390848271 -0.19135893003917789357 0.21707726337809182815 0.44030709720914745775 0.003003794662004183845 0.06747242630555519427 -0.018126490221632172994 0.031053617680439859344 0.016052991908461867326 -0.10942157335962054976 -0.11002377137937635609 0.20853712661340259582 0.22045121617386595481 0.032477818384139107988 -0.28464678636848428361 -0.042144055273238639758 0.34603869640291229359 0.096556455851954506309 0.12371337086614030143 0.16464242829462566453 0.21670820670713833445 0.18124577550624876299 0.23591945535281866331 0.1583917730952656977 0.10875752737688956784 -0.1183900366293611367 0.35998692285604416696 -0.28684451699021407123 -0.35291851600031665104 0.0078984689256201192492 -0.2515537895586617001 -0.10859806315507734842 -0.43084358744668255214 -0.25600402008618927674 -0.35674456978197949253 -0.14975857986880572459 -0.026324549749210286731 0.037861742544450016634 -0.52073007247489833116 0.026213644562582343045 -0.48369410258633666055 -0.2256051081453208651 -0.076103592939805161932;-0.17425582641857922939 0.050501772913660675224 -0.018243576806712812066 0.053226040160440170335 -0.33597783800152519751 0.11475850475300684861 0.3993288560128542275 -0.20287191042302257782 0.24605221680758981861 -0.25536030914847362983 -0.28646624789872932038 0.27723245210626240587 -0.29065610796685864559 0.35103340261238952236 -0.018174630101134563176 0.0035887544744902938332 0.019596470768314024763 -0.39398404606527909211 0.027160687395791187349 0.098174192018933348347 -0.077683896709499947186 -0.19534092903029640076 -0.12252228837359621649 0.042423674844754684365 -0.073732754741881068039 0.14956563714155643452 1.2755732369188523823 0.29112417608362023413 -0.13844376102828950814 -0.39938604417947115577 -0.27223968703803108626 -0.1760358490265498399 -0.090504880467023887669 0.17102472009982569445 -0.081961338241850034692 0.0056294162878787138565 -0.042175234056626501045 -0.52611544211624794443 -0.091970988171478362805 -0.35448545451837637499 0.27782957568566346573 0.036768220115011955584 0.1735529388759830538 0.29958461796860591519 0.11287278425349007993 0.086427426765935511099 0.13667203082703494044 -0.13572399913725580189 0.10014698173821345861 -0.13766485840673559071 -0.55896497754351537335 0.008928783781086704896 -0.12028768415069102105 -0.20606291795674075429 0.20464727893869993913 0.32018103773497685882 -0.060473047473538717178 -0.019086316941450465201 0.22499554483554079498 0.17191346864345241618 0.27225450053982214182 -0.036267606278772644701 -0.12200194335938831236 0.21679288714195799059 0.019500115726348975914 -0.00201237450697874104 -0.0082644958729808787323 -0.33028637191302079312 0.26488020425031227889 -0.33113453411730814357 -0.065260401591043015745 0.30382421930448938463 0.095263699971804699507 0.43161204332532759897 0.14445783992325803013 0.11686543589830446221 0.57736382187245460784 0.23784144617538408029 -0.19240346055635515476 0.011142654728833715702 0.097233116808557715216 0.33334377847524243599 0.14059872519165167448 -0.090299417491547864789 -0.28126119713011593637 -0.42155862728891363433 -0.5924768658651377029 0.043576316422134976636 -0.16138355471088433601 -0.11954897752262919064 0.14548285529708512853 -0.12380528100733925734 -0.15197115461677351833 0.18509129994202447311 0.21581177140140023196 0.16069284801593947121 0.21555899074732862153 -0.079979737704393552566 -0.18734346461256742855 -0.17731451603073472567 0.24009133353179007431 -0.040988031655715011226 0.087214718654894551886 -0.047643536402761157977 0.02620371185595932878 -0.065158741751197554737 0.034458599170270505507 -0.02576885087986241496 0.11632892676383960184 0.19169081253150832556 0.038061716739279549682 -0.31435210339654040546 -0.51382544954240316759 -0.23745425559498942181 -0.1236806581788790077 0.12107558912255456107 -0.0015041422198502707799 -0.14962260281336170475 -0.14573612497605314964 0.03137081502526724297 -0.57611872777519501643 0.43835628110017055281 -0.11638759985150003151 -0.022339181397448587552 -0.29156016450781929716 0.30281781184737183166 0.033094029584405798561 0.18851336774949259412 0.50476476057458596891 -0.25106329458848003489;-0.13098702065907910641 0.0096331821807324122253 -0.025881220198884238859 0.11409720436652104336 -0.13243828660980619394 -0.00092401298191599132159 -0.093071556344272207695 -0.0075880186214419310942 -0.064518946296124368711 0.11654139837845865768 -0.030607231183682880038 -0.2060646564286127691 0.15808335102357978785 0.086001141685237481038 0.06029728079872239549 -0.097155400859728499596 -0.12476527537027073955 -0.0047999366092132374553 -0.13873014822197371476 -0.039320928244916356076 0.0031234955011651189573 -0.16289025704347193102 -0.058228016192139853136 -0.1647923848667877389 -0.13358700696801598107 0.09698516857764555299 0.14760550928202162413 0.093830564890378637122 -0.15964580900386876605 -0.25964422546030818673 0.052556540010947006003 0.1981324816010729406 -0.026632808575774657989 -0.010486395776596581231 0.044343867778811434099 0.27329838438627213071 -0.18374768210724826134 -0.2024285401348007718 -0.02177146122954832369 -0.0097917712089837672523 -0.090662249993976248841 0.0037437905938065138209 -0.064312471013276750753 0.093916852931965749685 -0.061541143311098812918 -0.0020028959925459171795 -0.18231760558704548925 0.04150044952046583191 -0.046267630341753539225 0.098629571856108932959 0.01271928705343290493 0.15779978039979292159 -0.01377162680029291042 -0.036981493835011577942 0.10415766315261675012 -0.0015246742386451478651 0.15714116026349972399 0.18941731661236888007 0.0027931017669155476513 0.078424232779153946193 -0.019279333867643778933 0.060431776796643667249 0.17241133694352814287 0.19996498440435608868 0.081323424662304105714 0.16764099886936295603 0.074736880939678521085 -0.11379294850478854917 -0.41299462404814513139 0.02352741096313367905 -0.17336089617622790771 0.0035602921730236453818 -0.02228393489741317679 -0.049308887762637740315 -0.064918170865060118024 -0.031925369226797943589 0.24724563376565189543 -0.15020079656086438025 -0.17062891745527783427 -0.081855926700826642239 -0.060596854583200958355 0.054137544743274743086 -0.028151374805291329989 -0.076443666560998727033 -0.0027373282772276798583 0.22655689411081580964 0.014086060580793650227 -0.038619916550324519255 -0.24914648203807898685 0.0041297728773390610796 0.11438623158336104491 -0.16425633598241975997 -0.0072821140986078199478 0.12891054841298860145 0.0032763788351155591003 -0.057525767717344564178 -0.082019049585303441252 -0.052128625905277267694 0.0018682724120454375152 0.17624591322375440794 0.10001392123483868191 0.01797969918411924245 0.039392635295055954125 0.057961220315423854499 0.24249163514613855663 0.0031034261121495117404 0.13457788698583661446 -0.068464575975854785606 -0.031773707107064202981 0.067790811269536899175 0.065647886924396117725 -0.028962846859661137838 -0.17022924499584532465 0.15941289552083615089 0.04906147966147890449 0.074743789572692259648 -0.069954016128475821068 -0.14128822273179852953 0.0043903845713394147945 -0.070435049625968942921 0.016942008844188987532 -0.19350060713334213403 0.18056351311185211972 0.016873890984282356037 0.038282503413270385639 0.14690774578671408901 -0.089608287242512962845 -0.21251662210703387013 -0.080677444097089032193 0.30647352429178126298;0.071233398111034809674 0.095773047152373377844 0.071617416397788707938 -0.23474501354872190362 -0.19973816657239459871 0.13703995576745056639 -0.091174146465024585861 -0.18165067122174635705 -0.13446161636451228749 0.028388843506394551702 -0.16473739013779675755 0.59362605685364167041 -0.27728131336917560823 0.28379596060801337565 0.089938788953246903701 -0.032195568489962980707 -0.0084148016585305837611 -0.3201986768819225504 -0.17805989323117840661 -0.09460319242808400142 -0.048350044107888019707 0.16659009895860402151 -0.26556381833682218829 -0.038212034961339617911 0.27262301351580364717 -0.075231777243962585922 0.45942489269940761654 0.30986090026203605419 0.045014970692081900105 0.048790607082064861577 -0.17402861149965653809 0.0096304061773392832246 -0.11837543744975199955 -0.27238760771507924963 0.032854818400640459219 -0.12741962090665451268 -0.20604937649123625243 0.16800166660732279711 0.0079262312578302906996 -0.21433137318342215805 -0.12522782837122367616 0.058406475700746571245 -0.12388168708861113654 -0.13306202082739895798 -0.098081281045048721023 -0.15322401033046223473 -0.2661203881832043816 0.15808236455004701093 0.07679893157531271497 -0.12791983243999627273 -0.078426961920758098135 -0.14319926844125649423 -0.085813177333192866558 -0.13411971832901359303 -0.12304094335618093181 0.12892759526730815378 -0.062265223027557006774 -0.13004761278975709993 -0.17639621124485599379 -0.029160224688041615215 -0.15887765932657924028 0.027738972480182828156 -0.18296589920317909983 -0.089478730770449335652 -0.0013995022570412558524 0.20102846611768829255 0.091079948508748467817 -0.27059561443014396032 0.36169900687731698641 0.0065460193169363497037 -0.15263973463458072044 -0.083762426791717997654 -0.098485581731720978071 0.049395639282993002162 0.032509326738861012152 -0.36985554284791655189 -0.29466463329508063573 0.13409934975218090747 -0.2578280266898087536 0.20637222327625340257 -0.099152743659146183597 0.28969795501129613768 0.27925193917466661908 0.090526624695982355062 -0.039019956655884605046 0.020952126346877639196 0.10498415331793550798 0.095965910604413187657 -0.12236018675201223993 0.25231954936379585863 -0.047470383268634938623 0.058190621209463902486 -0.16516092191728906635 0.23600640621065155367 -0.025002811354315170739 0.25433740936742404992 0.055345694882950186022 0.1634859846901479119 -0.33826209979341820278 0.053408182573710022423 0.22077600423405940866 -0.089595960502794141922 0.2526775123646226584 0.13333590477167234223 -0.25455538288600937369 -0.15019649392202674698 0.11066810517838798766 0.3728751540756772842 0.18893691935620501865 -0.07262134936017136666 -0.058798219869960179074 0.01673606523012942035 0.20436917773682050647 0.034509207743868168528 0.049852229312623438928 0.12477524221977941143 0.18797738619741205524 0.0084701897541685604309 0.024100958914671257588 0.015764003195238844579 -0.074596904351380596832 0.40487900145942118391 0.1061041893216671389 0.14853149515272753844 -0.034768482123353358637 0.40057413535923386272 0.11475429311511942121 0.096473303226202428151 0.28726509559144763895 0.26202740747213854045;0.3871945632493260514 0.011782115215106735498 0.060100035995637186848 -0.139254939873293071 0.022331142214335960444 -0.058011420014693240721 -0.11555521092197942878 0.20818097030211568654 -0.042046292406417440368 0.23966646725099507997 0.045641239459497447151 -0.19007787645340590288 -0.079754303433360693165 -0.066167054608620171074 -0.10079741859912066948 0.14225858287488546416 0.11679972522265934243 0.010976716541121964155 -0.028080375328650895861 0.058085343316092913346 -0.098240399900383690301 0.0051090401608627402513 -0.11730233906418439938 0.11778847395282621147 -0.038278339227734388406 -0.15055379789824810399 -0.30695160700631229922 -0.13482396721541428652 0.12940902914767721255 0.35453891968711992444 0.1009494529084600245 -0.28112048619823304385 -0.012136868562291718704 -0.013983305473039869121 -0.080357416575046594631 -0.37997552784426313899 0.31253061461036507618 0.094920779527243009932 0.27302165038854742107 0.25758840765297319475 0.20489378269977329139 -0.24732958087050882501 -0.14143417705467223322 -0.33337378537408340895 -0.038107579003163569165 -0.081935529911251525625 0.10934947956430061955 0.15236574293390203749 0.26249935988014477806 -0.31635823461475859331 -0.22083467067730616629 0.057608325344381698663 -0.087556302986613016026 0.024885170594900109936 -0.11625679118919597654 -0.070968493554836822867 -0.076900120260271390138 -0.081967533977575599002 0.15847918593080514982 -0.16183921771502307596 0.20732382024522588715 -0.11972919973633430746 -0.01556839362381946118 -0.06453474709368151041 0.0025800311164413777983 -0.22118501052484301761 -0.096358128393363870479 -0.1348390930135392185 0.33241603765275884452 -0.20686553519083175634 -0.075365692737693112946 -0.030686088087255571077 -0.037177326769432417208 0.06607958277241843259 -0.6075730406527721783 0.029098225129792189281 0.052370905963465406996 -0.025868843759834867641 0.16547134385855361005 0.028191649543733245109 0.33860672607159064684 -0.33688109313057829075 0.022525535917740934638 0.27618071933511206817 -0.047420107628545864198 -0.14354419808632765121 -0.25054632512412794432 -0.23211557243291724983 -0.13891841082264647089 0.0667094405716093658 -0.074320557627902253395 0.060383034133029880874 0.054992144272975482244 0.004383998310642693054 0.037798295355031222287 0.18347012218723632304 0.096544499840127584456 -0.025021767071488856815 0.01779383121062742823 0.12278014092750649811 -0.34395095281176785162 -0.09687643713642644927 0.10686609599426086237 -0.076092256627547150138 -0.16835679120414992482 -0.010159146832391708487 -0.1308667195866830002 0.14505677772791633617 -0.077490944339099157578 -0.073158107529932681068 -0.040887788655813363248 0.1174275538858249035 0.1609752070893770981 0.085717911866919155317 0.13804980869353755679 -0.14443058727406724029 -0.20411254208884224703 0.029111996300393884474 0.11181822532841793894 0.027460226077984189325 -0.0859724946857467337 0.24664904710982241132 0.093039271592842934244 -0.039590847205899393213 -0.067642697560252929012 0.013025206371440223307 0.12805485665284721541 0.1291577599512681862 0.0086074481322083364748 -0.092374278645366125762;0.14856695460022037447 -0.060057932292422559761 0.058032012583565981134 -0.26012769671960805917 -0.2188141150122473455 -0.016562970433105939777 -0.10640129567306548519 -0.25573081310113143783 -0.12295503867687057609 0.084290588604857080712 0.13485007268799015234 -0.13800493785985276651 -0.025330808698576453425 -0.036153878920159088217 -0.035290269558707634823 -0.03781979169193492446 -0.0019132160659868727853 0.086200104036436409061 -0.051304527940054522883 0.0092455719924815615157 -0.13192302374982453617 0.082452519198840973358 -0.22594552605062331874 0.023692395699138561055 -0.013207022074492587999 0.060842071244846050726 0.12864748161883560185 -0.015867299860576323384 -0.10741926922107117304 0.12896396920459657354 -0.1206111162094958833 0.080981041754484978101 -0.0072344794453681419283 0.077622130180333329119 -0.23652154087091828427 -0.042149288271080269375 -0.056457768311301649578 -0.55623494936835271574 0.12364917995163993147 -0.069971011745063330101 0.0063077062573993402869 0.0049789512323513357775 -0.043157513866911273448 0.050776595782237435306 -0.24093580617918525233 -0.10241716847858819972 0.073213341297037687339 0.19403639443125708652 0.1034815124532441899 0.032881240098539557537 -0.010327799609649130144 -0.069916812039280351598 -0.07851620694619496077 -0.037665770599486878001 -0.058712525554802254268 -0.080252714551811377142 0.19023167007902325176 0.035814970418748676151 0.057408984931417807174 -0.096608904379451188138 0.015063178599454657772 0.18014296944808086409 0.10691733785008847302 0.13226261719104581704 0.039265078965520491816 0.028137946178351067039 0.032032721845069334066 -0.21635129757391793892 0.26569915353463796626 -0.038828840154590378575 -0.17179537998550636901 0.00019344669600131181829 0.012159830278253550354 0.058417019917256458872 -0.067687933825667984111 -0.14021614940091745027 -0.061057429983802237461 0.1024908752708522941 -0.074084432432975855232 -0.0079081762174080631744 0.16927678424708031413 -0.04603171042392932566 0.14334361890918270732 0.14630597508761283843 -0.061131066808947739921 -0.058426235966022040114 -0.017966765508711502602 -0.013180930675723720458 -0.044545980220504807767 0.066517944676015669514 0.022793213157786849227 0.0465847141674172599 0.013314637899178010522 0.10587094098394987662 -0.17487618280893030276 0.1494596327437385519 0.11553759180932228479 -0.10413762581642771465 0.0072776880048874715429 0.014829726436771909978 -0.07948935598881383402 -0.12418673899479150402 0.1513706008252693469 0.21826524936184785175 -0.10907840566476942334 -0.052173392608278156002 0.04979850815170576428 -0.091769336378134641619 0.16862708421898728317 -0.014612858802952256171 0.085240416382076328317 0.010416162795261058038 -0.13905787419254417303 0.094763683445929280946 -0.15691196185952144271 0.0031013547012151403831 0.14062773385770108159 0.020930133926957771029 0.03187962232572397886 -0.16640319797810146363 -0.19220207539910802441 0.21176147501649231208 0.048927388956597150926 0.0070110917249357829553 0.039098183918367418466 0.31398544560114788338 -0.19411202668905150337 0.050568365509774754196 -0.021410046282860112354 0.18411230066105516157;0.42537255588418465546 0.11287805429746117225 0.029804980600831174758 -0.30890512969313510538 -0.16027194033926822625 -0.077575877022532477301 -0.026485796976871211345 -0.03652749642384750528 0.070682477824941178368 0.059457352958006297328 -0.0827830061523101568 0.42952018055271479202 -0.34459321829437794538 0.32216039590047074181 0.059353927533630702895 0.037423346761440164088 -0.21287661672910168642 -0.072820086319493104732 0.073704742710611156897 -0.040547351130290107402 -0.020923754210707027484 -0.21677512552612882013 -0.29837525836909239985 0.011919209307596705105 0.045081495829431668387 -0.12266575732663514975 0.015537235954076366456 0.18668487439541719963 -0.24953654082337814457 0.037492123787133527224 -0.2728403095298415626 -0.18303824625513628876 -0.069616679861610450408 0.24926259125042177223 0.0033316370063055022674 -0.29911013359077165408 -0.11472226189397566332 -0.066056956999314186962 -0.046676507214966141135 0.1252820386454543411 -0.090266483371165592842 -0.056909735198994275407 -0.076114317557874289211 -0.32488128647118491577 0.097312604457325591056 -0.10719793996464817287 -0.093790869108595784076 0.24947430770203787853 0.2631175805707501314 -0.055966198038464226583 0.064165465405236501995 0.036798184567676618661 -0.13560221486855278394 -0.11483430203956129789 0.0030109228638052019239 0.12696156669489352953 -0.014580131693913239016 0.10964338841902214472 -0.091699888687652317265 -0.081758481554850520601 0.092865078852252827546 -0.13117407893634638882 0.042851725924207537122 0.0099060535107625222878 -0.25549089940219044115 -0.04276032428618092851 0.0020527590993516097589 -0.029841933388212268929 0.048886548168701755845 -0.073156885297932433554 -0.013435317020790286599 -0.021175092927084585709 -0.089819964593259124519 -0.165559088234583901 0.092600185369936319213 -0.11595629823725440988 -0.084160805495488003047 0.0045321510119629973209 -0.23514954208972868588 -0.0099188662302081304772 0.027889057200259362995 0.030806317874925596978 0.074759635088910578182 0.10532572927479487424 0.10125741138250357598 -0.17263080100283687002 0.093061665411572305762 0.10617372099622746084 -0.050857754726032017301 0.39179323345316879879 -0.2044475582208611919 -0.25054261682855150095 -0.096357386861368868325 0.28331833309550913391 0.23921525379066235772 0.18025523904784951368 0.10158436260644898574 0.17599551454687159535 -0.26341508279561870465 0.14933828982552072029 0.11087209564377059623 0.010422048231703570989 0.15021771785314819159 -0.21608413116746452709 -0.29123083802891913674 -0.0001871096368987650374 0.2260044650513501896 0.25146643624863163069 0.13017001336269576339 0.0021770430459411346108 0.050302192398679231033 -0.15547216740283098524 0.20819684377632979855 -0.13786747101408428073 0.10042790241298056586 0.040399398639189426641 -0.029987030161023532637 0.05494470929095559425 0.061489335587747079304 0.0071925532647502832956 -0.01325732577094896128 0.14340358633935335053 0.10176657124233970397 0.0096588449078707575013 0.028084750295978757467 0.029134363652485124885 -0.06326606719841817994 0.030386561608004861168 0.17284417316494099515 0.32311465080147661055;0.39815904078370256691 0.021369661154058201824 -0.083526018636620930069 -0.27588974002188365597 0.064711970022157699889 -0.49808212664727985475 -0.0096530170230459226566 0.20862335207350254929 0.026148898316317358004 -0.34947546326954875839 -0.13936577663263691185 0.17022570392889044277 -0.19700473085201991585 0.13907699677752802248 -0.12712633111046478529 0.020981217378791015837 -0.067109524883132487538 -0.095674530425108664233 -0.0889886246239051798 0.054602748527121547362 0.27684640583264863434 -0.020078522991801892039 -0.090701847541620236881 0.025590720805052070974 0.22289844966105101798 -0.09490438287876967749 0.13487781791561490041 0.049765437549528578065 0.041676196352117292343 -0.080842257686271054573 0.11878954307427361248 -0.12426509464355206536 0.19784717506856350222 0.1650425596085030866 -0.089527529277997897061 -0.41417276927913881934 -0.14790516780140905428 -0.14531819872145107508 0.096858511057729398952 -0.24282157880872276556 -0.10049491522292261503 -0.077507544108411458028 -0.12130060066980614952 0.13920613848230922738 -0.26533423456927596185 -0.036042150460652983002 0.25447845078009367903 0.11960553875006105229 -0.11105665791562145672 -0.1297188822126092711 -0.22352192003773929674 0.065879348594854697518 -0.11216982086729830603 -0.26067488481782657983 0.046672308428624492693 -0.034817368630861551815 0.04363710932969745715 -0.16664751550875051 0.15753161100430862485 0.21974273458277390758 -0.088713842592854225133 0.031271796338509544322 -0.041271282806505452112 0.077417414441574766704 0.13188722523756898908 -0.13803067656379172656 -0.16103111464061670155 0.13231635967964341938 -0.039496176182009949673 0.073884554607522287539 0.06618798988148916207 0.13884611173566552278 0.2480574706436619592 0.0010475291958619362132 -0.17193354358747128807 -0.21622914437795098808 0.014138736766334532996 0.14365771851861466879 -0.14693857827547374129 -0.11500874120902467024 0.13438785569791550367 -0.32135621539690328863 0.099032564540466480607 -0.1567743988542407152 0.034243392873331765514 -0.083770928083104143069 0.17062300213434178353 -0.21063711725869016522 -0.22182584841136257503 -0.068317481130178658866 -0.23345547623568757567 -0.43527710153835652562 0.014958104658210255242 0.08834546110823965348 -0.084608141733662253769 -0.018032679780163263228 -0.22618987012851532459 -0.04061930593594110378 0.048393963504731005165 0.091347096920570761136 -0.064310562465854953507 -0.022648007797696455279 -0.15219166650139814845 0.20242571924337574019 -0.31020393359077130802 -0.027296578171399445145 -0.01601270280690973366 0.065881874656496502984 -0.10132787357865601086 -0.064663650917168358223 -0.11867479542970425788 0.038225810910452767688 0.14144448860881991825 0.17343931625349795489 -0.12605533157225054519 0.04201574285309341017 0.14206346879155817842 0.0051616576580210786485 -0.39043287927766895384 0.044722915444773976568 -0.12080107703955085541 0.21850035928508859673 -0.2271788055466419376 0.0053355962276074369796 0.11571132901275472948 0.058719769925037343383 -0.0048235156641968698205 -0.20639813941031950884 -0.036044100556065848673 -0.14794970564699611026;-0.21663069218044367359 0.14582622809970857691 -0.022043307668200937122 0.25945296562825259645 -0.0596143036232628723 0.079490003916929521943 -0.117208032681198282 -0.48994821698099705332 0.17488443962601071813 -0.36906854447034448397 0.17505239475529132953 -0.052362284686336454942 -0.34728627469589790078 0.153321221230974164 0.014927314761153711795 0.11676684280284221895 0.34711760658301754612 0.11699525268801776179 -0.35465895487237480976 -0.027839965408187006268 -0.23729877009962280221 -0.040137569417394713955 0.077403983809953127992 -0.083632322278040460706 0.15311474945676667447 -0.12100402980548248533 0.19581221352634484156 0.096702503393411617938 0.29879436605409925853 0.20562637189717267172 -0.28993554526145681738 -0.24566633981780919282 -0.13250713114206280618 -0.066474492700783996413 0.39746402897426047485 0.3937571450809387863 -0.1600258331319386329 0.45106655542125523306 0.21424357769238225324 -0.07144502251535787829 0.13589875155970512766 -0.24560790931458351127 0.12544868608643364172 0.035807014190367719708 -0.030803903500913155239 0.00024584675177134925061 0.084430608172058010941 -0.24152682851066534231 -0.39589277352241369901 -0.20705246057585302566 -0.1397333763013037522 -0.30019216339901433344 -0.097052581075295477064 -0.089738785743901081093 -0.036043621090680127983 -0.038525533248655298435 -0.17671387606740091014 -0.16036226748584536672 0.080960071753404999617 -0.057518898856518840823 -0.05982600223980592824 -0.26172518461973148796 -0.12590243517012913999 -0.073810141105133938999 0.24382237280445173688 0.25957858983063991642 -0.10671683366123775605 -0.29314977561994437494 -0.34216210578462624703 -0.14105532990788355319 0.0042928104528193438555 -0.25310909920025742581 -0.33194220334945290229 0.012727418463941242086 0.23068588855103436264 -0.41443254427117398597 0.27595540882883523581 -0.030493641192661822409 -0.06900867104174740474 0.15751789763542109468 0.22091128787062919159 0.085805764721929841943 -0.0028401707716550397137 0.10197490674800104016 0.09625375908847126627 -0.093584532139319914767 -0.051711408992248804328 -0.054731189494897802827 -0.21837465648414897124 0.13567248421497832278 -0.084956015206289522967 -0.12348523083917146981 -0.041629775720384468163 0.088641170378340294889 0.19550433576725131934 -0.079409686698240819491 -0.090403770521071777355 0.12418066688922782537 -0.032604675351343689882 0.51564664670503768118 -0.25447620501509221613 -0.11963935352058110984 0.23908322248476726601 0.029598724655152862384 0.24913000058669665382 -0.071265633913547121736 -0.1181959766700058645 0.12064446293131823873 0.08851669417670793294 -0.086617124049724367185 -0.16173094923355293973 0.38307184593032966857 0.63922779379105409969 -0.3162755352647741991 0.18671069804494749844 0.11759648128048459659 -0.066170075666023508987 -0.34584783494312471008 0.0776533551476148165 0.21312705198811709995 0.16926247330432242499 0.00014806640741049648113 0.10195227941409090722 0.1264583380765082754 -0.15948818583051524445 -0.17221341205910506433 -0.21049275482144538807 0.16102521961545607221 0.20322316907524401453 -0.53911719998685647681;-0.99877808056522343616 0.013399879734010336843 0.05584121192511445203 0.66386874423830943837 0.08802470365201681135 -0.23510227505902750456 -0.10083476438935710939 0.24875402649780486986 -0.017531838106683177159 -0.075348265576862499815 0.10741187382589229005 0.25293398170863568009 -0.23671094831101649469 -0.042066589416874536345 -0.082403404700462326571 0.10415797936060458562 -0.17167257545416825248 -0.016821874158285839845 0.16870354435280793259 0.06841692403982446713 0.18344910512289222537 0.089326227057606955029 0.089808291708451809532 -0.1094048324684808865 0.15832134182563167846 0.16348140935873606283 0.7360889725818113849 -0.02554382430653248312 -0.23711604682657791421 -0.017445423487071461122 -1.0693225881551178258 0.020434812823080867467 0.1361786143527048687 0.13778314842153474573 -0.48246698999291370846 0.93099487769824951222 -0.14451995635935366291 0.29877768628980172494 0.38656585672275706189 -0.73132183670930872577 -0.051565225954642475437 0.19199028179746063794 -0.33650293664142333361 0.37646198784777668012 -0.22623550233985020852 -0.27245696851889594781 -0.031378848266618228346 0.52416906634516091668 -0.77448020107940274137 0.53588182217582303046 -0.56453396619966944581 -0.66433374324668348354 -0.044014009034532383668 0.032278882896820237924 -0.16337951073835774163 0.069155925550378125055 0.093959255213262593553 0.04972522928528517322 -0.0049682516128735859998 -0.21927355895887709614 0.069210641174636364226 -0.55174877932054255947 -0.08929820652624126387 -0.12330526151827632397 -0.30614037185243253569 0.38801562545398465831 0.034887364438496992758 -0.17788583207989400181 0.21387214067748888668 -0.30239185210182267793 -0.088985273693040337073 -0.0027731056575825080782 0.031930185220194903795 0.10492809493288984823 0.083074784033397991445 0.27402077252619411185 -0.35374327547036193975 -0.53135460840073189814 -0.40732766743882520277 -0.086968785115763558302 0.18089248693241913313 0.090655541219215332593 0.331508029678267091 0.26273094438648680882 0.062294733173319273567 0.053755570327856300183 -0.17589384902980059744 -0.32691926392743037022 0.28250975480167722642 0.25595536349016023703 0.46726244621623141962 0.10635797186867640418 0.048401481153691916504 0.091829448606206870442 -0.030341650656500081251 0.22191391826649378705 0.091065746820531937034 -0.00079420733750160989184 -0.13647614379796485506 -0.05752845913304172748 -0.021626488634048979254 -0.31244723363661325299 -0.027718192045435758458 0.097453765496941388569 -0.097030451952392626769 0.018704053320533296084 0.1201824336227477058 -0.35640056429390909454 0.18461040963323802067 0.067287633420839890186 0.035050368829379244251 -0.20702975307631221735 -0.024763341989717711777 0.26853968190027505125 -0.45653525522862808961 -0.012605285695989138645 0.051614271567526195938 0.058371993272863242908 0.054591557471531645951 -0.057457406599028038041 0.11382232160225060069 0.48581567048801399533 -0.12916045564016370717 -0.034129493080764794488 0.20289936181874695942 0.087271061754779055697 -0.23759721486089713238 0.32197326106647028432 -0.30150006790549643831 0.41356430602743832203];

% Layer 2
b2 = [-0.17844896291989162385;-0.22261719064617102593];
LW2_1 = [-0.7669313477802000012 0.37638615823526289095 -0.18111750060777265237 -0.29545785299006060987 -0.65281513717413108822 0.31899552233808065038 -0.040931396232838701543 -0.10122967523375114851 0.41843444139830837658 1.0544971858238993967;-0.69876851238386783471 0.35288555200689858404 0.058692939157951831697 -0.18096232611761747799 -0.51904687484288547505 0.068733201892326775684 -0.1600885677438913246 -0.067154687947006685977 0.3420458136532943394 1.3498370517901476795];

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
