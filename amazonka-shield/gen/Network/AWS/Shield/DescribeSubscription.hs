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
-- Module      : Network.AWS.Shield.DescribeSubscription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides details about the AWS Shield Advanced subscription for an
-- account.
module Network.AWS.Shield.DescribeSubscription
  ( -- * Creating a Request
    DescribeSubscription (..),
    newDescribeSubscription,

    -- * Destructuring the Response
    DescribeSubscriptionResponse (..),
    newDescribeSubscriptionResponse,

    -- * Response Lenses
    describeSubscriptionResponse_subscription,
    describeSubscriptionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Shield.Types

-- | /See:/ 'newDescribeSubscription' smart constructor.
data DescribeSubscription = DescribeSubscription'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeSubscription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDescribeSubscription ::
  DescribeSubscription
newDescribeSubscription = DescribeSubscription'

instance Core.AWSRequest DescribeSubscription where
  type
    AWSResponse DescribeSubscription =
      DescribeSubscriptionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeSubscriptionResponse'
            Core.<$> (x Core..?> "Subscription")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeSubscription

instance Core.NFData DescribeSubscription

instance Core.ToHeaders DescribeSubscription where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSShield_20160616.DescribeSubscription" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeSubscription where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath DescribeSubscription where
  toPath = Core.const "/"

instance Core.ToQuery DescribeSubscription where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeSubscriptionResponse' smart constructor.
data DescribeSubscriptionResponse = DescribeSubscriptionResponse'
  { -- | The AWS Shield Advanced subscription details for an account.
    subscription :: Core.Maybe Subscription,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeSubscriptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subscription', 'describeSubscriptionResponse_subscription' - The AWS Shield Advanced subscription details for an account.
--
-- 'httpStatus', 'describeSubscriptionResponse_httpStatus' - The response's http status code.
newDescribeSubscriptionResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeSubscriptionResponse
newDescribeSubscriptionResponse pHttpStatus_ =
  DescribeSubscriptionResponse'
    { subscription =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The AWS Shield Advanced subscription details for an account.
describeSubscriptionResponse_subscription :: Lens.Lens' DescribeSubscriptionResponse (Core.Maybe Subscription)
describeSubscriptionResponse_subscription = Lens.lens (\DescribeSubscriptionResponse' {subscription} -> subscription) (\s@DescribeSubscriptionResponse' {} a -> s {subscription = a} :: DescribeSubscriptionResponse)

-- | The response's http status code.
describeSubscriptionResponse_httpStatus :: Lens.Lens' DescribeSubscriptionResponse Core.Int
describeSubscriptionResponse_httpStatus = Lens.lens (\DescribeSubscriptionResponse' {httpStatus} -> httpStatus) (\s@DescribeSubscriptionResponse' {} a -> s {httpStatus = a} :: DescribeSubscriptionResponse)

instance Core.NFData DescribeSubscriptionResponse
