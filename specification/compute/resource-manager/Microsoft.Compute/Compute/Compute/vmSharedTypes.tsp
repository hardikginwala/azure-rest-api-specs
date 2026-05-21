import "@typespec/versioning";
import "@azure-tools/typespec-azure-resource-manager";

using Versioning;
using Azure.ResourceManager;

namespace Compute;

/**
 * Specifies the size of the virtual machine. The enum data type is currently deprecated and will be removed by December 23rd 2023. The recommended way to get the list of available sizes is using these APIs: [List all available virtual machine sizes in an availability set](https://docs.microsoft.com/rest/api/compute/availabilitysets/listavailablesizes), [List all available virtual machine sizes in a region]( https://docs.microsoft.com/rest/api/compute/resourceskus/list), [List all available virtual machine sizes for resizing](https://docs.microsoft.com/rest/api/compute/virtualmachines/listavailablesizes). For more information about virtual machine sizes, see [Sizes for virtual machines](https://docs.microsoft.com/azure/virtual-machines/sizes). The available VM sizes depend on region and availability set.
 */
union VirtualMachineSizeTypes {
  string,
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Basic_A0: "Basic_A0",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Basic_A1: "Basic_A1",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Basic_A2: "Basic_A2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Basic_A3: "Basic_A3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Basic_A4: "Basic_A4",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A0: "Standard_A0",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A1: "Standard_A1",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A2: "Standard_A2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A3: "Standard_A3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A4: "Standard_A4",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A5: "Standard_A5",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A6: "Standard_A6",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A7: "Standard_A7",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A8: "Standard_A8",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A9: "Standard_A9",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A10: "Standard_A10",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A11: "Standard_A11",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A1_v2: "Standard_A1_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A2_v2: "Standard_A2_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A4_v2: "Standard_A4_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A8_v2: "Standard_A8_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A2m_v2: "Standard_A2m_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A4m_v2: "Standard_A4m_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_A8m_v2: "Standard_A8m_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_B1s: "Standard_B1s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_B1ms: "Standard_B1ms",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_B2s: "Standard_B2s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_B2ms: "Standard_B2ms",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_B4ms: "Standard_B4ms",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_B8ms: "Standard_B8ms",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D1: "Standard_D1",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D2: "Standard_D2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D3: "Standard_D3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D4: "Standard_D4",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D11: "Standard_D11",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D12: "Standard_D12",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D13: "Standard_D13",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D14: "Standard_D14",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D1_v2: "Standard_D1_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D2_v2: "Standard_D2_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D3_v2: "Standard_D3_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D4_v2: "Standard_D4_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D5_v2: "Standard_D5_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D2_v3: "Standard_D2_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D4_v3: "Standard_D4_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D8_v3: "Standard_D8_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D16_v3: "Standard_D16_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D32_v3: "Standard_D32_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D64_v3: "Standard_D64_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D2s_v3: "Standard_D2s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D4s_v3: "Standard_D4s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D8s_v3: "Standard_D8s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D16s_v3: "Standard_D16s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D32s_v3: "Standard_D32s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D64s_v3: "Standard_D64s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D11_v2: "Standard_D11_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D12_v2: "Standard_D12_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D13_v2: "Standard_D13_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D14_v2: "Standard_D14_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_D15_v2: "Standard_D15_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS1: "Standard_DS1",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS2: "Standard_DS2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS3: "Standard_DS3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS4: "Standard_DS4",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS11: "Standard_DS11",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS12: "Standard_DS12",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS13: "Standard_DS13",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS14: "Standard_DS14",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS1_v2: "Standard_DS1_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS2_v2: "Standard_DS2_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS3_v2: "Standard_DS3_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS4_v2: "Standard_DS4_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS5_v2: "Standard_DS5_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS11_v2: "Standard_DS11_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS12_v2: "Standard_DS12_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS13_v2: "Standard_DS13_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS14_v2: "Standard_DS14_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_DS15_v2: "Standard_DS15_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_DS13-4_v2`: "Standard_DS13-4_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_DS13-2_v2`: "Standard_DS13-2_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_DS14-8_v2`: "Standard_DS14-8_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_DS14-4_v2`: "Standard_DS14-4_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_E2_v3: "Standard_E2_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_E4_v3: "Standard_E4_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_E8_v3: "Standard_E8_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_E16_v3: "Standard_E16_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_E32_v3: "Standard_E32_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_E64_v3: "Standard_E64_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_E2s_v3: "Standard_E2s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_E4s_v3: "Standard_E4s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_E8s_v3: "Standard_E8s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_E16s_v3: "Standard_E16s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_E32s_v3: "Standard_E32s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_E64s_v3: "Standard_E64s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_E32-16_v3`: "Standard_E32-16_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_E32-8s_v3`: "Standard_E32-8s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_E64-32s_v3`: "Standard_E64-32s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_E64-16s_v3`: "Standard_E64-16s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F1: "Standard_F1",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F2: "Standard_F2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F4: "Standard_F4",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F8: "Standard_F8",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F16: "Standard_F16",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F1s: "Standard_F1s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F2s: "Standard_F2s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F4s: "Standard_F4s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F8s: "Standard_F8s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F16s: "Standard_F16s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F2s_v2: "Standard_F2s_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F4s_v2: "Standard_F4s_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F8s_v2: "Standard_F8s_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F16s_v2: "Standard_F16s_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F32s_v2: "Standard_F32s_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F64s_v2: "Standard_F64s_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_F72s_v2: "Standard_F72s_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_G1: "Standard_G1",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_G2: "Standard_G2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_G3: "Standard_G3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_G4: "Standard_G4",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_G5: "Standard_G5",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_GS1: "Standard_GS1",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_GS2: "Standard_GS2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_GS3: "Standard_GS3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_GS4: "Standard_GS4",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_GS5: "Standard_GS5",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_GS4-8`: "Standard_GS4-8",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_GS4-4`: "Standard_GS4-4",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_GS5-16`: "Standard_GS5-16",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_GS5-8`: "Standard_GS5-8",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_H8: "Standard_H8",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_H16: "Standard_H16",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_H8m: "Standard_H8m",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_H16m: "Standard_H16m",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_H16r: "Standard_H16r",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_H16mr: "Standard_H16mr",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_L4s: "Standard_L4s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_L8s: "Standard_L8s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_L16s: "Standard_L16s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_L32s: "Standard_L32s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_M64s: "Standard_M64s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_M64ms: "Standard_M64ms",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_M128s: "Standard_M128s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_M128ms: "Standard_M128ms",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_M64-32ms`: "Standard_M64-32ms",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_M64-16ms`: "Standard_M64-16ms",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_M128-64ms`: "Standard_M128-64ms",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  `Standard_M128-32ms`: "Standard_M128-32ms",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NC6: "Standard_NC6",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NC12: "Standard_NC12",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NC24: "Standard_NC24",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NC24r: "Standard_NC24r",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NC6s_v2: "Standard_NC6s_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NC12s_v2: "Standard_NC12s_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NC24s_v2: "Standard_NC24s_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NC24rs_v2: "Standard_NC24rs_v2",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NC6s_v3: "Standard_NC6s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NC12s_v3: "Standard_NC12s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NC24s_v3: "Standard_NC24s_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NC24rs_v3: "Standard_NC24rs_v3",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_ND6s: "Standard_ND6s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_ND12s: "Standard_ND12s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_ND24s: "Standard_ND24s",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_ND24rs: "Standard_ND24rs",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NV6: "Standard_NV6",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NV12: "Standard_NV12",
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Standard_NV24: "Standard_NV24",
}

