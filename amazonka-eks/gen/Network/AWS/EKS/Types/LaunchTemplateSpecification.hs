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
-- Module      : Network.AWS.EKS.Types.LaunchTemplateSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EKS.Types.LaunchTemplateSpecification where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | An object representing a node group launch template specification. The
-- launch template cannot include
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html SubnetId>
-- ,
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html IamInstanceProfile>
-- ,
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html RequestSpotInstances>
-- ,
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_HibernationOptionsRequest.html HibernationOptions>
-- , or
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TerminateInstances.html TerminateInstances>
-- , or the node group deployment or update will fail. For more information
-- about launch templates, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html CreateLaunchTemplate>
-- in the Amazon EC2 API Reference. For more information about using launch
-- templates with Amazon EKS, see
-- <https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html Launch template support>
-- in the Amazon EKS User Guide.
--
-- Specify either @name@ or @id@, but not both.
--
-- /See:/ 'newLaunchTemplateSpecification' smart constructor.
data LaunchTemplateSpecification = LaunchTemplateSpecification'
  { -- | The ID of the launch template.
    id :: Core.Maybe Core.Text,
    -- | The version of the launch template to use. If no version is specified,
    -- then the template\'s default version is used.
    version :: Core.Maybe Core.Text,
    -- | The name of the launch template.
    name :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'LaunchTemplateSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'launchTemplateSpecification_id' - The ID of the launch template.
--
-- 'version', 'launchTemplateSpecification_version' - The version of the launch template to use. If no version is specified,
-- then the template\'s default version is used.
--
-- 'name', 'launchTemplateSpecification_name' - The name of the launch template.
newLaunchTemplateSpecification ::
  LaunchTemplateSpecification
newLaunchTemplateSpecification =
  LaunchTemplateSpecification'
    { id = Core.Nothing,
      version = Core.Nothing,
      name = Core.Nothing
    }

-- | The ID of the launch template.
launchTemplateSpecification_id :: Lens.Lens' LaunchTemplateSpecification (Core.Maybe Core.Text)
launchTemplateSpecification_id = Lens.lens (\LaunchTemplateSpecification' {id} -> id) (\s@LaunchTemplateSpecification' {} a -> s {id = a} :: LaunchTemplateSpecification)

-- | The version of the launch template to use. If no version is specified,
-- then the template\'s default version is used.
launchTemplateSpecification_version :: Lens.Lens' LaunchTemplateSpecification (Core.Maybe Core.Text)
launchTemplateSpecification_version = Lens.lens (\LaunchTemplateSpecification' {version} -> version) (\s@LaunchTemplateSpecification' {} a -> s {version = a} :: LaunchTemplateSpecification)

-- | The name of the launch template.
launchTemplateSpecification_name :: Lens.Lens' LaunchTemplateSpecification (Core.Maybe Core.Text)
launchTemplateSpecification_name = Lens.lens (\LaunchTemplateSpecification' {name} -> name) (\s@LaunchTemplateSpecification' {} a -> s {name = a} :: LaunchTemplateSpecification)

instance Core.FromJSON LaunchTemplateSpecification where
  parseJSON =
    Core.withObject
      "LaunchTemplateSpecification"
      ( \x ->
          LaunchTemplateSpecification'
            Core.<$> (x Core..:? "id")
            Core.<*> (x Core..:? "version")
            Core.<*> (x Core..:? "name")
      )

instance Core.Hashable LaunchTemplateSpecification

instance Core.NFData LaunchTemplateSpecification

instance Core.ToJSON LaunchTemplateSpecification where
  toJSON LaunchTemplateSpecification' {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("version" Core..=) Core.<$> version,
            ("name" Core..=) Core.<$> name
          ]
      )
