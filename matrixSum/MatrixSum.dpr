program MatrixSum;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type
  multDimension = array[0..3, 0..3] of integer;  //type

var
  matrixA: multDimension;
  matrixB: multDimension;
  matrixC: multDimension;// result;

  i: Integer;
  j: Integer;

//procedure does not return values
procedure Matrix(var matrixA: multDimension; var matrixB: multDimension; var matrixC: multDimension);
  var
    Result: Integer;
    i: Integer;
    j: Integer;

  begin
     Result := 0;
     for i := 0 to 2 do

        for j := 0 to 2 do

            matrixC[i,j] := matrixA[i,j] + matrixB[i, j];

  end;



begin
  try
    for i := 0 to 2 do
      for j := 0 to 2 do
        begin
           matrixA[i, j] := 1;
           matrixB[i, j] := 2;
        end;


    Matrix(matrixA, matrixB, matrixC);

    for i := 0 to 2 do
      for j := 0 to 2 do
        Write(' ', matrixC[i, j]);
      writeln;


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
    readln
end.
