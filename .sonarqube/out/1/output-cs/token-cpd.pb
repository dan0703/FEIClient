�
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
]77) *��
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
MessageBoxImage	GG| �
.
GG� �
Information
GG� �
)
GG� �
;
GG� �
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
MessageBoxImage	KKu �
.
KK� �
Error
KK� �
)
KK� �
;
KK� �
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
MessageBoxImage	QQt �
.
QQ� �
Error
QQ� �
)
QQ� �
;
QQ� �
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
MessageBoxImage	WWt �
.
WW� �
Error
WW� �
)
WW� �
;
WW� �
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
MessageBoxImage	]]t �
.
]]� �
Error
]]� �
)
]]� �
;
]]� �
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
MessageBoxImage	}}y �
.
}}� �
Error
}}� �
)
}}� �
;
}}� �
}~~ 
} 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� #
(
��# $

Properties
��$ .
.
��. /
	Resources
��/ 8
.
��8 9+
MessageBox_SingUp_BadPassword
��9 V
,
��V W
$str
��X ]
,
��] ^
MessageBoxButton
��_ o
.
��o p
OK
��p r
,
��r s
MessageBoxImage��t �
.��� �
Error��� �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
	Resources
��+ 4
.
��4 5*
MessageBox_Error_EmptyFields
��5 Q
,
��Q R
$str
��S X
,
��X Y
MessageBoxButton
��Z j
.
��j k
OK
��k m
,
��m n
MessageBoxImage
��o ~
.
��~ 
Error�� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
bool
��  
AreAllFieldsFilled
�� '
(
��' (
)
��( )
{
�� 	
bool
�� 
allFieldsFilled
��  
=
��! "
true
��# '
;
��' (
if
�� 
(
�� 
ComboBox_Tutor
�� 
.
�� 
SelectedValue
�� ,
==
��- /
null
��0 4
)
��4 5
{
�� 
allFieldsFilled
�� 
=
��  !
false
��" '
;
��' (
}
�� 
else
�� 
if
�� 
(
�� )
ComboBox_EducationalProgram
�� 0
.
��0 1
SelectedValue
��1 >
==
��? A
null
��B F
)
��F G
{
�� 
allFieldsFilled
�� 
=
��  !
false
��" '
;
��' (
}
�� 
else
�� 
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� .
(
��. /
TextBox_Matricula
��/ @
.
��@ A
Text
��A E
)
��E F
)
��F G
{
�� 
allFieldsFilled
�� 
=
��  !
false
��" '
;
��' (
}
�� 
else
�� 
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� .
(
��. /
TextBox_User
��/ ;
.
��; <
Text
��< @
)
��@ A
)
��A B
{
�� 
allFieldsFilled
�� 
=
��  !
false
��" '
;
��' (
}
�� 
else
�� 
if
�� 
(
�� 
string
�� 
.
��  
IsNullOrWhiteSpace
�� .
(
��. /"
TextBox_ShowPassword
��/ C
.
��C D
Text
��D H
)
��H I
)
��I J
{
�� 
allFieldsFilled
�� 
=
��  !
false
��" '
;
��' (
}
�� 
return
�� 
allFieldsFilled
�� "
;
��" #
}
�� 	
private
�� 
bool
�� 
IsValidMatricula
�� %
(
��% &
string
��& ,
	matricula
��- 6
)
��6 7
{
�� 	
try
�� 
{
�� 
var
�� 
match
�� 
=
�� 
Regex
�� !
.
��! "
Match
��" '
(
��' (
	matricula
��( 1
,
��1 2
$str
��3 ?
,
��? @
RegexOptions
��A M
.
��M N
None
��N R
,
��R S
TimeSpan
��T \
.
��\ ]
FromSeconds
��] h
(
��h i
$num
��i j
)
��j k
)
��k l
;
��l m
return
�� 
match
�� 
.
�� 
Success
�� $
;
��$ %
}
�� 
catch
�� 
(
�� (
RegexMatchTimeoutException
�� -
ex
��. 0
)
��0 1
{
�� 
log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
void
�� '
Button_ShowPassword_Click
�� .
(
��. /
object
��/ 5
sender
��6 <
,
��< =
RoutedEventArgs
��> M
e
��N O
)
��O P
{
�� 	
if
�� 
(
�� "
TextBox_ShowPassword
�� $
.
��$ %

Visibility
��% /
==
��0 2

Visibility
��3 =
.
��= >
	Collapsed
��> G
)
��G H
{
�� "
TextBox_ShowPassword
�� $
.
��$ %

Visibility
��% /
=
��0 1

Visibility
��2 <
.
��< =
Visible
��= D
;
��D E"
TextBox_ShowPassword
�� $
.
��$ %
Text
��% )
=
��* +"
PasswordBox_Password
��, @
.
��@ A
Password
��A I
;
��I J"
PasswordBox_Password
�� $
.
��$ %

Visibility
��% /
=
��0 1

Visibility
��2 <
.
��< =
Hidden
��= C
;
��C D
}
�� 
else
�� 
{
�� "
PasswordBox_Password
�� $
.
��$ %
Password
��% -
=
��. /"
TextBox_ShowPassword
��0 D
.
��D E
Text
��E I
;
��I J"
TextBox_ShowPassword
�� $
.
��$ %

Visibility
��% /
=
��0 1

Visibility
��2 <
.
��< =
	Collapsed
��= F
;
��F G"
PasswordBox_Password
�� $
.
��$ %

Visibility
��% /
=
��0 1

Visibility
��2 <
.
��< =
Visible
��= D
;
��D E
}
�� 
}
�� 	
private
�� 
void
�� 
GetTutorList
�� !
(
��! "
)
��" #
{
�� 	
	tutorList
�� 
=
�� 
tutorClient
�� '
.
��' (
GetTutorsList
��( 5
(
��5 6
)
��6 7
.
��7 8
ToList
��8 >
(
��> ?
)
��? @
;
��@ A
ComboBox_Tutor
�� 
.
�� 
ItemsSource
�� *
=
��+ ,
	tutorList
��- 6
;
��6 7
ComboBox_Tutor
�� 
.
�� 
DisplayMemberPath
�� 0
=
��1 2
$str
��3 =
;
��= >
ComboBox_Tutor
�� 
.
�� 
SelectedValuePath
�� 0
=
��1 2
$str
��3 <
;
��< =
}
�� 	
private
�� 
void
�� 
GetCareerList
�� "
(
��" #
)
��# $
{
�� 	

careerList
�� 
=
�� 
careerClient
�� )
.
��) *
GetCareerList
��* 7
(
��7 8
)
��8 9
.
��9 :
ToList
��: @
(
��@ A
)
��A B
;
��B C)
ComboBox_EducationalProgram
�� +
.
��+ ,
ItemsSource
��, 7
=
��8 9

