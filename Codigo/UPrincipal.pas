unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Menus,
  OleCtrls, SHDocVw,
  jpeg;

type
  TPrincipal = class(TForm)
    Mail: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    PoupUP: TTimer;
    Aviso: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    Data: TDBText;
    BitBtn13: TBitBtn;
    GP1: TGroupBox;
    AvisosPoP: TCheckBox;
    MainMenu1: TMainMenu;
    Cadastro: TMenuItem;
    Funcionarios1: TMenuItem;
    Residentes1: TMenuItem;
    Responsaveis1: TMenuItem;
    Email1: TMenuItem;
    EnviodeEmail1: TMenuItem;
    SMTP: TMenuItem;
    Conta: TMenuItem;
    Conta1: TMenuItem;
    Despesas1: TMenuItem;
    Parceiros1: TMenuItem;
    Profissionais1: TMenuItem;
    Voluntarios1: TMenuItem;
    Avisos: TMenuItem;
    Avisos1: TMenuItem;
    arefas1: TMenuItem;
    Idosos1: TMenuItem;
    Saude: TMenuItem;
    Saude1: TMenuItem;
    incidentes1: TMenuItem;
    Button1: TButton;
    UNome: TLabel;
    Image1: TImage;
    Rela: TMenuItem;
    Check: TTimer;
    procedure MailClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PoupUPTimer(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Funcionarios1Click(Sender: TObject);
    procedure Avisos1Click(Sender: TObject);
    procedure Conta1Click(Sender: TObject);
    procedure Despesas1Click(Sender: TObject);
    procedure incidentes1Click(Sender: TObject);
    procedure Responsaveis1Click(Sender: TObject);
    procedure EnviodeEmail1Click(Sender: TObject);
    procedure Parceiros1Click(Sender: TObject);
    procedure Profissionais1Click(Sender: TObject);
    procedure Idosos1Click(Sender: TObject);
    procedure Saude1Click(Sender: TObject);
    procedure arefas1Click(Sender: TObject);
    procedure Voluntarios1Click(Sender: TObject);
    procedure SMTPClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

uses UEmail, UVoluntarios,  UModulo,  USMTP, UIdoso,
  UResponsavel, UCadastroAvisos, UDespesas, UFuncionario, UContas,
  UIncidentes, UParceiros, UProfissionais, USaude, UTarefa,
  UAv,
  ULogin;

{$R *.dfm}

procedure TPrincipal.MailClick(Sender: TObject);
begin
Email.Visible := True;
end;

procedure TPrincipal.BitBtn12Click(Sender: TObject);
begin
Voluntarios.visible := true;
end;

procedure TPrincipal.BitBtn1Click(Sender: TObject);
begin
CadastroAvisos.Visible := True;
end;

procedure TPrincipal.PoupUPTimer(Sender: TObject);
  //var I: Integer;
begin
{ for I := 0 to 10 do
  begin
      Modulo.cdsAvisos.Next;
      exit;
  end;
    for I := 0 to 10 do
  begin
    Modulo.cdsAvisos.Last;
   exit;
   end;}
   if AvisosPop.Checked = true
     then
     begin
           Aviso.Visible := True;
      end
      Else
       Begin
      Aviso.Visible := False;
      End;
  end;

procedure TPrincipal.BitBtn13Click(Sender: TObject);
begin
SMTP.Visible := True;
end;

procedure TPrincipal.BitBtn9Click(Sender: TObject);
begin
Idoso.Visible := True;
end;

procedure TPrincipal.BitBtn6Click(Sender: TObject);
begin
Responsavel.Visible := True;
end;

procedure TPrincipal.BitBtn3Click(Sender: TObject);
begin
Despesas.Visible := True;
end;

procedure TPrincipal.BitBtn2Click(Sender: TObject);
begin
Contas.Visible := True;
end;

procedure TPrincipal.BitBtn4Click(Sender: TObject);
begin
Funcionario.Visible := True;
end;

procedure TPrincipal.BitBtn5Click(Sender: TObject);
begin
Incidentes.Visible := True;
end;

procedure TPrincipal.BitBtn7Click(Sender: TObject);
begin
Parceiros.Visible := True;
end;

procedure TPrincipal.BitBtn8Click(Sender: TObject);
begin
Profissionais.Visible := True;
end;

procedure TPrincipal.BitBtn10Click(Sender: TObject);
begin
Saudes.Visible := True;
end;

procedure TPrincipal.BitBtn11Click(Sender: TObject);
begin
Tarefa.Visible := True;
end;

procedure TPrincipal.Funcionarios1Click(Sender: TObject);
begin
Funcionario.Visible := True;
end;

procedure TPrincipal.Avisos1Click(Sender: TObject);
begin
CadastroAvisos.Visible := True;
end;

procedure TPrincipal.Conta1Click(Sender: TObject);
begin
Contas.Visible := True;
end;

procedure TPrincipal.Despesas1Click(Sender: TObject);
begin
Despesas.Visible := True;
end;

procedure TPrincipal.incidentes1Click(Sender: TObject);
begin
Incidentes.Visible := True;
end;

procedure TPrincipal.Responsaveis1Click(Sender: TObject);
begin
Responsavel.Visible := True;
end;

procedure TPrincipal.EnviodeEmail1Click(Sender: TObject);
begin
Email.Visible := True;
end;

procedure TPrincipal.Parceiros1Click(Sender: TObject);
begin
Parceiros.Visible := True;
end;

procedure TPrincipal.Profissionais1Click(Sender: TObject);
begin
Profissionais.Visible := True;
end;

procedure TPrincipal.Idosos1Click(Sender: TObject);
begin
Idoso.Visible := True;
end;

procedure TPrincipal.Saude1Click(Sender: TObject);
begin
Saude.Visible := True;
end;

procedure TPrincipal.arefas1Click(Sender: TObject);
begin
Tarefa.Visible := True;
end;

procedure TPrincipal.Voluntarios1Click(Sender: TObject);
begin
Voluntarios.visible := true;
end;

procedure TPrincipal.SMTPClick(Sender: TObject);
begin
SMTP.Visible := True;
end;

procedure TPrincipal.Button1Click(Sender: TObject);
begin
Avaliacao.Visible := True;
end;

procedure TPrincipal.Button2Click(Sender: TObject);
begin
Login.visible := true;
end;

procedure TPrincipal.FormShow(Sender: TObject);
begin
     If TLogin.Create(Self).ShowModal = mrCancel
     Then Begin
        Application.Terminate;
        Exit;
        End;
end;

procedure TPrincipal.CheckTimer(Sender: TObject);
begin
    If (ULogin.User = 'admin')
             Then Begin
                  Cadastro.Visible := true;
                  Conta.Visible := true;
                  Rela.Visible := true;
                  SMTP.Visible := true;
                  CadastroAvisos.btnEditar.Enabled := true;
                  CadastroAvisos.btnInserir.Enabled := true;
                  CadastroAvisos.btnCancelar.Enabled := true;
                  CadastroAvisos.btnDeletar.Enabled := true;
                  CadastroAvisos.btnGravar.Enabled := true;
                  Tarefa.btnEditar.Enabled := true;
                  Tarefa.btnInserir.Enabled := true;
                  Tarefa.btnCancelar.Enabled := true;
                  Tarefa.btnDeletar.Enabled := true;
                  Tarefa.btnGravar.Enabled := true;
                    Exit;
                  End;
end;

end.