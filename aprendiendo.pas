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

  case Jugador.GetDireccion of

    Arriba:
      begin
        { Cabeza }
        Canvas.Brush.Color := clWhite;
        Canvas.Pen.Color := clBlack;
        Canvas.Ellipse(X1, Y1, X2, Y2);

        { Cabello visto desde atrás }
        Canvas.Brush.Color := clBlue;
        Canvas.Rectangle(X1 + 5, Y1 + 5, X1 + 45, Y1 + 25);

        { Cuerpo }
        Canvas.Brush.Color := clBlue;
        Canvas.Rectangle(X1 + 10, Y1 + 50, X1 + 40, Y1 + 90);

        { Brazos y piernas }
        Canvas.Brush.Color := clBlack;

        Canvas.MoveTo(X1 + 10, Y1 + 60);
        Canvas.LineTo(X1 - 10, Y1 + 80);

        Canvas.MoveTo(X1 + 40, Y1 + 60);
        Canvas.LineTo(X1 + 60, Y1 + 80);

        if Jugador.GetAnimacion = 0 then
          begin
            Canvas.MoveTo(X1 + 18, Y1 + 90);
            Canvas.LineTo(X1 + 10, Y1 + 120);

            Canvas.MoveTo(X1 + 32, Y1 + 90);
            Canvas.LineTo(X1 + 40, Y1 + 120);
          end
          else
          begin
            Canvas.MoveTo(X1 + 18, Y1 + 90);
            Canvas.LineTo(X1 + 25, Y1 + 120);

            Canvas.MoveTo(X1 + 32, Y1 + 90);
            Canvas.LineTo(X1 + 25, Y1 + 120);
          end;
        end;

     Abajo:
      begin
        { Cabeza }
        Canvas.Brush.Color := clWhite;
        Canvas.Pen.Color := clBlack;
        Canvas.Ellipse(X1, Y1, X2, Y2);

        { Cabello }
        Canvas.Brush.Color := clBlue;
        Canvas.Rectangle(X1 + 5, Y1 + 5, X1 + 45, Y1 + 15);

        { Ojos }
        Canvas.Brush.Color := clBlack;
        Canvas.Ellipse(X1 + 12, Y1 + 18, X1 + 18, Y1 + 24);
        Canvas.Ellipse(X1 + 32, Y1 + 18, X1 + 38, Y1 + 24);

        { Cuerpo }
        Canvas.Brush.Color := clBlue;
        Canvas.Rectangle(X1 + 10, Y1 + 50, X1 + 40, Y1 + 90);

        { Brazos y piernas }
        Canvas.Brush.Color := clBlack;

        Canvas.MoveTo(X1 + 10, Y1 + 60);
        Canvas.LineTo(X1 - 10, Y1 + 80);

        Canvas.MoveTo(X1 + 40, Y1 + 60);
        Canvas.LineTo(X1 + 60, Y1 + 80);

          if Jugador.GetAnimacion = 0 then
          begin
            Canvas.MoveTo(X1 + 18, Y1 + 90);
            Canvas.LineTo(X1 + 10, Y1 + 120);

            Canvas.MoveTo(X1 + 32, Y1 + 90);
            Canvas.LineTo(X1 + 40, Y1 + 120);
          end
          else
          begin
            Canvas.MoveTo(X1 + 18, Y1 + 90);
            Canvas.LineTo(X1 + 25, Y1 + 120);

            Canvas.MoveTo(X1 + 32, Y1 + 90);
            Canvas.LineTo(X1 + 25, Y1 + 120);
          end;
      end;

    Izquierda:
      begin
        { Cabeza }
        Canvas.Brush.Color := clWhite;
        Canvas.Pen.Color := clBlack;
        Canvas.Ellipse(X1, Y1, X2, Y2);

        { Cabello }
        Canvas.Brush.Color := clBlue;
        Canvas.Rectangle(X1 + 5, Y1 + 5, X1 + 25, Y1 + 25);

        { Ojo }
        Canvas.Brush.Color := clBlack;
        Canvas.Ellipse(X1 + 8, Y1 + 18, X1 + 14, Y1 + 24);

        { Cuerpo }
        Canvas.Brush.Color := clBlue;
        Canvas.Rectangle(X1 + 10, Y1 + 50, X1 + 40, Y1 + 90);

        { Brazos y piernas }
        Canvas.Brush.Color := clBlack;

        Canvas.MoveTo(X1 + 10, Y1 + 60);
        Canvas.LineTo(X1 - 10, Y1 + 70);

        Canvas.MoveTo(X1 + 40, Y1 + 60);
        Canvas.LineTo(X1 + 55, Y1 + 75);

        if Jugador.GetAnimacion = 0 then
          begin
            Canvas.MoveTo(X1 + 18, Y1 + 90);
            Canvas.LineTo(X1 + 10, Y1 + 120);

            Canvas.MoveTo(X1 + 32, Y1 + 90);
            Canvas.LineTo(X1 + 40, Y1 + 120);
          end
          else
          begin
            Canvas.MoveTo(X1 + 18, Y1 + 90);
            Canvas.LineTo(X1 + 25, Y1 + 120);

            Canvas.MoveTo(X1 + 32, Y1 + 90);
            Canvas.LineTo(X1 + 25, Y1 + 120);
          end;
      end;

    Derecha:
      begin
        { Cabeza }
        Canvas.Brush.Color := clWhite;
        Canvas.Pen.Color := clBlack;
        Canvas.Ellipse(X1, Y1, X2, Y2);

        { Cabello }
        Canvas.Brush.Color := clBlue;
        Canvas.Rectangle(X1 + 25, Y1 + 5, X1 + 45, Y1 + 25);

        { Ojo }
        Canvas.Brush.Color := clBlack;
        Canvas.Ellipse(X1 + 36, Y1 + 18, X1 + 42, Y1 + 24);

        { Cuerpo }
        Canvas.Brush.Color := clBlue;
        Canvas.Rectangle(X1 + 10, Y1 + 50, X1 + 40, Y1 + 90);

        { Brazos y piernas }
        Canvas.Brush.Color := clBlack;

        Canvas.MoveTo(X1 + 40, Y1 + 60);
        Canvas.LineTo(X1 + 60, Y1 + 70);

        Canvas.MoveTo(X1 + 10, Y1 + 60);
        Canvas.LineTo(X1 - 5, Y1 + 75);

        if Jugador.GetAnimacion = 0 then
          begin
            Canvas.MoveTo(X1 + 18, Y1 + 90);
            Canvas.LineTo(X1 + 10, Y1 + 120);

            Canvas.MoveTo(X1 + 32, Y1 + 90);
            Canvas.LineTo(X1 + 40, Y1 + 120);
          end
          else
          begin
            Canvas.MoveTo(X1 + 18, Y1 + 90);
            Canvas.LineTo(X1 + 25, Y1 + 120);

            Canvas.MoveTo(X1 + 32, Y1 + 90);
            Canvas.LineTo(X1 + 25, Y1 + 120);
          end;
      end;
  end;
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
