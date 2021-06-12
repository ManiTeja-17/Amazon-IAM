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
-- Module      : Network.AWS.MediaLive.Types.MediaConnectFlow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MediaConnectFlow where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The settings for a MediaConnect Flow.
--
-- /See:/ 'newMediaConnectFlow' smart constructor.
data MediaConnectFlow = MediaConnectFlow'
  { -- | The unique ARN of the MediaConnect Flow being used as a source.
    flowArn :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'MediaConnectFlow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flowArn', 'mediaConnectFlow_flowArn' - The unique ARN of the MediaConnect Flow being used as a source.
newMediaConnectFlow ::
  MediaConnectFlow
newMediaConnectFlow =
  MediaConnectFlow' {flowArn = Core.Nothing}

-- | The unique ARN of the MediaConnect Flow being used as a source.
mediaConnectFlow_flowArn :: Lens.Lens' MediaConnectFlow (Core.Maybe Core.Text)
mediaConnectFlow_flowArn = Lens.lens (\MediaConnectFlow' {flowArn} -> flowArn) (\s@MediaConnectFlow' {} a -> s {flowArn = a} :: MediaConnectFlow)

instance Core.FromJSON MediaConnectFlow where
  parseJSON =
    Core.withObject
      "MediaConnectFlow"
      ( \x ->
          MediaConnectFlow' Core.<$> (x Core..:? "flowArn")
      )

instance Core.Hashable MediaConnectFlow

instance Core.NFData MediaConnectFlow
