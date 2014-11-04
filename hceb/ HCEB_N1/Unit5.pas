unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart;

type
  TForm5 = class(TForm)
    SpeedButton1: TSpeedButton;
    Chart1: TChart;
    Series1: TFastLineSeries;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    ScrollBar3: TScrollBar;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Memo1: TMemo;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    Timer1: TTimer;
    Series4: TFastLineSeries;
    Series5: TFastLineSeries;
    Series6: TFastLineSeries;
    Series7: TFastLineSeries;
    Series8: TFastLineSeries;
    Series9: TFastLineSeries;
    Series10: TFastLineSeries;
    Series11: TFastLineSeries;
    Series12: TFastLineSeries;
    Series13: TFastLineSeries;
    Series14: TFastLineSeries;
    Series15: TFastLineSeries;
    Series16: TFastLineSeries;
    Series17: TFastLineSeries;
    Series18: TFastLineSeries;
    Series19: TFastLineSeries;
    Series20: TFastLineSeries;
    Series21: TFastLineSeries;
    Series22: TFastLineSeries;
    Series23: TFastLineSeries;
    Series24: TFastLineSeries;
    Series25: TFastLineSeries;
    Series26: TFastLineSeries;
    Series27: TFastLineSeries;
    Series28: TFastLineSeries;
    Series29: TFastLineSeries;
    Series30: TFastLineSeries;
    SpeedButton6: TSpeedButton;
    ScrollBar4: TScrollBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ScrollBar1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
implementation

uses Unit1,Global_Var;
{$R *.dfm}
Var Q5_975,Qsum5,Q5_1300,pu5,t85,atime,atimep,pause5:double;
c5,vt5,timeT15,Qlm5:double;
ye5,ksi5,tm5,tc5:integer;
 vm5: array of array of double;
   var at35 ,at25: mas;
  threshold_distance5,counter_d5: integer;


procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form5.Hide;
Form1.Show;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
//vt:=0;
pause5:=0;
 ye5:=30;
end;

procedure TForm5.ScrollBar1Change(Sender: TObject);
begin
 Chart1.View3DOptions.Zoom:= ScrollBar1.Position;
Chart1.View3DOptions.Rotation:= ScrollBar2.Position;
Chart1.View3DOptions.Elevation:= ScrollBar3.Position;
Chart1.Repaint;
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
Var xc,xc1,xc2,xc3,i: integer;

begin
xc:=Form5.ComponentCount;
for xc1 :=0  to xc-1 do begin
  if Form5.Components[xc1] is TChart then begin
    for xc2 :=0 to  (Form5.Components[xc1] as TChart).SeriesCount-1 do   begin
    for xc3 := 0 to 100 do
 //(Form5.Components[xc1] as TChart).Series[xc2].AddXY(xc3,Sin(xc3));
       end;
  end;
end;

Form5.Chart1.Series[0].Clear;
Form5.Chart1.Title.Caption:='Temperature field';
Form5.Chart1.Axes.Left.Title.Caption:='Temperature, [C]';
Form5.Chart1.Axes.Bottom.Title.Caption:='Penetration depth,[mm]';
Q5_975:=0; Qsum5:=0;
pu5:=0; t85:=0;
atime:=0; atimep:=0;
pause5:=6; tc5:=0;
c5:=0;  ye5:=30;
vt5:=0; ksi5:=500;  tm5:=Round(Stat);
// FirstUniversal();
SetLength(at35,0,0);
SetLength(at35,8*stat+1,2);
SetLength(vm5,0,0);
SetLength(vm5,8*stat+1,5);
for I :=0 to length(vm5)-1 do
  begin
    vm5[i,0]:=1;//enabled;
    vm5[i,1]:=0;//energy factor;
    vm5[i,2]:=0;//temperature;
    vm5[i,3]:=4.1;//|(ScrollBar1.Position/100)*8.2;//yes, beam position width;
    vm5[i,4]:=0;//1e3*global_hl5*i;//penetration depth;
   end;

 //if length(at1)=0 then exit;
//TemPlot();
Form1.Chart1.Series[0].Clear;
Timer1.Enabled:=true;


end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
Var xc,xc1,xc2: integer;
begin
Memo1.Clear;
xc:=Form5.ComponentCount;
for xc1 :=0  to xc-1 do begin
  if Form5.Components[xc1] is TChart then begin
  for xc2:=0 to (Form5.Components[xc1] as TChart).SeriesCount-1 do
 (Form5.Components[xc1] as TChart).Series[xc2].Clear;
  end;
end;


end;

procedure TForm5.SpeedButton3Click(Sender: TObject);
begin
Form5.Timer1.Enabled:=not Form5.Timer1.Enabled;
end;

procedure TForm5.SpeedButton4Click(Sender: TObject);
begin
if Form5.Timer1.Interval>2 then 
Form5.Timer1.Interval:=round(Form5.Timer1.Interval/2);
end;

procedure TForm5.SpeedButton5Click(Sender: TObject);
begin
 Form5.Timer1.Interval:=round(Form5.Timer1.Interval*2);
end;

procedure TForm5.SpeedButton6Click(Sender: TObject);
Var i:integer;
begin
end;   


Function AreaA5(): double;
begin
  result:=global_area/ye5;
end;
Function dens5():double;
Begin
  result:=1e3*den;//-vt/3.4;
End;

Procedure UnitemA5(Tt,Qt,Qtt: double; s: mas; chartNum,seriesnum: integer);
var i,j,i1,i2: integer;
Qloc,dQ: double;
t2,bet,al,gam,d: double;
begin


 // Визначення меж;
  bet:=0; al:=0; gam:=0;  d:=0;
 i1:=0; i2:=0;
      Qloc:=0; dQ:=0;
 for I := tc5 to length(vm5)-1 do
