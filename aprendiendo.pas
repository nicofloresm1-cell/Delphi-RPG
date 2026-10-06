unit aprendiendo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Math, Player;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
  private
    Jugador: TPlayer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
begin
Jugador := TPlayer.Create;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = Ord('D') then
    Jugador.MoverDerecha;

  if Key = Ord('A') then
    Jugador.MoverIzquierda;

  if Key = Ord('W') then
    Jugador.MoverArriba;

  if Key = Ord('S') then
    Jugador.MoverAbajo;

  Repaint;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
Jugador.MoverDerecha;
ShowMessage('Posicion X: ' + IntToStr(Jugador.GetPosicionX));

end;



procedure TForm1.FormPaint(Sender: TObject);
var
  X1, Y1, X2, Y2: Integer;
begin
  X1 := Jugador.GetPosicionX;
  Y1 := Jugador.GetPosicionY;

  X2 := X1 + 50;
  Y2 := Y1 + 50;

  Canvas.Rectangle(X1, Y1, X2, Y2);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Jugador.RecibirDanio(10);
if Jugador.GetVida <= 0 then Button2.Enabled := False;

ShowMessage('Vida del jugador: ' + IntToStr(Jugador.GetVida));

end;


procedure TForm1.Button3Click(Sender: TObject);
begin
Jugador.Curar(5);
if Jugador.GetVida < Jugador.GetVidaMaxima then
button3.Enabled := True
else
  button3.Enabled := False;


ShowMessage('curacion activada' + IntToStr(Jugador.GetVida))
end;


end.
