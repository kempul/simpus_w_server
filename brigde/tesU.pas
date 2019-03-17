unit tesU;

interface
  uses classes;
   type
   tipeClass = class
     private
     Ftes : string;
     FtsHeader : TStringList;
     public
     constructor create;
     destructor destroy;
     property tes: string  read Ftes write Ftes;
     property tsHeader: TStringList read FtsHeader write FtsHeader;
   end;
implementation

{ tipeClass }

constructor tipeClass.create;
begin
  Ftes := 'awal';
  FtsHeader := TStringList.Create;
  FtsHeader.Add('awal tsHeader');
end;

destructor tipeClass.destroy;
begin
  FtsHeader.Free;
  inherited;
end;

end.
