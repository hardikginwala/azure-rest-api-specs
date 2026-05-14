import "@typespec/http";
import "@typespec/rest";
import "@typespec/versioning";
import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";
import "./shared-types.tsp";

using Azure.ResourceManager;

namespace Microsoft.Compute;

alias SubResource = BulkActionsShared.SubResource;
alias KeyVaultSecretReference = BulkActionsShared.KeyVaultSecretReference;
alias ResourceIdentityType = BulkActionsShared.ResourceIdentityType;
alias UserAssignedIdentitiesValue = BulkActionsShared.UserAssignedIdentitiesValue;
alias VirtualMachineIdentity = BulkActionsShared.VirtualMachineIdentity;
alias ZonePlacementPolicyType = BulkActionsShared.ZonePlacementPolicyType;
alias Placement = BulkActionsShared.Placement;
alias OSProfileProvisioningData = BulkActionsShared.OSProfileProvisioningData;
alias VirtualMachineReimageParameters = BulkActionsShared.VirtualMachineReimageParameters;
