[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared produktai = let
  Source = Table.FromRows(Json.Document(Binary.Decompress(Binary.FromText("i45W8k8qzc/JTMxU0lEyNFCK1YlW8i7KTCw9uvDI9GKgmClYyCkxDwhBaiyUYmMB", BinaryEncoding.Base64), Compression.Deflate)), let _t = ((type nullable text) meta [Serialized.Text = true]) in type table [produktas = _t, kiekis = _t]),
  #"Changed column type" = Table.TransformColumnTypes(Source, {{"produktas", type text}, {"kiekis", Int64.Type}})
in
  #"Changed column type";
