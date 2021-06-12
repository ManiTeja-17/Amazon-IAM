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
-- Module      : Network.AWS.EC2.DescribeFastSnapshotRestores
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the state of fast snapshot restores for your snapshots.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeFastSnapshotRestores
  ( -- * Creating a Request
    DescribeFastSnapshotRestores (..),
    newDescribeFastSnapshotRestores,

    -- * Request Lenses
    describeFastSnapshotRestores_nextToken,
    describeFastSnapshotRestores_dryRun,
    describeFastSnapshotRestores_maxResults,
    describeFastSnapshotRestores_filters,

    -- * Destructuring the Response
    DescribeFastSnapshotRestoresResponse (..),
    newDescribeFastSnapshotRestoresResponse,

    -- * Response Lenses
    describeFastSnapshotRestoresResponse_fastSnapshotRestores,
    describeFastSnapshotRestoresResponse_nextToken,
    describeFastSnapshotRestoresResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeFastSnapshotRestores' smart constructor.
data DescribeFastSnapshotRestores = DescribeFastSnapshotRestores'
  { -- | The token for the next page of results.
    nextToken :: Core.Maybe Core.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Core.Maybe Core.Bool,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    maxResults :: Core.Maybe Core.Natural,
    -- | The filters. The possible values are:
    --
    -- -   @availability-zone@: The Availability Zone of the snapshot.
    --
    -- -   @owner-id@: The ID of the AWS account that enabled fast snapshot
    --     restore on the snapshot.
    --
    -- -   @snapshot-id@: The ID of the snapshot.
    --
    -- -   @state@: The state of fast snapshot restores for the snapshot
    --     (@enabling@ | @optimizing@ | @enabled@ | @disabling@ | @disabled@).
    filters :: Core.Maybe [Filter]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeFastSnapshotRestores' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeFastSnapshotRestores_nextToken' - The token for the next page of results.
--
-- 'dryRun', 'describeFastSnapshotRestores_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'describeFastSnapshotRestores_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
--
-- 'filters', 'describeFastSnapshotRestores_filters' - The filters. The possible values are:
--
-- -   @availability-zone@: The Availability Zone of the snapshot.
--
-- -   @owner-id@: The ID of the AWS account that enabled fast snapshot
--     restore on the snapshot.
--
-- -   @snapshot-id@: The ID of the snapshot.
--
-- -   @state@: The state of fast snapshot restores for the snapshot
--     (@enabling@ | @optimizing@ | @enabled@ | @disabling@ | @disabled@).
newDescribeFastSnapshotRestores ::
  DescribeFastSnapshotRestores
newDescribeFastSnapshotRestores =
  DescribeFastSnapshotRestores'
    { nextToken =
        Core.Nothing,
      dryRun = Core.Nothing,
      maxResults = Core.Nothing,
      filters = Core.Nothing
    }

-- | The token for the next page of results.
describeFastSnapshotRestores_nextToken :: Lens.Lens' DescribeFastSnapshotRestores (Core.Maybe Core.Text)
describeFastSnapshotRestores_nextToken = Lens.lens (\DescribeFastSnapshotRestores' {nextToken} -> nextToken) (\s@DescribeFastSnapshotRestores' {} a -> s {nextToken = a} :: DescribeFastSnapshotRestores)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeFastSnapshotRestores_dryRun :: Lens.Lens' DescribeFastSnapshotRestores (Core.Maybe Core.Bool)
describeFastSnapshotRestores_dryRun = Lens.lens (\DescribeFastSnapshotRestores' {dryRun} -> dryRun) (\s@DescribeFastSnapshotRestores' {} a -> s {dryRun = a} :: DescribeFastSnapshotRestores)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
describeFastSnapshotRestores_maxResults :: Lens.Lens' DescribeFastSnapshotRestores (Core.Maybe Core.Natural)
describeFastSnapshotRestores_maxResults = Lens.lens (\DescribeFastSnapshotRestores' {maxResults} -> maxResults) (\s@DescribeFastSnapshotRestores' {} a -> s {maxResults = a} :: DescribeFastSnapshotRestores)

-- | The filters. The possible values are:
--
-- -   @availability-zone@: The Availability Zone of the snapshot.
--
-- -   @owner-id@: The ID of the AWS account that enabled fast snapshot
--     restore on the snapshot.
--
-- -   @snapshot-id@: The ID of the snapshot.
--
-- -   @state@: The state of fast snapshot restores for the snapshot
--     (@enabling@ | @optimizing@ | @enabled@ | @disabling@ | @disabled@).
describeFastSnapshotRestores_filters :: Lens.Lens' DescribeFastSnapshotRestores (Core.Maybe [Filter])
describeFastSnapshotRestores_filters = Lens.lens (\DescribeFastSnapshotRestores' {filters} -> filters) (\s@DescribeFastSnapshotRestores' {} a -> s {filters = a} :: DescribeFastSnapshotRestores) Core.. Lens.mapping Lens._Coerce

instance Core.AWSPager DescribeFastSnapshotRestores where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeFastSnapshotRestoresResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeFastSnapshotRestoresResponse_fastSnapshotRestores
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeFastSnapshotRestores_nextToken
          Lens..~ rs
          Lens.^? describeFastSnapshotRestoresResponse_nextToken
            Core.. Lens._Just

instance Core.AWSRequest DescribeFastSnapshotRestores where
  type
    AWSResponse DescribeFastSnapshotRestores =
      DescribeFastSnapshotRestoresResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeFastSnapshotRestoresResponse'
            Core.<$> ( x Core..@? "fastSnapshotRestoreSet"
                         Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "item")
                     )
            Core.<*> (x Core..@? "nextToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeFastSnapshotRestores

instance Core.NFData DescribeFastSnapshotRestores

instance Core.ToHeaders DescribeFastSnapshotRestores where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DescribeFastSnapshotRestores where
  toPath = Core.const "/"

instance Core.ToQuery DescribeFastSnapshotRestores where
  toQuery DescribeFastSnapshotRestores' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DescribeFastSnapshotRestores" :: Core.ByteString),
        "Version" Core.=: ("2016-11-15" :: Core.ByteString),
        "NextToken" Core.=: nextToken,
        "DryRun" Core.=: dryRun,
        "MaxResults" Core.=: maxResults,
        Core.toQuery
          (Core.toQueryList "Filter" Core.<$> filters)
      ]

-- | /See:/ 'newDescribeFastSnapshotRestoresResponse' smart constructor.
data DescribeFastSnapshotRestoresResponse = DescribeFastSnapshotRestoresResponse'
  { -- | Information about the state of fast snapshot restores.
    fastSnapshotRestores :: Core.Maybe [DescribeFastSnapshotRestoreSuccessItem],
    -- | The token to use to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeFastSnapshotRestoresResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fastSnapshotRestores', 'describeFastSnapshotRestoresResponse_fastSnapshotRestores' - Information about the state of fast snapshot restores.
--
-- 'nextToken', 'describeFastSnapshotRestoresResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'httpStatus', 'describeFastSnapshotRestoresResponse_httpStatus' - The response's http status code.
newDescribeFastSnapshotRestoresResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeFastSnapshotRestoresResponse
newDescribeFastSnapshotRestoresResponse pHttpStatus_ =
  DescribeFastSnapshotRestoresResponse'
    { fastSnapshotRestores =
        Core.Nothing,
      nextToken = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the state of fast snapshot restores.
describeFastSnapshotRestoresResponse_fastSnapshotRestores :: Lens.Lens' DescribeFastSnapshotRestoresResponse (Core.Maybe [DescribeFastSnapshotRestoreSuccessItem])
describeFastSnapshotRestoresResponse_fastSnapshotRestores = Lens.lens (\DescribeFastSnapshotRestoresResponse' {fastSnapshotRestores} -> fastSnapshotRestores) (\s@DescribeFastSnapshotRestoresResponse' {} a -> s {fastSnapshotRestores = a} :: DescribeFastSnapshotRestoresResponse) Core.. Lens.mapping Lens._Coerce

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
describeFastSnapshotRestoresResponse_nextToken :: Lens.Lens' DescribeFastSnapshotRestoresResponse (Core.Maybe Core.Text)
describeFastSnapshotRestoresResponse_nextToken = Lens.lens (\DescribeFastSnapshotRestoresResponse' {nextToken} -> nextToken) (\s@DescribeFastSnapshotRestoresResponse' {} a -> s {nextToken = a} :: DescribeFastSnapshotRestoresResponse)

-- | The response's http status code.
describeFastSnapshotRestoresResponse_httpStatus :: Lens.Lens' DescribeFastSnapshotRestoresResponse Core.Int
describeFastSnapshotRestoresResponse_httpStatus = Lens.lens (\DescribeFastSnapshotRestoresResponse' {httpStatus} -> httpStatus) (\s@DescribeFastSnapshotRestoresResponse' {} a -> s {httpStatus = a} :: DescribeFastSnapshotRestoresResponse)

instance
  Core.NFData
    DescribeFastSnapshotRestoresResponse
