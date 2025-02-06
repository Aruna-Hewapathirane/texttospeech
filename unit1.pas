unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Process;

type
  { TForm1 }
  TForm1 = class(TForm)
    BtnSpeak: TButton;
    EditText: TEdit;

    procedure BtnSpeakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BtnSpeakClick(Sender: TObject);
var
  TextToSpeak: string;
  Outstr:string;

begin
  // Get the text from the EditText component
  TextToSpeak := EditText.Text;

  // Ensure there is text to speak
  if TextToSpeak <> '' then
      RunCommand('espeak', [TextToSpeak], Outstr)
  else
    ShowMessage('Please enter some text to speak.');
    writeln(outstr);

end;

end.

