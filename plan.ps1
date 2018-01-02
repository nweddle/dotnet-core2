$pkg_name="dotnet-core2"
$pkg_origin="nweddle"
$pkg_version="2.0.4"
$pkg_license=('MIT')
$pkg_upstream_url="https://www.microsoft.com/net/core"
$pkg_description=".NET Core is a blazing fast, lightweight and modular platform
  for creating web applications and services that run on Windows,
  Linux and Mac."
$pkg_maintainer="Nathan Weddle <nweddle@chef.io>"
$pkg_source="https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$pkg_version/dotnet-runtime-$pkg_version-win-x64.zip"
$pkg_shasum="31ed5b00135d7f9c538877b80f97a3bd275d50b0c09666d56090441099734c83"
$pkg_filename="dotnet-runtime-$pkg_version-win-x64.zip"
$pkg_bin_dirs=@("bin")

function Invoke-Unpack {
  Expand-Archive -Path "$HAB_CACHE_SRC_PATH/$pkg_filename" -DestinationPath "$HAB_CACHE_SRC_PATH/$pkg_dirname"
}

function Invoke-Install {
  Copy-Item * "$pkg_prefix/bin" -Recurse -Force
}
