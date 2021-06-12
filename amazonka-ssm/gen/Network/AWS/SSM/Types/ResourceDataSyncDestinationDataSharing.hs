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
-- Module      : Network.AWS.SSM.Types.ResourceDataSyncDestinationDataSharing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ResourceDataSyncDestinationDataSharing where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Synchronize Systems Manager Inventory data from multiple AWS accounts
-- defined in AWS Organizations to a centralized S3 bucket. Data is
-- synchronized to individual key prefixes in the central bucket. Each key
-- prefix represents a different AWS account ID.
--
-- /See:/ 'newResourceDataSyncDestinationDataSharing' smart constructor.
data ResourceDataSyncDestinationDataSharing = ResourceDataSyncDestinationDataSharing'
  { -- | The sharing data type. Only @Organization@ is supported.
    destinationDataSharingType :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ResourceDataSyncDestinationDataSharing' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'destinationDataSharingType', 'resourceDataSyncDestinationDataSharing_destinationDataSharingType' - The sharing data type. Only @Organization@ is supported.
newResourceDataSyncDestinationDataSharing ::
  ResourceDataSyncDestinationDataSharing
newResourceDataSyncDestinationDataSharing =
  ResourceDataSyncDestinationDataSharing'
    { destinationDataSharingType =
        Core.Nothing
    }

-- | The sharing data type. Only @Organization@ is supported.
resourceDataSyncDestinationDataSharing_destinationDataSharingType :: Lens.Lens' ResourceDataSyncDestinationDataSharing (Core.Maybe Core.Text)
resourceDataSyncDestinationDataSharing_destinationDataSharingType = Lens.lens (\ResourceDataSyncDestinationDataSharing' {destinationDataSharingType} -> destinationDataSharingType) (\s@ResourceDataSyncDestinationDataSharing' {} a -> s {destinationDataSharingType = a} :: ResourceDataSyncDestinationDataSharing)

instance
  Core.FromJSON
    ResourceDataSyncDestinationDataSharing
  where
  parseJSON =
    Core.withObject
      "ResourceDataSyncDestinationDataSharing"
      ( \x ->
          ResourceDataSyncDestinationDataSharing'
            Core.<$> (x Core..:? "DestinationDataSharingType")
      )

instance
  Core.Hashable
    ResourceDataSyncDestinationDataSharing

instance
  Core.NFData
    ResourceDataSyncDestinationDataSharing

instance
  Core.ToJSON
    ResourceDataSyncDestinationDataSharing
  where
  toJSON ResourceDataSyncDestinationDataSharing' {..} =
    Core.object
      ( Core.catMaybes
          [ ("DestinationDataSharingType" Core..=)
              Core.<$> destinationDataSharingType
          ]
      )
