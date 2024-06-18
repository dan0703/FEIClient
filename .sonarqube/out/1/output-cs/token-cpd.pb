ë
JC:\Users\danse\source\repos\FEIClient\FEIClient\Properties\AssemblyInfo.cs
[

 
assembly

 	
:

	 

AssemblyTitle

 
(

 
$str

 $
)

$ %
]

% &
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
["" 
assembly"" 	
:""	 

	ThemeInfo"" 
("" &
ResourceDictionaryLocation## 
.## 
None## #
,### $&
ResourceDictionaryLocation&& 
.&& 
SourceAssembly&& -
))) 
])) 
[66 
assembly66 	
:66	 

AssemblyVersion66 
(66 
$str66 $
)66$ %
]66% &
[77 
assembly77 	
:77	 

AssemblyFileVersion77 
(77 
$str77 (
)77( )
]77) *ùì
DC:\Users\danse\source\repos\FEIClient\FEIClient\Views\SignUp.xaml.cs
	namespace 	
	FEIClient
 
. 
Views 
{ 
public 

partial 
class 
SignUp 
:  !
Window" (
{ 
private 
static 
readonly 
ILog  $
log% (
=) *

LogManager+ 5
.5 6
	GetLogger6 ?
(? @
typeof@ F
(F G
LoginG L
)L M
)M N
;N O
private   
TutorClient   
tutorClient   '
;  ' (
private!! 
CareerClient!! 
careerClient!! )
;!!) *
private"" 
StudentClient"" 
studentClient"" +
;""+ ,
private$$ 
List$$ 
<$$ 
Tutor$$ 
>$$ 
	tutorList$$ %
;$$% &
private%% 
List%% 
<%% 
Career%% 
>%% 

careerList%% '
;%%' (
public'' 
SignUp'' 
('' 
)'' 
{(( 	
InitializeComponent)) 
())  
)))  !
;))! "
tutorClient** 
=** 
new** 
TutorClient** )
(**) *
)*** +
;**+ ,
careerClient++ 
=++ 
new++ 
CareerClient++ +
(+++ ,
)++, -
;++- .
studentClient,, 
=,, 
new,, 
StudentClient,,  -
(,,- .
),,. /
;,,/ 0
	tutorList.. 
=.. 
new.. 
List..  
<..  !
Tutor..! &
>..& '
(..' (
)..( )
;..) *

careerList// 
=// 
new// 
List// !
<//! "
Career//" (
>//( )
(//) *
)//* +
;//+ ,
GetTutorList11 
(11 
)11 
;11 
GetCareerList22 
(22 
)22 
;22 
}33 	
private55 
void55 
	GoToLogIn55 
(55 
)55  
{66 	
Login77 
loginWindow77 
=77 
new77  #
Login77$ )
(77) *
)77* +
;77+ ,
Close88 
(88 
)88 
;88 
loginWindow99 
.99 

ShowDialog99 "
(99" #
)99# $
;99$ %
}:: 	
private<< 
void<< 
Button_Login_Click<< '
(<<' (
object<<( .
sender<</ 5
,<<5 6
RoutedEventArgs<<7 F
e<<G H
)<<H I
{== 	
	GoToLogIn>> 
(>> 
)>> 
;>> 
}?? 	
private@@ 
void@@ 
RegisterStudent@@ $
(@@$ %
ViewStudentInfo@@% 4
student@@5 <
)@@< =
{AA 	
tryBB 
{CC 
ifEE 
(EE 
studentClientEE !
.EE! "
RegisterStudentEE" 1
(EE1 2
studentEE2 9
)EE9 :
)EE: ;
{FF 

MessageBoxGG 
.GG 
ShowGG #
(GG# $

PropertiesGG$ .
.GG. /
	ResourcesGG/ 8
.GG8 91
%MessageBox_Success_RegisterSucessfullGG9 ^
,GG^ _
$strGG` e
,GGe f
MessageBoxButtonGGg w
.GGw x
OKGGx z
,GGz {
MessageBoxImage	GG| ã
.
GGã å
Information
GGå ó
)
GGó ò
;
GGò ô
}HH 
elseII 
{JJ 

MessageBoxKK 
.KK 
ShowKK #
(KK# $

PropertiesKK$ .
.KK. /
	ResourcesKK/ 8
.KK8 9*
MessageBox_Error_RegisterErrorKK9 W
,KKW X
$strKKY ^
,KK^ _
MessageBoxButtonKK` p
.KKp q
OKKKq s
,KKs t
MessageBoxImage	KKu Ñ
.
KKÑ Ö
Error
KKÖ ä
)
KKä ã
;
KKã å
}MM 
}NN 
catchOO 
(OO "
CommunicationExceptionOO )
exOO* ,
)OO, -
{PP 

MessageBoxQQ 
.QQ 
ShowQQ 
(QQ  

PropertiesQQ  *
.QQ* +
	ResourcesQQ+ 4
.QQ4 5-
!MessageBox_Error_ServiceExceptionQQ5 V
,QQV W
$strQQX ]
,QQ] ^
MessageBoxButtonQQ_ o
.QQo p
OKQQp r
,QQr s
MessageBoxImage	QQt É
.
QQÉ Ñ
Error
QQÑ â
)
QQâ ä
;
QQä ã
logRR 
.RR 
ErrorRR 
(RR 
exRR 
)RR 
;RR 
	GoToLogInSS 
(SS 
)SS 
;SS 
}TT 
catchUU 
(UU 
TimeoutExceptionUU #
exUU$ &
)UU& '
{VV 

MessageBoxWW 
.WW 
ShowWW 
(WW  

PropertiesWW  *
.WW* +
	ResourcesWW+ 4
.WW4 5-
!MessageBox_Error_ServiceExceptionWW5 V
,WWV W
$strWWX ]
,WW] ^
MessageBoxButtonWW_ o
.WWo p
OKWWp r
,WWr s
MessageBoxImage	WWt É
.
WWÉ Ñ
Error
WWÑ â
)
WWâ ä
;
WWä ã
logXX 
.XX 
ErrorXX 
(XX 
exXX 
)XX 
;XX 
	GoToLogInYY 
(YY 
)YY 
;YY 
}ZZ 
catch[[ 
([[ 
	Exception[[ 
ex[[ 
)[[  
{\\ 

MessageBox]] 
.]] 
Show]] 
(]]  

Properties]]  *
.]]* +
	Resources]]+ 4
.]]4 5-
!MessageBox_Error_ServiceException]]5 V
,]]V W
$str]]X ]
,]]] ^
MessageBoxButton]]_ o
.]]o p
OK]]p r
,]]r s
MessageBoxImage	]]t É
.
]]É Ñ
Error
]]Ñ â
)
]]â ä
;
]]ä ã
log^^ 
.^^ 
Error^^ 
(^^ 
ex^^ 
)^^ 
;^^ 
	GoToLogIn`` 
(`` 
)`` 
;`` 
}aa 
}bb 	
privatedd 
voiddd 
Button_SignUp_Clickdd (
(dd( )
objectdd) /
senderdd0 6
,dd6 7
RoutedEventArgsdd8 G
eddH I
)ddI J
{ee 	
ifff 
(ff 
AreAllFieldsFilledff "
(ff" #
)ff# $
)ff$ %
{gg 
ifhh 
(hh 
IsPasswordValidhh #
(hh# $ 
PasswordBox_Passwordhh$ 8
.hh8 9
Passwordhh9 A
)hhA B
)hhB C
{ii 
ifjj 
(jj 
IsValidMatriculajj (
(jj( )
TextBox_Matriculajj) :
.jj: ;
Textjj; ?
)jj? @
)jj@ A
{kk 
ifll 
(ll  
TextBox_ShowPasswordll 0
.ll0 1

Visibilityll1 ;
==ll< >

Visibilityll? I
.llI J
VisiblellJ Q
)llQ R
{mm  
PasswordBox_Passwordnn 0
.nn0 1
Passwordnn1 9
=nn: ; 
TextBox_ShowPasswordnn< P
.nnP Q
TextnnQ U
;nnU V
}oo 
ViewStudentInfopp '
studentInfopp( 3
=pp4 5
newpp6 9
ViewStudentInfopp: I
(ppI J
)ppJ K
{qq 
passwordrr $
=rr% &
Complementsrr' 2
.rr2 3
EncryptPasswordrr3 B
(rrB C 
PasswordBox_PasswordrrC W
.rrW X
PasswordrrX `
)rr` a
,rra b
fullNamess $
=ss% &
TextBox_Userss' 3
.ss3 4
Textss4 8
,ss8 9
	idStudenttt %
=tt& '
TextBox_Matriculatt( 9
.tt9 :
Texttt: >
.tt> ?
ToLowertt? F
(ttF G
)ttG H
,ttH I
idCareeruu $
=uu% &
(uu' (
intuu( +
)uu+ ,'
ComboBox_EducationalProgramuu, G
.uuG H
SelectedValueuuH U
,uuU V
idTutorvv #
=vv$ %
(vv& '
intvv' *
)vv* +
ComboBox_Tutorvv+ 9
.vv9 :
SelectedValuevv: G
,vvG H
}ww 
;ww 
RegisterStudentyy '
(yy' (
studentInfoyy( 3
)yy3 4
;yy4 5
}zz 
else{{ 
{|| 

MessageBox}} "
.}}" #
Show}}# '
(}}' (

Properties}}( 2
.}}2 3
	Resources}}3 <
