unit uMailSMTP;

interface
  uses Dialogs, SysUtils, Variants, dateutils, IdMessage, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, idSMTP, IdServerIOHandler, idSSL, idSSLOpenSSL,
  IdAttachment, IdMessageParts, idEmailAddress, IdAttachmentFile, Forms;
type
	Email = class
		messageRecipient:string;
		messageCC:string;
		messageSubject:string;
		messageFromAddress:string;
		messageBodyAdd:string;
		messageAttachment:string;
		function sendEmail():Boolean;
end;

implementation

function Email.sendEmail: Boolean;
var
	SMTPCon:TIdSMTP;
	SMTPMsg:TIdMessage;
	SMTPIOHandler:TIdSSLIOHandlerSocketOpenSSL;
	SMTPAttachment:TIdAttachment;

begin
	SMTPCon := TIdSMTP.Create();
	SMTPMsg := TIdMessage.Create();
	SMTPIOHandler := TIdSSLIOHandlerSocketOpenSSL.Create();
	//DataModule1.qEmail.Open;
	//DataModule1.qEmail.Execute;

	SMTPCon.Host := 'smtp.gmail.com';
	SMTPCon.Port := 25;
	SMTPCon.Username := 'matheusclaudin@gmail.com';
	SMTPCon.Password := 'ma51893776the';
	SMTPCon.IOHandler := SMTPIOHandler;
	SMTPCon.UseTLS := utUseExplicitTLS;

	with SMTPIOHandler do
	begin
		Destination := 'smtp.gmail.com';
		Host := '25';

		SSLOptions.Method := sslvTLSv1;
		SSLOptions.Mode := sslmUnassigned;
		SSLOptions.VerifyMode := [];
		SSLOptions.VerifyDepth := 0;
	end;

	SMTPMsg.Recipients.EMailAddresses := messageRecipient;
	if(messageCC <> '') then 
		SMTPMsg.BccList.EMailAddresses := messageCC;

	SMTPMsg.Subject := messageSubject;
	SMTPMsg.From.Address := messageFromAddress;
	SMTPMsg.Body.Add(messageBodyAdd);

	if FileExists(messageAttachment) then 
		SMTPAttachment := TIdAttachmentFile.Create(SMTPMsg.MessageParts, messageAttachment);

	try
		SMTPCon.Connect();
		SMTPCon.Send(SMTPMsg);
		SMTPCon.Disconnect();
		SMTPMsg.Clear;

		//DataModule1.qEmail.Close;
		ShowMessage('Email enviado com sucesso para ' + messageRecipient);
		SMTPCon.Free;
		SMTPIOHandler.Free;
		Result := True;
	except
		ShowMessage('Erro');
		//DataModule1.qEmail.Close;
		SMTPCon.Free;
		SMTPIOHandler.Free;
		Result := False;
	end;
end;

end.
