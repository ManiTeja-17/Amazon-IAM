{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.Stack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.Stack where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpsWorks.Types.ChefConfiguration
import Network.AWS.OpsWorks.Types.RootDeviceType
import Network.AWS.OpsWorks.Types.Source
import Network.AWS.OpsWorks.Types.StackAttributesKeys
import Network.AWS.OpsWorks.Types.StackConfigurationManager

-- | Describes a stack.
--
-- /See:/ 'newStack' smart constructor.
data Stack = Stack'
  { -- | The stack\'s default operating system.
    defaultOs :: Core.Maybe Core.Text,
    -- | Whether the stack automatically associates the AWS OpsWorks Stacks
    -- built-in security groups with the stack\'s layers.
    useOpsworksSecurityGroups :: Core.Maybe Core.Bool,
    -- | Contains the information required to retrieve an app or cookbook from a
    -- repository. For more information, see
    -- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html Adding Apps>
    -- or
    -- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html Cookbooks and Recipes>.
    customCookbooksSource :: Core.Maybe Source,
    -- | The stack AWS Identity and Access Management (IAM) role.
    serviceRoleArn :: Core.Maybe Core.Text,
    -- | The stack\'s default Availability Zone. For more information, see
    -- <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints>.
    defaultAvailabilityZone :: Core.Maybe Core.Text,
    -- | The stack ID.
    stackId :: Core.Maybe Core.Text,
    -- | The agent version. This parameter is set to @LATEST@ for auto-update. or
    -- a version number for a fixed agent version.
    agentVersion :: Core.Maybe Core.Text,
    -- | A JSON object that contains user-defined attributes to be added to the
    -- stack configuration and deployment attributes. You can use custom JSON
    -- to override the corresponding default stack configuration attribute
    -- values or to pass data to recipes. The string should be in the following
    -- format:
    --
    -- @\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"@
    --
    -- For more information on custom JSON, see
    -- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html Use Custom JSON to Modify the Stack Configuration Attributes>.
    customJson :: Core.Maybe Core.Text,
    -- | The stack\'s ARN.
    arn :: Core.Maybe Core.Text,
    -- | The date when the stack was created.
    createdAt :: Core.Maybe Core.Text,
    -- | The default root device type. This value is used by default for all
    -- instances in the stack, but you can override it when you create an
    -- instance. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device Storage for the Root Device>.
    defaultRootDeviceType :: Core.Maybe RootDeviceType,
    -- | The stack\'s attributes.
    attributes :: Core.Maybe (Core.HashMap StackAttributesKeys (Core.Maybe Core.Text)),
    -- | The stack name.
    name :: Core.Maybe Core.Text,
    -- | The ARN of an IAM profile that is the default profile for all of the
    -- stack\'s EC2 instances. For more information about IAM ARNs, see
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers>.
    defaultInstanceProfileArn :: Core.Maybe Core.Text,
    -- | The stack host name theme, with spaces replaced by underscores.
    hostnameTheme :: Core.Maybe Core.Text,
    -- | A default Amazon EC2 key pair for the stack\'s instances. You can
    -- override this value when you create or update an instance.
    defaultSshKeyName :: Core.Maybe Core.Text,
    -- | The configuration manager.
    configurationManager :: Core.Maybe StackConfigurationManager,
    -- | The stack AWS region, such as \"ap-northeast-2\". For more information
    -- about AWS regions, see
    -- <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints>.
    region :: Core.Maybe Core.Text,
    -- | The VPC ID; applicable only if the stack is running in a VPC.
    vpcId :: Core.Maybe Core.Text,
    -- | A @ChefConfiguration@ object that specifies whether to enable Berkshelf
    -- and the Berkshelf version. For more information, see
    -- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html Create a New Stack>.
    chefConfiguration :: Core.Maybe ChefConfiguration,
    -- | The default subnet ID; applicable only if the stack is running in a VPC.
    defaultSubnetId :: Core.Maybe Core.Text,
    -- | Whether the stack uses custom cookbooks.
    useCustomCookbooks :: Core.Maybe Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Stack' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'defaultOs', 'stack_defaultOs' - The stack\'s default operating system.
--
-- 'useOpsworksSecurityGroups', 'stack_useOpsworksSecurityGroups' - Whether the stack automatically associates the AWS OpsWorks Stacks
-- built-in security groups with the stack\'s layers.
--
-- 'customCookbooksSource', 'stack_customCookbooksSource' - Contains the information required to retrieve an app or cookbook from a
-- repository. For more information, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html Adding Apps>
-- or
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html Cookbooks and Recipes>.
--
-- 'serviceRoleArn', 'stack_serviceRoleArn' - The stack AWS Identity and Access Management (IAM) role.
--
-- 'defaultAvailabilityZone', 'stack_defaultAvailabilityZone' - The stack\'s default Availability Zone. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints>.
--
-- 'stackId', 'stack_stackId' - The stack ID.
--
-- 'agentVersion', 'stack_agentVersion' - The agent version. This parameter is set to @LATEST@ for auto-update. or
-- a version number for a fixed agent version.
--
-- 'customJson', 'stack_customJson' - A JSON object that contains user-defined attributes to be added to the
-- stack configuration and deployment attributes. You can use custom JSON
-- to override the corresponding default stack configuration attribute
-- values or to pass data to recipes. The string should be in the following
-- format:
--
-- @\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"@
--
-- For more information on custom JSON, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html Use Custom JSON to Modify the Stack Configuration Attributes>.
--
-- 'arn', 'stack_arn' - The stack\'s ARN.
--
-- 'createdAt', 'stack_createdAt' - The date when the stack was created.
--
-- 'defaultRootDeviceType', 'stack_defaultRootDeviceType' - The default root device type. This value is used by default for all
-- instances in the stack, but you can override it when you create an
-- instance. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device Storage for the Root Device>.
--
-- 'attributes', 'stack_attributes' - The stack\'s attributes.
--
-- 'name', 'stack_name' - The stack name.
--
-- 'defaultInstanceProfileArn', 'stack_defaultInstanceProfileArn' - The ARN of an IAM profile that is the default profile for all of the
-- stack\'s EC2 instances. For more information about IAM ARNs, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers>.
--
-- 'hostnameTheme', 'stack_hostnameTheme' - The stack host name theme, with spaces replaced by underscores.
--
-- 'defaultSshKeyName', 'stack_defaultSshKeyName' - A default Amazon EC2 key pair for the stack\'s instances. You can
-- override this value when you create or update an instance.
--
-- 'configurationManager', 'stack_configurationManager' - The configuration manager.
--
-- 'region', 'stack_region' - The stack AWS region, such as \"ap-northeast-2\". For more information
-- about AWS regions, see
-- <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints>.
--
-- 'vpcId', 'stack_vpcId' - The VPC ID; applicable only if the stack is running in a VPC.
--
-- 'chefConfiguration', 'stack_chefConfiguration' - A @ChefConfiguration@ object that specifies whether to enable Berkshelf
-- and the Berkshelf version. For more information, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html Create a New Stack>.
--
-- 'defaultSubnetId', 'stack_defaultSubnetId' - The default subnet ID; applicable only if the stack is running in a VPC.
--
-- 'useCustomCookbooks', 'stack_useCustomCookbooks' - Whether the stack uses custom cookbooks.
newStack ::
  Stack
newStack =
  Stack'
    { defaultOs = Core.Nothing,
      useOpsworksSecurityGroups = Core.Nothing,
      customCookbooksSource = Core.Nothing,
      serviceRoleArn = Core.Nothing,
      defaultAvailabilityZone = Core.Nothing,
      stackId = Core.Nothing,
      agentVersion = Core.Nothing,
      customJson = Core.Nothing,
      arn = Core.Nothing,
      createdAt = Core.Nothing,
      defaultRootDeviceType = Core.Nothing,
      attributes = Core.Nothing,
      name = Core.Nothing,
      defaultInstanceProfileArn = Core.Nothing,
      hostnameTheme = Core.Nothing,
      defaultSshKeyName = Core.Nothing,
      configurationManager = Core.Nothing,
      region = Core.Nothing,
      vpcId = Core.Nothing,
      chefConfiguration = Core.Nothing,
      defaultSubnetId = Core.Nothing,
      useCustomCookbooks = Core.Nothing
    }

-- | The stack\'s default operating system.
stack_defaultOs :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_defaultOs = Lens.lens (\Stack' {defaultOs} -> defaultOs) (\s@Stack' {} a -> s {defaultOs = a} :: Stack)

-- | Whether the stack automatically associates the AWS OpsWorks Stacks
-- built-in security groups with the stack\'s layers.
stack_useOpsworksSecurityGroups :: Lens.Lens' Stack (Core.Maybe Core.Bool)
stack_useOpsworksSecurityGroups = Lens.lens (\Stack' {useOpsworksSecurityGroups} -> useOpsworksSecurityGroups) (\s@Stack' {} a -> s {useOpsworksSecurityGroups = a} :: Stack)

-- | Contains the information required to retrieve an app or cookbook from a
-- repository. For more information, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html Adding Apps>
-- or
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html Cookbooks and Recipes>.
stack_customCookbooksSource :: Lens.Lens' Stack (Core.Maybe Source)
stack_customCookbooksSource = Lens.lens (\Stack' {customCookbooksSource} -> customCookbooksSource) (\s@Stack' {} a -> s {customCookbooksSource = a} :: Stack)

-- | The stack AWS Identity and Access Management (IAM) role.
stack_serviceRoleArn :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_serviceRoleArn = Lens.lens (\Stack' {serviceRoleArn} -> serviceRoleArn) (\s@Stack' {} a -> s {serviceRoleArn = a} :: Stack)

-- | The stack\'s default Availability Zone. For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints>.
stack_defaultAvailabilityZone :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_defaultAvailabilityZone = Lens.lens (\Stack' {defaultAvailabilityZone} -> defaultAvailabilityZone) (\s@Stack' {} a -> s {defaultAvailabilityZone = a} :: Stack)

-- | The stack ID.
stack_stackId :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_stackId = Lens.lens (\Stack' {stackId} -> stackId) (\s@Stack' {} a -> s {stackId = a} :: Stack)

-- | The agent version. This parameter is set to @LATEST@ for auto-update. or
-- a version number for a fixed agent version.
stack_agentVersion :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_agentVersion = Lens.lens (\Stack' {agentVersion} -> agentVersion) (\s@Stack' {} a -> s {agentVersion = a} :: Stack)

-- | A JSON object that contains user-defined attributes to be added to the
-- stack configuration and deployment attributes. You can use custom JSON
-- to override the corresponding default stack configuration attribute
-- values or to pass data to recipes. The string should be in the following
-- format:
--
-- @\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"@
--
-- For more information on custom JSON, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html Use Custom JSON to Modify the Stack Configuration Attributes>.
stack_customJson :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_customJson = Lens.lens (\Stack' {customJson} -> customJson) (\s@Stack' {} a -> s {customJson = a} :: Stack)

-- | The stack\'s ARN.
stack_arn :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_arn = Lens.lens (\Stack' {arn} -> arn) (\s@Stack' {} a -> s {arn = a} :: Stack)

-- | The date when the stack was created.
stack_createdAt :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_createdAt = Lens.lens (\Stack' {createdAt} -> createdAt) (\s@Stack' {} a -> s {createdAt = a} :: Stack)

-- | The default root device type. This value is used by default for all
-- instances in the stack, but you can override it when you create an
-- instance. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device Storage for the Root Device>.
stack_defaultRootDeviceType :: Lens.Lens' Stack (Core.Maybe RootDeviceType)
stack_defaultRootDeviceType = Lens.lens (\Stack' {defaultRootDeviceType} -> defaultRootDeviceType) (\s@Stack' {} a -> s {defaultRootDeviceType = a} :: Stack)

-- | The stack\'s attributes.
stack_attributes :: Lens.Lens' Stack (Core.Maybe (Core.HashMap StackAttributesKeys (Core.Maybe Core.Text)))
stack_attributes = Lens.lens (\Stack' {attributes} -> attributes) (\s@Stack' {} a -> s {attributes = a} :: Stack) Core.. Lens.mapping Lens._Coerce

-- | The stack name.
stack_name :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_name = Lens.lens (\Stack' {name} -> name) (\s@Stack' {} a -> s {name = a} :: Stack)

-- | The ARN of an IAM profile that is the default profile for all of the
-- stack\'s EC2 instances. For more information about IAM ARNs, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers>.
stack_defaultInstanceProfileArn :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_defaultInstanceProfileArn = Lens.lens (\Stack' {defaultInstanceProfileArn} -> defaultInstanceProfileArn) (\s@Stack' {} a -> s {defaultInstanceProfileArn = a} :: Stack)

-- | The stack host name theme, with spaces replaced by underscores.
stack_hostnameTheme :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_hostnameTheme = Lens.lens (\Stack' {hostnameTheme} -> hostnameTheme) (\s@Stack' {} a -> s {hostnameTheme = a} :: Stack)

-- | A default Amazon EC2 key pair for the stack\'s instances. You can
-- override this value when you create or update an instance.
stack_defaultSshKeyName :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_defaultSshKeyName = Lens.lens (\Stack' {defaultSshKeyName} -> defaultSshKeyName) (\s@Stack' {} a -> s {defaultSshKeyName = a} :: Stack)

-- | The configuration manager.
stack_configurationManager :: Lens.Lens' Stack (Core.Maybe StackConfigurationManager)
stack_configurationManager = Lens.lens (\Stack' {configurationManager} -> configurationManager) (\s@Stack' {} a -> s {configurationManager = a} :: Stack)

-- | The stack AWS region, such as \"ap-northeast-2\". For more information
-- about AWS regions, see
-- <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints>.
stack_region :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_region = Lens.lens (\Stack' {region} -> region) (\s@Stack' {} a -> s {region = a} :: Stack)

-- | The VPC ID; applicable only if the stack is running in a VPC.
stack_vpcId :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_vpcId = Lens.lens (\Stack' {vpcId} -> vpcId) (\s@Stack' {} a -> s {vpcId = a} :: Stack)

-- | A @ChefConfiguration@ object that specifies whether to enable Berkshelf
-- and the Berkshelf version. For more information, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html Create a New Stack>.
stack_chefConfiguration :: Lens.Lens' Stack (Core.Maybe ChefConfiguration)
stack_chefConfiguration = Lens.lens (\Stack' {chefConfiguration} -> chefConfiguration) (\s@Stack' {} a -> s {chefConfiguration = a} :: Stack)

-- | The default subnet ID; applicable only if the stack is running in a VPC.
stack_defaultSubnetId :: Lens.Lens' Stack (Core.Maybe Core.Text)
stack_defaultSubnetId = Lens.lens (\Stack' {defaultSubnetId} -> defaultSubnetId) (\s@Stack' {} a -> s {defaultSubnetId = a} :: Stack)

-- | Whether the stack uses custom cookbooks.
stack_useCustomCookbooks :: Lens.Lens' Stack (Core.Maybe Core.Bool)
stack_useCustomCookbooks = Lens.lens (\Stack' {useCustomCookbooks} -> useCustomCookbooks) (\s@Stack' {} a -> s {useCustomCookbooks = a} :: Stack)

instance Core.FromJSON Stack where
  parseJSON =
    Core.withObject
      "Stack"
      ( \x ->
          Stack'
            Core.<$> (x Core..:? "DefaultOs")
            Core.<*> (x Core..:? "UseOpsworksSecurityGroups")
            Core.<*> (x Core..:? "CustomCookbooksSource")
            Core.<*> (x Core..:? "ServiceRoleArn")
            Core.<*> (x Core..:? "DefaultAvailabilityZone")
            Core.<*> (x Core..:? "StackId")
            Core.<*> (x Core..:? "AgentVersion")
            Core.<*> (x Core..:? "CustomJson")
            Core.<*> (x Core..:? "Arn")
            Core.<*> (x Core..:? "CreatedAt")
            Core.<*> (x Core..:? "DefaultRootDeviceType")
            Core.<*> (x Core..:? "Attributes" Core..!= Core.mempty)
            Core.<*> (x Core..:? "Name")
            Core.<*> (x Core..:? "DefaultInstanceProfileArn")
            Core.<*> (x Core..:? "HostnameTheme")
            Core.<*> (x Core..:? "DefaultSshKeyName")
            Core.<*> (x Core..:? "ConfigurationManager")
            Core.<*> (x Core..:? "Region")
            Core.<*> (x Core..:? "VpcId")
            Core.<*> (x Core..:? "ChefConfiguration")
            Core.<*> (x Core..:? "DefaultSubnetId")
            Core.<*> (x Core..:? "UseCustomCookbooks")
      )

instance Core.Hashable Stack

instance Core.NFData Stack