.}}< =*
MessageBox_SingUp_BadMatricula}}= [
,}}[ \
$str}}] b
,}}b c
MessageBoxButton}}d t
.}}t u
OK}}u w
,}}w x
MessageBoxImage	}}y à
.
}}à â
Error
}}â é
)
}}é è
;
}}è ê
}~~ 
} 
else
ÄÄ 
{
ÅÅ 

MessageBox
ÇÇ 
.
ÇÇ 
Show
ÇÇ #
(
ÇÇ# $

Properties
ÇÇ$ .
.
ÇÇ. /
	Resources
ÇÇ/ 8
.
ÇÇ8 9+
MessageBox_SingUp_BadPassword
ÇÇ9 V
,
ÇÇV W
$str
ÇÇX ]
,
ÇÇ] ^
MessageBoxButton
ÇÇ_ o
.
ÇÇo p
OK
ÇÇp r
,
ÇÇr s
MessageBoxImageÇÇt É
.ÇÇÉ Ñ
ErrorÇÇÑ â
)ÇÇâ ä
;ÇÇä ã
}
ÉÉ 
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 

MessageBox
áá 
.
áá 
Show
áá 
(
áá  

Properties
áá  *
.
áá* +
	Resources
áá+ 4
.
áá4 5*
MessageBox_Error_EmptyFields
áá5 Q
,
ááQ R
$str
ááS X
,
ááX Y
MessageBoxButton
ááZ j
.
ááj k
OK
áák m
,
áám n
MessageBoxImage
ááo ~
.
áá~ 
Erroráá Ñ
)ááÑ Ö
;ááÖ Ü
}
àà 
}
ää 	
private
åå 
bool
åå  
AreAllFieldsFilled
åå '
(
åå' (
)
åå( )
{
çç 	
bool
éé 
allFieldsFilled
éé  
=
éé! "
true
éé# '
;
éé' (
if
êê 
(
êê 
ComboBox_Tutor
êê 
.
êê 
SelectedValue
êê ,
==
êê- /
null
êê0 4
)
êê4 5
{
ëë 
allFieldsFilled
íí 
=
íí  !
false
íí" '
;
íí' (
}
ìì 
else
îî 
if
îî 
(
îî )
ComboBox_EducationalProgram
îî 0
.
îî0 1
SelectedValue
îî1 >
==
îî? A
null
îîB F
)
îîF G
{
ïï 
allFieldsFilled
ññ 
=
ññ  !
false
ññ" '
;
ññ' (
}
óó 
else
òò 
if
òò 
(
òò 
string
òò 
.
òò  
IsNullOrWhiteSpace
òò .
(
òò. /
TextBox_Matricula
òò/ @
.
òò@ A
Text
òòA E
)
òòE F
)
òòF G
{
ôô 
allFieldsFilled
öö 
=
öö  !
false
öö" '
;
öö' (
}
õõ 
else
úú 
if
úú 
(
úú 
string
úú 
.
úú  
IsNullOrWhiteSpace
úú .
(
úú. /
TextBox_User
úú/ ;
.
úú; <
Text
úú< @
)
úú@ A
)
úúA B
{
ùù 
allFieldsFilled
ûû 
=
ûû  !
false
ûû" '
;
ûû' (
}
üü 
else
†† 
if
†† 
(
†† 
string
†† 
.
††  
IsNullOrWhiteSpace
†† .
(
††. /"
TextBox_ShowPassword
††/ C
.
††C D
Text
††D H
)
††H I
)
††I J
{
°° 
allFieldsFilled
¢¢ 
=
¢¢  !
false
¢¢" '
;
¢¢' (
}
££ 
return
•• 
allFieldsFilled
•• "
;
••" #
}
¶¶ 	
private
ßß 
bool
ßß 
IsValidMatricula
ßß %
(
ßß% &
string
ßß& ,
	matricula
ßß- 6
)
ßß6 7
{
®® 	
try
©© 
{
™™ 
var
´´ 
match
´´ 
=
´´ 
Regex
´´ !
.
´´! "
Match
´´" '
(
´´' (
	matricula
´´( 1
,
´´1 2
$str
´´3 ?
,
´´? @
RegexOptions
´´A M
.
´´M N
None
´´N R
,
´´R S
TimeSpan
´´T \
.
´´\ ]
FromSeconds
´´] h
(
´´h i
$num
´´i j
)
´´j k
)
´´k l
;
´´l m
return
¨¨ 
match
¨¨ 
.
¨¨ 
Success
¨¨ $
;
¨¨$ %
}
≠≠ 
catch
ÆÆ 
(
ÆÆ (
RegexMatchTimeoutException
ÆÆ -
ex
ÆÆ. 0
)
ÆÆ0 1
{
ØØ 
log
∞∞ 
.
∞∞ 
Error
∞∞ 
(
∞∞ 
ex
∞∞ 
)
∞∞ 
;
∞∞ 
return
±± 
false
±± 
;
±± 
}
≤≤ 
}
≥≥ 	
private
∂∂ 
void
∂∂ '
Button_ShowPassword_Click
∂∂ .
(
∂∂. /
object
∂∂/ 5
sender
∂∂6 <
,
∂∂< =
RoutedEventArgs
∂∂> M
e
∂∂N O
)
∂∂O P
{
∑∑ 	
if
∏∏ 
(
∏∏ "
TextBox_ShowPassword
∏∏ $
.
∏∏$ %

Visibility
∏∏% /
==
∏∏0 2

Visibility
∏∏3 =
.
∏∏= >
	Collapsed
∏∏> G
)
∏∏G H
{
ππ "
TextBox_ShowPassword
∫∫ $
.
∫∫$ %

Visibility
∫∫% /
=
∫∫0 1

Visibility
∫∫2 <
.
∫∫< =
Visible
∫∫= D
;
∫∫D E"
TextBox_ShowPassword
ªª $
.
ªª$ %
Text
ªª% )
=
ªª* +"
PasswordBox_Password
ªª, @
.
ªª@ A
Password
ªªA I
;
ªªI J"
PasswordBox_Password
ºº $
.
ºº$ %

Visibility
ºº% /
=
ºº0 1

Visibility
ºº2 <
.
ºº< =
Hidden
ºº= C
;
ººC D
}
ΩΩ 
else
ææ 
{
øø "
PasswordBox_Password
¿¿ $
.
¿¿$ %
Password
¿¿% -
=
¿¿. /"
TextBox_ShowPassword
¿¿0 D
.
¿¿D E
Text
¿¿E I
;
¿¿I J"
TextBox_ShowPassword
¡¡ $
.
¡¡$ %

Visibility
¡¡% /
=
¡¡0 1

Visibility
¡¡2 <
.
¡¡< =
	Collapsed
¡¡= F
;
¡¡F G"
PasswordBox_Password
¬¬ $
.
¬¬$ %

Visibility
¬¬% /
=
¬¬0 1

Visibility
¬¬2 <
.
¬¬< =
Visible
¬¬= D
;
¬¬D E
}
√√ 
}
ƒƒ 	
private
∆∆ 
void
∆∆ 
GetTutorList
∆∆ !
(
∆∆! "
)
∆∆" #
{
«« 	
	tutorList
…… 
=
…… 
tutorClient
…… '
.
……' (
GetTutorsList
……( 5
(
……5 6
)
……6 7
.
……7 8
ToList
……8 >
(
……> ?
)
……? @
;
……@ A
ComboBox_Tutor
   
.
   
ItemsSource
   *
=
  + ,
	tutorList
  - 6
;
  6 7
ComboBox_Tutor
ÀÀ 
.
ÀÀ 
DisplayMemberPath
ÀÀ 0
=
ÀÀ1 2
$str
ÀÀ3 =
;
ÀÀ= >
ComboBox_Tutor
ÃÃ 
.
ÃÃ 
SelectedValuePath
ÃÃ 0
=
ÃÃ1 2
$str
ÃÃ3 <
;
ÃÃ< =
}
ŒŒ 	
private
–– 
void
–– 
GetCareerList
–– "
(
––" #
)
––# $
{
—— 	

careerList
”” 
=
”” 
careerClient
”” )
.
””) *
GetCareerList
””* 7
(
””7 8
)
””8 9
.
””9 :
ToList
””: @
(
””@ A
)
””A B
;
””B C)
ComboBox_EducationalProgram
‘‘ +
.
‘‘+ ,
ItemsSource
‘‘, 7
=
‘‘8 9

