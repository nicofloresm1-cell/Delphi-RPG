unit Player;

interface
uses System.Math;
type
  TDireccion = (Arriba, Abajo, Izquierda, Derecha);
  TPlayer = class
  private

vidaMaxima : Integer;
vida: Integer;
PosicionX: Integer;
PosicionY: Integer;
Direccion: TDireccion;
Animacion: Integer;

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

function GetDireccion: TDireccion;
function GetAnimacion: Integer;



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


function TPlayer.GetDireccion: TDireccion;
begin
  Result := Direccion;
end;

function TPlayer.GetAnimacion: Integer;
begin
  Result := Animacion;
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
  Direccion := Abajo;
  Animacion := 0;
end;


{movimiento}

procedure TPlayer.MoverDerecha;
begin
  if PosicionX + 5 <= 700 then
  begin
    PosicionX := PosicionX + 5;
    Direccion := Derecha;
  Animacion := 1 - Animacion;
  end;
end;
procedure TPlayer.MoverIzquierda;
begin
  if PosicionX - 5 >= 0 then
  begin
    PosicionX := PosicionX - 5;
    Direccion := Izquierda;
    Animacion := 1 - Animacion;
  end;
end;

procedure TPlayer.MoverArriba;
begin
  if PosicionY - 5 >= 0 then
  begin
    PosicionY := PosicionY - 5;
    Direccion := Arriba;
    Animacion := 1 - Animacion;
  end;
end;

procedure TPlayer.MoverAbajo;
begin
  if PosicionY + 5 <= 700 then
  begin
    PosicionY := PosicionY + 5;
    Direccion := Abajo;
    Animacion := 1 - Animacion;
  end;
end;

end.
