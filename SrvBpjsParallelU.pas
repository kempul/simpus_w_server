unit SrvBpjsParallelU;

interface
  uses System.Classes, OtlParallel;

  type
  SrvBpjsParallel = class
  public
  procedure bpjsAllPost(idxstr : string);
  procedure bpjsAllPostNonParallel(idxstr : string);
  procedure bpjsPendaftaranPost(idxstr : string);
  procedure bpjsPendaftaranDel(idxstr : string);
  procedure bpjsKunjunganPost(idxstr : string);
  procedure bpjsObatPost(idxstr : string);
  procedure bpjsObatPostTunggal(id : string);
  procedure bpjsObatDel(id : string);
  procedure bpjsTindakanPost(idxstr : string);
  procedure bpjsTindakanDel(id : string);
  constructor Create;
  destructor Destroy;
  end;

implementation
      uses brPendaftaranU, brKunjunganU, brObatU, brTindakanU;
{ SrvParallel }

procedure SrvBpjsParallel.bpjsAllPost(idxstr: string);
begin
      Parallel.Async(
   procedure
   var
      srvDaftar : brPendaftaran;
      srvKunjungan : brKunjungan;
      srvObat : brObat;
      srvTindakan : brTindakan;
   begin
      // daftar
      srvDaftar := brPendaftaran.Create;
      try
        srvDaftar.postPendaftaran(idxstr);
      finally
        srvDaftar.Free;

        //kunjungan
        srvKunjungan := brKunjungan.Create;
        try
          srvKunjungan.postKunjungan(idxstr);

        finally
          srvKunjungan.Free;
          //obat
          srvObat := brObat.Create;
          try
            srvObat.postObat(idxstr);
          finally
            srvObat.Free;
            //tindakan
            srvTindakan := brTindakan.Create;
            try
              srvTindakan.postTindakan(idxstr);
            finally
              srvTindakan.Free;
            end;
          end;
        end;

      end;

   end
   );

end;

procedure SrvBpjsParallel.bpjsAllPostNonParallel(idxstr: string);
   var
      srvDaftar : brPendaftaran;
      srvKunjungan : brKunjungan;
      srvObat : brObat;
      srvTindakan : brTindakan;

begin
      // daftar
      srvDaftar := brPendaftaran.Create;
      try
        srvDaftar.postPendaftaran(idxstr);
      finally
        srvDaftar.Free;

        //kunjungan
        srvKunjungan := brKunjungan.Create;
        try
          srvKunjungan.postKunjungan(idxstr);

        finally
          srvKunjungan.Free;
          //obat
          srvObat := brObat.Create;
          try
            srvObat.postObat(idxstr);
          finally
            srvObat.Free;
            //tindakan
            srvTindakan := brTindakan.Create;
            try
              srvTindakan.postTindakan(idxstr);
            finally
              srvTindakan.Free;
            end;
          end;
        end;

      end;
end;

procedure SrvBpjsParallel.bpjsKunjunganPost(idxstr: string);
begin
      Parallel.Async(
   procedure
   var srv : brKunjungan;
   begin
      srv := brKunjungan.Create;
      try
      srv.postKunjungan(idxstr);
      finally
        srv.Free;
      end;
   end
   );
end;


procedure SrvBpjsParallel.bpjsObatDel(id: string);
begin
      Parallel.Async(
   procedure
   var srv : brObat;
   begin
      srv := brObat.Create;
      try
      srv.delObat(id);
      finally
        srv.Free;
      end;
   end
   );
end;

procedure SrvBpjsParallel.bpjsObatPost(idxstr: string);
begin
      Parallel.Async(
   procedure
   var srv : brObat;
   begin
      srv := brObat.Create;
      try
      srv.postObat(idxstr);
      finally
        srv.Free;
      end;
   end
   );
end;

procedure SrvBpjsParallel.bpjsObatPostTunggal(id: string);
begin
      Parallel.Async(
   procedure
   var srv : brObat;
   begin
      srv := brObat.Create;
      try
      srv.postObatTunggal(id);
      finally
        srv.Free;
      end;
   end
   );
end;

procedure SrvBpjsParallel.bpjsPendaftaranDel(idxstr: string);
begin
      Parallel.Async(
   procedure
   var srv : brPendaftaran;
   begin
      srv := brPendaftaran.Create;
      try
      srv.delPendaftaranX(idxstr);
      finally
        srv.Free;
      end;
   end
   );
end;

procedure SrvBpjsParallel.bpjsPendaftaranPost(idxstr: string);
begin
      Parallel.Async(
   procedure
   var srv : brPendaftaran;
   begin
      srv := brPendaftaran.Create;
      try
      srv.postPendaftaran(idxstr);
      finally
        srv.Free;
      end;
   end
   );
end;

procedure SrvBpjsParallel.bpjsTindakanDel(id: string);
begin
      Parallel.Async(
   procedure
   var srv : brTindakan;
   begin
      srv := brTindakan.Create;
      try
      srv.delTindakan(id);
      finally
        srv.Free;
      end;
   end
   );
end;

procedure SrvBpjsParallel.bpjsTindakanPost(idxstr: string);
begin
      Parallel.Async(
   procedure
   var srv : brTindakan;
   begin
      srv := brTindakan.Create;
      try
      srv.postTindakan(idxstr);
      finally
        srv.Free;
      end;
   end
   );
end;

constructor SrvBpjsParallel.Create;
begin
inherited;
end;

destructor SrvBpjsParallel.Destroy;
begin
inherited;
end;

end.
