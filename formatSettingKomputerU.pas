unit formatSettingKomputerU;

interface

uses
  SysUtils, Winapi.Windows;
function ambilLocalFormat : TFormatSettings;

implementation

function ambilLocalFormat : TFormatSettings;
var
  formatSettings : TFormatSettings;
begin
  // Furnish the locale format settings record
  GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, formatSettings);
  formatSettings.DecimalSeparator := '.';
  Result := formatSettings;
  // And use it in the thread safe form of CurrToStrF
end;
end.
