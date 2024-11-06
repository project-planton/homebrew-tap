class Cli < Formula
  version "v0.0.18"
  desc "ProjectPlanton: OpenSourceMulti-Cloud Deployment Framework"
  homepage "https://project-planton.org"
  os_arch = `arch`
  arch = (os_arch.include? "arm64")? "arm64" : "amd64"
  url "https://storage.googleapis.com/project-planton-downloads/cli/#{version}/project-planton-#{version}-#{arch}"
  def install
    os_arch = `arch`
    arch = (os_arch.include? "arm64")? "arm64" : "amd64"
    binary_name="project-planton-#{version}-#{arch}"
    bin.install "#{binary_name}"
    mv bin/"#{binary_name}", bin/"project-planton"
  end
end