careerList
��: D
;
��D E)
ComboBox_EducationalProgram
�� +
.
��+ ,
DisplayMemberPath
��, =
=
��> ?
$str
��@ F
;
��F G)
ComboBox_EducationalProgram
�� +
.
��+ ,
SelectedValuePath
��, =
=
��> ?
$str
��@ J
;
��J K
}
�� 	
private
�� 
bool
�� 
IsPasswordValid
�� $
(
��$ %
string
��% +
password
��, 4
)
��4 5
{
�� 	
bool
�� 
isValid
�� 
=
�� 
true
�� 
;
��  
if
�� 
(
�� 
password
�� 
.
�� 
Length
�� 
<
��  !
$num
��" #
)
��# $
{
�� 
isValid
�� 
=
�� 
false
�� 
;
��  
}
�� 
try
�� 
{
�� 
if
�� 
(
�� 
!
�� 
Regex
�� 
.
�� 
Match
��  
(
��  !
password
��! )
,
��) *
$str
��+ 0
,
��0 1
RegexOptions
��2 >
.
��> ?
None
��? C
,
��C D
TimeSpan
��E M
.
��M N
FromSeconds
��N Y
(
��Y Z
$num
��Z [
)
��[ \
)
��\ ]
.
��] ^
Success
��^ e
)
��e f
{
�� 
isValid
�� 
=
�� 
false
�� #
;
��# $
}
�� 
if
�� 
(
�� 
!
�� 
Regex
�� 
.
�� 
Match
��  
(
��  !
password
��! )
,
��) *
$str
��+ 5
,
��5 6
RegexOptions
��7 C
.
��C D
None
��D H
,
��H I
TimeSpan
��J R
.
��R S
FromSeconds
��S ^
(
��^ _
$num
��_ `
)
��` a
)
��a b
.
��b c
Success
��c j
)
��j k
{
�� 
isValid
�� 
=
�� 
false
�� #
;
��# $
}
�� 
}
�� 
catch
�� 
(
�� (
RegexMatchTimeoutException
�� -
ex
��. 0
)
��0 1
{
�� 
log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
isValid
�� 
=
�� 
false
�� 
;
��  
}
�� 
return
�� 
isValid
�� 
;
�� 
}
�� 	
}
�� 
}�� �%
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
.	%% �
Error
%%� �
)
%%� �
;
%%� �
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
}\\ ��
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
�� 0
(
��0 1
)
��1 2
;
��2 3
bool
�� 
isMyTurn
�� 
=
�� 
false
�� !
;
��! "
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
appointmentList
��  /
.
��/ 0
Count
��0 5
;
��5 6
i
��7 8
++
��8 :
)
��: ;
{
�� 
if
�� 
(
�� 
!
�� 
isMyTurn
�� 
&&
��  
appointmentList
��! 0
[
��0 1
i
��1 2
]
��2 3
.
��3 4
student_IdStudent
��4 E
==
��F H
student
��I P
.
��P Q
	idStudent
��Q Z
)
��[ \
{
�� 
if
�� 
(
�� 
i
�� 
==
�� 
$num
�� 
)
��  
{
�� 

MessageBox
�� "
.
��" #
Show
��# '
(
��' (

Properties
��( 2
.
��2 3
	Resources
��3 <
.
��< =2
$MessageBox_Notification_YourTurnNext
��= a
,
��a b
$str
��c h
,
��h i
MessageBoxButton
��j z
.
��z {
OK
��{ }
,
��} ~
MessageBoxImage�� �
.��� �
Exclamation��� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 
i
�� 
==
�� !
$num
��" #
&&
��$ &
!
��' (#
AllreadyInAppointment
��( =
)
��= >
{
�� 

MessageBox
�� "
.
��" #
Show
��# '
(
��' (

Properties
��( 2
.
��2 3
	Resources
��3 <
.
��< =.
 MessageBox_Notification_YourTurn
��= ]
,
��] ^
$str
��_ d
,
��d e
MessageBoxButton
��f v
.
��v w
OK
��w y
,
��y z
MessageBoxImage��{ �
.��� �
Exclamation��� �
)��� �
;��� �#
AllreadyInAppointment
�� -
=
��. /
true
��0 4
;
��4 5
}
�� #
InsertTagToStackPanel
�� )
(
��) *
$str
��* 4
)
��4 5
;
��5 6
isMyTurn
�� 
=
�� 
true
�� #
;
��# $
}
�� 
if
�� 
(
�� 
i
�� 
==
�� 
$num
�� 
&&
�� 
!
�� 
isMyTurn
�� '
)
��' (
{
�� #
InsertTagToStackPanel
�� )
(
��) *
$str
��* 7
)
��7 8
;
��8 9
}
�� 
TurnCard
�� 
turnCard
�� !
=
��" #
new
��$ '
TurnCard
��( 0
(
��0 1
)
��1 2
;
��2 3
turnCard
�� 
.
�� %
ConfigureTurnCardWindow
�� 0
(
��0 1
appointmentList
��1 @
[
��@ A
i
��A B
]
��B C
)
��C D
;
��D E
turnCard
�� 
.
�� 
Margin
�� 
=
��  !
new
��" %
	Thickness
��& /
(
��/ 0
$num
��0 1
,
��1 2
$num
��3 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 ;
)
��; <
;
��< =*
StackPanel_TurnCardContainer
�� ,
.
��, -
Children
��- 5
.
��5 6
Add
��6 9
(
��9 :
turnCard
��: B
)
��B C
;
��C D
}
�� -
ConfigureRequestAndLeaveButtons
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 	
private
�� 
void
�� #
InsertTagToStackPanel
�� *
(
��* +
string
��+ 1
text
��2 6
)
��6 7
{
�� 	
Label
�� 
yourTurnLabel
��  
=
��! "
new
��# &
Label
��' ,
{
�� 
Content
�� 
=
�� 
text
�� 
,
�� 
FontSize
�� 
=
�� 
$num
�� 
,
�� 
Margin
�� 
=
�� 
new
�� 
	Thickness
�� &
(
��& '
$num
��' (
,
��( )
$num
��* ,
,
��, -
$num
��. /
,
��/ 0
$num
��1 3
)
��3 4
,
��4 5!
HorizontalAlignment
�� #
=
��$ %!
HorizontalAlignment
��& 9
.
��9 :
Center
��: @
}
�� 
;
�� *
StackPanel_TurnCardContainer
�� )
.
��) *
Children
��* 2
.
��2 3
Add
��3 6
(
��6 7
yourTurnLabel
��7 D
)
��D E
;
��E F
}
�� 	
private
�� 
void
�� -
ConfigureRequestAndLeaveButtons
�� 4
(
��4 5
)
��5 6
{
�� 	
if
�� 
(
�� %
allreadyHaveAppointment
�� '
)
��' (
{
�� '
Button_AppointmentRequest
�� )
.
��) *
	IsEnabled
