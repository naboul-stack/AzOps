﻿Set-PSFConfig -Module AzOps -Name Core.AutoInitialize -Value $false -Initialize -Validation bool -Description '-'
Set-PSFConfig -Module AzOps -Name Core.DefaultDeploymentRegion -Value northeurope -Initialize -Validation string -Description 'Default deployment region for state deployments (ARM region, not region where a resource is deployed)'
Set-PSFConfig -Module AzOps -Name Core.EnrollmentAccountPrincipalName -Value '' -Initialize -Validation string -Description '-'
Set-PSFConfig -Module AzOps -Name Core.ExcludedSubOffer -Value 'AzurePass_2014-09-01', 'FreeTrial_2014-09-01', 'AAD_2015-09-01' -Initialize -Validation stringarray -Description 'Excluded QuotaID'
Set-PSFConfig -Module AzOps -Name Core.ExcludedSubState -Value 'Disabled', 'Deleted', 'Warned', 'Expired' -Initialize -Validation stringarray -Description 'Excluded subscription states'
Set-PSFConfig -Module AzOps -Name Core.ExportRawTemplate -Value $false -Initialize -Validation bool -Description '-'
Set-PSFConfig -Module AzOps -Name Core.GeneralizeTemplates -Value $false -Initialize -Validation bool -Description 'Invalidates cache and ensures that Management Groups and Subscriptions are re-discovered'
Set-PSFConfig -Module AzOps -Name Core.IgnoreContextCheck -Value $false -Initialize -Validation bool -Description 'If set to $true, skip AAD tenant validation == 1'
Set-PSFConfig -Module AzOps -Name Core.InvalidateCache -Value $true -Initialize -Validation bool -Description 'Invalidates cache and ensures that Management Groups and Subscriptions are re-discovered'
Set-PSFConfig -Module AzOps -Name Core.MainTemplate -Value "$script:ModuleRoot\data\template\template.json" -Initialize -Validation string -Description 'Main template json'
Set-PSFConfig -Module AzOps -Name Core.TemplateParameterFileSuffix -Value '.parameters.json' -Initialize -Validation string -Description 'parameter file suffix to look for'
Set-PSFConfig -Module AzOps -Name Core.OfferType -Value 'MS-AZR-0017P' -Initialize -Validation string -Description '-'
Set-PSFConfig -Module AzOps -Name Core.PartialMgDiscoveryRoot -Value @() -Initialize -Validation stringarray -Description 'Used in combination with AZOPS_SUPPORT_PARTIAL_MG_DISCOVERY, example value: "Contoso","Tailspin","Management"'
Set-PSFConfig -Module AzOps -Name Core.SkipPolicy -Value $false -Initialize -Validation bool -Description '-'
Set-PSFConfig -Module AzOps -Name Core.SkipResourceGroup -Value $true -Initialize -Validation bool -Description '-'
Set-PSFConfig -Module AzOps -Name Core.SkipRole -Value $false -Initialize -Validation bool -Description '-'
Set-PSFConfig -Module AzOps -Name Core.State -Value (Join-Path $pwd -ChildPath "azops") -Initialize -Validation string -Description 'Folder to store AzOpsState artefact'
Set-PSFConfig -Module AzOps -Name Core.StateConfig -Value "$script:ModuleRoot\data\stateconfig.json" -Initialize -Validation string -Description 'Configuration file for resource serialization'
Set-PSFConfig -Module AzOps -Name Core.SupportPartialMgDiscovery -Value $false -Initialize -Validation bool -Description 'Enable partial discovery'
Set-PSFConfig -Module AzOps -Name Core.ThrottleLimit -Value 10 -Initialize -Validation integer -Description 'Throttle limit used in Foreach-Object -Parallel for resource/subscription discovery'
