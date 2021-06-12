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
-- Module      : Network.AWS.WorkSpaces.Types.DefaultWorkspaceCreationProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.DefaultWorkspaceCreationProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Describes the default values that are used to create WorkSpaces. For
-- more information, see
-- <https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html Update Directory Details for Your WorkSpaces>.
--
-- /See:/ 'newDefaultWorkspaceCreationProperties' smart constructor.
data DefaultWorkspaceCreationProperties = DefaultWorkspaceCreationProperties'
  { -- | Specifies whether maintenance mode is enabled for WorkSpaces. For more
    -- information, see
    -- <https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html WorkSpace Maintenance>.
    enableMaintenanceMode :: Core.Maybe Core.Bool,
    -- | The organizational unit (OU) in the directory for the WorkSpace machine
    -- accounts.
    defaultOu :: Core.Maybe Core.Text,
    -- | Specifies whether to automatically assign an Elastic public IP address
    -- to WorkSpaces in this directory by default. If enabled, the Elastic
    -- public IP address allows outbound internet access from your WorkSpaces
    -- when you’re using an internet gateway in the Amazon VPC in which your
    -- WorkSpaces are located. If you\'re using a Network Address Translation
    -- (NAT) gateway for outbound internet access from your VPC, or if your
    -- WorkSpaces are in public subnets and you manually assign them Elastic IP
    -- addresses, you should disable this setting. This setting applies to new
    -- WorkSpaces that you launch or to existing WorkSpaces that you rebuild.
    -- For more information, see
    -- <https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html Configure a VPC for Amazon WorkSpaces>.
    enableInternetAccess :: Core.Maybe Core.Bool,
    -- | Specifies whether the directory is enabled for Amazon WorkDocs.
    enableWorkDocs :: Core.Maybe Core.Bool,
    -- | The identifier of the default security group to apply to WorkSpaces when
    -- they are created. For more information, see
    -- <https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-security-groups.html Security Groups for Your WorkSpaces>.
    customSecurityGroupId :: Core.Maybe Core.Text,
    -- | Specifies whether WorkSpace users are local administrators on their
    -- WorkSpaces.
    userEnabledAsLocalAdministrator :: Core.Maybe Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DefaultWorkspaceCreationProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enableMaintenanceMode', 'defaultWorkspaceCreationProperties_enableMaintenanceMode' - Specifies whether maintenance mode is enabled for WorkSpaces. For more
-- information, see
-- <https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html WorkSpace Maintenance>.
--
-- 'defaultOu', 'defaultWorkspaceCreationProperties_defaultOu' - The organizational unit (OU) in the directory for the WorkSpace machine
-- accounts.
--
-- 'enableInternetAccess', 'defaultWorkspaceCreationProperties_enableInternetAccess' - Specifies whether to automatically assign an Elastic public IP address
-- to WorkSpaces in this directory by default. If enabled, the Elastic
-- public IP address allows outbound internet access from your WorkSpaces
-- when you’re using an internet gateway in the Amazon VPC in which your
-- WorkSpaces are located. If you\'re using a Network Address Translation
-- (NAT) gateway for outbound internet access from your VPC, or if your
-- WorkSpaces are in public subnets and you manually assign them Elastic IP
-- addresses, you should disable this setting. This setting applies to new
-- WorkSpaces that you launch or to existing WorkSpaces that you rebuild.
-- For more information, see
-- <https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html Configure a VPC for Amazon WorkSpaces>.
--
-- 'enableWorkDocs', 'defaultWorkspaceCreationProperties_enableWorkDocs' - Specifies whether the directory is enabled for Amazon WorkDocs.
--
-- 'customSecurityGroupId', 'defaultWorkspaceCreationProperties_customSecurityGroupId' - The identifier of the default security group to apply to WorkSpaces when
-- they are created. For more information, see
-- <https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-security-groups.html Security Groups for Your WorkSpaces>.
--
-- 'userEnabledAsLocalAdministrator', 'defaultWorkspaceCreationProperties_userEnabledAsLocalAdministrator' - Specifies whether WorkSpace users are local administrators on their
-- WorkSpaces.
newDefaultWorkspaceCreationProperties ::
  DefaultWorkspaceCreationProperties
newDefaultWorkspaceCreationProperties =
  DefaultWorkspaceCreationProperties'
    { enableMaintenanceMode =
        Core.Nothing,
      defaultOu = Core.Nothing,
      enableInternetAccess = Core.Nothing,
      enableWorkDocs = Core.Nothing,
      customSecurityGroupId = Core.Nothing,
      userEnabledAsLocalAdministrator =
        Core.Nothing
    }

-- | Specifies whether maintenance mode is enabled for WorkSpaces. For more
-- information, see
-- <https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html WorkSpace Maintenance>.
defaultWorkspaceCreationProperties_enableMaintenanceMode :: Lens.Lens' DefaultWorkspaceCreationProperties (Core.Maybe Core.Bool)
defaultWorkspaceCreationProperties_enableMaintenanceMode = Lens.lens (\DefaultWorkspaceCreationProperties' {enableMaintenanceMode} -> enableMaintenanceMode) (\s@DefaultWorkspaceCreationProperties' {} a -> s {enableMaintenanceMode = a} :: DefaultWorkspaceCreationProperties)

-- | The organizational unit (OU) in the directory for the WorkSpace machine
-- accounts.
defaultWorkspaceCreationProperties_defaultOu :: Lens.Lens' DefaultWorkspaceCreationProperties (Core.Maybe Core.Text)
defaultWorkspaceCreationProperties_defaultOu = Lens.lens (\DefaultWorkspaceCreationProperties' {defaultOu} -> defaultOu) (\s@DefaultWorkspaceCreationProperties' {} a -> s {defaultOu = a} :: DefaultWorkspaceCreationProperties)

-- | Specifies whether to automatically assign an Elastic public IP address
-- to WorkSpaces in this directory by default. If enabled, the Elastic
-- public IP address allows outbound internet access from your WorkSpaces
-- when you’re using an internet gateway in the Amazon VPC in which your
-- WorkSpaces are located. If you\'re using a Network Address Translation
-- (NAT) gateway for outbound internet access from your VPC, or if your
-- WorkSpaces are in public subnets and you manually assign them Elastic IP
-- addresses, you should disable this setting. This setting applies to new
-- WorkSpaces that you launch or to existing WorkSpaces that you rebuild.
-- For more information, see
-- <https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html Configure a VPC for Amazon WorkSpaces>.
defaultWorkspaceCreationProperties_enableInternetAccess :: Lens.Lens' DefaultWorkspaceCreationProperties (Core.Maybe Core.Bool)
defaultWorkspaceCreationProperties_enableInternetAccess = Lens.lens (\DefaultWorkspaceCreationProperties' {enableInternetAccess} -> enableInternetAccess) (\s@DefaultWorkspaceCreationProperties' {} a -> s {enableInternetAccess = a} :: DefaultWorkspaceCreationProperties)

-- | Specifies whether the directory is enabled for Amazon WorkDocs.
defaultWorkspaceCreationProperties_enableWorkDocs :: Lens.Lens' DefaultWorkspaceCreationProperties (Core.Maybe Core.Bool)
defaultWorkspaceCreationProperties_enableWorkDocs = Lens.lens (\DefaultWorkspaceCreationProperties' {enableWorkDocs} -> enableWorkDocs) (\s@DefaultWorkspaceCreationProperties' {} a -> s {enableWorkDocs = a} :: DefaultWorkspaceCreationProperties)

-- | The identifier of the default security group to apply to WorkSpaces when
-- they are created. For more information, see
-- <https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-security-groups.html Security Groups for Your WorkSpaces>.
defaultWorkspaceCreationProperties_customSecurityGroupId :: Lens.Lens' DefaultWorkspaceCreationProperties (Core.Maybe Core.Text)
defaultWorkspaceCreationProperties_customSecurityGroupId = Lens.lens (\DefaultWorkspaceCreationProperties' {customSecurityGroupId} -> customSecurityGroupId) (\s@DefaultWorkspaceCreationProperties' {} a -> s {customSecurityGroupId = a} :: DefaultWorkspaceCreationProperties)

-- | Specifies whether WorkSpace users are local administrators on their
-- WorkSpaces.
defaultWorkspaceCreationProperties_userEnabledAsLocalAdministrator :: Lens.Lens' DefaultWorkspaceCreationProperties (Core.Maybe Core.Bool)
defaultWorkspaceCreationProperties_userEnabledAsLocalAdministrator = Lens.lens (\DefaultWorkspaceCreationProperties' {userEnabledAsLocalAdministrator} -> userEnabledAsLocalAdministrator) (\s@DefaultWorkspaceCreationProperties' {} a -> s {userEnabledAsLocalAdministrator = a} :: DefaultWorkspaceCreationProperties)

instance
  Core.FromJSON
    DefaultWorkspaceCreationProperties
  where
  parseJSON =
    Core.withObject
      "DefaultWorkspaceCreationProperties"
      ( \x ->
          DefaultWorkspaceCreationProperties'
            Core.<$> (x Core..:? "EnableMaintenanceMode")
            Core.<*> (x Core..:? "DefaultOu")
            Core.<*> (x Core..:? "EnableInternetAccess")
            Core.<*> (x Core..:? "EnableWorkDocs")
            Core.<*> (x Core..:? "CustomSecurityGroupId")
            Core.<*> (x Core..:? "UserEnabledAsLocalAdministrator")
      )

instance
  Core.Hashable
    DefaultWorkspaceCreationProperties

instance
  Core.NFData
    DefaultWorkspaceCreationProperties
