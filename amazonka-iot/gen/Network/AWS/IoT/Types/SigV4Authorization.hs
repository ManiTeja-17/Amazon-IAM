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
-- Module      : Network.AWS.IoT.Types.SigV4Authorization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.SigV4Authorization where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4 signing process>.
--
-- /See:/ 'newSigV4Authorization' smart constructor.
data SigV4Authorization = SigV4Authorization'
  { -- | The signing region.
    signingRegion :: Core.Text,
    -- | The service name to use while signing with Sig V4.
    serviceName :: Core.Text,
    -- | The ARN of the signing role.
    roleArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SigV4Authorization' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'signingRegion', 'sigV4Authorization_signingRegion' - The signing region.
--
-- 'serviceName', 'sigV4Authorization_serviceName' - The service name to use while signing with Sig V4.
--
-- 'roleArn', 'sigV4Authorization_roleArn' - The ARN of the signing role.
newSigV4Authorization ::
  -- | 'signingRegion'
  Core.Text ->
  -- | 'serviceName'
  Core.Text ->
  -- | 'roleArn'
  Core.Text ->
  SigV4Authorization
newSigV4Authorization
  pSigningRegion_
  pServiceName_
  pRoleArn_ =
    SigV4Authorization'
      { signingRegion =
          pSigningRegion_,
        serviceName = pServiceName_,
        roleArn = pRoleArn_
      }

-- | The signing region.
sigV4Authorization_signingRegion :: Lens.Lens' SigV4Authorization Core.Text
sigV4Authorization_signingRegion = Lens.lens (\SigV4Authorization' {signingRegion} -> signingRegion) (\s@SigV4Authorization' {} a -> s {signingRegion = a} :: SigV4Authorization)

-- | The service name to use while signing with Sig V4.
sigV4Authorization_serviceName :: Lens.Lens' SigV4Authorization Core.Text
sigV4Authorization_serviceName = Lens.lens (\SigV4Authorization' {serviceName} -> serviceName) (\s@SigV4Authorization' {} a -> s {serviceName = a} :: SigV4Authorization)

-- | The ARN of the signing role.
sigV4Authorization_roleArn :: Lens.Lens' SigV4Authorization Core.Text
sigV4Authorization_roleArn = Lens.lens (\SigV4Authorization' {roleArn} -> roleArn) (\s@SigV4Authorization' {} a -> s {roleArn = a} :: SigV4Authorization)

instance Core.FromJSON SigV4Authorization where
  parseJSON =
    Core.withObject
      "SigV4Authorization"
      ( \x ->
          SigV4Authorization'
            Core.<$> (x Core..: "signingRegion")
            Core.<*> (x Core..: "serviceName")
            Core.<*> (x Core..: "roleArn")
      )

instance Core.Hashable SigV4Authorization

instance Core.NFData SigV4Authorization

instance Core.ToJSON SigV4Authorization where
  toJSON SigV4Authorization' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("signingRegion" Core..= signingRegion),
            Core.Just ("serviceName" Core..= serviceName),
            Core.Just ("roleArn" Core..= roleArn)
          ]
      )
