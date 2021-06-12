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
-- Module      : Network.AWS.StepFunctions.Types.CloudWatchEventsExecutionDataDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.CloudWatchEventsExecutionDataDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Provides details about execution input or output.
--
-- /See:/ 'newCloudWatchEventsExecutionDataDetails' smart constructor.
data CloudWatchEventsExecutionDataDetails = CloudWatchEventsExecutionDataDetails'
  { -- | Indicates whether input or output was included in the response. Always
    -- @true@ for API calls.
    included :: Core.Maybe Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CloudWatchEventsExecutionDataDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'included', 'cloudWatchEventsExecutionDataDetails_included' - Indicates whether input or output was included in the response. Always
-- @true@ for API calls.
newCloudWatchEventsExecutionDataDetails ::
  CloudWatchEventsExecutionDataDetails
newCloudWatchEventsExecutionDataDetails =
  CloudWatchEventsExecutionDataDetails'
    { included =
        Core.Nothing
    }

-- | Indicates whether input or output was included in the response. Always
-- @true@ for API calls.
cloudWatchEventsExecutionDataDetails_included :: Lens.Lens' CloudWatchEventsExecutionDataDetails (Core.Maybe Core.Bool)
cloudWatchEventsExecutionDataDetails_included = Lens.lens (\CloudWatchEventsExecutionDataDetails' {included} -> included) (\s@CloudWatchEventsExecutionDataDetails' {} a -> s {included = a} :: CloudWatchEventsExecutionDataDetails)

instance
  Core.FromJSON
    CloudWatchEventsExecutionDataDetails
  where
  parseJSON =
    Core.withObject
      "CloudWatchEventsExecutionDataDetails"
      ( \x ->
          CloudWatchEventsExecutionDataDetails'
            Core.<$> (x Core..:? "included")
      )

instance
  Core.Hashable
    CloudWatchEventsExecutionDataDetails

instance
  Core.NFData
    CloudWatchEventsExecutionDataDetails
