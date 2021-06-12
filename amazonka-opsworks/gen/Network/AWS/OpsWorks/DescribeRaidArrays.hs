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
-- Module      : Network.AWS.OpsWorks.DescribeRaidArrays
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe an instance\'s RAID arrays.
--
-- This call accepts only one resource-identifying parameter.
--
-- __Required Permissions__: To use this action, an IAM user must have a
-- Show, Deploy, or Manage permissions level for the stack, or an attached
-- policy that explicitly grants permissions. For more information about
-- user permissions, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions>.
module Network.AWS.OpsWorks.DescribeRaidArrays
  ( -- * Creating a Request
    DescribeRaidArrays (..),
    newDescribeRaidArrays,

    -- * Request Lenses
    describeRaidArrays_instanceId,
    describeRaidArrays_raidArrayIds,
    describeRaidArrays_stackId,

    -- * Destructuring the Response
    DescribeRaidArraysResponse (..),
    newDescribeRaidArraysResponse,

    -- * Response Lenses
    describeRaidArraysResponse_raidArrays,
    describeRaidArraysResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpsWorks.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeRaidArrays' smart constructor.
data DescribeRaidArrays = DescribeRaidArrays'
  { -- | The instance ID. If you use this parameter, @DescribeRaidArrays@ returns
    -- descriptions of the RAID arrays associated with the specified instance.
    instanceId :: Core.Maybe Core.Text,
    -- | An array of RAID array IDs. If you use this parameter,
    -- @DescribeRaidArrays@ returns descriptions of the specified arrays.
    -- Otherwise, it returns a description of every array.
    raidArrayIds :: Core.Maybe [Core.Text],
    -- | The stack ID.
    stackId :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeRaidArrays' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceId', 'describeRaidArrays_instanceId' - The instance ID. If you use this parameter, @DescribeRaidArrays@ returns
-- descriptions of the RAID arrays associated with the specified instance.
--
-- 'raidArrayIds', 'describeRaidArrays_raidArrayIds' - An array of RAID array IDs. If you use this parameter,
-- @DescribeRaidArrays@ returns descriptions of the specified arrays.
-- Otherwise, it returns a description of every array.
--
-- 'stackId', 'describeRaidArrays_stackId' - The stack ID.
newDescribeRaidArrays ::
  DescribeRaidArrays
newDescribeRaidArrays =
  DescribeRaidArrays'
    { instanceId = Core.Nothing,
      raidArrayIds = Core.Nothing,
      stackId = Core.Nothing
    }

-- | The instance ID. If you use this parameter, @DescribeRaidArrays@ returns
-- descriptions of the RAID arrays associated with the specified instance.
describeRaidArrays_instanceId :: Lens.Lens' DescribeRaidArrays (Core.Maybe Core.Text)
describeRaidArrays_instanceId = Lens.lens (\DescribeRaidArrays' {instanceId} -> instanceId) (\s@DescribeRaidArrays' {} a -> s {instanceId = a} :: DescribeRaidArrays)

-- | An array of RAID array IDs. If you use this parameter,
-- @DescribeRaidArrays@ returns descriptions of the specified arrays.
-- Otherwise, it returns a description of every array.
describeRaidArrays_raidArrayIds :: Lens.Lens' DescribeRaidArrays (Core.Maybe [Core.Text])
describeRaidArrays_raidArrayIds = Lens.lens (\DescribeRaidArrays' {raidArrayIds} -> raidArrayIds) (\s@DescribeRaidArrays' {} a -> s {raidArrayIds = a} :: DescribeRaidArrays) Core.. Lens.mapping Lens._Coerce

-- | The stack ID.
describeRaidArrays_stackId :: Lens.Lens' DescribeRaidArrays (Core.Maybe Core.Text)
describeRaidArrays_stackId = Lens.lens (\DescribeRaidArrays' {stackId} -> stackId) (\s@DescribeRaidArrays' {} a -> s {stackId = a} :: DescribeRaidArrays)

instance Core.AWSRequest DescribeRaidArrays where
  type
    AWSResponse DescribeRaidArrays =
      DescribeRaidArraysResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeRaidArraysResponse'
            Core.<$> (x Core..?> "RaidArrays" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeRaidArrays

instance Core.NFData DescribeRaidArrays

instance Core.ToHeaders DescribeRaidArrays where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OpsWorks_20130218.DescribeRaidArrays" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeRaidArrays where
  toJSON DescribeRaidArrays' {..} =
    Core.object
      ( Core.catMaybes
          [ ("InstanceId" Core..=) Core.<$> instanceId,
            ("RaidArrayIds" Core..=) Core.<$> raidArrayIds,
            ("StackId" Core..=) Core.<$> stackId
          ]
      )

instance Core.ToPath DescribeRaidArrays where
  toPath = Core.const "/"

instance Core.ToQuery DescribeRaidArrays where
  toQuery = Core.const Core.mempty

-- | Contains the response to a @DescribeRaidArrays@ request.
--
-- /See:/ 'newDescribeRaidArraysResponse' smart constructor.
data DescribeRaidArraysResponse = DescribeRaidArraysResponse'
  { -- | A @RaidArrays@ object that describes the specified RAID arrays.
    raidArrays :: Core.Maybe [RaidArray],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeRaidArraysResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'raidArrays', 'describeRaidArraysResponse_raidArrays' - A @RaidArrays@ object that describes the specified RAID arrays.
--
-- 'httpStatus', 'describeRaidArraysResponse_httpStatus' - The response's http status code.
newDescribeRaidArraysResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeRaidArraysResponse
newDescribeRaidArraysResponse pHttpStatus_ =
  DescribeRaidArraysResponse'
    { raidArrays =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A @RaidArrays@ object that describes the specified RAID arrays.
describeRaidArraysResponse_raidArrays :: Lens.Lens' DescribeRaidArraysResponse (Core.Maybe [RaidArray])
describeRaidArraysResponse_raidArrays = Lens.lens (\DescribeRaidArraysResponse' {raidArrays} -> raidArrays) (\s@DescribeRaidArraysResponse' {} a -> s {raidArrays = a} :: DescribeRaidArraysResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeRaidArraysResponse_httpStatus :: Lens.Lens' DescribeRaidArraysResponse Core.Int
describeRaidArraysResponse_httpStatus = Lens.lens (\DescribeRaidArraysResponse' {httpStatus} -> httpStatus) (\s@DescribeRaidArraysResponse' {} a -> s {httpStatus = a} :: DescribeRaidArraysResponse)

instance Core.NFData DescribeRaidArraysResponse