careerList
‘‘: D
;
‘‘D E)
ComboBox_EducationalProgram
’’ +
.
’’+ ,
DisplayMemberPath
’’, =
=
’’> ?
$str
’’@ F
;
’’F G)
ComboBox_EducationalProgram
÷÷ +
.
÷÷+ ,
SelectedValuePath
÷÷, =
=
÷÷> ?
$str
÷÷@ J
;
÷÷J K
}
ÿÿ 	
private
‚‚ 
bool
‚‚ 
IsPasswordValid
‚‚ $
(
‚‚$ %
string
‚‚% +
password
‚‚, 4
)
‚‚4 5
{
„„ 	
bool
‰‰ 
isValid
‰‰ 
=
‰‰ 
true
‰‰ 
;
‰‰  
if
ÁÁ 
(
ÁÁ 
password
ÁÁ 
.
ÁÁ 
Length
ÁÁ 
<
ÁÁ  !
$num
ÁÁ" #
)
ÁÁ# $
{
ËË 
isValid
ÈÈ 
=
ÈÈ 
false
ÈÈ 
;
ÈÈ  
}
ÍÍ 
try
ÏÏ 
{
ÌÌ 
if
ÓÓ 
(
ÓÓ 
!
ÓÓ 
Regex
ÓÓ 
.
ÓÓ 
Match
ÓÓ  
(
ÓÓ  !
password
ÓÓ! )
,
ÓÓ) *
$str
ÓÓ+ 0
,
ÓÓ0 1
RegexOptions
ÓÓ2 >
.
ÓÓ> ?
None
ÓÓ? C
,
ÓÓC D
TimeSpan
ÓÓE M
.
ÓÓM N
FromSeconds
ÓÓN Y
(
ÓÓY Z
$num
ÓÓZ [
)
ÓÓ[ \
)
ÓÓ\ ]
.
ÓÓ] ^
Success
ÓÓ^ e
)
ÓÓe f
{
ÔÔ 
isValid
 
=
 
false
 #
;
# $
}
ÒÒ 
if
ÛÛ 
(
ÛÛ 
!
ÛÛ 
Regex
ÛÛ 
.
ÛÛ 
Match
ÛÛ  
(
ÛÛ  !
password
ÛÛ! )
,
ÛÛ) *
$str
ÛÛ+ 5
,
ÛÛ5 6
RegexOptions
ÛÛ7 C
.
ÛÛC D
None
ÛÛD H
,
ÛÛH I
TimeSpan
ÛÛJ R
.
ÛÛR S
FromSeconds
ÛÛS ^
(
ÛÛ^ _
$num
ÛÛ_ `
)
ÛÛ` a
)
ÛÛa b
.
ÛÛb c
Success
ÛÛc j
)
ÛÛj k
{
ÙÙ 
isValid
ıı 
=
ıı 
false
ıı #
;
ıı# $
}
ˆˆ 
}
˜˜ 
catch
¯¯ 
(
¯¯ (
RegexMatchTimeoutException
¯¯ -
ex
¯¯. 0
)
¯¯0 1
{
˘˘ 
log
˙˙ 
.
˙˙ 
Error
˙˙ 
(
˙˙ 
ex
˙˙ 
)
˙˙ 
;
˙˙ 
isValid
˚˚ 
=
˚˚ 
false
˚˚ 
;
˚˚  
}
¸¸ 
return
˛˛ 
isValid
˛˛ 
;
˛˛ 
}
ˇˇ 	
}
ÅÅ 
}ÇÇ ¬%
FC:\Users\danse\source\repos\FEIClient\FEIClient\Views\TurnCard.xaml.cs
	namespace 	
	FEIClient
 
