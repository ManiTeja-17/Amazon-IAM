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
-- Module      : Network.AWS.IoT.Types.PresignedUrlConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.PresignedUrlConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Configuration for pre-signed S3 URLs.
--
-- /See:/ 'newPresignedUrlConfig' smart constructor.
data PresignedUrlConfig = PresignedUrlConfig'
  { -- | The ARN of an IAM role that grants grants permission to download files
    -- from the S3 bucket where the job data\/updates are stored. The role must
    -- also grant permission for IoT to download the files.
    roleArn :: Core.Maybe Core.Text,
    -- | How long (in seconds) pre-signed URLs are valid. Valid values are 60 -
    -- 3600, the default value is 3600 seconds. Pre-signed URLs are generated
    -- when Jobs receives an MQTT request for the job document.
    expiresInSec :: Core.Maybe Core.Natural
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PresignedUrlConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleArn', 'presignedUrlConfig_roleArn' - The ARN of an IAM role that grants grants permission to download files
-- from the S3 bucket where the job data\/updates are stored. The role must
-- also grant permission for IoT to download the files.
--
-- 'expiresInSec', 'presignedUrlConfig_expiresInSec' - How long (in seconds) pre-signed URLs are valid. Valid values are 60 -
-- 3600, the default value is 3600 seconds. Pre-signed URLs are generated
-- when Jobs receives an MQTT request for the job document.
newPresignedUrlConfig ::
  PresignedUrlConfig
newPresignedUrlConfig =
  PresignedUrlConfig'
    { roleArn = Core.Nothing,
      expiresInSec = Core.Nothing
    }

-- | The ARN of an IAM role that grants grants permission to download files
-- from the S3 bucket where the job data\/updates are stored. The role must
-- also grant permission for IoT to download the files.
presignedUrlConfig_roleArn :: Lens.Lens' PresignedUrlConfig (Core.Maybe Core.Text)
presignedUrlConfig_roleArn = Lens.lens (\PresignedUrlConfig' {roleArn} -> roleArn) (\s@PresignedUrlConfig' {} a -> s {roleArn = a} :: PresignedUrlConfig)

-- | How long (in seconds) pre-signed URLs are valid. Valid values are 60 -
-- 3600, the default value is 3600 seconds. Pre-signed URLs are generated
-- when Jobs receives an MQTT request for the job document.
presignedUrlConfig_expiresInSec :: Lens.Lens' PresignedUrlConfig (Core.Maybe Core.Natural)
presignedUrlConfig_expiresInSec = Lens.lens (\PresignedUrlConfig' {expiresInSec} -> expiresInSec) (\s@PresignedUrlConfig' {} a -> s {expiresInSec = a} :: PresignedUrlConfig)

instance Core.FromJSON PresignedUrlConfig where
  parseJSON =
    Core.withObject
      "PresignedUrlConfig"
      ( \x ->
          PresignedUrlConfig'
            Core.<$> (x Core..:? "roleArn")
            Core.<*> (x Core..:? "expiresInSec")
      )

instance Core.Hashable PresignedUrlConfig

instance Core.NFData PresignedUrlConfig

instance Core.ToJSON PresignedUrlConfig where
  toJSON PresignedUrlConfig' {..} =
    Core.object
      ( Core.catMaybes
          [ ("roleArn" Core..=) Core.<$> roleArn,
            ("expiresInSec" Core..=) Core.<$> expiresInSec
          ]
      )