��* 3
=
��4 5
false
��6 ;
;
��; <'
Button_AppointmentRequest
�� )
.
��) *
Effect
��* 0
=
��1 2
new
��3 6
System
��7 =
.
��= >
Windows
��> E
.
��E F
Media
��F K
.
��K L
Effects
��L S
.
��S T

BlurEffect
��T ^
(
��^ _
)
��_ `
;
��` a
Button_LeaveShift
�� !
.
��! "
	IsEnabled
��" +
=
��, -
true
��. 2
;
��2 3
Button_LeaveShift
�� !
.
��! "
Effect
��" (
=
��) *
null
��+ /
;
��/ 0
}
�� 
else
�� 
{
�� '
Button_AppointmentRequest
�� )
.
��) *
	IsEnabled
��* 3
=
��4 5
true
��6 :
;
��: ;'
Button_AppointmentRequest
�� )
.
��) *
Effect
��* 0
=
��1 2
null
��3 7
;
��7 8
Button_LeaveShift
�� !
.
��! "
	IsEnabled
��" +
=
��, -
false
��. 3
;
��3 4
Button_LeaveShift
�� !
.
��! "
Effect
��" (
=
��) *
new
��+ .
System
��/ 5
.
��5 6
Windows
��6 =
.
��= >
Media
��> C
.
��C D
Effects
��D K
.
��K L

