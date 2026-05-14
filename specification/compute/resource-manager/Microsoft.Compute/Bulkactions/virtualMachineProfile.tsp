import "@typespec/rest";
import "@typespec/http";
import "@azure-tools/typespec-azure-core";
import "./common.tsp";
import "./shared-types.tsp";

using Azure.ResourceManager;

namespace Microsoft.Compute;
@doc("Describes the properties of a Virtual Machine for bulk create.")
model BulkactionVMProperties {
  @doc("Specifies Redeploy, Reboot and ScheduledEventsAdditionalPublishingTargets Scheduled Event related configurations for the virtual machine.")
  scheduledEventsPolicy?: ScheduledEventsPolicy;

  @doc("Specifies the storage settings for the virtual machine disks.")
  storageProfile?: StorageProfile;

  @doc("Specifies the hardware profile for the virtual machine.")
  hardwareProfile?: HardwareProfile;

  @doc("Specifies additional capabilities enabled or disabled on the virtual machine.")
  additionalCapabilities?: AdditionalCapabilities;

  @doc("Specifies the operating system settings used while creating the virtual machine. Some of the settings cannot be changed once VM is provisioned.")
  osProfile?: OSProfile;

  @doc("Specifies the network interfaces of the virtual machine.")
  networkProfile?: NetworkProfile;

  @doc("Specifies the Security related profile settings for the virtual machine.")
  securityProfile?: SecurityProfile;

  @doc("Specifies the boot diagnostic settings state. Minimum compute api-version: 2015-06-15.")
  diagnosticsProfile?: DiagnosticsProfile;

  @doc("Specifies that the image or disk that is being used was licensed on-premises. <br><br> Possible values for Windows Server operating system are: <br><br> Windows_Client <br><br> Windows_Server <br><br> Possible values for Linux Server operating system are: <br><br> RHEL_BYOS (for RHEL) <br><br> SLES_BYOS (for SUSE) <br><br> For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/windows/hybrid-use-benefit-licensing) <br><br> [Azure Hybrid Use Benefit for Linux Server](https://docs.microsoft.com/azure/virtual-machines/linux/azure-hybrid-benefit-linux) <br><br> Minimum api-version: 2015-06-15")
  licenseType?: string;

  @doc("Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. The default value is 90 minutes (PT1H30M). Minimum compute api-version: 2020-06-01.")
  extensionsTimeBudget?: string;

  @doc("Specifies Scheduled Event related configurations.")
  scheduledEventsProfile?: ScheduledEventsProfile;

  @doc("UserData for the VM, which must be base-64 encoded. Customer should not pass any secrets in here. Minimum compute api-version: 2021-03-01.")
  userData?: string;

  @doc("Specifies information about the capacity reservation that is used to allocate virtual machine. Minimum compute api-version: 2021-04-01.")
  capacityReservation?: CapacityReservationProfile;

  @doc("Specifies the gallery applications that should be made available to the VM.")
  applicationProfile?: ApplicationProfile;

  @doc("Virtual Machine Extensions Array to be applied to the Virtual Machines.")
  vmExtensions?: BulkactionVMExtension[];
}

alias ScheduledEventsPolicy = BulkActionsShared.ScheduledEventsPolicy;

alias UserInitiatedRedeploy = BulkActionsShared.UserInitiatedRedeploy;

alias UserInitiatedReboot = BulkActionsShared.UserInitiatedReboot;

alias ScheduledEventsAdditionalPublishingTargets = BulkActionsShared.ScheduledEventsAdditionalPublishingTargets;

alias EventGridAndResourceGraph = BulkActionsShared.EventGridAndResourceGraph;

alias AllInstancesDown = BulkActionsShared.AllInstancesDown;

alias StorageProfile = BulkActionsShared.StorageProfile;

alias HardwareProfile = BulkActionsShared.HardwareProfile;

alias ImageReference = BulkActionsShared.ImageReference;

alias OSDisk = BulkActionsShared.OSDisk;

alias DiffDiskSettings = BulkActionsShared.DiffDiskSettings;

alias DiffDiskOptions = BulkActionsShared.DiffDiskOptions;

alias DiffDiskPlacement = BulkActionsShared.DiffDiskPlacement;

alias DiskCreateOptionTypes = BulkActionsShared.DiskCreateOptionTypes;

alias OperatingSystemTypes = BulkActionsShared.OperatingSystemTypes;

alias CachingTypes = BulkActionsShared.CachingTypes;

