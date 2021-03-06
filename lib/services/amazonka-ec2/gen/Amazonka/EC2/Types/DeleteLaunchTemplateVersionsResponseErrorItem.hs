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
-- Module      : Amazonka.EC2.Types.DeleteLaunchTemplateVersionsResponseErrorItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.DeleteLaunchTemplateVersionsResponseErrorItem where

import qualified Amazonka.Core as Core
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.ResponseError
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a launch template version that could not be deleted.
--
-- /See:/ 'newDeleteLaunchTemplateVersionsResponseErrorItem' smart constructor.
data DeleteLaunchTemplateVersionsResponseErrorItem = DeleteLaunchTemplateVersionsResponseErrorItem'
  { -- | The name of the launch template.
    launchTemplateName :: Prelude.Maybe Prelude.Text,
    -- | The ID of the launch template.
    launchTemplateId :: Prelude.Maybe Prelude.Text,
    -- | The version number of the launch template.
    versionNumber :: Prelude.Maybe Prelude.Integer,
    -- | Information about the error.
    responseError :: Prelude.Maybe ResponseError
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteLaunchTemplateVersionsResponseErrorItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'launchTemplateName', 'deleteLaunchTemplateVersionsResponseErrorItem_launchTemplateName' - The name of the launch template.
--
-- 'launchTemplateId', 'deleteLaunchTemplateVersionsResponseErrorItem_launchTemplateId' - The ID of the launch template.
--
-- 'versionNumber', 'deleteLaunchTemplateVersionsResponseErrorItem_versionNumber' - The version number of the launch template.
--
-- 'responseError', 'deleteLaunchTemplateVersionsResponseErrorItem_responseError' - Information about the error.
newDeleteLaunchTemplateVersionsResponseErrorItem ::
  DeleteLaunchTemplateVersionsResponseErrorItem
newDeleteLaunchTemplateVersionsResponseErrorItem =
  DeleteLaunchTemplateVersionsResponseErrorItem'
    { launchTemplateName =
        Prelude.Nothing,
      launchTemplateId =
        Prelude.Nothing,
      versionNumber =
        Prelude.Nothing,
      responseError =
        Prelude.Nothing
    }

-- | The name of the launch template.
deleteLaunchTemplateVersionsResponseErrorItem_launchTemplateName :: Lens.Lens' DeleteLaunchTemplateVersionsResponseErrorItem (Prelude.Maybe Prelude.Text)
deleteLaunchTemplateVersionsResponseErrorItem_launchTemplateName = Lens.lens (\DeleteLaunchTemplateVersionsResponseErrorItem' {launchTemplateName} -> launchTemplateName) (\s@DeleteLaunchTemplateVersionsResponseErrorItem' {} a -> s {launchTemplateName = a} :: DeleteLaunchTemplateVersionsResponseErrorItem)

-- | The ID of the launch template.
deleteLaunchTemplateVersionsResponseErrorItem_launchTemplateId :: Lens.Lens' DeleteLaunchTemplateVersionsResponseErrorItem (Prelude.Maybe Prelude.Text)
deleteLaunchTemplateVersionsResponseErrorItem_launchTemplateId = Lens.lens (\DeleteLaunchTemplateVersionsResponseErrorItem' {launchTemplateId} -> launchTemplateId) (\s@DeleteLaunchTemplateVersionsResponseErrorItem' {} a -> s {launchTemplateId = a} :: DeleteLaunchTemplateVersionsResponseErrorItem)

-- | The version number of the launch template.
deleteLaunchTemplateVersionsResponseErrorItem_versionNumber :: Lens.Lens' DeleteLaunchTemplateVersionsResponseErrorItem (Prelude.Maybe Prelude.Integer)
deleteLaunchTemplateVersionsResponseErrorItem_versionNumber = Lens.lens (\DeleteLaunchTemplateVersionsResponseErrorItem' {versionNumber} -> versionNumber) (\s@DeleteLaunchTemplateVersionsResponseErrorItem' {} a -> s {versionNumber = a} :: DeleteLaunchTemplateVersionsResponseErrorItem)

-- | Information about the error.
deleteLaunchTemplateVersionsResponseErrorItem_responseError :: Lens.Lens' DeleteLaunchTemplateVersionsResponseErrorItem (Prelude.Maybe ResponseError)
deleteLaunchTemplateVersionsResponseErrorItem_responseError = Lens.lens (\DeleteLaunchTemplateVersionsResponseErrorItem' {responseError} -> responseError) (\s@DeleteLaunchTemplateVersionsResponseErrorItem' {} a -> s {responseError = a} :: DeleteLaunchTemplateVersionsResponseErrorItem)

instance
  Core.FromXML
    DeleteLaunchTemplateVersionsResponseErrorItem
  where
  parseXML x =
    DeleteLaunchTemplateVersionsResponseErrorItem'
      Prelude.<$> (x Core..@? "launchTemplateName")
        Prelude.<*> (x Core..@? "launchTemplateId")
        Prelude.<*> (x Core..@? "versionNumber")
        Prelude.<*> (x Core..@? "responseError")

instance
  Prelude.Hashable
    DeleteLaunchTemplateVersionsResponseErrorItem
  where
  hashWithSalt
    _salt
    DeleteLaunchTemplateVersionsResponseErrorItem' {..} =
      _salt `Prelude.hashWithSalt` launchTemplateName
        `Prelude.hashWithSalt` launchTemplateId
        `Prelude.hashWithSalt` versionNumber
        `Prelude.hashWithSalt` responseError

instance
  Prelude.NFData
    DeleteLaunchTemplateVersionsResponseErrorItem
  where
  rnf
    DeleteLaunchTemplateVersionsResponseErrorItem' {..} =
      Prelude.rnf launchTemplateName
        `Prelude.seq` Prelude.rnf launchTemplateId
        `Prelude.seq` Prelude.rnf versionNumber
        `Prelude.seq` Prelude.rnf responseError
