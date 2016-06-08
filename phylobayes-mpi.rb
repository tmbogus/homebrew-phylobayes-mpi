class PhylobayesMpi < Formula
  desc "PhyloBayes MPI version"
  homepage "http://megasun.bch.umontreal.ca/People/lartillot/www/"
  url "http://megasun.bch.umontreal.ca/People/lartillot/www/pb_mpi1.7a.tar.gz"
  version "1.7a"
  sha256 "8e744b441bff4aaa3359174f409903bc9d4df23bdc2bd2e69fd80df43b61e5d4"

  conflicts_with "phylobayes", :because => "tracecomp and bpcomp are present in both packages"
  depends_on "open-mpi"

  def install
    system "make -C sources clean"
    system "make -C sources all"
    bin.install "data/bpcomp"
    bin.install "data/pb_mpi"
    bin.install "data/readpb_mpi"
    bin.install "data/tracecomp"
  end

end