/**
 * Specifies the storage account type for the managed disk. Managed OS disk storage account type can only be set when you create the scale set. NOTE: UltraSSD_LRS can only be used with data disks. It cannot be used with OS Disk. Standard_LRS uses Standard HDD. StandardSSD_LRS uses Standard SSD. Premium_LRS uses Premium SSD. UltraSSD_LRS uses Ultra disk. Premium_ZRS uses Premium SSD zone redundant storage. StandardSSD_ZRS uses Standard SSD zone redundant storage. For more information regarding disks supported for Windows Virtual Machines, refer to https://docs.microsoft.com/azure/virtual-machines/windows/disks-types and, for Linux Virtual Machines, refer to https://docs.microsoft.com/azure/virtual-machines/linux/disks-types
 */
alias StorageAccountTypes = BulkActionsShared.StorageAccountTypes;

alias VirtualHardDisk = BulkActionsShared.VirtualHardDisk;

alias DiskEncryptionSettings = BulkActionsShared.DiskEncryptionSettings;

alias KeyVaultKeyReference = BulkActionsShared.KeyVaultKeyReference;

alias ManagedDiskParameters = BulkActionsShared.ManagedDiskParameters;

alias DiskEncryptionSetParameters = BulkActionsShared.DiskEncryptionSetParameters;

alias VMDiskSecurityProfile = BulkActionsShared.VMDiskSecurityProfile;

alias SecurityEncryptionTypes = BulkActionsShared.SecurityEncryptionTypes;

alias DataDisk = BulkActionsShared.DataDisk;

alias ApiEntityReference = BulkActionsShared.ApiEntityReference;

alias DiskDetachOptionTypes = BulkActionsShared.DiskDetachOptionTypes;

alias DiskControllerTypes = BulkActionsShared.DiskControllerTypes;

alias AdditionalCapabilities = BulkActionsShared.AdditionalCapabilities;

alias OSProfile = BulkActionsShared.OSProfile;

alias WindowsConfiguration = BulkActionsShared.WindowsConfiguration;

alias AdditionalUnattendContent = BulkActionsShared.AdditionalUnattendContent;

alias PatchSettings = BulkActionsShared.PatchSettings;

alias WindowsVMGuestPatchAutomaticByPlatformSettings = BulkActionsShared.WindowsVMGuestPatchAutomaticByPlatformSettings;

alias WinRMConfiguration = BulkActionsShared.WinRMConfiguration;

alias WinRMListener = BulkActionsShared.WinRMListener;

alias SettingNames = BulkActionsShared.SettingNames;

/**
 * Specifies the mode of VM Guest Patching to IaaS virtual machine or virtual machines associated to virtual machine scale set with OrchestrationMode as Flexible.<br /><br /> Possible values are:<br /><br /> **Manual** - You  control the application of patches to a virtual machine. You do this by applying patches manually inside the VM. In this mode, automatic updates are disabled; the property WindowsConfiguration.enableAutomaticUpdates must be false<br /><br /> **AutomaticByOS** - The virtual machine will automatically be updated by the OS. The property WindowsConfiguration.enableAutomaticUpdates must be true. <br /><br /> **AutomaticByPlatform** - the virtual machine will automatically updated by the platform. The properties provisionVMAgent and WindowsConfiguration.enableAutomaticUpdates must be true
 */
alias WindowsVMGuestPatchMode = BulkActionsShared.WindowsVMGuestPatchMode;

alias WindowsPatchAssessmentMode = BulkActionsShared.WindowsPatchAssessmentMode;

alias WindowsVMGuestPatchAutomaticByPlatformRebootSetting = BulkActionsShared.WindowsVMGuestPatchAutomaticByPlatformRebootSetting;

alias ProtocolTypes = BulkActionsShared.ProtocolTypes;

/**
 * Specifies the Linux operating system settings on the virtual machine. For a list of supported Linux distributions, see [Linux on Azure-Endorsed Distributions](https://docs.microsoft.com/azure/virtual-machines/linux/endorsed-distros).
 */
alias LinuxConfiguration = BulkActionsShared.LinuxConfiguration;

alias SshConfiguration = BulkActionsShared.SshConfiguration;

alias SshPublicKey = BulkActionsShared.SshPublicKey;

alias LinuxPatchSettings = BulkActionsShared.LinuxPatchSettings;

