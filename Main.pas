unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Monin_StateMachine;

type
  TForm1 = class(TForm)
    btnOpen: TButton;
    btnClose: TButton;
    btnLock: TButton;
    btnUnlock: TButton;
    memLog: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnLockClick(Sender: TObject);
    procedure btnUnlockClick(Sender: TObject);
  private
    { Private declarations }
    procedure PrintState(input: Istate);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  myDoor: TDoor;

implementation

{$R *.dfm}

procedure TForm1.btnCloseClick(Sender: TObject);
begin
  myDoor.Close;
  PrintState(myDoor.GetState);
end;

procedure TForm1.btnLockClick(Sender: TObject);
begin
  myDoor.Lock;
  PrintState(myDoor.GetState);
end;

procedure TForm1.btnOpenClick(Sender: TObject);
begin
  myDoor.Open;
  PrintState(myDoor.GetState);
end;

procedure TForm1.btnUnlockClick(Sender: TObject);
begin
  myDoor.Unlock;
  PrintState(myDoor.GetState);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  myDoor := TDoor.Create;
  PrintState(myDoor.GetState);
end;

procedure TForm1.PrintState(input: Istate);
begin
  memLog.Lines.Add('Current state: ' + TObject(input).ClassName);
end;

end.