. 
Views 
{ 
public 

partial 
class 
TurnCard !
:" #
UserControl$ /
{ 
private 
static 
readonly 
ILog  $
log% (
=) *

LogManager+ 5
.5 6
	GetLogger6 ?
(? @
typeof@ F
(F G
LoginG L
)L M
)M N
;N O
private 
StudentClient 
studentClient +
;+ ,
private 
Student 
student 
;  
public 
TurnCard 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
studentClient   
=   
new   
StudentClient    -
(  - .
)  . /
;  / 0
}!! 	
private## 
void## /
#ShowMessageBoxServiceExceptionError## 8
(##8 9
)##9 :
{$$ 	

MessageBox%% 
.%% 
Show%% 
(%% 

Properties%% &
.%%& '
	Resources%%' 0
.%%0 1-
!MessageBox_Error_ServiceException%%1 R
,%%R S
$str%%T Y
,%%Y Z
MessageBoxButton%%[ k
.%%k l
OK%%l n
,%%n o
MessageBoxImage%%p 
.	%% Ä
Error
%%Ä Ö
)
%%Ö Ü
;
%%Ü á
}&& 	
private(( 
void(( 
	GoToLogIn(( 
((( 
)((  
{)) 	
Login** 
loginWindow** 
=** 
new**  #
Login**$ )
(**) *
)*** +
;**+ ,
student++ 
=++ 
null++ 
;++ 
Window-- 
parentWindow-- 
=--  !
Window--" (
.--( )
	GetWindow--) 2
(--2 3
this--3 7
)--7 8
;--8 9
if.. 
(.. 
parentWindow.. 
!=.. 
null..  $
)..$ %
{// 
parentWindow00 
.00 
Close00 "
(00" #
)00# $
;00$ %
}11 
loginWindow33 
.33 

ShowDialog33 "
(33" #
)33# $
;33$ %
}44 	
public66 
void66 #
ConfigureTurnCardWindow66 +
(66+ ,
Appointment66, 7
appointment668 C
)66C D
{77 	
try88 
{99 
GetStudentNameById:: "
(::" #
appointment::# .
.::. /
student_IdStudent::/ @
)::@ A
;::A B
Label_Matricula;; 
.;;  
Content;;  '
=;;( )
appointment;;* 5
.;;5 6
student_IdStudent;;6 G
;;;G H
}<< 
catch== 
(== "
CommunicationException== )
ex==* ,
)==, -
{>> /
#ShowMessageBoxServiceExceptionError?? 3
(??3 4
)??4 5
;??5 6
log@@ 
.@@ 
Error@@ 
(@@ 
ex@@ 
)@@ 
;@@ 
	GoToLogInAA 
(AA 
)AA 
;AA 
}CC 
catchDD 
(DD 
TimeoutExceptionDD #
exDD$ &
)DD& '
{EE /
#ShowMessageBoxServiceExceptionErrorFF 3
(FF3 4
)FF4 5
;FF5 6
logGG 
.GG 
ErrorGG 
(GG 
exGG 
)GG 
;GG 
	GoToLogInHH 
(HH 
)HH 
;HH 
}JJ 
catchKK 
(KK 
	ExceptionKK 
exKK 
)KK  
{LL /
#ShowMessageBoxServiceExceptionErrorMM 3
(MM3 4
)MM4 5
;MM5 6
logNN 
.NN 
ErrorNN 
(NN 
exNN 
)NN 
;NN 
	GoToLogInOO 
(OO 
)OO 
;OO 
}QQ 
}TT 	
privateVV 
voidVV 
GetStudentNameByIdVV '
(VV' (
stringVV( .
	idStudentVV/ 8
)VV8 9
{WW 	
thisXX 
.XX 
studentXX 
=XX 
studentClientXX (
.XX( )
GetStudentNameByIdXX) ;
(XX; <
	idStudentXX< E
)XXE F
;XXF G

Label_NameYY 
.YY 
ContentYY 
=YY  
studentYY! (
.YY( )
fullNameYY) 1
;YY1 2
}ZZ 	
}[[ 
}\\ ı◊
BC:\Users\danse\source\repos\FEIClient\FEIClient\Views\Menu.xaml.cs
	namespace 	
	FEIClient
 
. 
Views 
{ 
public 

partial 
class 
Menu 
: 
Window  &
,& ' 
IAppointmentCallback( <
{ 
private 
static 
readonly 
ILog  $
log% (
=) *

LogManager+ 5
.5 6
	GetLogger6 ?
(? @
typeof@ F
(F G
LoginG L
)L M
)M N
;N O
private 
bool #
allreadyHaveAppointment ,
=- .
false/ 4
;4 5
private   
AppointmentClient   "
appointmentClient  # 4
;  4 5
private!! 
List!! 
<!! 
Appointment!!  
>!!  !
appointmentList!!" 1
;!!1 2
private"" 
ViewStudentInfo"" 
student""  '
;""' (
private## 
TutorClient## 
tutorClient## (
;##( )
private$$ 
bool$$ !
AllreadyInAppointment$$ *
=$$+ ,
false$$- 2
;$$2 3
public%% 
Menu%% 
(%% 
)%% 
{&& 	
InitializeComponent'' 
(''  
)''  !
;''! "
appointmentClient(( 
=(( 
new((  #
AppointmentClient(($ 5
(((5 6
new((6 9
InstanceContext((: I
(((I J
this((J N
)((N O
)((O P
;((P Q
appointmentList)) 
=)) 
new)) !
List))" &
<))& '
Appointment))' 2
>))2 3
())3 4
)))4 5
;))5 6
tutorClient** 
=** 
new** 
TutorClient** )
(**) *
)*** +
;**+ ,
Button_LeaveShift++ 
.++ 
Effect++ $
=++% &
new++' *
System+++ 1
.++1 2
Windows++2 9
.++9 :
Media++: ?
.++? @
Effects++@ G
.++G H

BlurEffect++H R
(++R S
)++S T
;++T U
},, 	
public-- 
void-- 
ConfigureMenuWindow-- '
(--' (
ViewStudentInfo--( 7
account--8 ?
)--? @
{.. 	
try// 
{00 
this11 
.11 
student11 
=11 
account11 &
;11& '

Label_Name22 
.22 
Content22 "
=22# $
student22% ,
.22, -
fullName22- 5
;225 6
Label_AcademicTutor33 #
.33# $
Content33$ +
=33, -
GetTutorById33. :
(33: ;
student33; B
.33B C
idTutor33C J
)33J K
;33K L$
Label_EducationalProgram44 (
.44( )
Content44) 0
=441 2
student443 :
.44: ;

careerName44; E
;44E F
Label_StudentId55 
.55  
Content55  '
=55( )
student55* 1
.551 2
	idStudent552 ;
;55; <
appointmentClient66 !
.66! "
JoinToSesion66" .
(66. /
student66/ 6
.666 7
	idStudent667 @
)66@ A
;66A B
GetAppointmentList77 "
(77" #
)77# $
;77$ %(
AddTurnCardsToGridStackPanel88 ,
(88, -
)88- .
;88. /
}99 
catch:: 
(:: "
CommunicationException:: )
ex::* ,
)::, -
{;; /
#ShowMessageBoxServiceExceptionError<< 3
(<<3 4
)<<4 5
;<<5 6
log== 
.== 
Error== 
(== 
ex== 
)== 
;== 
	GoToLogIn?? 
(?? 
)?? 
;?? 
}@@ 
catchAA 
(AA 
TimeoutExceptionAA #
exAA$ &
)AA& '
{BB /
#ShowMessageBoxServiceExceptionErrorCC 3
(CC3 4
)CC4 5
;CC5 6
logDD 
.DD 
ErrorDD 
(DD 
exDD 
)DD 
;DD 
	GoToLogInEE 
(EE 
)EE 
;EE 
}FF 
catchGG 
(GG 
	ExceptionGG 
exGG 
)GG  
{HH /
#ShowMessageBoxServiceExceptionErrorII 3
(II3 4
)II4 5
;II5 6
logJJ 
.JJ 
ErrorJJ 
(JJ 
exJJ 
)JJ 
;JJ 
	GoToLogInLL 
(LL 
)LL 
;LL 
}MM 
}NN 	
privatePP 
stringPP 
GetTutorByIdPP #
(PP# $
intPP$ '
idTutorPP( /
)PP/ 0
{QQ 	
stringRR 
	tutorNameRR 
=RR 
$strRR !
;RR! "
trySS 
{TT 
	tutorNameUU 
=UU 
tutorClientUU '
.UU' (
GetTutorByIdUU( 4
(UU4 5
idTutorUU5 <
)UU< =
.UU= >
fullNameUU> F
;UUF G
}VV 
catchVV 
(VV 
	ExceptionVV 
exVV  
)VV  !
{WW /
#ShowMessageBoxServiceExceptionErrorXX 3
(XX3 4
)XX4 5
;XX5 6
logYY 
.YY 
ErrorYY 
(YY 
exYY 
)YY 
;YY 
	GoToLogInZZ 
(ZZ 
)ZZ 
;ZZ 
}\\ 
return]] 
	tutorName]] 
;]] 
}^^ 	
private`` 
void`` 
GetAppointmentList`` '
(``' (
)``( )
{aa 	
appointmentListbb 
=bb 
appointmentClientbb /
.bb/ 0
GetAllAppointmentsbb0 B
(bbB C
)bbC D
.bbD E
ToListbbE K
(bbK L
)bbL M
;bbM N
}cc 	
privateee 
voidee 0
$ConfigureAllreadyHaveAppointmentFlagee 9
(ee9 :
)ee: ;
{ff 	
ifgg 
(gg 
appointmentListgg 
.gg  
Countgg  %
>gg% &
$numgg& '
)gg' (
{hh 
forii 
(ii 
intii 
iii 
=ii 
$numii 
;ii 
iii  !
<ii" #
appointmentListii$ 3
.ii3 4
Countii4 9
;ii9 :
iii; <
++ii< >
)ii> ?
{jj 
ifkk 
(kk 
appointmentListkk '
[kk' (
ikk( )
]kk) *
.kk* +
student_IdStudentkk+ <
==kk= ?
studentkk@ G
.kkG H
	idStudentkkH Q
)kkQ R
{ll #
allreadyHaveAppointmentmm /
=mm0 1
truemm2 6
;mm6 7
breaknn 
;nn 
}oo 
elsepp 
{qq #
allreadyHaveAppointmentrr /
=rr0 1
falserr2 7
;rr7 8
}ss 
}tt 
}uu 
elsevv 
{ww #
allreadyHaveAppointmentxx '
=xx( )
falsexx* /
;xx/ 0
}yy 
}zz 	
private|| 
void|| (
AddTurnCardsToGridStackPanel|| 1
(||1 2
)||2 3
{}} 	(
StackPanel_TurnCardContainer~~ (
.~~( )
Children~~) 1
.~~1 2
Clear~~2 7
(~~7 8
)~~8 9
;~~9 :!
InsertTagToStackPanel !
(! "
$str" ,
), -
;- .2
$ConfigureAllreadyHaveAppointmentFlag
ÄÄ 0
(
ÄÄ0 1
)
ÄÄ1 2
;
ÄÄ2 3
bool
ÇÇ 
isMyTurn
ÇÇ 
=
ÇÇ 
false
ÇÇ !
;
ÇÇ! "
for
ÉÉ 
(
ÉÉ 
int
ÉÉ 
i
ÉÉ 
=
ÉÉ 
$num
ÉÉ 
;
ÉÉ 
i
ÉÉ 
<
ÉÉ 
appointmentList
ÉÉ  /
.
ÉÉ/ 0
Count
ÉÉ0 5
;
ÉÉ5 6
i
ÉÉ7 8
++
ÉÉ8 :
)
ÉÉ: ;
{
ÑÑ 
if
ÖÖ 
(
ÖÖ 
!
ÖÖ 
isMyTurn
ÖÖ 
&&
ÖÖ  
appointmentList
ÖÖ! 0
[
ÖÖ0 1
i
ÖÖ1 2
]
ÖÖ2 3
.
ÖÖ3 4
student_IdStudent
ÖÖ4 E
==
ÖÖF H
student
ÖÖI P
.
ÖÖP Q
	idStudent
ÖÖQ Z
)
ÖÖ[ \
{
ÜÜ 
if
áá 
(
áá 
i
áá 
==
áá 
$num
áá 
)
áá  
{
àà 

MessageBox
ââ "
.
ââ" #
Show
ââ# '
(
ââ' (

Properties
ââ( 2
.
ââ2 3
	Resources
ââ3 <
.
ââ< =2
$MessageBox_Notification_YourTurnNext
ââ= a
,
ââa b
$str
ââc h
,
ââh i
MessageBoxButton
ââj z
.
ââz {
OK
ââ{ }
,
ââ} ~
MessageBoxImageââ é
.ââé è
Exclamationââè ö
)ââö õ
;ââõ ú
}
ää 
else
ãã 
if
ãã 
(
ãã 
i
ãã 
==
ãã !
$num
ãã" #
&&
ãã$ &
!
ãã' (#
AllreadyInAppointment
ãã( =
)
ãã= >
{
åå 

MessageBox
çç "
.
çç" #
Show
çç# '
(
çç' (

Properties
çç( 2
.
çç2 3
	Resources
çç3 <
.
çç< =.
 MessageBox_Notification_YourTurn
çç= ]
,
çç] ^
$str
çç_ d
,
ççd e
MessageBoxButton
ççf v
.
ççv w
OK
ççw y
,
ççy z
MessageBoxImageçç{ ä
.ççä ã
Exclamationççã ñ
)ççñ ó
;ççó ò#
AllreadyInAppointment
éé -
=
éé. /
true
éé0 4
;
éé4 5
}
êê #
InsertTagToStackPanel
ëë )
(
ëë) *
$str
ëë* 4
)
ëë4 5
;
ëë5 6
isMyTurn
íí 
=
íí 
true
íí #
;
íí# $
}
ìì 
if
ïï 
(
ïï 
i
ïï 
==
ïï 
$num
ïï 
&&
ïï 
!
ïï 
isMyTurn
ïï '
)
ïï' (
{
ññ #
InsertTagToStackPanel
óó )
(
óó) *
$str
óó* 7
)
óó7 8
;
óó8 9
}
òò 
TurnCard
öö 
turnCard
öö !
=
öö" #
new
öö$ '
TurnCard
öö( 0
(
öö0 1
)
öö1 2
;
öö2 3
turnCard
õõ 
.
õõ %
ConfigureTurnCardWindow
õõ 0
(
õõ0 1
appointmentList
õõ1 @
[
õõ@ A
i
õõA B
]
õõB C
)
õõC D
;
õõD E
turnCard
úú 
.
úú 
Margin
úú 
=
úú  !
new
úú" %
	Thickness
úú& /
(
úú/ 0
$num
úú0 1
,
úú1 2
$num
úú3 4
,
úú4 5
$num
úú6 7
,
úú7 8
$num
úú9 ;
)
úú; <
;
úú< =*
StackPanel_TurnCardContainer
ùù ,
.
ùù, -
Children
ùù- 5
.
ùù5 6
Add
ùù6 9
(
ùù9 :
turnCard
ùù: B
)
ùùB C
;
ùùC D
}
ûû -
ConfigureRequestAndLeaveButtons
üü +
(
üü+ ,
)
üü, -
;
üü- .
}
†† 	
private
¢¢ 
void
¢¢ #
InsertTagToStackPanel
¢¢ *
(
¢¢* +
string
¢¢+ 1
text
¢¢2 6
)
¢¢6 7
{
££ 	
Label
§§ 
yourTurnLabel
§§  
=
§§! "
new
§§# &
Label
§§' ,
{
•• 
Content
¶¶ 
=
¶¶ 
text
¶¶ 
,
¶¶ 
FontSize
ßß 
=
ßß 
$num
ßß 
,
ßß 
Margin
®® 
=
®® 
new
®® 
	Thickness
®® &
(
®®& '
$num
®®' (
,
®®( )
$num
®®* ,
,
®®, -
$num
®®. /
,
®®/ 0
$num
®®1 3
)
®®3 4
,
®®4 5!
HorizontalAlignment
©© #
=
©©$ %!
HorizontalAlignment
©©& 9
.
©©9 :
Center
©©: @
}
™™ 
;
™™ *
StackPanel_TurnCardContainer
´´ )
.
´´) *
Children
´´* 2
.
´´2 3
Add
´´3 6
(
´´6 7
yourTurnLabel
´´7 D
)
´´D E
;
´´E F
}
¨¨ 	
private
ÆÆ 
void
ÆÆ -
ConfigureRequestAndLeaveButtons
ÆÆ 4
(
ÆÆ4 5
)
ÆÆ5 6
{
ØØ 	
if
∞∞ 
(
∞∞ %
allreadyHaveAppointment
∞∞ '
)
∞∞' (
{
±± '
Button_AppointmentRequest
≤≤ )
.
≤≤) *
	IsEnabled
≤≤* 3
=
≤≤4 5
false
≤≤6 ;
;
≤≤; <'
Button_AppointmentRequest
≥≥ )
.
≥≥) *
Effect
≥≥* 0
=
≥≥1 2
new
≥≥3 6
System
≥≥7 =
.
≥≥= >
Windows
≥≥> E
.
≥≥E F
Media
≥≥F K
.
≥≥K L
Effects
≥≥L S
.
≥≥S T

BlurEffect
≥≥T ^
(
≥≥^ _
)
≥≥_ `
;
≥≥` a
Button_LeaveShift
¥¥ !
.
¥¥! "
	IsEnabled
¥¥" +
=
¥¥, -
true
¥¥. 2
;
¥¥2 3
Button_LeaveShift
µµ !
.
µµ! "
Effect
µµ" (
=
µµ) *
null
µµ+ /
;
µµ/ 0
}
∂∂ 
else
∑∑ 
{
∏∏ '
Button_AppointmentRequest
ππ )
.
ππ) *
	IsEnabled
ππ* 3
=
ππ4 5
true
ππ6 :
;
ππ: ;'
Button_AppointmentRequest
∫∫ )
.
∫∫) *
Effect
∫∫* 0
=
∫∫1 2
null
∫∫3 7
;
∫∫7 8
Button_LeaveShift
ªª !
.
ªª! "
	IsEnabled
