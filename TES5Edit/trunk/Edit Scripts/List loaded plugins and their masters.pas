(*
  Example on how to access the current list of loaded plugins.
  Lists plugins and their masters.
*)
unit UserScript;

var
  DoPrepend: boolean;
  s: string;
  
function Initialize: integer;
var
  i, j: integer;
  plugin, master: IInterface;
begin
  for i := 0 to FileCount - 1 do begin
    plugin := FileByIndex(i);
    AddMessage(Name(plugin)); // or FileName()
    for j := 0 to MasterCount(plugin) - 1 do begin
      master := MasterByIndex(plugin, j);
      AddMessage('      ' + Name(master));
    end;
  end;

  // nothing else to do
  Result := 1;
end;

end.