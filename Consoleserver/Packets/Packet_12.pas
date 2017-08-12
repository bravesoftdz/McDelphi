unit Packet_12;

interface

uses
  System.SysUtils,
  IdTCPServer,
  IdContext,
  IdGlobal;

type
  Packet12 = class(TObject) // Despawn player
  public
    class procedure Read(AContext: TIdContext);
    class procedure Write(AContext: TIdContext; PId: Byte);
  end;

implementation

class procedure Packet12.Read(AContext: TIdContext);
begin
  with AContext.Connection do
  begin

  end;
end;

class procedure Packet12.Write(AContext: TIdContext; PId: Byte);
begin
  with AContext.Connection do
  begin
    IOHandler.Write(12);
    IOHandler.Write(PId);
  end;
end;

end.
