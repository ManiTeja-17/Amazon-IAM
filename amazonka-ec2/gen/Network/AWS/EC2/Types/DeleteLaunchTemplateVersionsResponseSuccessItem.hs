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
-- Module      : Network.AWS.EC2.Types.DeleteLaunchTemplateVersionsResponseSuccessItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DeleteLaunchTemplateVersionsResponseSuccessItem where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens

-- | Describes a launch template version that was successfully deleted.
--
-- /See:/ 'newDeleteLaunchTemplateVersionsResponseSuccessItem' smart constructor.
data DeleteLaunchTemplateVersionsResponseSuccessItem = DeleteLaunchTemplateVersionsResponseSuccessItem'
  { -- | The ID of the launch template.
    launchTemplateId :: Core.Maybe Core.Text,
    -- | The name of the launch template.
    launchTemplateName :: Core.Maybe Core.Text,
    -- | The version number of the launch template.
    versionNumber :: Core.Maybe Core.Integer
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteLaunchTemplateVersionsResponseSuccessItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'launchTemplateId', 'deleteLaunchTemplateVersionsResponseSuccessItem_launchTemplateId' - The ID of the launch template.
--
-- 'launchTemplateName', 'deleteLaunchTemplateVersionsResponseSuccessItem_launchTemplateName' - The name of the launch template.
--
-- 'versionNumber', 'deleteLaunchTemplateVersionsResponseSuccessItem_versionNumber' - The version number of the launch template.
newDeleteLaunchTemplateVersionsResponseSuccessItem ::
  DeleteLaunchTemplateVersionsResponseSuccessItem
newDeleteLaunchTemplateVersionsResponseSuccessItem =
  DeleteLaunchTemplateVersionsResponseSuccessItem'
    { launchTemplateId =
        Core.Nothing,
      launchTemplateName =
        Core.Nothing,
      versionNumber =
        Core.Nothing
    }

-- | The ID of the launch template.
deleteLaunchTemplateVersionsResponseSuccessItem_launchTemplateId :: Lens.Lens' DeleteLaunchTemplateVersionsResponseSuccessItem (Core.Maybe Core.Text)
deleteLaunchTemplateVersionsResponseSuccessItem_launchTemplateId = Lens.lens (\DeleteLaunchTemplateVersionsResponseSuccessItem' {launchTemplateId} -> launchTemplateId) (\s@DeleteLaunchTemplateVersionsResponseSuccessItem' {} a -> s {launchTemplateId = a} :: DeleteLaunchTemplateVersionsResponseSuccessItem)

-- | The name of the launch template.
deleteLaunchTemplateVersionsResponseSuccessItem_launchTemplateName :: Lens.Lens' DeleteLaunchTemplateVersionsResponseSuccessItem (Core.Maybe Core.Text)
deleteLaunchTemplateVersionsResponseSuccessItem_launchTemplateName = Lens.lens (\DeleteLaunchTemplateVersionsResponseSuccessItem' {launchTemplateName} -> launchTemplateName) (\s@DeleteLaunchTemplateVersionsResponseSuccessItem' {} a -> s {launchTemplateName = a} :: DeleteLaunchTemplateVersionsResponseSuccessItem)

-- | The version number of the launch template.
deleteLaunchTemplateVersionsResponseSuccessItem_versionNumber :: Lens.Lens' DeleteLaunchTemplateVersionsResponseSuccessItem (Core.Maybe Core.Integer)
deleteLaunchTemplateVersionsResponseSuccessItem_versionNumber = Lens.lens (\DeleteLaunchTemplateVersionsResponseSuccessItem' {versionNumber} -> versionNumber) (\s@DeleteLaunchTemplateVersionsResponseSuccessItem' {} a -> s {versionNumber = a} :: DeleteLaunchTemplateVersionsResponseSuccessItem)

instance
  Core.FromXML
    DeleteLaunchTemplateVersionsResponseSuccessItem
  where
  parseXML x =
    DeleteLaunchTemplateVersionsResponseSuccessItem'
      Core.<$> (x Core..@? "launchTemplateId")
        Core.<*> (x Core..@? "launchTemplateName")
        Core.<*> (x Core..@? "versionNumber")

instance
  Core.Hashable
    DeleteLaunchTemplateVersionsResponseSuccessItem

instance
  Core.NFData
    DeleteLaunchTemplateVersionsResponseSuccessItem
