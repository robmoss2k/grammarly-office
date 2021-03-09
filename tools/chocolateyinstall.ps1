$ErrorActionPreference = 'Stop'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://download-office.grammarly.com/latest/GrammarlyAddInSetup.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url            = $url
  softwareName   = 'Grammarly for Microsoft® Office Suite*'
  checksum       = 'E97C3B7D7403564009C4C45E7811DF9917E20CB744AED47DC401822F79E2A1C1'
  checksumType   = 'sha256'
  silentArgs     = "/fastforallmode /silent"
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
