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
-- Module      : Network.AWS.DMS.DescribeConnections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the status of the connections that have been made between the
-- replication instance and an endpoint. Connections are created when you
-- test an endpoint.
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeConnections
  ( -- * Creating a Request
    DescribeConnections (..),
    newDescribeConnections,

    -- * Request Lenses
    describeConnections_filters,
    describeConnections_marker,
    describeConnections_maxRecords,

    -- * Destructuring the Response
    DescribeConnectionsResponse (..),
    newDescribeConnectionsResponse,

    -- * Response Lenses
    describeConnectionsResponse_connections,
    describeConnectionsResponse_marker,
    describeConnectionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDescribeConnections' smart constructor.
data DescribeConnections = DescribeConnections'
  { -- | The filters applied to the connection.
    --
    -- Valid filter names: endpoint-arn | replication-instance-arn
    filters :: Core.Maybe [Filter],
    -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Core.Maybe Core.Text,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- called a marker is included in the response so that the remaining
    -- results can be retrieved.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeConnections' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'describeConnections_filters' - The filters applied to the connection.
--
-- Valid filter names: endpoint-arn | replication-instance-arn
--
-- 'marker', 'describeConnections_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'maxRecords', 'describeConnections_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that the remaining
-- results can be retrieved.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
newDescribeConnections ::
  DescribeConnections
newDescribeConnections =
  DescribeConnections'
    { filters = Core.Nothing,
      marker = Core.Nothing,
      maxRecords = Core.Nothing
    }

-- | The filters applied to the connection.
--
-- Valid filter names: endpoint-arn | replication-instance-arn
describeConnections_filters :: Lens.Lens' DescribeConnections (Core.Maybe [Filter])
describeConnections_filters = Lens.lens (\DescribeConnections' {filters} -> filters) (\s@DescribeConnections' {} a -> s {filters = a} :: DescribeConnections) Core.. Lens.mapping Lens._Coerce

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeConnections_marker :: Lens.Lens' DescribeConnections (Core.Maybe Core.Text)
describeConnections_marker = Lens.lens (\DescribeConnections' {marker} -> marker) (\s@DescribeConnections' {} a -> s {marker = a} :: DescribeConnections)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that the remaining
-- results can be retrieved.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeConnections_maxRecords :: Lens.Lens' DescribeConnections (Core.Maybe Core.Int)
describeConnections_maxRecords = Lens.lens (\DescribeConnections' {maxRecords} -> maxRecords) (\s@DescribeConnections' {} a -> s {maxRecords = a} :: DescribeConnections)

instance Core.AWSPager DescribeConnections where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeConnectionsResponse_marker Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeConnectionsResponse_connections
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeConnections_marker
          Lens..~ rs
          Lens.^? describeConnectionsResponse_marker Core.. Lens._Just

instance Core.AWSRequest DescribeConnections where
  type
    AWSResponse DescribeConnections =
      DescribeConnectionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeConnectionsResponse'
            Core.<$> (x Core..?> "Connections" Core..!@ Core.mempty)
            Core.<*> (x Core..?> "Marker")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeConnections

instance Core.NFData DescribeConnections

instance Core.ToHeaders DescribeConnections where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonDMSv20160101.DescribeConnections" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeConnections where
  toJSON DescribeConnections' {..} =
    Core.object
      ( Core.catMaybes
          [ ("Filters" Core..=) Core.<$> filters,
            ("Marker" Core..=) Core.<$> marker,
            ("MaxRecords" Core..=) Core.<$> maxRecords
          ]
      )

instance Core.ToPath DescribeConnections where
  toPath = Core.const "/"

instance Core.ToQuery DescribeConnections where
  toQuery = Core.const Core.mempty

-- |
--
-- /See:/ 'newDescribeConnectionsResponse' smart constructor.
data DescribeConnectionsResponse = DescribeConnectionsResponse'
  { -- | A description of the connections.
    connections :: Core.Maybe [Connection],
    -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeConnectionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connections', 'describeConnectionsResponse_connections' - A description of the connections.
--
-- 'marker', 'describeConnectionsResponse_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'httpStatus', 'describeConnectionsResponse_httpStatus' - The response's http status code.
newDescribeConnectionsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeConnectionsResponse
newDescribeConnectionsResponse pHttpStatus_ =
  DescribeConnectionsResponse'
    { connections =
        Core.Nothing,
      marker = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A description of the connections.
describeConnectionsResponse_connections :: Lens.Lens' DescribeConnectionsResponse (Core.Maybe [Connection])
describeConnectionsResponse_connections = Lens.lens (\DescribeConnectionsResponse' {connections} -> connections) (\s@DescribeConnectionsResponse' {} a -> s {connections = a} :: DescribeConnectionsResponse) Core.. Lens.mapping Lens._Coerce

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeConnectionsResponse_marker :: Lens.Lens' DescribeConnectionsResponse (Core.Maybe Core.Text)
describeConnectionsResponse_marker = Lens.lens (\DescribeConnectionsResponse' {marker} -> marker) (\s@DescribeConnectionsResponse' {} a -> s {marker = a} :: DescribeConnectionsResponse)

-- | The response's http status code.
describeConnectionsResponse_httpStatus :: Lens.Lens' DescribeConnectionsResponse Core.Int
describeConnectionsResponse_httpStatus = Lens.lens (\DescribeConnectionsResponse' {httpStatus} -> httpStatus) (\s@DescribeConnectionsResponse' {} a -> s {httpStatus = a} :: DescribeConnectionsResponse)

instance Core.NFData DescribeConnectionsResponse
