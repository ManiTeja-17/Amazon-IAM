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
-- Module      : Network.AWS.MediaLive.Types.FrameCaptureHlsSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.FrameCaptureHlsSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Frame Capture Hls Settings
--
-- /See:/ 'newFrameCaptureHlsSettings' smart constructor.
data FrameCaptureHlsSettings = FrameCaptureHlsSettings'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'FrameCaptureHlsSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newFrameCaptureHlsSettings ::
  FrameCaptureHlsSettings
newFrameCaptureHlsSettings = FrameCaptureHlsSettings'

instance Core.FromJSON FrameCaptureHlsSettings where
  parseJSON =
    Core.withObject
      "FrameCaptureHlsSettings"
      (\x -> Core.pure FrameCaptureHlsSettings')

instance Core.Hashable FrameCaptureHlsSettings

instance Core.NFData FrameCaptureHlsSettings

instance Core.ToJSON FrameCaptureHlsSettings where
  toJSON = Core.const (Core.Object Core.mempty)