BlurEffect
��L V
(
��V W
)
��W X
;
��X Y
}
�� 
}
�� 	
private
�� 
void
�� 
	GoToLogIn
�� 
(
�� 
)
��  
{
�� 	
Complements
�� 
.
�� 
	GoToLogIn
�� !
(
��! "
)
��" #
;
��# $
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 1
#ShowMessageBoxServiceExceptionError
�� 8
(
��8 9
)
��9 :
{
�� 	

MessageBox
�� 
.
�� 
Show
�� 
(
�� 

Properties
�� &
.
��& '
	Resources
��' 0
.
��0 1/
!MessageBox_Error_ServiceException
��1 R
,
��R S
$str
��T Y
,
��Y Z
MessageBoxButton
��[ k
.
��k l
OK
��l n
,
��n o
MessageBoxImage
��p 
.�� �
Error��� �
)��� �
;��� �
}
�� 	
private
�� 
void
�� !
Button_LogOut_Click
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
RoutedEventArgs
��8 G
e
��H I
)
��I J
{
�� 	
MessageBoxResult
�� 
result
�� #
=
��$ %

MessageBox
��& 0
.
��0 1
Show
��1 5
(
��5 6
$str
��6 N
,
��N O
$str
��P _
,
��_ `
MessageBoxButton
��a q
.
��q r
YesNo
��r w
,
��w x
MessageBoxImage��y �
.��� �
Question��� �
)��� �
;��� �
if
�� 
(
�� 
result
�� 
==
�� 
MessageBoxResult
�� *
.
��* +
Yes
��+ .
)
��. /
{
�� 
if
�� 
(
�� %
allreadyHaveAppointment
�� +
)
��+ ,
{
�� 
MessageBoxResult
�� $
leaveShiftResult
��% 5
=
��6 7

MessageBox
��8 B
.
��B C
Show
��C G
(
��G H
$str
��H e
,
��e f
$str
��g x
,
��x y
MessageBoxButton��z �
.��� �
YesNo��� �
,��� �
MessageBoxImage��� �
.��� �
Question��� �
)��� �
;��� �
if
�� 
(
�� 
leaveShiftResult
�� (
==
��) +
MessageBoxResult
��, <
.
��< =
No
��= ?
)
��? @
{
�� 
LeaveAppointment
�� ( 
leaveApointmentBox
��) ;
=
��< =
new
��> A
LeaveAppointment
��B R
(
��R S
)
��S T
;
��T U
if
�� 
(
��  
leaveApointmentBox
�� .
.
��. /

ShowDialog
��/ 9
(
��9 :
)
��: ;
==
��< >
true
��? C
)
��C D
{
�� 
string
�� "
reason
��# )
=
��* + 
leaveApointmentBox
��, >
.
��> ?
Reason
��? E
;
��E F
LeaveAppointment
�� ,
(
��, -
reason
��- 3
)
��3 4
;
��4 5
	GoToLogIn
�� %
(
��% &
)
��& '
;
��' (
}
�� 
}
�� 
else
�� 
{
�� 
	GoToLogIn
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 
else
�� 
{
�� 
	GoToLogIn
�� 
(
�� 
)
�� 
;
��  
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� -
Button_AppointmentRequest_Click
�� 4
(
��4 5
object
��5 ;
sender
��< B
,
��B C
RoutedEventArgs
��D S
e
��T U
)
��U V
{
�� 	 
AppointmentRequest
�� &
appointmentRequestWindow
�� 7
=
��8 9
new
��: = 
AppointmentRequest
��> P
(
��P Q
this
��Q U
)
��U V
;
��V W&
appointmentRequestWindow
�� $
.
��$ %&
ConfigureWindowVariables
��% =
(
��= >
student
��> E
)
��E F
;
��F G
this
�� 
.
�� 
Effect
�� 
=
�� 
new
�� 
System
�� $
.
��$ %
Windows
��% ,
.
��, -
Media
��- 2
.
��2 3
Effects
��3 :
.
��: ;

BlurEffect
��; E
(
��E F
)
��F G
;
��G H&
appointmentRequestWindow
�� $
.
��$ %

ShowDialog
��% /
(
��/ 0
)
��0 1
;
��1 2
this
�� 
.
�� 
Effect
�� 
=
�� 
null
�� 
;
�� 
}
�� 	
private
�� 
void
�� %
Button_LeaveShift_Click
�� ,
(
��, -
object
��- 3
sender
��4 :
,
��: ;
RoutedEventArgs
��< K
e
��L M
)
��M N
{
�� 	

LeaveShift
�� 
leaveShiftWindow
�� '
=
��( )
new
��* -

LeaveShift
��. 8
(
��8 9
this
��9 =
)
��= >
;
��> ?
this
�� 
.
�� 
Effect
�� 
=
�� 
new
�� 
System
�� $
.
��$ %
Windows
��% ,
.
��, -
Media
��- 2
.
��2 3
Effects
��3 :
.
��: ;

BlurEffect
��; E
(
��E F
)
��F G
;
��G H
leaveShiftWindow
�� 
.
�� 

ShowDialog
�� '
(
��' (
)
��( )
;
��) *
this
�� 
.
�� 
Effect
�� 
=
�� 
null
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
SetAppointments
�� #
(
��# $
Appointment
��$ /
[
��/ 0
]
��0 1
appointments
��2 >
)
��> ?
{
�� 	
this
�� 
.
�� 
appointmentList
��  
=
��! "
appointments
��# /
.
��/ 0
ToList
��0 6
(
��6 7
)
��7 8
;
��8 9*
AddTurnCardsToGridStackPanel
�� (
(
��( )
)
��) *
;
��* +
}
�� 	
public
�� 
void
�� 
LeaveAppointment
�� $
(
��$ %
string
��% +
notAttendedReason
��, =
)
��= >
{
�� 	'
Button_AppointmentRequest
�� %
.
��% &
	IsEnabled
��& /
=
��0 1
true
��2 6
;
��6 7'
Button_AppointmentRequest
�� %
.
��% &
Effect
��& ,
=
��- .
null
��/ 3
;
��3 4
Button_LeaveShift
�� 
.
�� 
	IsEnabled
�� '
=
��( )
false
��* /
;
��/ 0
Button_LeaveShift
�� 
.
�� 
Effect
�� $
=
��% &
new
��' *
System
��+ 1
.
��1 2
Windows
��2 9
.
��9 :
Media
��: ?
.
��? @
Effects
��@ G
.
��G H

BlurEffect
��H R
(
��R S
)
��S T
;
��T U
try
�� 
{
�� 
appointmentClient
�� !
.
��! "
LeaveAppointment
��" 2
(
��2 3
student
��3 :
.
��: ;
	idStudent
��; D
,
��D E
notAttendedReason
��F W
)
��W X
;
��X Y#
AllreadyInAppointment
�� %
=
��& '
false
��( -
;
��- .
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )
ex
��* ,
)
��, -
{
�� 1
#ShowMessageBoxServiceExceptionError
�� 3
(
��3 4
)
��4 5
;
��5 6
log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
	GoToLogIn
�� 
(
�� 
)
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
ex
��$ &
)
��& '
{
�� 1
#ShowMessageBoxServiceExceptionError
�� 3
(
��3 4
)
��4 5
;
��5 6
log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
	GoToLogIn
�� 
(
�� 
)
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 1
#ShowMessageBoxServiceExceptionError
�� 3
(
��3 4
)
��4 5
;
��5 6
log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
	GoToLogIn
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
��  
RequestAppointment
�� &
(
��& '
Appointment
��' 2
appointment
��3 >
)
��> ?
{
�� 	
if
�� 
(
�� 
appointment
�� 
!=
�� 
null
�� #
)
��# $
{
�� '
Button_AppointmentRequest
�� )
.
��) *
	IsEnabled
��* 3
=
��4 5
false
��6 ;
;
��; <'
Button_AppointmentRequest
�� )
.
��) *
Effect
��* 0
=
��1 2
new
��3 6
System
��7 =
.
��= >
Windows
��> E
.
��E F
Media
��F K
.
��K L
Effects
��L S
.
��S T

BlurEffect
��T ^
(
��^ _
)
��_ `
;
��` a
Button_LeaveShift
�� !
.
��! "
	IsEnabled
��" +
=
��, -
true
��. 2
;
��2 3
Button_LeaveShift
�� !
.
��! "
Effect
��" (
=
��) *
null
��+ /
;
��/ 0
try
�� 
{
�� 
appointmentClient
�� %
.
��% & 
AppointmentRequest
��& 8
(
��8 9
appointment
��9 D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� $
CommunicationException
�� -
ex
��. 0
)
��0 1
{
�� 1
#ShowMessageBoxServiceExceptionError
�� 7
(
��7 8
)
��8 9
;
��9 :
log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
)
��  !
;
��! "
	GoToLogIn
�� 
(
�� 
)
�� 
;
��  
}
�� 
catch
�� 
(
�� 
TimeoutException
�� '
ex
��( *
)
��* +
{
�� 1
#ShowMessageBoxServiceExceptionError
�� 7
(
��7 8
)
��8 9
;
��9 :
log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
)
��  !
;
��! "
	GoToLogIn
�� 
(
�� 
)
�� 
;
��  
}
�� 
catch
�� 
(
�� 
	Exception
��  
ex
��! #
)
��# $
{
�� 1
#ShowMessageBoxServiceExceptionError
�� 7
(
��7 8
)
��8 9
;
��9 :
log
�� 
.
�� 
Error
�� 
(
�� 
ex
��  
)
��  !
;
��! "
	GoToLogIn
�� 
(
�� 
)
�� 
;
��  
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
UpdateTimer
�� 
(
��  
TimeSpan
��  (
elapsedTime
��) 4
)
��4 5
{
�� 	
string
�� 
formattedTime
��  
=
��! "
string
��# )
.
��) *
Format
��* 0
(
��0 1
$str
��1 G
,
��G H
elapsedTime
��) 4
.
��4 5
Hours
��5 :
,
��: ;
elapsedTime
��) 4
.
��4 5
Minutes
��5 <
,
��< =
elapsedTime
��) 4
.
��4 5
Seconds
��5 <
)
��< =
;
��= >
Label_Timer
�� 
.
�� 
Content
�� 
=
��  !
formattedTime
��" /
;
��/ 0
}
�� 	
public
�� 
void
��  
NotifyCancellation
�� &
(
��& '
string
��' -
reason
��. 4
)
��4 5
{
�� 	

MessageBox
�� 
.
�� 
Show
�� 
(
�� 
$str
�� B
+
��C D
reason
��E K
,
��K L
$str
��L ]
,
��] ^
MessageBoxButton
��^ n
.
��n o
OK
��o q
,
��q r
MessageBoxImage��r �
.��� �
Information��� �
)��� �
;��� �
}
�� 	
}
�� 
}�� �J
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
.	 �
Error
� �
)
� �
;
� �
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
Error	VV �
)
VV� �
;
VV� �
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
MessageBoxImage	oo} �
.
oo� �
Error
oo� �
)
oo� �
;
oo� �
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
�� 3
(
��3 4
)
��4 5
;
��5 6
log
�� 
.
�� 
Error
�� 
(
�� 
ex
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �
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
.	!! �
OK
!!� �
,
!!� �
MessageBoxImage
!!� �
.
!!� �
Error
!!� �
)
!!� �
;
!!� �
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
;	&& �
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
}33 �
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
}== �;
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
.	,, �
Error
,,� �
)
,,� �
;
,,� �
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
Error	hh �
)
hh� �
;
hh� �
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
}qq �
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
},, �
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
}!! �
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