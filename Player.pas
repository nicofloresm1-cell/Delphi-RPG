unit Player;

interface
uses System.Math;
type
  TPlayer = class
  private

vidaMaxima : Integer;
vida: Integer;

public
constructor Create;


procedure RecibirDanio(Danio: Integer);
procedure Curar(Cantidad: Integer);
function GetVida: Integer;
function GetVidaMaxima: Integer;

  end;
implementation


function TPlayer.GetVida: Integer;
begin
  Result := Vida;
end;

function TPlayer.GetVidaMaxima: Integer;
begin
  VidaMaxima := Vida;
end;

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
end;


end.