ªª" +
=
ªª, -
false
ªª. 3
;
ªª3 4
Button_LeaveShift
ºº !
.
ºº! "
Effect
ºº" (
=
ºº) *
new
ºº+ .
System
ºº/ 5
.
ºº5 6
Windows
ºº6 =
.
ºº= >
Media
ºº> C
.
ººC D
Effects
ººD K
.
ººK L

BlurEffect
ººL V
(
ººV W
)
ººW X
;
ººX Y
}
ΩΩ 
}
ææ 	
private
¿¿ 
void
¿¿ 
	GoToLogIn
¿¿ 
(
¿¿ 
)
¿¿  
{
¡¡ 	
Complements
¬¬ 
.
¬¬ 
	GoToLogIn
¬¬ !
(
¬¬! "
)
¬¬" #
;
¬¬# $
this
√√ 
.
√√ 
Close
√√ 
(
√√ 
)
√√ 
;
√√ 
}
ƒƒ 	
private
∆∆ 
void
∆∆ 1
#ShowMessageBoxServiceExceptionError
∆∆ 8
(
∆∆8 9
)
∆∆9 :
{
«« 	

MessageBox
»» 
.
»» 
Show
»» 
(
»» 

Properties
»» &
.
»»& '
	Resources
»»' 0
.
»»0 1/
!MessageBox_Error_ServiceException
»»1 R
,
»»R S
$str
»»T Y
,
»»Y Z
MessageBoxButton
»»[ k
.
»»k l
OK
»»l n
,
»»n o
MessageBoxImage
»»p 
.»» Ä
Error»»Ä Ö
)»»Ö Ü
;»»Ü á
}
…… 	
private
ÀÀ 
void
ÀÀ !
Button_LogOut_Click
ÀÀ (
(
ÀÀ( )
object
ÀÀ) /
sender
ÀÀ0 6
,
ÀÀ6 7
RoutedEventArgs
ÀÀ8 G
e
ÀÀH I
)
ÀÀI J
{
ÃÃ 	
MessageBoxResult
ŒŒ 
result
ŒŒ #
=
ŒŒ$ %

MessageBox
ŒŒ& 0
.
ŒŒ0 1
Show
ŒŒ1 5
(
ŒŒ5 6
$str
ŒŒ6 N
,
ŒŒN O
$str
ŒŒP _
,
ŒŒ_ `
MessageBoxButton
ŒŒa q
.
ŒŒq r
YesNo
ŒŒr w
,
ŒŒw x
MessageBoxImageŒŒy à
.ŒŒà â
QuestionŒŒâ ë
)ŒŒë í
;ŒŒí ì
if
–– 
(
–– 
result
–– 
==
–– 
MessageBoxResult
–– *
.
––* +
Yes
––+ .
)
––. /
{
—— 
if
““ 
(
““ %
allreadyHaveAppointment
““ +
)
““+ ,
{
”” 
MessageBoxResult
‘‘ $
leaveShiftResult
‘‘% 5
=
‘‘6 7

MessageBox
‘‘8 B
.
‘‘B C
Show
‘‘C G
(
‘‘G H
$str
‘‘H e
,
‘‘e f
$str
‘‘g x
,
‘‘x y
MessageBoxButton‘‘z ä
.‘‘ä ã
YesNo‘‘ã ê
,‘‘ê ë
MessageBoxImage‘‘í °
.‘‘° ¢
Question‘‘¢ ™
)‘‘™ ´
;‘‘´ ¨
if
÷÷ 
(
÷÷ 
leaveShiftResult
÷÷ (
==
÷÷) +
MessageBoxResult
÷÷, <
.
÷÷< =
No
÷÷= ?
)
÷÷? @
{
◊◊ 
LeaveAppointment
ÿÿ ( 
leaveApointmentBox
ÿÿ) ;
=
ÿÿ< =
new
ÿÿ> A
LeaveAppointment
ÿÿB R
(
ÿÿR S
)
ÿÿS T
;
ÿÿT U
if
ŸŸ 
(
ŸŸ  
leaveApointmentBox
ŸŸ .
.
ŸŸ. /

ShowDialog
ŸŸ/ 9
(
ŸŸ9 :
)
ŸŸ: ;
==
ŸŸ< >
true
ŸŸ? C
)
ŸŸC D
{
⁄⁄ 
string
€€ "
reason
€€# )
=
€€* + 
leaveApointmentBox
€€, >
.
€€> ?
Reason
€€? E
;
€€E F
LeaveAppointment
‹‹ ,
(
‹‹, -
reason
‹‹- 3
)
‹‹3 4
;
‹‹4 5
	GoToLogIn
›› %
(
››% &
)
››& '
;
››' (
}
ﬁﬁ 
}
ﬂﬂ 
else
‡‡ 
{
·· 
	GoToLogIn
‚‚ !
(
‚‚! "
)
‚‚" #
;
‚‚# $
}
„„ 
}
‰‰ 
else
ÂÂ 
{
ÊÊ 
	GoToLogIn
ÁÁ 
(
ÁÁ 
)
ÁÁ 
;
ÁÁ  
}
ËË 
}
ÈÈ 
}
ÍÍ 	
private
ÏÏ 
void
ÏÏ -
Button_AppointmentRequest_Click
ÏÏ 4
(
ÏÏ4 5
object
ÏÏ5 ;
sender
ÏÏ< B
,
ÏÏB C
RoutedEventArgs
ÏÏD S
e
ÏÏT U
)
ÏÏU V
{
ÌÌ 	 
AppointmentRequest
ÓÓ &
appointmentRequestWindow
ÓÓ 7
=
ÓÓ8 9
new
ÓÓ: = 
AppointmentRequest
ÓÓ> P
(
ÓÓP Q
this
ÓÓQ U
)
ÓÓU V
;
ÓÓV W&
appointmentRequestWindow
ÔÔ $
.
ÔÔ$ %&
ConfigureWindowVariables
ÔÔ% =
(
ÔÔ= >
student
ÔÔ> E
)
ÔÔE F
;
ÔÔF G
this
 
.
 
Effect
 
=
 
new
 
System
 $
.
$ %
Windows
% ,
.
, -
Media
- 2
.
2 3
Effects
3 :
.
: ;

BlurEffect
; E
(
E F
)
F G
;
G H&
appointmentRequestWindow
ÒÒ $
.
ÒÒ$ %

ShowDialog
ÒÒ% /
(
ÒÒ/ 0
)
ÒÒ0 1
;
ÒÒ1 2
this
ÚÚ 
.
ÚÚ 
Effect
ÚÚ 
=
ÚÚ 
null
ÚÚ 
;
ÚÚ 
}
ÛÛ 	
private
ıı 
void
ıı %
Button_LeaveShift_Click
ıı ,
(
ıı, -
object
ıı- 3
sender
ıı4 :
,
ıı: ;
RoutedEventArgs
ıı< K
e
ııL M
)
ııM N
{
ˆˆ 	

LeaveShift
˜˜ 
leaveShiftWindow
˜˜ '
=
˜˜( )
new
˜˜* -

LeaveShift
˜˜. 8
(
˜˜8 9
this
˜˜9 =
)
˜˜= >
;
˜˜> ?
this
¯¯ 
.
¯¯ 
Effect
¯¯ 
=
¯¯ 
new
¯¯ 
System
¯¯ $
.
¯¯$ %
Windows
¯¯% ,
.
¯¯, -
Media
¯¯- 2
.
¯¯2 3
Effects
¯¯3 :
.
¯¯: ;

BlurEffect
¯¯; E
(
¯¯E F
)
¯¯F G
;
¯¯G H
leaveShiftWindow
˘˘ 
.
˘˘ 

ShowDialog
˘˘ '
(
˘˘' (
)
˘˘( )
;
˘˘) *
this
˙˙ 
.
˙˙ 
Effect
˙˙ 
=
˙˙ 
null
˙˙ 
;
˙˙ 
}
˚˚ 	
public
˝˝ 
void
˝˝ 
SetAppointments
˝˝ #
(
˝˝# $
Appointment
˝˝$ /
[
˝˝/ 0
]
˝˝0 1
appointments
˝˝2 >
)
˝˝> ?
{
˛˛ 	
this
ˇˇ 
.
ˇˇ 
appointmentList
ˇˇ  
=
ˇˇ! "
appointments
ˇˇ# /
.
ˇˇ/ 0
ToList
ˇˇ0 6
(
ˇˇ6 7
)
ˇˇ7 8
;
ˇˇ8 9*
AddTurnCardsToGridStackPanel
ÄÄ (
(
ÄÄ( )
)
ÄÄ) *
;
ÄÄ* +
}
ÅÅ 	
public
ÉÉ 
void
ÉÉ 
LeaveAppointment
ÉÉ $
(
ÉÉ$ %
string
ÉÉ% +
notAttendedReason
ÉÉ, =
)
ÉÉ= >
{
ÑÑ 	'
Button_AppointmentRequest
ÖÖ %
.
ÖÖ% &
	IsEnabled
ÖÖ& /
=
ÖÖ0 1
true
ÖÖ2 6
;
ÖÖ6 7'
Button_AppointmentRequest
ÜÜ %
.
ÜÜ% &
Effect
ÜÜ& ,
=
ÜÜ- .
null
ÜÜ/ 3
;
ÜÜ3 4
Button_LeaveShift
áá 
.
áá 
	IsEnabled
áá '
=
áá( )
false
áá* /
;
áá/ 0
Button_LeaveShift
àà 
.
àà 
Effect
àà $
=
àà% &
new
àà' *
System
àà+ 1
.
àà1 2
Windows
àà2 9
.
àà9 :
Media
àà: ?
.
àà? @
Effects
àà@ G
.
ààG H

BlurEffect
ààH R
(
ààR S
)
ààS T
;
ààT U
try
ââ 
{
ää 
appointmentClient
ãã !
.
ãã! "
LeaveAppointment
ãã" 2
(
ãã2 3
student
ãã3 :
.
ãã: ;
	idStudent
ãã; D
,
ããD E
notAttendedReason
ããF W
)
ããW X
;
ããX Y#
AllreadyInAppointment
åå %
=
åå& '
false
åå( -
;
åå- .
}
çç 
catch
éé 
(
éé $
CommunicationException
éé )
ex
éé* ,
)
éé, -
{
èè 1
#ShowMessageBoxServiceExceptionError
êê 3
(
êê3 4
)
êê4 5
;
êê5 6
log
ëë 
.
ëë 
Error
ëë 
(
ëë 
ex
ëë 
)
ëë 
;
ëë 
	GoToLogIn
íí 
(
íí 
)
íí 
;
íí 
}
ìì 
catch
îî 
(
îî 
TimeoutException
îî #
ex
îî$ &
)
îî& '
{
ïï 1
#ShowMessageBoxServiceExceptionError
ññ 3
(
ññ3 4
)
ññ4 5
;
ññ5 6
log
óó 
.
óó 
Error
óó 
(
óó 
ex
óó 
)
óó 
;
óó 
	GoToLogIn
òò 
(
òò 
)
òò 
;
òò 
}
ôô 
catch
öö 
(
öö 
	Exception
öö 
ex
öö 
)
öö  
{
õõ 1
#ShowMessageBoxServiceExceptionError
úú 3
(
úú3 4
)
úú4 5
;
úú5 6
log
ùù 
.
ùù 
Error
ùù 
(
ùù 
ex
ùù 
)
ùù 
;
ùù 
	GoToLogIn
ûû 
(
ûû 
)
ûû 
;
ûû 
}
üü 
}
†† 	
public
¢¢ 
void
¢¢  
RequestAppointment
¢¢ &
(
¢¢& '
Appointment
¢¢' 2
appointment
¢¢3 >
)
¢¢> ?
{
££ 	
if
§§ 
(
§§ 
appointment
§§ 
!=
§§ 
null
§§ #
)
§§# $
{
•• '
Button_AppointmentRequest
¶¶ )
.
¶¶) *
	IsEnabled
¶¶* 3
=
¶¶4 5
false
¶¶6 ;
;
¶¶; <'
Button_AppointmentRequest
ßß )
.
ßß) *
Effect
ßß* 0
=
ßß1 2
new
ßß3 6
System
ßß7 =
.
ßß= >
Windows
ßß> E
.
ßßE F
Media
ßßF K
.
ßßK L
Effects
ßßL S
.
ßßS T

BlurEffect
ßßT ^
(
ßß^ _
)
ßß_ `
;
ßß` a
Button_LeaveShift
®® !
.
®®! "
	IsEnabled
®®" +
=
®®, -
true
®®. 2
;
®®2 3
Button_LeaveShift
©© !
.
©©! "
Effect
©©" (
=
©©) *
null
©©+ /
;
©©/ 0
try
™™ 
{
´´ 
appointmentClient
¨¨ %
.
¨¨% & 
AppointmentRequest
¨¨& 8
(
¨¨8 9
appointment
¨¨9 D
)
¨¨D E
;
¨¨E F
}
≠≠ 
catch
ÆÆ 
(
ÆÆ $
CommunicationException
ÆÆ -
ex
ÆÆ. 0
)
ÆÆ0 1
{
ØØ 1
#ShowMessageBoxServiceExceptionError
∞∞ 7
(
∞∞7 8
)
∞∞8 9
;
∞∞9 :
log
±± 
.
±± 
Error
±± 
(
±± 
ex
±±  
)
±±  !
;
±±! "
	GoToLogIn
≤≤ 
(
≤≤ 
)
≤≤ 
;
≤≤  
}
¥¥ 
catch
µµ 
(
µµ 
TimeoutException
µµ '
ex
µµ( *
)
µµ* +
{
∂∂ 1
#ShowMessageBoxServiceExceptionError
∑∑ 7
(
∑∑7 8
)
∑∑8 9
;
∑∑9 :
log
∏∏ 
.
∏∏ 
Error
∏∏ 
(
∏∏ 
ex
∏∏  
)
∏∏  !
;
∏∏! "
	GoToLogIn
ππ 
(
ππ 
)
ππ 
;
ππ  
}
ªª 
catch
ºº 
(
ºº 
	Exception
ºº  
ex
ºº! #
)
ºº# $
{
ΩΩ 1
#ShowMessageBoxServiceExceptionError
ææ 7
(
ææ7 8
)
ææ8 9
;
ææ9 :
log
øø 
.
øø 
Error
øø 
(
øø 
ex
øø  
)
øø  !
;
øø! "
	GoToLogIn
¿¿ 
(
¿¿ 
)
¿¿ 
;
¿¿  
}
¬¬ 
}
√√ 
}
ƒƒ 	
public
∆∆ 
void
∆∆ 
UpdateTimer
∆∆ 
(
∆∆  
TimeSpan
∆∆  (
elapsedTime
∆∆) 4
)
∆∆4 5
{
«« 	
string
»» 
formattedTime
»»  
=
»»! "
string
»»# )
.
»») *
Format
»»* 0
(
»»0 1
$str
»»1 G
,
»»G H
elapsedTime
……) 4
.
……4 5
Hours
……5 :
,
……: ;
elapsedTime
  ) 4
.
  4 5
Minutes
  5 <
,
  < =
elapsedTime
ÀÀ) 4
.
ÀÀ4 5
Seconds
ÀÀ5 <
)
ÀÀ< =
;
ÀÀ= >
Label_Timer
ÕÕ 
.
ÕÕ 
Content
ÕÕ 
=
ÕÕ  !
formattedTime
ÕÕ" /
;
ÕÕ/ 0
}
ŒŒ 	
public
–– 
void
––  
NotifyCancellation
–– &
(
––& '
string
––' -
reason
––. 4
)
––4 5
{
—— 	

MessageBox
““ 
.
““ 
Show
““ 
(
““ 
$str
““ B
+
““C D
reason
““E K
,
““K L
$str
““L ]
,
““] ^
MessageBoxButton
““^ n
.
““n o
OK
““o q
,
““q r
MessageBoxImage““r Å
.““Å Ç
Information““Ç ç
)““ç é
;““é è
}
”” 	
}
‘‘ 
}’’ âJ
CC:\Users\danse\source\repos\FEIClient\FEIClient\Views\Login.xaml.cs
	namespace		 	
	FEIClient		
 
.		 
Views		 
{

 
public 

partial 
class 
Login 
:  
Window! '
{ 
private 
static 
readonly 
ILog  $
log% (
=) *

LogManager+ 5
.5 6
	GetLogger6 ?
(? @
typeof@ F
(F G
LoginG L
)L M
)M N
;N O
private !
ViewStudentInfoClient %
studentInfoClient& 7
;7 8
public 
Login 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
studentInfoClient 
= 
new  #!
ViewStudentInfoClient$ 9
(9 :
): ;
;; <
} 	
private 
void /
#ShowMessageBoxServiceExceptionError 8
(8 9
)9 :
{ 	

MessageBox 
. 
Show 
( 

Properties &
.& '
	Resources' 0
.0 1-
!MessageBox_Error_ServiceException1 R
,R S
$strT Y
,Y Z
MessageBoxButton[ k
.k l
OKl n
,n o
MessageBoxImagep 
.	 Ä
Error
Ä Ö
)
Ö Ü
;
Ü á
} 	
private 
void %
Button_ShowPassword_Click .
(. /
object/ 5
sender6 <
,< =
RoutedEventArgs> M
eN O
)O P
{ 	
if 
(  
TextBox_ShowPassword $
.$ %

Visibility% /
==0 2

Visibility3 =
.= >
	Collapsed> G
)G H
{    
TextBox_ShowPassword!! $
.!!$ %

Visibility!!% /
=!!0 1

Visibility!!2 <
.!!< =
Visible!!= D
;!!D E 
TextBox_ShowPassword"" $
.""$ %
Text""% )
=""* + 
PasswordBox_Password"", @
.""@ A
Password""A I
;""I J 
PasswordBox_Password## $
.##$ %

Visibility##% /
=##0 1

Visibility##2 <
.##< =
Hidden##= C
;##C D
}$$ 
else%% 
{&&  
PasswordBox_Password'' $
.''$ %
Password''% -
=''. / 
TextBox_ShowPassword''0 D
.''D E
Text''E I
;''I J 
TextBox_ShowPassword(( $
.(($ %

Visibility((% /
=((0 1

Visibility((2 <
.((< =
	Collapsed((= F
;((F G 
PasswordBox_Password)) $
.))$ %

Visibility))% /
=))0 1

Visibility))2 <
.))< =
Visible))= D
;))D E
}** 
}++ 	
private-- 
void-- 
Button_Login_Click-- '
(--' (
object--( .
sender--/ 5
,--5 6
RoutedEventArgs--7 F
e--G H
)--H I
{.. 	
if// 
(// 
!// !
IsUserOrPasswordEmpty// &
(//& '
)//' (
)//( )
{00 
LogIn11 
(11 
)11 
;11 
}22 
}44 	
private66 
void66 
Button_SignUp_Click66 (
(66( )
object66) /
sender660 6
,666 7
RoutedEventArgs668 G
e66H I
)66I J
{77 	
try88 
{99 
var:: 
signUpWindow::  
=::! "
new::# &
SignUp::' -
(::- .
)::. /
;::/ 0
Close;; 
(;; 
);; 
;;; 
signUpWindow<< 
.<< 

ShowDialog<< '
(<<' (
)<<( )
;<<) *
}== 
catch>> 
(>> "
CommunicationException>> )
ex>>* ,
)>>, -
{?? /
#ShowMessageBoxServiceExceptionError@@ 3
(@@3 4
)@@4 5
;@@5 6
logAA 
.AA 
ErrorAA 
(AA 
exAA 
)AA 
;AA 
}CC 
catchDD 
(DD 
TimeoutExceptionDD #
exDD$ &
)DD& '
{EE /
#ShowMessageBoxServiceExceptionErrorFF 3
(FF3 4
)FF4 5
;FF5 6
logGG 
.GG 
ErrorGG 
(GG 
exGG 
)GG 
;GG 
}II 
catchJJ 
(JJ 
	ExceptionJJ 
exJJ 
)JJ  
{KK /
#ShowMessageBoxServiceExceptionErrorLL 3
(LL3 4
)LL4 5
;LL5 6
logMM 
.MM 
ErrorMM 
(MM 
exMM 
)MM 
;MM 
}NN 
}PP 	
privateQQ 
boolQQ !
IsUserOrPasswordEmptyQQ *
(QQ* +
)QQ+ ,
{RR 	
boolSS 
isEmptySS 
=SS 
falseSS  
;SS  !
ifTT 
(TT 
(TT 
TextBox_UserTT 
.TT 
TextTT "
==TT# %
$strTT& (
)TT( )
||TT* ,
(TT- . 
PasswordBox_PasswordTT. B
.TTB C
PasswordTTC K
==TTL N
$strTTO Q
)TTQ R
)TTR S
{UU 

MessageBoxVV 
.VV 
ShowVV 
(VV  

PropertiesVV  *
.VV* +
	ResourcesVV+ 4
.VV4 5(
MessageBox_Error_EmptyFieldsVV5 Q
,VVQ R
$strVVS X
,VVX Y
MessageBoxButtonVVZ j
.VVj k
OKVVk m
,VVm n
MessageBoxImageVVo ~
.VV~ 
Error	VV Ñ
)
VVÑ Ö
;
VVÖ Ü
isEmptyWW 
=WW 
trueWW 
;WW 
}XX 
returnYY 
isEmptyYY 
;YY 
}ZZ 	
private[[ 
void[[ 
LogIn[[ 
([[ 
)[[ 
{\\ 	
if]] 
(]]  
TextBox_ShowPassword]] #
.]]# $

Visibility]]$ .
==]]/ 1

Visibility]]2 <
.]]< =
Visible]]= D
)]]D E
{^^  
PasswordBox_Password__ $
.__$ %
Password__% -
=__. / 
TextBox_ShowPassword__0 D
.__D E
Text__E I
;__I J
}`` 
stringaa 
passwordHashedaa !
=aa" #
Complementsaa$ /
.aa/ 0
EncryptPasswordaa0 ?
(aa? @ 
PasswordBox_Passwordaa@ T
.aaT U
PasswordaaU ]
)aa] ^
;aa^ _
stringbb 
userbb 
=bb 
TextBox_Userbb &
.bb& '
Textbb' +
;bb+ ,
trycc 
{dd 
varee 

newAccountee 
=ee  
studentInfoClientee! 2
.ee2 3
LogInee3 8
(ee8 9
useree9 =
,ee= >
passwordHashedee? M
)eeM N
;eeN O
ifff 
(ff 

newAccountff 
!=ff !
nullff" &
)ff& '
{gg 
varhh 

menuWindowhh "
=hh# $
newhh% (
Menuhh) -
(hh- .
)hh. /
;hh/ 0

menuWindowii 
.ii 
ConfigureMenuWindowii 2
(ii2 3

newAccountii3 =
)ii= >
;ii> ?
Closejj 
(jj 
)jj 
;jj 

menuWindowkk 
.kk 

ShowDialogkk )
(kk) *
)kk* +
;kk+ ,
}ll 
elsemm 
{nn 

MessageBoxoo 
.oo 
Showoo #
(oo# $

Propertiesoo$ .
.oo. /
	Resourcesoo/ 8
.oo8 92
&MessageBox_SignIn_IncorrectCredentialsoo9 _
,oo_ `
$strooa f
,oof g
MessageBoxButtonooh x
.oox y
OKooy {
,oo{ |
MessageBoxImage	oo} å
.
ooå ç
Error
ooç í
)
ooí ì
;
ooì î
}pp 
}qq 
catchrr 
(rr "
CommunicationExceptionrr )
exrr* ,
)rr, -
{ss /
#ShowMessageBoxServiceExceptionErrortt 3
(tt3 4
)tt4 5
;tt5 6
loguu 
.uu 
Erroruu 
(uu 
exuu 
)uu 
;uu 
}ww 
catchxx 
(xx 
TimeoutExceptionxx #
exxx$ &
)xx& '
{yy /
#ShowMessageBoxServiceExceptionErrorzz 3
(zz3 4
)zz4 5
;zz5 6
log{{ 
.{{ 
Error{{ 
({{ 
ex{{ 
){{ 
;{{ 
}}} 
catch~~ 
(~~ 
	Exception~~ 
ex~~ 
)~~  
{ 1
#ShowMessageBoxServiceExceptionError
ÄÄ 3
(
ÄÄ3 4
)
ÄÄ4 5
;
ÄÄ5 6
log
ÅÅ 
.
ÅÅ 
Error
ÅÅ 
(
ÅÅ 
ex
ÅÅ 
)
ÅÅ 
;
ÅÅ 
}
ÉÉ 
}
ÑÑ 	
}
ÖÖ 
}ÜÜ †
HC:\Users\danse\source\repos\FEIClient\FEIClient\Views\LeaveShift.xaml.cs
	namespace 	
	FEIClient
 
. 
Views 
{ 
public 

partial 
class 

LeaveShift #
:$ %
Window& ,
{ 
private 
Menu 
_menuWindow  
;  !
public 

LeaveShift 
( 
Menu 
menu #
)# $
{ 	
InitializeComponent 
(  
)  !
;! "
_menuWindow 
= 
menu 
; 
} 	
private 
void 
Button_Leave_Click '
(' (
object( .
sender/ 5
,5 6
RoutedEventArgs7 F
eG H
)H I
{ 	
if 
( 
! 
TextBoxIsEmpty 
(  
)  !
)! "
{ 
if 
( 
TextBox_LeaveReazon '
.' (
Text( ,
., -
Length- 3
<=4 6
$num7 :
): ;
{ 
_menuWindow 
.  
LeaveAppointment  0
(0 1
TextBox_LeaveReazon1 D
.D E
TextE I
)I J
;J K
this 
. 
Close 
( 
)  
;  !
} 
else 
{   

MessageBox!! 
.!! 
Show!! #
(!!# $
$str!!$ e
,!!e f
$str!!f m
,!!m n
MessageBoxButton!!o 
.	!! Ä
OK
!!Ä Ç
,
!!Ç É
MessageBoxImage
!!Ñ ì
.
!!ì î
Error
!!î ô
)
!!ô ö
;
!!ö õ
}"" 
}## 
else$$ 
{%% 

MessageBox&& 
.&& 
Show&& 
(&&  
$str&&  I
,&&I J
$str&&K R
,&&R S
MessageBoxButton&&T d
.&&d e
OK&&e g
,&&g h
MessageBoxImage&&i x
.&&x y
Error&&y ~
)&&~ 
;	&& Ä
}'' 
}(( 	
private)) 
bool)) 
TextBoxIsEmpty)) #
())# $
)))$ %
{** 	
return++ 
TextBox_LeaveReazon++ &
.++& '
Text++' +
==+++ -
$str++- /
;++/ 0
},, 	
private.. 
void.. 
Button_Cancel_Click.. (
(..( )
object..) /
sender..0 6
,..6 7
RoutedEventArgs..8 G
e..H I
)..I J
{// 	
Close00 
(00 
)00 
;00 
}11 	
}22 
}33 è
NC:\Users\danse\source\repos\FEIClient\FEIClient\Views\LeaveAppointment.xaml.cs
	namespace 	
	FEIClient
 
. 
Views 
{ 
public 

partial 
class 
LeaveAppointment )
:* +
Window, 2
{ 
public 
string 
Reason 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public 
LeaveAppointment 
(  
)  !
{ 	
InitializeComponent   
(    
)    !
;  ! "
}!! 	
private)) 
void)) 
Button_Cancel_Click)) (
())( )
object))) /
sender))0 6
,))6 7
RoutedEventArgs))8 G
e))H I
)))I J
{** 	
DialogResult++ 
=++ 
false++  
;++  !
Close,, 
(,, 
),, 
;,, 
}-- 	
private66 
void66 
Button_Accept_Click66 (
(66( )
object66) /
sender660 6
,666 7
RoutedEventArgs668 G
e66H I
)66I J
{77 	
Reason88 
=88 
ReasonTextBox88 "
.88" #
Text88# '
;88' (
DialogResult99 
=99 
true99 
;99  
Close:: 
(:: 
):: 
;:: 
};; 	
}<< 
}== Ç;
PC:\Users\danse\source\repos\FEIClient\FEIClient\Views\AppointmentRequest.xaml.cs
	namespace 	
	FEIClient
 
