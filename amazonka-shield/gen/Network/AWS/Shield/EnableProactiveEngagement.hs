{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.EnableProactiveEngagement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Authorizes the DDoS Response Team (DRT) to use email and phone to notify
-- contacts about escalations to the DRT and to initiate proactive customer
-- support.
module Network.AWS.Shield.EnableProactiveEngagement
  ( -- * Creating a Request
    EnableProactiveEngagement (..),
    newEnableProactiveEngagement,

    -- * Destructuring the Response
    EnableProactiveEngagementResponse (..),
    newEnableProactiveEngagementResponse,

    -- * Response Lenses
    enableProactiveEngagementResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Shield.Types

-- | /See:/ 'newEnableProactiveEngagement' smart constructor.
data EnableProactiveEngagement = EnableProactiveEngagement'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EnableProactiveEngagement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newEnableProactiveEngagement ::
  EnableProactiveEngagement
newEnableProactiveEngagement =
  EnableProactiveEngagement'

instance Core.AWSRequest EnableProactiveEngagement where
  type
    AWSResponse EnableProactiveEngagement =
      EnableProactiveEngagementResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          EnableProactiveEngagementResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable EnableProactiveEngagement

instance Core.NFData EnableProactiveEngagement

instance Core.ToHeaders EnableProactiveEngagement where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSShield_20160616.EnableProactiveEngagement" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON EnableProactiveEngagement where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath EnableProactiveEngagement where
  toPath = Core.const "/"

instance Core.ToQuery EnableProactiveEngagement where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newEnableProactiveEngagementResponse' smart constructor.
data EnableProactiveEngagementResponse = EnableProactiveEngagementResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EnableProactiveEngagementResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'enableProactiveEngagementResponse_httpStatus' - The response's http status code.
newEnableProactiveEngagementResponse ::
  -- | 'httpStatus'
  Core.Int ->
  EnableProactiveEngagementResponse
newEnableProactiveEngagementResponse pHttpStatus_ =
  EnableProactiveEngagementResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
enableProactiveEngagementResponse_httpStatus :: Lens.Lens' EnableProactiveEngagementResponse Core.Int
enableProactiveEngagementResponse_httpStatus = Lens.lens (\EnableProactiveEngagementResponse' {httpStatus} -> httpStatus) (\s@EnableProactiveEngagementResponse' {} a -> s {httpStatus = a} :: EnableProactiveEngagementResponse)

instance
  Core.NFData
    EnableProactiveEngagementResponse
