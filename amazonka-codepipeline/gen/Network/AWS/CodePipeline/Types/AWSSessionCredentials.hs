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
-- Module      : Network.AWS.CodePipeline.Types.AWSSessionCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.AWSSessionCredentials where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Represents an AWS session credentials object. These credentials are
-- temporary credentials that are issued by AWS Secure Token Service (STS).
-- They can be used to access input and output artifacts in the S3 bucket
-- used to store artifact for the pipeline in AWS CodePipeline.
--
-- /See:/ 'newAWSSessionCredentials' smart constructor.
data AWSSessionCredentials = AWSSessionCredentials'
  { -- | The access key for the session.
    accessKeyId :: Core.Sensitive Core.Text,
    -- | The secret access key for the session.
    secretAccessKey :: Core.Sensitive Core.Text,
    -- | The token for the session.
    sessionToken :: Core.Sensitive Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'AWSSessionCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessKeyId', 'aWSSessionCredentials_accessKeyId' - The access key for the session.
--
-- 'secretAccessKey', 'aWSSessionCredentials_secretAccessKey' - The secret access key for the session.
--
-- 'sessionToken', 'aWSSessionCredentials_sessionToken' - The token for the session.
newAWSSessionCredentials ::
  -- | 'accessKeyId'
  Core.Text ->
  -- | 'secretAccessKey'
  Core.Text ->
  -- | 'sessionToken'
  Core.Text ->
  AWSSessionCredentials
newAWSSessionCredentials
  pAccessKeyId_
  pSecretAccessKey_
  pSessionToken_ =
    AWSSessionCredentials'
      { accessKeyId =
          Core._Sensitive Lens.# pAccessKeyId_,
        secretAccessKey =
          Core._Sensitive Lens.# pSecretAccessKey_,
        sessionToken = Core._Sensitive Lens.# pSessionToken_
      }

-- | The access key for the session.
aWSSessionCredentials_accessKeyId :: Lens.Lens' AWSSessionCredentials Core.Text
aWSSessionCredentials_accessKeyId = Lens.lens (\AWSSessionCredentials' {accessKeyId} -> accessKeyId) (\s@AWSSessionCredentials' {} a -> s {accessKeyId = a} :: AWSSessionCredentials) Core.. Core._Sensitive

-- | The secret access key for the session.
aWSSessionCredentials_secretAccessKey :: Lens.Lens' AWSSessionCredentials Core.Text
aWSSessionCredentials_secretAccessKey = Lens.lens (\AWSSessionCredentials' {secretAccessKey} -> secretAccessKey) (\s@AWSSessionCredentials' {} a -> s {secretAccessKey = a} :: AWSSessionCredentials) Core.. Core._Sensitive

-- | The token for the session.
aWSSessionCredentials_sessionToken :: Lens.Lens' AWSSessionCredentials Core.Text
aWSSessionCredentials_sessionToken = Lens.lens (\AWSSessionCredentials' {sessionToken} -> sessionToken) (\s@AWSSessionCredentials' {} a -> s {sessionToken = a} :: AWSSessionCredentials) Core.. Core._Sensitive

instance Core.FromJSON AWSSessionCredentials where
  parseJSON =
    Core.withObject
      "AWSSessionCredentials"
      ( \x ->
          AWSSessionCredentials'
            Core.<$> (x Core..: "accessKeyId")
            Core.<*> (x Core..: "secretAccessKey")
            Core.<*> (x Core..: "sessionToken")
      )

instance Core.Hashable AWSSessionCredentials

instance Core.NFData AWSSessionCredentials