. 
Views 
{ 
public 

partial 
class 
AppointmentRequest +
:, -
Window. 4
{ 
private 
static 
readonly 
ILog  $
log% (
=) *

LogManager+ 5
.5 6
	GetLogger6 ?
(? @
typeof@ F
(F G
LoginG L
)L M
)M N
;N O
ProcedureClient 
procedureClient '
;' (
private 
Menu 
_menuWindow  
;  !
private 
ViewStudentInfo 
student  '
;' (
public 
AppointmentRequest !
(! "
Menu" &
menu' +
), -
{ 	
InitializeComponent   
(    
)    !
;  ! "
_menuWindow!! 
=!! 
menu!! 
;!! 
procedureClient"" 
="" 
new"" !
ProcedureClient""" 1
(""1 2
)""2 3
;""3 4
}## 	
private$$ 
void$$ 
	GoToLogIn$$ 
($$ 
)$$  
{%% 	
Complements&& 
.&& 
	GoToLogIn&& !
(&&! "
)&&" #
;&&# $
this'' 
.'' 
Close'' 
('' 
)'' 
;'' 
}(( 	
private** 
void** /
#ShowMessageBoxServiceExceptionError** 8
(**8 9
)**9 :
{++ 	

MessageBox,, 
.,, 
Show,, 
(,, 

Properties,, &
.,,& '
	Resources,,' 0
.,,0 1-
!MessageBox_Error_ServiceException,,1 R
,,,R S
$str,,T Y
,,,Y Z
MessageBoxButton,,[ k
.,,k l
OK,,l n
,,,n o
MessageBoxImage,,p 
.	,, Ä
Error
,,Ä Ö
)
,,Ö Ü
;
,,Ü á
}-- 	
internal// 
void// $
ConfigureWindowVariables// .
(//. /
ViewStudentInfo/// >
student//? F
)//F G
{00 	
this11 
.11 
student11 
=11 
student11 "
;11" #

Label_Name22 
.22 
Content22 
=22  
student22! (
.22( )
fullName22) 1
;221 2
Label_AcademicTutor33 
.33  
Content33  '
=33( )
student33* 1
.331 2
	tutorName332 ;
;33; <

Label_Date44 
.44 
Content44 
=44  
DateTime44! )
.44) *
Now44* -
.44- .
ToString44. 6
(446 7
$str447 C
)44C D
;44D E
Label_Matricula55 
.55 
Content55 #
=55$ %
student55& -
.55- .
	idStudent55. 7
;557 8$
Label_EducationalProgram66 $
.66$ %
Content66% ,
=66- .
student66/ 6
.666 7

careerName667 A
;66A B
GetProcedureList77 
(77 
)77 
;77 
}88 	
private:: 
void:: 
GetProcedureList:: %
(::% &
)::& '
{;; 	
try<< 
{== 
var>> 
procedureList>> !
=>>" #
procedureClient>>$ 3
.>>3 4
GetProcedureList>>4 D
(>>D E
)>>E F
.>>F G
ToList>>G M
(>>M N
)>>N O
;>>O P
ComboBox_Procedure?? "
.??" #
ItemsSource??# .
=??/ 0
procedureList??1 >
;??> ?
ComboBox_Procedure@@ "
.@@" #
DisplayMemberPath@@# 4
=@@5 6
$str@@7 =
;@@= >
ComboBox_ProcedureAA "
.AA" #
SelectedValuePathAA# 4
=AA5 6
$strAA7 D
;AAD E
}BB 
catchCC 
(CC "
CommunicationExceptionCC )
exCC* ,
)CC, -
{DD /
#ShowMessageBoxServiceExceptionErrorEE 3
(EE3 4
)EE4 5
;EE5 6
logFF 
.FF 
ErrorFF 
(FF 
exFF 
)FF 
;FF 
	GoToLogInGG 
(GG 
)GG 
;GG 
}HH 
catchII 
(II 
TimeoutExceptionII #
exII$ &
)II& '
{JJ /
#ShowMessageBoxServiceExceptionErrorKK 3
(KK3 4
)KK4 5
;KK5 6
logLL 
.LL 
ErrorLL 
(LL 
exLL 
)LL 
;LL 
	GoToLogInMM 
(MM 
)MM 
;MM 
}NN 
catchOO 
(OO 
	ExceptionOO 
exOO 
)OO  
{PP /
#ShowMessageBoxServiceExceptionErrorQQ 3
(QQ3 4
)QQ4 5
;QQ5 6
logRR 
.RR 
ErrorRR 
(RR 
exRR 
)RR 
;RR 
	GoToLogInSS 
(SS 
)SS 
;SS 
}TT 
}UU 	
privateWW 
voidWW &
Button_AcceptRequest_ClickWW /
(WW/ 0
objectWW0 6
senderWW7 =
,WW= >
RoutedEventArgsWW? N
eWWO P
)WWP Q
{XX 	
ifYY 
(YY 
ComboBox_ProcedureYY "
.YY" #
SelectedValueYY# 0
!=YY1 3
nullYY4 8
)YY8 9
{ZZ 
Appointment[[ 
appointment[[ '
=[[( )
new[[* -
Appointment[[. 9
([[9 :
)[[: ;
{\\ 
attendedDate]]  
=]]! "
DateTime]]# +
.]]+ ,
Now]], /
,]]/ 0
status^^ 
=^^ 
(^^ 
int^^ !
)^^! "
AppointmentStatus^^" 3
.^^3 4
Pending^^4 ;
,^^; <
student_IdStudent__ %
=__& '
student__( /
.__/ 0
	idStudent__0 9
,__9 :!
procedure_IdProcedure`` )
=``* +
(``, -
int``- 0
)``0 1
ComboBox_Procedure``1 C
.``C D
SelectedValue``D Q
}aa 
;aa 
_menuWindowbb 
.bb 
RequestAppointmentbb .
(bb. /
appointmentbb/ :
)bb: ;
;bb; <
Closecc 
(cc 
)cc 
;cc 
}ee 
elseff 
{gg 

MessageBoxhh 
.hh 
Showhh 
(hh  

Propertieshh  *
.hh* +
	Resourceshh+ 4
.hh4 5(
MessageBox_Error_EmptyFieldshh5 Q
,hhQ R
$strhhS X
,hhX Y
MessageBoxButtonhhZ j
.hhj k
OKhhk m
,hhm n
MessageBoxImagehho ~
.hh~ 
Error	hh Ñ
)
hhÑ Ö
;
hhÖ Ü
}ii 
}jj 	
privatell 
voidll &
Button_CancelRequest_Clickll /
(ll/ 0
objectll0 6
senderll7 =
,ll= >
RoutedEventArgsll? N
ellO P
)llP Q
{mm 	
Closenn 
(nn 
)nn 
;nn 
}oo 	
}pp 
}qq ƒ
JC:\Users\danse\source\repos\FEIClient\FEIClient\Logic\AppointmentStatus.cs
	namespace 	
	FEIClient
 
. 
Logic 
{ 
public 

enum 
AppointmentStatus !
{ 
Pending 
= 
$num 
, 
Attended 
= 
$num 
, 
CanceledByStudent 
= 
$num 
, 
CanceledBySecretary   
=   
$num   
,    

InProgress%% 
=%% 
$num%% 
,%% 
NotAttended** 
=** 
$num** 
}++ 
},, “
DC:\Users\danse\source\repos\FEIClient\FEIClient\Logic\Complements.cs
	namespace

 	
	FEIClient


 
.

 
Logic

 
{ 
public 

static 
class 
Complements #
{ 
public 
static 
string 
EncryptPassword ,
(, -
string- 3
password4 <
)< =
{ 	
using 
( 
SHA256 

sha256Hash $
=% &
SHA256' -
.- .
Create. 4
(4 5
)5 6
)6 7
{ 
byte 
[ 
] 
bytes 
= 

sha256Hash )
.) *
ComputeHash* 5
(5 6
Encoding6 >
.> ?
UTF8? C
.C D
GetBytesD L
(L M
passwordM U
)U V
)V W
;W X
var 
hash 
= 
new 
StringBuilder ,
(, -
)- .
;. /
for 
( 
int 
bit 
= 
$num  
;  !
bit" %
<& '
(( )
bytes) .
.. /
Length/ 5
)5 6
;6 7
bit8 ;
++; =
)= >
{ 
hash 
. 
Append 
(  
bytes  %
[% &
bit& )
]) *
.* +
ToString+ 3
(3 4
$str4 8
)8 9
)9 :
;: ;
} 
return 
hash 
. 
ToString $
($ %
)% &
;& '
} 
} 	
public 
static 
void 
	GoToLogIn $
($ %
)% &
{ 	
Login 
loginWindow 
= 
new  #
Login$ )
() *
)* +
;+ ,
loginWindow 
. 

ShowDialog "
(" #
)# $
;$ %
} 	
}   
}!! ñ
;C:\Users\danse\source\repos\FEIClient\FEIClient\App.xaml.cs
	namespace		 	
	FEIClient		
 
{

 
public 

partial 
class 
App 
: 
Application *
{ 
} 
} 