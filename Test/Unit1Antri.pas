unit Unit1Antri;

interface
uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TAntriTest = class(TObject) 
  public
  end;

implementation


initialization
  TDUnitX.RegisterTestFixture(TAntriTest);
end.
