unit Packet_4;

interface

uses
  IdContext,
  World;

type
  Packet4 = class(TObject) // Level finalize
  public
    class procedure Write(AContext: TIdContext);
  end;

implementation

class procedure Packet4.Write(AContext: TIdContext);
begin
  with AContext.Connection do
  begin
    IOHandler.Write(4); // Packet ID
    IOHandler.Write(GLWorld.MapSize.X);
    IOHandler.Write(GLWorld.MapSize.Y);
    IOHandler.Write(GLWorld.MapSize.Z);
  end;
end;

end.