if  vm5[i,2]>=Tt then
begin
 i1:=i;
for j := i1+1 to length(vm5)-1 do
if  vm5[j,2]<=Tt then
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
  begin   vt5:=vm5[i,2];
   Qloc:= vm5[i,1]*global_hl5;
dQ:=Qloc-Qtt;
if dQ> Qt then begin
gam:= -((Qloc-qt))/(hl*areaA5()*dens5());
  bet:=(0.75)*1000;       //// corrected
   al:=2.523e-1;          ////    not corrected!
  d:=bet*bet-4*al*gam;
 t2:=(bet+sqrt(d))/(2*al)-pu;
 vm5[i,2]:=t2;

end else begin vm5[i,2]:=Tt;

end;
 end;       // Плавлення/\;

 //Кипіння\/;


for I := 0 to length(at35)-1 do begin
if ChartNum=2 then
if vm5[i,2]>=0 then
begin
if vm5[i,2]>0 then

Form1.Chart1.Series[Seriesnum].AddXY(vm5[i,4],vm5[i,2]) ;
//if (s[i,1]>1668)and(i mod 10 =0) then
//Form1.Chart2.Series[1].AddXY(s[i,0],s[i,1]);

 end
else     Form1.Chart1.Series[Seriesnum].AddXY(vm5[i,4],0);
end;

 for I := 0 to length(at35)-1 do
begin
at35[i,0]:=vm5[i,4]/10;
at35[i,1]:=vm5[i,2];
end;



end;

procedure TForm5.Timer1Timer(Sender: TObject);
var  k,numel,dnumel,d,t2,bet,al,gam,dis5,newdis5: double;
I,jj: Integer;
  j: Integer;
  pt1,pt2: integer;
begin         pt1:=0; pt2:=0;
ye:=30;  threshold_distance5:=0;
if pause=-6 then begin Timer1.Enabled:=false; exit; end;
 pause5:=6;
dis5:=8.2e-3/ye5;
newdis5:=(ScrollBar4.Position/100)*0.0082;
if newdis5<0 then newdis5:=0;

jj:=0;
bet:=0; al:=0; gam:=0;  d:=0;
Form1.Chart2.Series[jj].Clear;
//TAreaSeries (Form1.Chart3.Series[jj]).AreaColor :=$00FFE1DB;
 atimep:=atime;
 atime:=time- tm5*(time/stat);
dtime:=atime;
//numel:=elnumF(newdis,dis,atime)- tm*(elnumF(newdis,dis,atime)/stat);
//numel:=numel+elnumFnew(newdis,newdis,dis,atimep,atime);

//dnumel:=elnumFnew(newdis,newdis,dis,0,atime)-elnumFnew(newdis,newdis,dis,0,atimep);

Form1.Label2.Caption:='Time= '+FloattoStr(atime)+' s';
//if atime>2e-8 then timer2.Enabled:=false;
for I := 0 to length(global_at1)-1 do begin
vm5[i+tc5,1]:=vm5[i+tc5,1]+global_el*global_at1[i,1]*1e8*dnumel;
gam:= -(vm5[i+tc5,1])/(areaA5()*dens5());
if gam=0 then begin t2:=0;
  form1.chart1.Series[jj].AddXY(vm5[i+tc5,4],0);
  at25[i][1]:=0;
  vm5[i+tc5][2]:=0;
 end else begin
  bet:=(0.75)*1000; //// corrected;
  al:=2.523e-1;    //// not corrected;
  d:=bet*bet-4*al*gam;
  //t1:=(bet-sqrt(d))/(2*al);
  //t2:=(bet+sqrt(d))/(2*al)-1769.718;

 if tm5=round(stat)-1 then begin
   pu:=(bet+sqrt(d))/(2*al);
   t2:=0; end else t2:=(bet+sqrt(d))/(2*al)-pu;
   vt5:=t2;
 at25[i][1]:=t2;
 vm5[i+tc5][2]:=t2;

if Q5_1300=0 then
 if vm5[i+tc5,2]>1299.9 then begin
Qlm5:=320000*hl*areaA5()*dens5();
t8:=i;
Q5_1300:=Strtofloat(Floattostrf(vm5[i+tc5,1]*hl,ffFixed,12,3));
form1.Memo1.Lines.Add('i= '+Inttostr(i+tc5)+' ,Qlm [J]= '+Floattostr(Qlm5));
form1.Memo1.Lines.Add('i= '+Inttostr(i+tc5)+' ,Q1300 [J]= '+Floattostr(Q5_1300));
end;

   end;
//form1.chart3.Series[0].AddXY(at1[i,0],t2);
 end ;


for I :=0 to length(vm5)-1 do begin

if (vm5[i,2]>1299.9) then
  Begin
  if counter_d5 =0 then begin pt1:=i; counter_d5:=1; end;
  pt2:=i;

    //for j := 0 to i do  beGin
    //tc:=i;
//    vm[j,0]:=0;
   // eNd;
  End;

end;


 if (pt1-tc5<=20)and(pt2-pt1>0) then      //Відповідає за рух фронту;
  Begin
    for j := 0 to pt2 do  beGin

    vm5[j,0]:=0;
                           eNd;
  tc5:=pt2;
  End;


UnitemA5(1300,Qlm5,Q5_1300,at25,2,jj);
 if tm5<=0 then begin
 Timer1.Enabled:=false;
 end;
timeT15:=time;
tm5:=tm5-1;
end;

end.
