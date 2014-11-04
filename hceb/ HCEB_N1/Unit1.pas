unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, ExtCtrls, TeeProcs, Chart, Buttons, StdCtrls,math, Series,
  Spin, Menus, jpeg,ShellApi;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    Chart1: TChart;

    SpeedButton2: TSpeedButton;

    LabeledEdit5: TLabeledEdit;
    SpeedButton3: TSpeedButton;
    PopupMenu1: TPopupMenu;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    SpeedButton11: TSpeedButton;
    MainMenu1: TMainMenu;
    About1: TMenuItem;
    Developer1: TMenuItem;
    Chart2: TChart;
    Timer1: TTimer;
    SpeedButton10: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton19: TSpeedButton;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series10: TLineSeries;
    Series11: TLineSeries;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    Series15: TLineSeries;
    Series16: TLineSeries;
    Series17: TLineSeries;
    Series18: TLineSeries;
    Series19: TLineSeries;
    Series20: TLineSeries;
    Series21: TLineSeries;
    Series22: TLineSeries;
    Series23: TLineSeries;
    Series24: TLineSeries;
    Series25: TLineSeries;
    Series26: TLineSeries;
    Series27: TLineSeries;
    Series28: TLineSeries;
    Series29: TLineSeries;
    Series30: TLineSeries;
    Series31: TLineSeries;
    Series32: TLineSeries;
    Series33: TLineSeries;
    Panel1: TPanel;
    SpeedButton16: TSpeedButton;
    Label6: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    SpeedButton20: TSpeedButton;
    Series1: TLineSeries;
    CheckBox1: TCheckBox;
    Panel2: TPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Timer2: TTimer;
    SpeedButton15: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    Edit1: TEdit;
    Panel3: TPanel;
    SpeedButton14: TSpeedButton;
    ScrollBar2: TScrollBar;
    SpeedButton5: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Panel4: TPanel;
    Label8: TLabel;
    Label1: TLabel;
    ScrollBar1: TScrollBar;
    Label5: TLabel;
    ScrollBar3: TScrollBar;
    ScrollBar4: TScrollBar;
    ScrollBar5: TScrollBar;
    Label2: TLabel;
    Timer3: TTimer;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure Developer1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure ScrollBar3Change(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form1: TForm1;
  atw: double;
  atz: double;
  Ener: double;
  Pd: double;
c: double;
  den : double;
  InTem,hl,Pu: double;
  stat,t8,p7: integer;
  pause: integer;
  rt: double;
  atime,dtime,atimep: double;

  type mas=  array of array of array of double;
    type mas1=  array of array of  double;
 var
 sX: array of array of double;   //    energy-release container[stat+1,2];

 ye: integer;

 implementation


uses Unit2, Unit3,Global_Var, Unit4, Unit5;

 type

  Wio= Record
   x1,x2,x3,x4:string[20];
   y1,y2,y3,y4:string[20];
   z1,z2,z3,z4:string[20];
  end;

const el: double=1.6021773e-19;
const Current: double= 2000;
const time : double= 5e-6;
const area: double=9.55e-4;
const dy: double=0.00649082; // rel unites;
var  Qlm,Qlev,Qsum,Q975,Q1300,elnum: double;
 tm: integer;
 timeT1,uok: double;
 vt: double;//variable temperature;
 vm,vmd,at3,at1,at2,upm1,upm,upm0 : mas;
 ksi,tc,threshold_distance,counter_d: integer;
{$R *.dfm}

  procedure WD();
  Var Fl: TextFile;
fn: string;
ii,i: integer;
stg:string;
ut: wio;
begin
//ShellExecute(Handle,nil,'notepad.exe',nil,nil,SW_SHOWNORMAL);
fn:=Form1.Edit2.Text;
fn:=fn+'.dat';
 try assignfile(fl,fn);
Rewrite(fl);

    if length(vm)<>0 then begin
  //  DecimalSeparator:='.';
 {  for ii :=0 to length(vm)-1 do
     for i := 0 to length(vm[ii])-1 do
     if (vm[ii,i,2]>0)and(i mod 4 =0) then

     begin


     stg:= FloatToSTRf(vm[ii,i,3],ffFixed,12,8)+'  ';
     stg:=stg+FloattoStrf(vm[ii,i,4],ffFixed,12,8)+'  ';
     stg:=stg+FloattoStrf(vm[ii,i,2],ffFixed,12,8);
    writeln(fl,stg);


     end; }

  {   for ii :=0 to length(vm)-2 do
     for i := 0 to length(vm[ii])-2 do
     if (vm[ii,i,2]>0)and(i mod 4 =0) then begin
         vmd[29+ii,i,3]:= vm[ii,i,3];
    vmd[29+ii,i,4]:=vm[ii,i,4];
    vmd[29+ii,i,2]:=vm[ii,i,2];
     end;

      for ii :=0 to length(vm)-2 do
     for i := 0 to length(vm[ii])-2 do
     if (vm[ii,i,2]>0)and(i mod 4 =0) then begin
         vmd[ii,i,3]:= vmd[59-ii,i,3];
    vmd[ii,i,4]:=vmd[59-ii,i,4];
    vmd[ii,i,2]:=vmd[59-ii,i,2];
     end;   }

 FormatSettings.DecimalSeparator:='.';
      for ii :=1 to length(vm)-2 do
     for i := 0 to length(vm[ii])-2 do
     if ((vm[ii,i,2]>0)and(vm[ii,i,4]>0.18)and(i mod 15 =0))or((vm[ii,i,2]>0)and(vm[ii,i,4]>0.15)and(vm[ii,i,4]<0.2)and((i mod 5 =0))) then

     begin     stg:='';
     if (ii=1)or(ii=2) then begin
     stg:= FloatToSTRf((24+vm[ii,i,3])/6.35,ffFixed,12,8);
     stg:=stg+' '+FloattoStrf(vm[ii,i,4],ffFixed,12,8);
          if  vm[ii,i,4]<0.25 then
  stg:=stg+' '+ FloattoStrf(Exp(10/(vm[ii,i,4]+9))*1.1*vm[ii,i,2],ffFixed,12,8);
    stg:=stg+' '+ FloattoStrf(1.1*vm[ii,i,2],ffFixed,12,8);
     end
      else      begin
    stg:= FloatToSTRf((24+vm[ii,i,3])/6.35,ffFixed,12,8);
    stg:=stg+' '+FloattoStrf(vm[ii,i,4],ffFixed,12,8);
    if  vm[ii,i,4]<0.25 then
     stg:=stg+' '+ FloattoStrf(Exp(10/(vm[ii,i,4]+9))*vm[ii,i,2],ffFixed,12,8) else
    stg:=stg+' '+ FloattoStrf(vm[ii,i,2],ffFixed,12,8);
     end;

     writeln(fl,stg);

      stg:='';
      if (ii=1)or(ii=2) then
    begin
    stg:= FloatToSTRf((24-vm[ii,i,3])/6.35,ffFixed,12,8);
    stg:=stg+' '+FloattoStrf(vm[ii,i,4],ffFixed,12,8);

    if vm[ii,i,4]<0.25 then
    stg:=stg+' '+ FloattoStrf(Exp(10/(vm[ii,i,4]+9))*vm[ii,i,2],ffFixed,12,8)
    else  stg:=stg+' '+ FloattoStrf(vm[ii,i,2],ffFixed,12,8);

   end   else begin
   stg:= FloatToSTRf((24-vm[ii,i,3])/6.35,ffFixed,12,8);
    stg:=stg+' '+FloattoStrf(vm[ii,i,4],ffFixed,12,8);

    if vm[ii,i,4]<0.25 then
    stg:=stg+' '+ FloattoStrf((Exp(10/(vm[ii,i,4]+9))*vm[ii,i,2]),ffFixed,12,8)
    else  stg:=stg+' '+ FloattoStrf(vm[ii,i,2],ffFixed,12,8);
     end;
       writeln(fl,stg);

//     Writeln(fl,FloattoStrf(vm[0,i,3],ffFixed,12,8)+'  '+FloattoStrf(vm[0,i,4],ffFixed,12,8)+'  '+FloattoStrf(vm[0,i,2],ffFixed,12,8));


     end;

     FormatSettings.DecimalSeparator:=',';
    end;
 except
  on E : Exception do
 begin      ShowMessage(E.ClassName+' error in data writing: '+E.Message);
      Form1.Label7.Caption:='Write correct fileName<<';
      end;
 end;


closefile(fl);
   end;

Function AreaA(): double;
begin
  result:=area/(ye*180);  //dy-гриковість;
end;

Function dens():double;
Begin
  result:=1e3*den+0.1812*vt-vt*vt*2e-5;//-vt/3.4; //!1933!
End;
   function cC( t: double): double;
begin
  result:=(0.9091+2.445e-4*t)*1000;   //1933         ///// corrected;
end;
  Function thcr():double;
Begin
  result:=(166.312+8e-4*vt)/(cc(vt)*dens());   //// corrected;
End;

 Function A1(ro,at:double): double;
var Am: double;
begin   //ro [ mm  ] beam width, 1 time unit= 1 microsecond;
if ro<0.1 then ro:=0.1;
if (ro>=0.1)and(ro<=25) then  begin
am:= 0.65*Exp(-Power(0.24*at,7)/1.1)*
Ln(Power(at,2.8) + 1.05);
am:= am* Sin((ro/25)*Pi*0.9)/(ro+0.00001);
result:=am; end else result:=0;
end;


Function Sim(cor1,a11,b11: double):double;
Var sum0,hj: double;
I,nm:integer;
begin  //cor1 [ mm  ] beam width, a11,b11 1 time unit= 1 microsecond;
 Nm:=100;sum0:=0;
 hj:=abs(b11-a11)/Nm;
for I := 0 to Nm do  begin

if (i=0)or(i=Nm) then sum0:=sum0+0.5*A1(cor1,a11+i*hj);
if (i<>0)and(i<>Nm)and(i<>Nm-1)then
sum0:=sum0+A1(cor1,a11+i*hj);
if (i<>0)and(i<>Nm)then
 sum0:=sum0+2*A1(cor1,a11+(i-0.5)*hj);

end;
sum0:=(sum0*hj)/3;
result:=sum0;
end;

function ElnumFn(g,dis,yt,ytl: double): double;
begin

    result:=(Sim(1e3*g,1e6*yt,1e6*ytl)*dis*time*1e3)/el;
end;

function ElnumFnew(g,g1,dis,yt,ytl: double): double;
begin
result:=(Sim(1e3*g,1e6*yt,1e6*ytl)+Sim(1e3*g1+dis,1e6*yt,1e6*ytl))*dis*1e3*0.5;
result:=result*abs(ytl-yt)/el;
 //  sum A/mm * delta width * delta time/ 2 electron charge;
    end;


function Ral( En: double): double;
begin
  result:=0.421*Power(En,1.265-0.0954*ln(En));
end;
 function Rp( Z,A,En: double): double;
 begin
      result:=0.482*(A/Z)*Ral(En)/den;
 end;


  function QX( var x: double;En,A,Z: double) :double;
var g: double;
begin
g:= ((En)/Rp(Z,A,En))*(1.437/(Power(cosh(0.95*(2.295*((x)/Rp(Z,A,En))-1)),1.8)*(0.5+(1/(2.7-2.295*(x/Rp(Z,A,En)))))));
if (g<=0)or(c=1) then  begin g:=0;c:=1; end;
result:= g;
 end;


procedure firstUniversal();
    var u1,u2,h,u0, tem,tem0,xx,yy: double;
i: integer;
    sum,amm,etotal,power,erel: double;
   N:integer;
  ii: Integer;
   begin
If trySTRToFloat(Form1.LabeledEdit1.TExt,atw)= false then exit else if  STRToFloat(form1.LabeledEdit1.TExt)=0 then exit;
If trySTRToFloat(form1.LabeledEdit2.TExt,atz)= false then exit else if  STRToFloat(form1.LabeledEdit2.TExt)=0 then exit;
If trySTRToFloat(form1.LabeledEdit3.TExt,Ener)= false then exit else if  STRToFloat(form1.LabeledEdit3.TExt)=0 then exit;
If trySTRToFloat(Form1.LabeledEdit4.TExt,Pd)= false then exit else if  STRToFloat(Form1.LabeledEdit4.TExt)=0 then exit;
If trySTRToFloat(Form1.LabeledEdit5.TExt,yy)= false then exit else if  STRToFloat(form1.LabeledEdit5.TExt)=0 then exit;
 stat:=round(yy);
 If trySTRToFloat(form1.LabeledEdit6.TExt,den)= false then exit else if  STRToFloat(Form1.LabeledEdit6.TExt)=0 then exit;
 If trySTRToFloat(Form1.LabeledEdit7.TExt,Intem)= false then exit else if  STRToFloat(Form1.LabeledEdit7.TExt)=0 then exit;
N:=round(stat);


Form1.Memo1.Lines.Add(FloattoStr(den)+' '+' /');
      hl:=Strtofloat(Form1.LabeledEdit4.Text)*1e-2/(stat);

u1:=0; u2:=0;  Sum:=0;    c:=0;   u0:=0;
h:=Pd;  u2:=qx(u1,Ener,AtW,AtZ);   sum:=sum+u2/2; u0:=u2;  //0;
u1:=Pd;c:=0;   u2:=qx(u1,Ener,AtW,AtZ);
  sum:=sum+u2/2;    c:=0;                             //n;
for i:=1 to n-1 do begin
 u1:=i*h;
 u2:=qx(u1,Ener,AtW,AtZ);
 //Form1.Memo1.Lines.Add('u2= '+FloatToStr(u2));
  sum:=sum+u2;
end;
         c:=0;
  for i:=1 to n do begin
 u1:=((i-1)*h+i*h)/2;
 u2:=2*qx(u1,Ener,ATW,ATZ);
// Form1.Memo1.Lines.Add('u2= '+FloatToStr(u2));
  sum:=sum+u2;
end;
   sum:=(h*sum)/3;
   sum:=sum/Pd;
   Form1.Memo1.Lines.Add('');
Form1.Memo1.Lines.Add('Average released Energy ( per 1e)= '+FloatToStr(sum/u0)+' reduced');
amm:= (Current*time)/el;
elnum:=amm;
Form1.Memo1.Lines.Add('Ammount of e= '+FloatToStr(amm));
etotal:= amm*Ener*1e6*el;
Form1.Memo1.Lines.Add('Energy_total= '+FloatToStr(etotal)+' Joule');
 erel:=Pd*amm*sum*1e6*el;
Form1.Memo1.Lines.Add('Average released Energy= '+FloatToStr(erel)+' Joule');
Form1.Memo1.Lines.Add('delta= '+FloatToStr((etotal-erel)*100/etotal)+'%');
   power:=Ener*1e6*current;
Form1.Memo1.Lines.Add('Speculative Power = '+FloatToStrf(power,ffExponent,12,8)+' W');
form1.Memo1.Lines.Add('Power density/m2= '+FloatToStrf(power/area,ffexponent,12,8));
Form1.Memo1.Lines.Add('');

c:=0;

Form1.Chart1.Series[0].Clear;
Form1.Chart2.Series[0].Clear;
u1:=0; u2:=0;  u0:=0;  xx:=0;
h:=Pd/stat;  tem0:=0;
    tem:=0;
SetLength(at1,0,0,0);
 SetLength(at1,30,stat+1,2);
 SetLength(at2,0,0,0);
 SetLength(at2,30,stat+1,2);
 SetLength(sX,0,0);
  SetLength(sX,stat+1,2);
  i:=0;
 u2:=qx(u1,Ener,Atw,AtZ);
 for ii := 0 to length(at1)-1 do
 begin
 at1[ii,i,0]:=u1;   at2[ii,i,0]:=u1;
 at1[ii,i,1]:=u2; at2[ii,i,1]:=u2;
      end;
u0:=u2;  u1:=u1+h;    xx:=u2;
Form1.Memo1.Lines.Add('Input surface amplityde[MeV/sm]= '+FloatToStr(u0));
 //  form1.Series1.AddXY(u1,1);
while u1<Pd do begin
u2:=qx(u1,Ener,AtW,AtZ);
     inc(i);
     for ii :=0  to length(at1)-1 do begin

 at1[ii,i,0]:=u1;at1[ii,i,1]:=u2;
 at2[ii,i,0]:=u1;at2[ii,i,1]:=u2;  end;
 tem:=(el*at1[0,i,1]*1e8*elnum)/(Cc(tem0)*area*den*1e3);
tem0:=tem;
 u1:=u1+h;
 if (tem<=0)and(xx>tem) then xx:=-1;

 end;
   global_atw:=atw;
      global_atz:=atz;
      global_Ener:=Ener;
      global_Pd:=Pd;
      global_Stat:=stat;
      global_Den:=den;
      global_Intem:=Intem;
      global_hl:=hl;
      global_hl5:=hl;
 SetLength(global_at1,length(at1[0]),2);
 SetLength(global_at2,length(at2[0]),2);

 for I := 0 to length(at1[0])-1 do
   begin
   sX[i,0]:=at1[0,i,0];
   sX[i,1]:=at1[0,i,1];
 global_at1[i,0]:=at1[0,i,0];
global_at1[i,1]:=at1[0,i,1]; end;

  for I := 0 to length(at2[0])-1 do
   begin global_at2[i,0]:=at2[0,i,0];
  global_at2[i,1]:=at2[0,i,1];end;

 end;


   procedure TemPlot();
 var   temp,tem0: double;
I: Integer;
  ii: Integer;
   begin    tem0:=10;
    temp:=tem0;
   Form1.Chart2.Series[0].Clear;
   if length(at1[0])=0 then exit;
     if length(at1)<>0 then
     for ii := 0 to length(at1) -1 do
     for I := 0 to length(at1[ii])-1 do begin
 temp:=(el*at1[ii,i,1]*1e8*elnum)/(CC(tem0)*area*den*1e3);
  form1.chart2.Series[ii].AddXY(at1[ii,i,0]*10,Intem+temp);
  tem0:=temp;end ;
   end;

procedure TForm1.Developer1Click(Sender: TObject);
begin
 ShowMessage('Nematics#Project');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
SetLength(at1,0,0,0);
SetLength(at2,0,0,0);
SetLength(at3,0,0,0);SetLength(vm,0,0,0);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
vt:=0;
pause:=0;
 ye:=30;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
Form1.Panel2.Left:=round(Form1.Width*0.93);
Form1.Panel4.Top:=round(Form1.Height*0.85);
Form1.Panel4.Left:=round(Form1.Width*0.6);
Form1.Panel3.Top:=round(Form1.Chart1.Top+Form1.Chart1.Height*1.1);
Form1.Panel3.Left:=round(Form1.Width*0.01);
Form1.Chart2.Left:=round(Form1.Width*0.4);
Form1.Chart2.Width:=round (Form1.Panel2.Left-Form1.Width*0.4);
Form1.Chart2.Height:=round(Form1.Height*0.7);

end;

procedure TForm1.LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
begin
FormatSettings.DecimalSeparator:=',';
if not((Key in ['0'..'9'])or(Key=Chr(vk_Back))or((Key=FormatSettings.DecimalSeparator)and(Pos(Key,(Sender As TLabeledEdit).Text)=0) ))
     then
    Key:=#0;
end;




procedure TForm1.SpeedButton1Click(Sender: TObject);
var i: integer;
begin

Form1.Chart1.Series[0].Clear;
Form1.Chart1.Title.Caption:='The energy deposition profile';
Form1.Chart1.Axes.Left.Title.Caption:='Released energy,[ MeV / sm ]';
Form1.Chart1.Axes.Bottom.Title.Caption:='Penetration depth,[ sm ]';

 FirstUniversal();
 for i :=0  to length(at1[0])-1 do
 Form1.Chart1.Series[0].AddXY(sX[i,0],sX[i,1]);


end;

procedure TForm1.SpeedButton20Click(Sender: TObject);
begin
WD();
Form1.LAbel7.Caption:='Data is saved';
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
Form1.Hide;
Form2.Show;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
Memo1.Clear;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
var i: integer;
  ii: Integer;
begin   vt:=0;

 uok:=0;
 p7:=0;
Timer2.Enabled:=false;
    SetLength(upm0,0,0,0);
 SetLength(upm0,30,8*stat+1,2);
  SetLength(upm1,0,0,0);
 SetLength(upm1,30,8*stat+1,2);
 SetLength(upm,0,0,0);
 SetLength(upm,30,8*stat+1,2);
 for ii := 0 to length(at3)-1 do begin
   Form1.Chart2.Series[ii].Clear;
  for I := 0 to length(at3[ii])-1 do
   begin
upm[ii,i,0]:=at3[ii,i,0];
upm[ii,i,1]:=at3[ii,i,1];
upm0[ii,i,0]:=at3[ii,i,0];
upm0[ii,i,1]:=0;
    end;  end;

Timer1.Enabled:=true;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
var i:integer;
x,y,hb,lth:double;
begin lth:=25;
      hb:=0.1;
Form1.Chart1.Series[0].Clear;
Form1.Chart1.Title.Caption:='Current profile';
Form1.Chart1.Axes.Left.Title.Caption:='Surface current density,[ A / m^2 ]';
Form1.Chart1.Axes.Bottom.Title.Caption:='Beam width,[ mm ]';
  I:=0; x:=0; y:=0;
 while x<lth do
 begin
 atime:=5;  ye:=100;
 //y:=Sim(x,0,ScrollBar2.Position*5e-2);
 y:=(Sim(x,0,ScrollBar2.Position*5e-2)+Sim(x+25/ye,0,ScrollBar2.Position*5e-2))/2;
 y:=y*25/ye;
 y:=y/(areaA());
 if y<=0 then  y:=0;////area/30/stat  on 1 surface unite;
 //Form1.Chart1.Series[0].AddXY(x,y*lth/area);
  Form1.Chart1.Series[0].AddXY(x,y);
 x:=x+hb;
 end;

end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
var
ti,th: double;
i,ii: integer;
  j: Integer;
begin
ye:=30; vt:=0;   ksi:=500;
atime:=0; atimep:=0;
Form1.Chart2.Series[0].Clear;
Form1.Chart2.Title.Caption:='Temperature field';
Form1.Chart2.Axes.Left.Title.Caption:='Temperature, [C]';
Form1.Chart2.Axes.Bottom.Title.Caption:='Penetration depth,[mm]';
pu:=0;
 t8:=0;
pause:=6;
 c:=0;
 FirstUniversal();
 Qlm:=0;Qlev:=0; Q1300:=0; Q975:=0;
 SetLength(at3,0,0,0);
 SetLength(at3,30,8*stat+1,2);
 SetLength(vm,0,0,0);
 SetLength(vm,30,8*stat+1,5);
 SetLength(vm,2*30,8*stat+1,5);
 ksi:=500; tc:=0;
   for Ii :=0 to length(vm)-1 do
 for I :=0 to length(vm[ii])-1 do
  begin
    vm[ii,i,0]:=1;//enabled;
    vm[ii,i,1]:=0;//energy factor;
    vm[ii,i,2]:=0;//temperature;
    vm[ii,i,3]:=4.1;//|(ScrollBar1.Position/100)*8.2;//yes, beam position width;
    vm[ii,i,4]:=1e3*global_hl*i;//penetration depth;
   // Form1.Chart2.Series[ii].AddXY(vm[ii,i,4],vm[ii,i,2]);

   end;

     for Ii :=0 to length(vmd)-1 do
 for I :=0 to length(vmd[ii])-1 do
  begin
    vmd[ii,i,0]:=1;//enabled;
    vmd[ii,i,1]:=0;//energy factor;
    vmd[ii,i,2]:=0;//temperature;
    vmd[ii,i,3]:=4.1;//|(ScrollBar1.Position/100)*8.2;//yes, beam position width;
    vmd[ii,i,4]:=1e3*global_hl*i;//penetration depth;
   // Form1.Chart2.Series[ii].AddXY(vm[ii,i,4],vm[ii,i,2]);

   end;

// if length(at1[0])=0 then exit;
//TemPlot();
 tm:=Round(Stat);
  //   Form1.Chart2.Series[0].Clear;
     Qsum:=0;
    Timer2.Enabled:=true;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin

 if abs(Pause)=6 then begin

  Timer2.Interval:=Timer2.Interval*2;
end;



end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  if tm=0 then exit;

 if abs(Pause)=6 then begin
  if Timer2.Interval>2 then
Timer2.Interval:=round(Timer2.Interval/2);


end;



end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
 if tm=0 then exit;

 if abs(Pause)=6 then begin
  pause:=-pause;
  Timer2.Enabled:=not Timer2.Enabled;
end;

end;

procedure At(numel: double);
var i: integer;
begin
  for I := 0 to round(stat)-1 do
   Form1.Memo1.Lines.Add('at[0,'+InttoStr(i)+',1]= '+FloattoStr(el*at1[0,i,1]*1e8*elnum*hl));
end;





Procedure UnitemA(Tt,Qt,Qtt: double; chartNum,seriesnum: integer;s: mas);
var i,j,i1,i2: integer;
Qloc,dQ: double;
t2,bet,al,gam,d: double;
begin


 // Визначення меж;
bet:=0; al:=0; gam:=0;  d:=0;
i1:=0; i2:=0;
Qloc:=0; dQ:=0;
for I := tc to length(vm[seriesnum])-1 do
if  vm[seriesnum,i,2]>=Tt then
begin
 i1:=i;
for j := i1+1 to length(vm[seriesnum])-1 do
if  vm[seriesnum,j,2]<=Tt then
begin
 i2:=j;
//form1.Memo1.Lines.Add('i1= '+Inttostr(i1)+', i2= '+Inttostr(i2) );
  Break;
 end;
  Break;
 end;


 // Плавлення\/;

  if i2<>0 then
   for I:= i1 to i2 do
  begin   vt:=vm[seriesnum,i,2];
   Qloc:= vm[seriesnum,i,1]*hl;
dQ:=Qloc-Qtt;
if dQ> Qt then begin
gam:= -((Qloc-qt))/(hl*areaA()*dens());
  bet:=(0.9091)*1000;       //// corrected
   al:=2.445e-1;          ////    not corrected!
  d:=bet*bet-4*al*gam;
 t2:=(bet+sqrt(d))/(2*al)-pu;
 vm[seriesnum,i,2]:=t2;

end else begin vm[seriesnum,i,2]:=Tt;

end;
 end;       // Плавлення/\;

 //Кипіння\/;


for I := 0 to length(at3[seriesnum])-1 do begin
if ChartNum=2 then
if vm[seriesnum,i,2]>=0 then
begin
if vm[seriesnum,i,2]>0 then

Form1.Chart2.Series[Seriesnum].AddXY(vm[seriesnum,i,4],vm[seriesnum,i,2]) ;
//if (s[i,1]>1668)and(i mod 10 =0) then
//Form1.Chart2.Series[1].AddXY(s[i,0],s[i,1]);

 end
else  //  Form1.Chart2.Series[Seriesnum].AddXY(vm[seriesnum,i,4],0);
end;

 for I := 0 to length(at3[seriesnum])-1 do
begin
at3[seriesnum,i,0]:=vm[seriesnum,i,4]/10;
at3[seriesnum,i,1]:=vm[seriesnum,i,2];
end;



end;






function UnitemFA(Tt,Qt,Qtt: double;seriesnum: integer;s: mas):mas;
var i,j,i1,i2: integer;
Qloc,dQ: double;
t2,bet,al,gam,d: double;
begin
 // Визначення меж;
  bet:=0; al:=0; gam:=0;  d:=0;
 i1:=0; i2:=0;
      Qloc:=0; dQ:=0;
 for I := tc to length(vm[seriesnum])-1 do
if  vm[seriesnum,i,2]>=Tt then
begin
 i1:=i;
for j := i1+1 to length(vm[seriesnum])-1 do
if  vm[seriesnum,j,2]<=Tt then
begin
 i2:=j;
//form1.Memo1.Lines.Add('i1= '+Inttostr(i1)+', i2= '+Inttostr(i2) );
  Break;
 end;
  Break;
 end;

 // Плавлення\/;

  if i2<>0 then
   for I := i1 to i2 do
  begin    vt:=vm[seriesnum,i,2];
   Qloc:= vm[seriesnum,i,1]*hl;
dQ:=Qloc-Qtt;
if dQ> Qt then begin
gam:= -((Qloc-qt))/(hl*areaA()*dens());
  bet:=(0.9091)*1000;               //// corrected
   al:=2.445e-1;                          ///// not corrected!
  d:=bet*bet-4*al*gam;
 t2:=(bet+sqrt(d))/(2*al)-pu;
 vm[seriesnum,i,2]:=t2;

end else  begin vm[seriesnum,i,2]:=Tt;

end;
 end;       // Плавлення/\;

 //Кипіння\/;
 result:=vm;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
var  i,j,ii,pmax: integer;
tau,m,sigma,temm: double;
alpha, betta,hd,tr: double;
tester: double;
begin
if p7=0 then atime:=dtime;
   m:=0; temm:=0; tester:=0;
alpha:=166;         betta:=180; tr:=1;  //1933;        //// corrected!
 Timer2.Enabled:=false;
Form1.Chart2.Series[0].Clear;
 tau:=0.5e-8; pmax:=100000;  tr:=tau/1000;
 atime:=atime+tau;
 Form1.Label2.Caption:='Time= '+FloattoStr(atime)+' s';
 // Form1.Label2.Caption:='Time= '+FloattoStr(time+tau*p7)+' s';
p7:=p7+1;
sigma:=thcr()*tau/Sqr(hl);
hd:=alpha/hl;
for ii := 0 to length(upm1) do begin
for i := 0 to length(upm1[ii])-1 do begin
 if i=0 then   begin
//  Гранумова;
//upm1[ii,i,1]:=-1*(hd/(betta-hd))*(sigma*upm[ii,2,1]+ (1-2*sigma)*upm[ii,1,1]+sigma*upm[ii,0,1]);

tester:=-1*(hd/(betta-hd))*(( (Power((SQRT(thcr())*tau)/(hl*Sqrt(tr)),2)*(upm[ii,2,1]-2*upm[ii,1,1]+upm[ii,0,1]))+upm[ii,1,1]*(2+tau/tr)-upm0[ii,i,1] )/(1+tau/tr)) ;
//upm1[ii,i,1]:=-1*(hd/(betta-hd))*(( (Power((SQRT(thc)*tau)/(hl*Sqrt(tr)),2)*(upm[ii,2,1]-2*upm[ii,1,1]+upm[ii,0,1]))+upm[ii,1,1]*(2+tau/tr)-upm0[ii,i,1] )/(1+tau/tr));
 //Гранумова№0; Zero boundary condition;
// upm1[ii,i,1]:=0;//upm[ii,i,1];
//  Гранумова№1;  Radiation cooling;
upm1[ii,i,1]:=-5.67e-8*Power(upm[ii,i,1],4);//+Abs(tester)-7e6*(tau*p7)*(time+tau*p7)/time;
// upm1[ii,i+1,1]:=((hl*hl*tau)/(thc*tr))*(upm1[ii,i,1]*((tr/(tau*tau))+(1/tau)+(2*thc*tr/(hl*hl*tau)))+(upm[ii,i+1,1]+upm[ii,i,1]*((-2*tr/(tau*tau))-(1/tau)+2*(thc/(hl*hl))-2*(thc*tr/(hl*hl*tau)) ) +upm0[ii,i,1]*(tr/(tau*tau)) )  );
               end;
//upm1[ii,i,1]:=upm1[ii,i,1]+Power(betta-hd,-1)*sigma*20*upm[ii,2,1];
if i=length(upm1[ii])-1 then
upm1[ii,i,1]:=sigma*0+ (1-2*sigma)*upm[ii,i,1]+sigma*upm[ii,i-1,1];
if (i<>0)and(i<>length(upm1[ii])-1) then begin
 //upm1[ii,i,1]:=sigma*upm[ii,i+1,1]+ (1-2*sigma)*upm[ii,i,1]+sigma*upm[ii,i-1,1];
//upm1[ii,i,1]:=Power(1+tau/tr,-1)*( Power((SQRT(thc)*tau)/(hl*Sqrt(tr)),2)*(upm[ii,i+1,1]-2*upm[ii,i,1]+upm[ii,i-1,1])+upm[0,i,1]*(2+tau/tr));//-upm0[ii,i,1]);
//upm0[ii,i,1]:=upm[ii,i,1];
upm1[ii,i,1]:=Power(1+tr/tau,-1)*(sigma*(upm[ii,i+1,1]-2*upm[ii,i,1]+upm[ii,i-1,1])+upm[ii,i,1]-(tr/tau)*(upm0[ii,i,1]-2*upm[ii,i,1]));
//upm1[ii,i+1,1]:=((hl*hl*tau)/(thc*tr))*(upm1[ii,i,1]*((tr/(tau*tau))+(1/tau)+(2*thc*tr/(hl*hl*tau)))+(upm[ii,i+1,1]+upm[ii,i-1,1]*((thc*tr/(hl*hl*tau))-thc/(hl*hl))+upm[ii,i,1]*((-2*tr/(tau*tau))-(1/tau)+2*(thc/(hl*hl))-2*(thc*tr/(hl*hl*tau)) ) +upm0[ii,i,1]*(tr/(tau*tau)) )  )-upm1[ii,i-1,1];
upm0[ii,i,1]:=upm[ii,i,1];

                                    end;
  upm1[ii,i,0]:=upm[ii,i,0];
 if upm1[ii,i,1]<=0 then upm1[ii,i,1]:=0;
 vt:=upm1[ii,i,1];
end;

 for j := 0 to length(upm1[ii])-1 do   begin
 upm[ii,j,1]:=upm1[ii,j,1];
 if temm< upm1[ii,j,1] then temm:=upm1[ii,j,1];
 if upm1[ii,j,1]>0 then
Form1.Chart2.Series[ii].AddXY(upm1[ii,j,0]*10,upm1[ii,j,1]);
end;    end;
if temm<1 then
Form1.Timer1.Enabled:=false;
end;



procedure TForm1.Timer2Timer(Sender: TObject);
var  k,numel,dnumel,d,t2,bet,al,gam,dis,newdis: double;
I,jj: Integer;
  j: Integer;
  pt1,pt2: integer;
begin        pt1:=0; pt2:=0;
ye:=30;  threshold_distance:=0;
 atimep:=atime;
 atime:=time- tm*(time/stat);
dtime:=atime;
if pause=-6 then begin Timer2.Enabled:=false; exit; end;
 pause:=6;
dis :=25e-3/ye;
//jj:=10;
for jj := 0 to ye-1 do BEGIN
      newdis:=(jj/(ye-1))*0.025;

  for i := 0 to length(vm[jj])- 1 do
  vm[jj,i,3]:=newdis*1000;

if newdis<0 then newdis:=0;
bet:=0; al:=0; gam:=0;  d:=0;
Form1.Chart2.Series[jj].Clear;


dnumel:=elnumFnew(newdis,newdis,dis,0,atime)-elnumFnew(newdis,newdis,dis,0,atimep);

Form1.Label2.Caption:='Time= '+FloattoStr(atime)+' s';
//if atime>2e-8 then timer2.Enabled:=false;
for I := 0 to length(at1[jj])-1 do begin
vm[jj,i+tc,1]:=vm[jj,i+tc,1]+el*at1[jj,i,1]*1e8*dnumel;
gam:= -(vm[jj,i+tc,1])/(areaA()*dens());
if gam=0 then begin t2:=0;
  form1.chart2.Series[jj].AddXY(vm[jj,i+tc,4],0);
  at2[jj][i][1]:=0;
  vm[jj,i+tc][2]:=0;
 end else begin
  bet:=(0.9091)*1000; //// corrected;
  al:=2.445e-1;    //// corrected;
  d:=bet*bet-4*al*gam;
  //t1:=(bet-sqrt(d))/(2*al);
  //t2:=(bet+sqrt(d))/(2*al)-1769.718;

 if tm=round(stat)-1 then begin
   pu:=(bet+sqrt(d))/(2*al);
   t2:=0; end else t2:=(bet+sqrt(d))/(2*al)-pu;
   vt:=t2;
 at2[jj][i][1]:=t2;
 vm[jj][i+tc][2]:=t2;

if Q1300=0 then      //Mela;
if vm[jj,i+tc,2]>634.9 then begin
Qlm:=320000*hl*areaA()*dens();
t8:=i;
Q1300:=Strtofloat(Floattostrf(vm[jj,i+tc,1]*hl,ffFixed,12,3));
form1.Memo1.Lines.Add('i= '+Inttostr(i+tc)+' ,Qlm [J]= '+Floattostr(Qlm));
form1.Memo1.Lines.Add('i= '+Inttostr(i+tc)+' ,Q635 [J]= '+Floattostr(Q1300));
end;

    if Q975=0 then   //Eva;
if vm[jj,i+tc,2]>1000 then begin
Qlev:=9220000*hl*areaA()*dens();
Q975:=Strtofloat(Floattostrf(vm[jj,i+tc,1]*hl,ffFixed,12,3));
form1.Memo1.Lines.Add('i= '+Inttostr(i+tc)+' ,Qlev [J]= '+Floattostr(Qlev));
form1.Memo1.Lines.Add('i= '+Inttostr(i+tc)+' ,Q975 [J]= '+Floattostr(Q975));
end;
end;

end ;


for I :=0 to length(vm[jj])-1 do begin
if (vm[jj,i,2]>634.9) then
Begin
  if counter_d =0 then begin pt1:=i; counter_d:=1; end;
  pt2:=i;

    //for j := 0 to i do  beGin
    //tc:=i;
//    vm[j,0]:=0;   eNd;

  End;

end;


 if (pt1-tc<=20)and(pt2-pt1>0) then      //Відповідає за рух фронту;
  Begin
    for j := 0 to pt2 do  beGin

    vm[jj,j,0]:=0;
                           eNd;
  tc:=pt2;
  End;


UnitemA(1000,Qlev,Q975,2,jj,UnitemFA(635,Qlm,Q1300,jj,vm));
 end;
     if tm<=0 then begin
 Timer2.Enabled:=false;
 end;
timeT1:=time;
tm:=tm-1;



 end;


procedure TForm1.Timer3Timer(Sender: TObject);
var  i,j,ii,pmax: integer;
tau,m,sigma,temm: double;
alpha, betta,hd,tr: double;
tester: double;
begin
if p7=0 then atime:=dtime;
   m:=0; temm:=0; tester:=0;
alpha:=166;         betta:=180; tr:=1;  //1933;        //// corrected!
 Timer3.Enabled:=false;
Form1.Chart2.Series[0].Clear;
 tau:=0.5e-8; pmax:=100000;  tr:=tau/1000;
 atime:=atime+tau;
 Form1.Label2.Caption:='Time= '+FloattoStr(atime)+' s';
 // Form1.Label2.Caption:='Time= '+FloattoStr(time+tau*p7)+' s';
p7:=p7+1;
sigma:=thcr()*tau/Sqr(hl);
hd:=alpha/hl;
for ii := 0 to length(upm1) do begin
for i := 0 to length(upm1[ii])-1 do begin
 if i=0 then   begin

upm1[ii,i,1]:=upm[ii,i,1];

               end;

if i=length(upm1[ii])-1 then
upm1[ii,i,1]:=sigma*0+ (1-2*sigma)*upm[ii,i,1]+sigma*upm[ii,i-1,1];
if (i<>0)and(i<>length(upm1[ii])-1) then begin
 //upm1[ii,i,1]:=sigma*upm[ii,i+1,1]+ (1-2*sigma)*upm[ii,i,1]+sigma*upm[ii,i-1,1];
//upm1[ii,i,1]:=Power(1+tau/tr,-1)*( Power((SQRT(thc)*tau)/(hl*Sqrt(tr)),2)*(upm[ii,i+1,1]-2*upm[ii,i,1]+upm[ii,i-1,1])+upm[0,i,1]*(2+tau/tr));//-upm0[ii,i,1]);
//upm0[ii,i,1]:=upm[ii,i,1];
upm1[ii,i,1]:=Power(1+tr/tau,-1)*(sigma*(upm[ii,i+1,1]-2*upm[ii,i,1]+upm[ii,i-1,1])+upm[ii,i,1]-(tr/tau)*(upm0[ii,i,1]-2*upm[ii,i,1]));
//upm1[ii,i+1,1]:=((hl*hl*tau)/(thc*tr))*(upm1[ii,i,1]*((tr/(tau*tau))+(1/tau)+(2*thc*tr/(hl*hl*tau)))+(upm[ii,i+1,1]+upm[ii,i-1,1]*((thc*tr/(hl*hl*tau))-thc/(hl*hl))+upm[ii,i,1]*((-2*tr/(tau*tau))-(1/tau)+2*(thc/(hl*hl))-2*(thc*tr/(hl*hl*tau)) ) +upm0[ii,i,1]*(tr/(tau*tau)) )  )-upm1[ii,i-1,1];
upm0[ii,i,1]:=upm[ii,i,1];

                                    end;
  upm1[ii,i,0]:=upm[ii,i,0];
 if upm1[ii,i,1]<=0 then upm1[ii,i,1]:=0;
 vt:=upm1[ii,i,1];
end;

 for j := 0 to length(upm1[ii])-1 do   begin
 upm[ii,j,1]:=upm1[ii,j,1];
 if temm< upm1[ii,j,1] then temm:=upm1[ii,j,1];
 if upm1[ii,j,1]>0 then
Form1.Chart2.Series[ii].AddXY(upm1[ii,j,0]*10,upm1[ii,j,1]);
end;    end;
if temm<1 then
Form1.Timer3.Enabled:=false;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
 Form1.Label5.Caption:=InttoStr(Form1.ScrollBar1.Position);
end;

procedure TForm1.ScrollBar2Change(Sender: TObject);
begin
 Form1.Label4.Caption:=InttoStr(Form1.ScrollBar2.Position);
end;

procedure TForm1.ScrollBar3Change(Sender: TObject);
begin
 Chart2.View3DOptions.Zoom:= ScrollBar3.Position;
Chart2.View3DOptions.Rotation:= ScrollBar4.Position;
Chart2.View3DOptions.Elevation:= -ScrollBar5.Position;
Chart2.Repaint;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
var i: integer;
begin

Form1.Chart2.Series[0].Clear;
for i:=0 to length(at3[0])-1 do
Form1.Chart2.Series[0].AddXY(at3[0,i,0]*10,at3[0,i,1]);

end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin

firstUniversal();
Form1.Hide;
Form3.Show;

end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
Form1.Chart2.Series[0].Clear;
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
var i: integer;
begin
timer1.Enabled:=not Timer1.Enabled;
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
begin
 FirstUniversal();
 Form1.Hide;
 Form4.Show;
end;

procedure TForm1.SpeedButton15Click(Sender: TObject);
Var Fl: TextFile;
j,i: integer;
fn,fn1,st: string;
dis_: double;
begin  st:='';
dis_:=(ScrollBar1.Position/100)*0.025;
fn:=Form1.Edit1.Text;
//fn1:=Copy(fn,length(fn)-3,length(fn));
//fn:=Copy(fn,1,length(fn)-4)+FloattoStr(dis_)+fn1  ;


Assignfile(Fl,fn);
Append(fl);

if length(at3[0])<>0 then begin
 for I := 0 to length(at3[0])-1 do Begin
 FormatSettings.DecimalSeparator:='.';
 if at3[0,i,1]>0.01 then    //глибина,ширина,температура
   Writeln(Fl,FloattoStrf(at3[0,i,0],ffFixed,12,8)+'  '+FloattoStrf(at3[0,i,1],ffFixed,12,8));
 End;
 FormatSettings.DecimalSeparator:=',';

end else writeln(Fl,'No data');

closefile(fl);

end;

procedure TForm1.SpeedButton16Click(Sender: TObject);
Var i: integer;
fl,fl1: TextFile;
fn,st,st1,fn1: string;
dis_,a1,a2,a3: double;
begin
Panel1.Visible:=False;
//WD();
Form1.Label7.Caption:='';
{dis_:=(ScrollBar1.Position/100)*0.0082;
Assignfile(fl,Edit1.Text); rewrite(fl);
Assignfile(fl1,'dataspec.dat');
closefile(fl1);
 Assignfile(fl1,'dataspec.dat');
reset(fl1);
reset(fl);
  while not eof(fl) do begin
readln(fl,a1,a2,a3);
if a1=dis_ then
  writeln(fl1,FloattoStr(a1)+'  '+FloattoStr(a2)+'  '+FloattoStr(a3));

  end;
   closefile(fl1);  closefile(fl); }
end;

procedure TForm1.SpeedButton17Click(Sender: TObject);
Var Fl: TextFile;
fn: string;
begin

fn:=Form1.Edit1.Text;
Assignfile(Fl,fn);
 Rewrite(fl);
closefile(fl);

end;

procedure TForm1.SpeedButton18Click(Sender: TObject);
begin
//ShellExecute(Handle,nil,'notepad.exe',nil,nil,SW_SHOWNORMAL);
Panel1.Visible:=true;
//ShellExecute(Application.Handle, nil, 'TvoyaProga.exe', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.SpeedButton19Click(Sender: TObject);
begin
firstUniversal();
Form1.Hide;
Form5.Show;

end;

end.