alias LinuxVMGuestPatchAutomaticByPlatformSettings = BulkActionsShared.LinuxVMGuestPatchAutomaticByPlatformSettings;

alias LinuxVMGuestPatchMode = BulkActionsShared.LinuxVMGuestPatchMode;

alias LinuxPatchAssessmentMode = BulkActionsShared.LinuxPatchAssessmentMode;

alias LinuxVMGuestPatchAutomaticByPlatformRebootSetting = BulkActionsShared.LinuxVMGuestPatchAutomaticByPlatformRebootSetting;

alias VaultSecretGroup = BulkActionsShared.VaultSecretGroup;

alias VaultCertificate = BulkActionsShared.VaultCertificate;

alias NetworkProfile = BulkActionsShared.NetworkProfile;

alias NetworkInterfaceReference = BulkActionsShared.NetworkInterfaceReference;

alias NetworkInterfaceReferenceProperties = BulkActionsShared.NetworkInterfaceReferenceProperties;

alias VirtualMachineNetworkInterfaceConfiguration = BulkActionsShared.VirtualMachineNetworkInterfaceConfiguration;

alias VirtualMachineNetworkInterfaceConfigurationProperties = BulkActionsShared.VirtualMachineNetworkInterfaceConfigurationProperties;

alias VirtualMachineNetworkInterfaceDnsSettingsConfiguration = BulkActionsShared.VirtualMachineNetworkInterfaceDnsSettingsConfiguration;

alias VirtualMachineNetworkInterfaceIPConfiguration = BulkActionsShared.VirtualMachineNetworkInterfaceIPConfiguration;

alias VirtualMachineNetworkInterfaceIPConfigurationProperties = BulkActionsShared.VirtualMachineNetworkInterfaceIPConfigurationProperties;

alias VirtualMachinePublicIPAddressConfiguration = BulkActionsShared.VirtualMachinePublicIPAddressConfiguration;

alias VirtualMachinePublicIPAddressConfigurationProperties = BulkActionsShared.VirtualMachinePublicIPAddressConfigurationProperties;

alias VirtualMachinePublicIPAddressDnsSettingsConfiguration = BulkActionsShared.VirtualMachinePublicIPAddressDnsSettingsConfiguration;

alias VirtualMachineIpTag = BulkActionsShared.VirtualMachineIpTag;

alias DeleteOptions = BulkActionsShared.DeleteOptions;

alias DomainNameLabelScopeTypes = BulkActionsShared.DomainNameLabelScopeTypes;

alias IPVersions = BulkActionsShared.IPVersions;

alias NetworkApiVersion = BulkActionsShared.NetworkApiVersion;

alias PublicIPAddressSku = BulkActionsShared.PublicIPAddressSku;

alias PublicIPAddressSkuName = BulkActionsShared.PublicIPAddressSkuName;

alias PublicIPAddressSkuTier = BulkActionsShared.PublicIPAddressSkuTier;

alias PublicIPAllocationMethod = BulkActionsShared.PublicIPAllocationMethod;

alias NetworkInterfaceAuxiliaryMode = BulkActionsShared.NetworkInterfaceAuxiliaryMode;

alias NetworkInterfaceAuxiliarySku = BulkActionsShared.NetworkInterfaceAuxiliarySku;

alias ApplicationProfile = BulkActionsShared.ApplicationProfile;

alias VMGalleryApplication = BulkActionsShared.VMGalleryApplication;

alias CapacityReservationProfile = BulkActionsShared.CapacityReservationProfile;

alias ScheduledEventsProfile = BulkActionsShared.ScheduledEventsProfile;

alias TerminateNotificationProfile = BulkActionsShared.TerminateNotificationProfile;

alias OSImageNotificationProfile = BulkActionsShared.OSImageNotificationProfile;

alias DiagnosticsProfile = BulkActionsShared.DiagnosticsProfile;

alias BootDiagnostics = BulkActionsShared.BootDiagnostics;

alias SecurityProfile = BulkActionsShared.SecurityProfile;

alias UefiSettings = BulkActionsShared.UefiSettings;

alias EncryptionIdentity = BulkActionsShared.EncryptionIdentity;

alias ProxyAgentSettings = BulkActionsShared.ProxyAgentSettings;

alias HostEndpointSettings = BulkActionsShared.HostEndpointSettings;

alias SecurityTypes = BulkActionsShared.SecurityTypes;

alias Mode = BulkActionsShared.Mode;

alias Modes = BulkActionsShared.Modes;
