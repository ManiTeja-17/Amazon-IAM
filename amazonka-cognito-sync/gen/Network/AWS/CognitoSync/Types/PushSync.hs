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
-- Module      : Network.AWS.CognitoSync.Types.PushSync
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoSync.Types.PushSync where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Configuration options to be applied to the identity pool.
--
-- /See:/ 'newPushSync' smart constructor.
data PushSync = PushSync'
  { -- | A role configured to allow Cognito to call SNS on behalf of the
    -- developer.
    roleArn :: Core.Maybe Core.Text,
    -- | List of SNS platform application ARNs that could be used by clients.
    applicationArns :: Core.Maybe [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PushSync' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleArn', 'pushSync_roleArn' - A role configured to allow Cognito to call SNS on behalf of the
-- developer.
--
-- 'applicationArns', 'pushSync_applicationArns' - List of SNS platform application ARNs that could be used by clients.
newPushSync ::
  PushSync
newPushSync =
  PushSync'
    { roleArn = Core.Nothing,
      applicationArns = Core.Nothing
    }

-- | A role configured to allow Cognito to call SNS on behalf of the
-- developer.
pushSync_roleArn :: Lens.Lens' PushSync (Core.Maybe Core.Text)
pushSync_roleArn = Lens.lens (\PushSync' {roleArn} -> roleArn) (\s@PushSync' {} a -> s {roleArn = a} :: PushSync)

-- | List of SNS platform application ARNs that could be used by clients.
pushSync_applicationArns :: Lens.Lens' PushSync (Core.Maybe [Core.Text])
pushSync_applicationArns = Lens.lens (\PushSync' {applicationArns} -> applicationArns) (\s@PushSync' {} a -> s {applicationArns = a} :: PushSync) Core.. Lens.mapping Lens._Coerce

instance Core.FromJSON PushSync where
  parseJSON =
    Core.withObject
      "PushSync"
      ( \x ->
          PushSync'
            Core.<$> (x Core..:? "RoleArn")
            Core.<*> (x Core..:? "ApplicationArns" Core..!= Core.mempty)
      )

instance Core.Hashable PushSync

instance Core.NFData PushSync

instance Core.ToJSON PushSync where
  toJSON PushSync' {..} =
    Core.object
      ( Core.catMaybes
          [ ("RoleArn" Core..=) Core.<$> roleArn,
            ("ApplicationArns" Core..=)
              Core.<$> applicationArns
          ]
      )