/**
 * Specifies the storage fault domain alignment type for the disk.
 */
@added(Versions.v2025_11_01)
union StorageFaultDomainAlignmentType {
  string,

  /** Disk Storage Fault Domains are mapped to Compute Fault Domains. Deployment fails if disk does not support enough Fault Domains. */
  Aligned: "Aligned",

  /** Attempt to map Storage Fault Domains to Compute Fault Domains. Disks are unaligned if disk does not support enough Fault Domains. */
  BestEffortAligned: "BestEffortAligned",
}

/**
 * The component name. Currently, the only allowable value is Microsoft-Windows-Shell-Setup.
 */
#suppress "@azure-tools/typespec-azure-core/no-closed-literal-union"
union ComponentNames {
  #suppress "@azure-tools/typespec-azure-core/documentation-required"
  "Microsoft-Windows-Shell-Setup",
}

#suppress "@azure-tools/typespec-azure-core/documentation-required"
#suppress "@azure-tools/typespec-azure-core/no-closed-literal-union"
union PassNames {
  #suppress "@azure-tools/typespec-azure-core/documentation-required"
  "OobeSystem",
}

/**
 * Specifies the policy for resource's placement in availability zone. Possible values are: **Any** (used for Virtual Machines), **Auto** (used for Virtual Machine Scale Sets) - An availability zone will be automatically picked by system as part of resource creation.
 */
union ZonePlacementPolicyType {
  string,
  #suppress "@azure-tools/typespec-azure-core/documentation-required" "For backward compatibility"
  Any: "Any",

  /**
   * Automatic zone placement in a Virtual Machine Scale Set.
   */
  @added(Versions.v2025_04_01)
  Auto: "Auto",
}

