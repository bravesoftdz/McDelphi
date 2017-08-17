unit Packet_6;

interface

uses
  System.SysUtils,
  IdTCPServer,
  IdContext,
  IdGlobal;

type
  Packet6 = class(TObject) // Level Initialize
  public
    class procedure Write(AContext: TIdContext);
  end;

implementation

class procedure Packet6.Write(AContext: TIdContext);
begin
  with AContext.Connection do
  begin
    CheckForGracefulDisconnect(True);
    IOHandler.Write(2); // Packet ID
  end;
end;

end.
