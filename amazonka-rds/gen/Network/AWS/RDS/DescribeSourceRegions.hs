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
-- Module      : Network.AWS.RDS.DescribeSourceRegions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the source AWS Regions where the current AWS Region
-- can create a read replica, copy a DB snapshot from, or replicate
-- automated backups from. This API action supports pagination.
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeSourceRegions
  ( -- * Creating a Request
    DescribeSourceRegions (..),
    newDescribeSourceRegions,

    -- * Request Lenses
    describeSourceRegions_regionName,
    describeSourceRegions_filters,
    describeSourceRegions_marker,
    describeSourceRegions_maxRecords,

    -- * Destructuring the Response
    DescribeSourceRegionsResponse (..),
    newDescribeSourceRegionsResponse,

    -- * Response Lenses
    describeSourceRegionsResponse_sourceRegions,
    describeSourceRegionsResponse_marker,
    describeSourceRegionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDescribeSourceRegions' smart constructor.
data DescribeSourceRegions = DescribeSourceRegions'
  { -- | The source AWS Region name. For example, @us-east-1@.
    --
    -- Constraints:
    --
    -- -   Must specify a valid AWS Region name.
    regionName :: Core.Maybe Core.Text,
    -- | This parameter isn\'t currently supported.
    filters :: Core.Maybe [Filter],
    -- | An optional pagination token provided by a previous
    -- @DescribeSourceRegions@ request. If this parameter is specified, the
    -- response includes only records beyond the marker, up to the value
    -- specified by @MaxRecords@.
    marker :: Core.Maybe Core.Text,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- called a marker is included in the response so you can retrieve the
    -- remaining results.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeSourceRegions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'regionName', 'describeSourceRegions_regionName' - The source AWS Region name. For example, @us-east-1@.
--
-- Constraints:
--
-- -   Must specify a valid AWS Region name.
--
-- 'filters', 'describeSourceRegions_filters' - This parameter isn\'t currently supported.
--
-- 'marker', 'describeSourceRegions_marker' - An optional pagination token provided by a previous
-- @DescribeSourceRegions@ request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
--
-- 'maxRecords', 'describeSourceRegions_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
newDescribeSourceRegions ::
  DescribeSourceRegions
newDescribeSourceRegions =
  DescribeSourceRegions'
    { regionName = Core.Nothing,
      filters = Core.Nothing,
      marker = Core.Nothing,
      maxRecords = Core.Nothing
    }

-- | The source AWS Region name. For example, @us-east-1@.
--
-- Constraints:
--
-- -   Must specify a valid AWS Region name.
describeSourceRegions_regionName :: Lens.Lens' DescribeSourceRegions (Core.Maybe Core.Text)
describeSourceRegions_regionName = Lens.lens (\DescribeSourceRegions' {regionName} -> regionName) (\s@DescribeSourceRegions' {} a -> s {regionName = a} :: DescribeSourceRegions)

-- | This parameter isn\'t currently supported.
describeSourceRegions_filters :: Lens.Lens' DescribeSourceRegions (Core.Maybe [Filter])
describeSourceRegions_filters = Lens.lens (\DescribeSourceRegions' {filters} -> filters) (\s@DescribeSourceRegions' {} a -> s {filters = a} :: DescribeSourceRegions) Core.. Lens.mapping Lens._Coerce

-- | An optional pagination token provided by a previous
-- @DescribeSourceRegions@ request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
describeSourceRegions_marker :: Lens.Lens' DescribeSourceRegions (Core.Maybe Core.Text)
describeSourceRegions_marker = Lens.lens (\DescribeSourceRegions' {marker} -> marker) (\s@DescribeSourceRegions' {} a -> s {marker = a} :: DescribeSourceRegions)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeSourceRegions_maxRecords :: Lens.Lens' DescribeSourceRegions (Core.Maybe Core.Int)
describeSourceRegions_maxRecords = Lens.lens (\DescribeSourceRegions' {maxRecords} -> maxRecords) (\s@DescribeSourceRegions' {} a -> s {maxRecords = a} :: DescribeSourceRegions)

instance Core.AWSPager DescribeSourceRegions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeSourceRegionsResponse_marker
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeSourceRegionsResponse_sourceRegions
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeSourceRegions_marker
          Lens..~ rs
          Lens.^? describeSourceRegionsResponse_marker
            Core.. Lens._Just

instance Core.AWSRequest DescribeSourceRegions where
  type
    AWSResponse DescribeSourceRegions =
      DescribeSourceRegionsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeSourceRegionsResult"
      ( \s h x ->
          DescribeSourceRegionsResponse'
            Core.<$> ( x Core..@? "SourceRegions" Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "SourceRegion")
                     )
            Core.<*> (x Core..@? "Marker")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeSourceRegions

instance Core.NFData DescribeSourceRegions

instance Core.ToHeaders DescribeSourceRegions where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DescribeSourceRegions where
  toPath = Core.const "/"

instance Core.ToQuery DescribeSourceRegions where
  toQuery DescribeSourceRegions' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DescribeSourceRegions" :: Core.ByteString),
        "Version" Core.=: ("2014-10-31" :: Core.ByteString),
        "RegionName" Core.=: regionName,
        "Filters"
          Core.=: Core.toQuery
            (Core.toQueryList "Filter" Core.<$> filters),
        "Marker" Core.=: marker,
        "MaxRecords" Core.=: maxRecords
      ]

-- | Contains the result of a successful invocation of the
-- @DescribeSourceRegions@ action.
--
-- /See:/ 'newDescribeSourceRegionsResponse' smart constructor.
data DescribeSourceRegionsResponse = DescribeSourceRegionsResponse'
  { -- | A list of SourceRegion instances that contains each source AWS Region
    -- that the current AWS Region can get a read replica or a DB snapshot
    -- from.
    sourceRegions :: Core.Maybe [SourceRegion],
    -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeSourceRegionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceRegions', 'describeSourceRegionsResponse_sourceRegions' - A list of SourceRegion instances that contains each source AWS Region
-- that the current AWS Region can get a read replica or a DB snapshot
-- from.
--
-- 'marker', 'describeSourceRegionsResponse_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'httpStatus', 'describeSourceRegionsResponse_httpStatus' - The response's http status code.
newDescribeSourceRegionsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeSourceRegionsResponse
newDescribeSourceRegionsResponse pHttpStatus_ =
  DescribeSourceRegionsResponse'
    { sourceRegions =
        Core.Nothing,
      marker = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of SourceRegion instances that contains each source AWS Region
-- that the current AWS Region can get a read replica or a DB snapshot
-- from.
describeSourceRegionsResponse_sourceRegions :: Lens.Lens' DescribeSourceRegionsResponse (Core.Maybe [SourceRegion])
describeSourceRegionsResponse_sourceRegions = Lens.lens (\DescribeSourceRegionsResponse' {sourceRegions} -> sourceRegions) (\s@DescribeSourceRegionsResponse' {} a -> s {sourceRegions = a} :: DescribeSourceRegionsResponse) Core.. Lens.mapping Lens._Coerce

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeSourceRegionsResponse_marker :: Lens.Lens' DescribeSourceRegionsResponse (Core.Maybe Core.Text)
describeSourceRegionsResponse_marker = Lens.lens (\DescribeSourceRegionsResponse' {marker} -> marker) (\s@DescribeSourceRegionsResponse' {} a -> s {marker = a} :: DescribeSourceRegionsResponse)

-- | The response's http status code.
describeSourceRegionsResponse_httpStatus :: Lens.Lens' DescribeSourceRegionsResponse Core.Int
describeSourceRegionsResponse_httpStatus = Lens.lens (\DescribeSourceRegionsResponse' {httpStatus} -> httpStatus) (\s@DescribeSourceRegionsResponse' {} a -> s {httpStatus = a} :: DescribeSourceRegionsResponse)

instance Core.NFData DescribeSourceRegionsResponse
