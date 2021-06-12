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
-- Module      : Network.AWS.CodeDeploy.Types.RevisionInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.RevisionInfo where

import Network.AWS.CodeDeploy.Types.GenericRevisionInfo
import Network.AWS.CodeDeploy.Types.RevisionLocation
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Information about an application revision.
--
-- /See:/ 'newRevisionInfo' smart constructor.
data RevisionInfo = RevisionInfo'
  { -- | Information about an application revision, including usage details and
    -- associated deployment groups.
    genericRevisionInfo :: Core.Maybe GenericRevisionInfo,
    -- | Information about the location and type of an application revision.
    revisionLocation :: Core.Maybe RevisionLocation
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'RevisionInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'genericRevisionInfo', 'revisionInfo_genericRevisionInfo' - Information about an application revision, including usage details and
-- associated deployment groups.
--
-- 'revisionLocation', 'revisionInfo_revisionLocation' - Information about the location and type of an application revision.
newRevisionInfo ::
  RevisionInfo
newRevisionInfo =
  RevisionInfo'
    { genericRevisionInfo = Core.Nothing,
      revisionLocation = Core.Nothing
    }

-- | Information about an application revision, including usage details and
-- associated deployment groups.
revisionInfo_genericRevisionInfo :: Lens.Lens' RevisionInfo (Core.Maybe GenericRevisionInfo)
revisionInfo_genericRevisionInfo = Lens.lens (\RevisionInfo' {genericRevisionInfo} -> genericRevisionInfo) (\s@RevisionInfo' {} a -> s {genericRevisionInfo = a} :: RevisionInfo)

-- | Information about the location and type of an application revision.
revisionInfo_revisionLocation :: Lens.Lens' RevisionInfo (Core.Maybe RevisionLocation)
revisionInfo_revisionLocation = Lens.lens (\RevisionInfo' {revisionLocation} -> revisionLocation) (\s@RevisionInfo' {} a -> s {revisionLocation = a} :: RevisionInfo)

instance Core.FromJSON RevisionInfo where
  parseJSON =
    Core.withObject
      "RevisionInfo"
      ( \x ->
          RevisionInfo'
            Core.<$> (x Core..:? "genericRevisionInfo")
            Core.<*> (x Core..:? "revisionLocation")
      )

instance Core.Hashable RevisionInfo

instance Core.NFData RevisionInfo
