unit Monin_StateMachine;

interface

type
  TDoor = class;

  IState = Interface
    procedure Open(myDoor: TDoor);
    procedure Close(myDoor: TDoor);
    procedure Lock(myDoor: TDoor);
    procedure Unlock(myDoor: TDoor);
  End;

  TDoor = class
  private
    myState: IState;
    property SetState: IState write myState;
  public
    constructor Create;

    procedure Open;
    procedure Close;
    procedure Lock;
    procedure Unlock;

    function GetState: IState;
  end;

  TOpened = class(TInterfacedObject, IState)
  private
    class var instance: TOpened;
    constructor Create; reintroduce; deprecated;
    constructor MakeSingleton;
  public
    class function GetInstance: TOpened;

    procedure Open(myDoor: TDoor);
    procedure Close(myDoor: TDoor);
    procedure Lock(myDoor: TDoor);
    procedure Unlock(myDoor: TDoor);
  end;

  TClosed = class(TInterfacedObject, IState)
  private
    class var instance: TClosed;
    constructor Create; reintroduce; deprecated;
    constructor MakeSingleton;
  public
    class function GetInstance: TClosed;

    procedure Open(myDoor: TDoor);
    procedure Close(myDoor: TDoor);
    procedure Lock(myDoor: TDoor);
    procedure Unlock(myDoor: TDoor);
  end;

  TLocked = class(TInterfacedObject, IState)
  private
    class var instance: TLocked;
    constructor Create; reintroduce; deprecated;
    constructor MakeSingleton;
  public
    class function GetInstance: TLocked;

    procedure Open(myDoor: TDoor);
    procedure Close(myDoor: TDoor);
    procedure Lock(myDoor: TDoor);
    procedure Unlock(myDoor: TDoor);
  end;

implementation

{ TDoor }

procedure TDoor.Close;
begin

  myState.Close(self);
end;

constructor TDoor.Create;
begin
  myState := TOpened.GetInstance;
end;

function TDoor.GetState: IState;
begin
  result := myState;
end;

procedure TDoor.Lock;
begin
  myState.Lock(self);
end;

procedure TDoor.Open;
begin

  myState.Open(self);
end;

procedure TDoor.Unlock;
begin
  myState.Unlock(self);

end;

{ TOpened }

constructor TOpened.Create;
begin

end;

constructor TOpened.MakeSingleton;
begin

end;

class function TOpened.GetInstance: TOpened;
begin
  if not Assigned(instance) then
    result := TOpened.MakeSingleton;
end;

procedure TOpened.Close(myDoor: TDoor);
begin
  myDoor.SetState := TClosed.GetInstance;
end;

procedure TOpened.Lock(myDoor: TDoor);
begin

end;

procedure TOpened.Open(myDoor: TDoor);
begin

end;

procedure TOpened.Unlock(myDoor: TDoor);
begin

end;

{ TClosed }

constructor TClosed.Create;
begin

end;

constructor TClosed.MakeSingleton;
begin

end;

class function TClosed.GetInstance: TClosed;
begin
  if not Assigned(instance) then
    result := TClosed.MakeSingleton;
end;

procedure TClosed.Close(myDoor: TDoor);
begin

end;

procedure TClosed.Lock(myDoor: TDoor);
begin
  myDoor.SetState := TLocked.GetInstance;
end;

procedure TClosed.Open(myDoor: TDoor);
begin
  myDoor.SetState := TOpened.GetInstance;
end;

procedure TClosed.Unlock(myDoor: TDoor);
begin

end;

{ TLocked }

constructor TLocked.Create;
begin

end;

constructor TLocked.MakeSingleton;
begin

end;

class function TLocked.GetInstance: TLocked;
begin
  if not Assigned(instance) then
    result := TLocked.MakeSingleton;
end;

procedure TLocked.Close(myDoor: TDoor);
begin

end;

procedure TLocked.Lock(myDoor: TDoor);
begin

end;

procedure TLocked.Open(myDoor: TDoor);
begin

end;

procedure TLocked.Unlock(myDoor: TDoor);
begin
  myDoor.SetState := TClosed.GetInstance;
end;

end.
