#!/usr/bin/env pwsh
[CmdletBinding()]
param (
    [ValidateNotNullOrEmpty()]
    [string]
    $ConsulTemplateVersion = '0.25.1'
)
begin {
    Push-Location $PSScriptRoot
}
process {

    docker build --build-arg CONSUL_TMPL_VERSION=$ConsulTemplateVersion -t jlouros/consul-template:$ConsulTemplateVersion-wincore -f ./Dockerfile .

    docker push jlouros/consul-template:$ConsulTemplateVersion-wincore

}
end {
    Pop-Location
}
