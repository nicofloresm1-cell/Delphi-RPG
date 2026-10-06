unit Player;

interface
uses System.Math;
type
  TPlayer = class
  private

vidaMaxima : Integer;
vida: Integer;
PosicionX: Integer;
PosicionY: Integer;

public
constructor Create;


procedure RecibirDanio(Danio: Integer);
procedure Curar(Cantidad: Integer);
function GetVida: Integer;
function GetVidaMaxima: Integer;

procedure MoverArriba;
procedure MoverAbajo;
procedure MoverIzquierda;
procedure MoverDerecha;

function GetPosicionX: Integer;
function GetPosicionY: Integer;



  end;
implementation


function TPlayer.GetVida: Integer;
begin
  Result := Vida;
end;

function TPlayer.GetVidaMaxima: Integer;
begin
  Result := VidaMaxima;
end;

function TPlayer.GetPosicionX: Integer;
begin
 Result := PosicionX;
end;

function TPlayer.GetPosicionY: Integer;
begin
  Result := PosicionY;
end;

{vida y daño}

procedure TPlayer.RecibirDanio(Danio: Integer);
begin
vida := Max(0, vida - Danio);

end;

procedure TPlayer.Curar(Cantidad: Integer);
begin

vida := Min(vidaMaxima, vida + Cantidad);
end;

constructor TPlayer.Create;
begin
  VidaMaxima := 120;
  Vida := 100;
  PosicionX := 100;
  PosicionY := 100;
end;


{movimiento}

procedure TPlayer.MoverDerecha;
begin
  if PosicionX + 5 <= 700 then
    PosicionX := PosicionX + 5;
end;

procedure TPlayer.MoverIzquierda;
begin

if PosicionX - 5 >= 0 then
  PosicionX := PosicionX - 5;

end;

procedure TPlayer.MoverArriba;
begin
  if PosicionY - 5 >= 0 then
    PosicionY := PosicionY - 5;
end;

procedure TPlayer.MoverAbajo;
begin
  if PosicionY + 5 <= 700 then
    PosicionY := PosicionY + 5;
end;

end.