/**
 * Parameters for Reimaging Virtual Machine. NOTE: Virtual Machine OS disk will always be reimaged
 */
model VirtualMachineReimageParameters {
  /**
   * Specifies whether to reimage temp disk. Default value: false. Note: This temp disk reimage parameter is only supported for VM/VMSS with Ephemeral OS disk.
   */
  tempDisk?: boolean;

  /**
   * Specifies in decimal number, the version the OS disk should be reimaged to. If exact version is not provided, the OS disk is reimaged to the existing version of OS Disk.
   */
  exactVersion?: string;

  /**
   * Specifies information required for reimaging the non-ephemeral OS disk.
   */
  osProfile?: OSProfileProvisioningData;
}

/**
 * Additional parameters for Reimaging Non-Ephemeral Virtual Machine.
 */
model OSProfileProvisioningData {
  @doc("Specifies the password of the administrator account. <br><br> **Minimum-length (Windows):** 8 characters <br><br> **Minimum-length (Linux):** 6 characters <br><br> **Max-length (Windows):** 123 characters <br><br> **Max-length (Linux):** 72 characters <br><br> **Complexity requirements:** 3 out of 4 conditions below need to be fulfilled <br> Has lower characters <br>Has upper characters <br> Has a digit <br> Has a special character (Regex match [\\W_]) <br><br> **Disallowed values:** \"abc@123\", \"P@$$w0rd\", \"P@ssw0rd\", \"P@ssword123\", \"Pa$$word\", \"pass@word1\", \"Password!\", \"Password1\", \"Password22\", \"iloveyou!\" <br><br> For resetting the password, see [How to reset the Remote Desktop service or its login password in a Windows VM](https://docs.microsoft.com/troubleshoot/azure/virtual-machines/reset-rdp) <br><br> For resetting root password, see [Manage users, SSH, and check or repair disks on Azure Linux VMs using the VMAccess Extension](https://docs.microsoft.com/troubleshoot/azure/virtual-machines/troubleshoot-ssh-connection)")
  @secret
  adminPassword?: string;

  /**
   * Specifies a base-64 encoded string of custom data. The base-64 encoded string is decoded to a binary array that is saved as a file on the Virtual Machine. The maximum length of the binary array is 65535 bytes. **Note: Do not pass any secrets or passwords in customData property.** This property cannot be updated after the VM is created. The property customData is passed to the VM to be saved as a file, for more information see [Custom Data on Azure VMs](https://azure.microsoft.com/blog/custom-data-and-cloud-init-on-windows-azure/). If using cloud-init for your Linux VM, see [Using cloud-init to customize a Linux VM during creation](https://docs.microsoft.com/azure/virtual-machines/linux/using-cloud-init).
   */
  customData?: string;
}

/**
 * Identity for the virtual machine.
 */
model VirtualMachineIdentity {
  /**
   * The principal id of virtual machine identity. This property will only be provided for a system assigned identity.
   */
  @visibility(Lifecycle.Read)
  principalId?: string;

  /**
   * The tenant id associated with the virtual machine. This property will only be provided for a system assigned identity.
   */
  @visibility(Lifecycle.Read)
  tenantId?: string;

  /**
   * The type of identity used for the virtual machine. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the virtual machine.
   */
  type?: Common.ResourceIdentityType;

  /**
   * The list of user identities associated with the Virtual Machine. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
   */
  #suppress "@azure-tools/typespec-azure-resource-manager/arm-no-record" "For backward compatibility"
  userAssignedIdentities?: Record<Common.UserAssignedIdentitiesValue>;
}

/**
 * Describes the user-defined constraints for resource hardware placement.
 */
model Placement {
  /**
   * Specifies the policy for resource's placement in availability zone. Possible values are: **Any** (used for Virtual Machines), **Auto** (used for Virtual Machine Scale Sets) - An availability zone will be automatically picked by system as part of resource creation.
   */
  zonePlacementPolicy?: ZonePlacementPolicyType;

  /**
   * This property supplements the 'zonePlacementPolicy' property. If 'zonePlacementPolicy' is set to 'Any'/'Auto', availability zone selected by the system must be present in the list of availability zones passed with 'includeZones'. If 'includeZones' is not provided, all availability zones in region will be considered for selection.
   */
  includeZones?: string[];

  /**
   * This property supplements the 'zonePlacementPolicy' property. If 'zonePlacementPolicy' is set to 'Any'/'Auto', availability zone selected by the system must not be present in the list of availability zones passed with 'excludeZones'. If 'excludeZones' is not provided, all availability zones in region will be considered for selection.
   */
  excludeZones?: string[];
}
