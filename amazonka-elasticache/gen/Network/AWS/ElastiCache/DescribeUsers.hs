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
-- Module      : Network.AWS.ElastiCache.DescribeUsers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of users.
--
-- This operation returns paginated results.
module Network.AWS.ElastiCache.DescribeUsers
  ( -- * Creating a Request
    DescribeUsers (..),
    newDescribeUsers,

    -- * Request Lenses
    describeUsers_userId,
    describeUsers_engine,
    describeUsers_filters,
    describeUsers_marker,
    describeUsers_maxRecords,

    -- * Destructuring the Response
    DescribeUsersResponse (..),
    newDescribeUsersResponse,

    -- * Response Lenses
    describeUsersResponse_users,
    describeUsersResponse_marker,
    describeUsersResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ElastiCache.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeUsers' smart constructor.
data DescribeUsers = DescribeUsers'
  { -- | The ID of the user.
    userId :: Core.Maybe Core.Text,
    -- | The Redis engine.
    engine :: Core.Maybe Core.Text,
    -- | Filter to determine the list of User IDs to return.
    filters :: Core.Maybe [Filter],
    -- | An optional marker returned from a prior request. Use this marker for
    -- pagination of results from this operation. If this parameter is
    -- specified, the response includes only records beyond the marker, up to
    -- the value specified by MaxRecords. >
    marker :: Core.Maybe Core.Text,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified MaxRecords value, a marker is included
    -- in the response so that the remaining results can be retrieved.
    maxRecords :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeUsers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userId', 'describeUsers_userId' - The ID of the user.
--
-- 'engine', 'describeUsers_engine' - The Redis engine.
--
-- 'filters', 'describeUsers_filters' - Filter to determine the list of User IDs to return.
--
-- 'marker', 'describeUsers_marker' - An optional marker returned from a prior request. Use this marker for
-- pagination of results from this operation. If this parameter is
-- specified, the response includes only records beyond the marker, up to
-- the value specified by MaxRecords. >
--
-- 'maxRecords', 'describeUsers_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified MaxRecords value, a marker is included
-- in the response so that the remaining results can be retrieved.
newDescribeUsers ::
  DescribeUsers
newDescribeUsers =
  DescribeUsers'
    { userId = Core.Nothing,
      engine = Core.Nothing,
      filters = Core.Nothing,
      marker = Core.Nothing,
      maxRecords = Core.Nothing
    }

-- | The ID of the user.
describeUsers_userId :: Lens.Lens' DescribeUsers (Core.Maybe Core.Text)
describeUsers_userId = Lens.lens (\DescribeUsers' {userId} -> userId) (\s@DescribeUsers' {} a -> s {userId = a} :: DescribeUsers)

-- | The Redis engine.
describeUsers_engine :: Lens.Lens' DescribeUsers (Core.Maybe Core.Text)
describeUsers_engine = Lens.lens (\DescribeUsers' {engine} -> engine) (\s@DescribeUsers' {} a -> s {engine = a} :: DescribeUsers)

-- | Filter to determine the list of User IDs to return.
describeUsers_filters :: Lens.Lens' DescribeUsers (Core.Maybe [Filter])
describeUsers_filters = Lens.lens (\DescribeUsers' {filters} -> filters) (\s@DescribeUsers' {} a -> s {filters = a} :: DescribeUsers) Core.. Lens.mapping Lens._Coerce

-- | An optional marker returned from a prior request. Use this marker for
-- pagination of results from this operation. If this parameter is
-- specified, the response includes only records beyond the marker, up to
-- the value specified by MaxRecords. >
describeUsers_marker :: Lens.Lens' DescribeUsers (Core.Maybe Core.Text)
describeUsers_marker = Lens.lens (\DescribeUsers' {marker} -> marker) (\s@DescribeUsers' {} a -> s {marker = a} :: DescribeUsers)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified MaxRecords value, a marker is included
-- in the response so that the remaining results can be retrieved.
describeUsers_maxRecords :: Lens.Lens' DescribeUsers (Core.Maybe Core.Int)
describeUsers_maxRecords = Lens.lens (\DescribeUsers' {maxRecords} -> maxRecords) (\s@DescribeUsers' {} a -> s {maxRecords = a} :: DescribeUsers)

instance Core.AWSPager DescribeUsers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeUsersResponse_marker Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeUsersResponse_users Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeUsers_marker
          Lens..~ rs
          Lens.^? describeUsersResponse_marker Core.. Lens._Just

instance Core.AWSRequest DescribeUsers where
  type
    AWSResponse DescribeUsers =
      DescribeUsersResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeUsersResult"
      ( \s h x ->
          DescribeUsersResponse'
            Core.<$> ( x Core..@? "Users" Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "member")
                     )
            Core.<*> (x Core..@? "Marker")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeUsers

instance Core.NFData DescribeUsers

instance Core.ToHeaders DescribeUsers where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DescribeUsers where
  toPath = Core.const "/"

instance Core.ToQuery DescribeUsers where
  toQuery DescribeUsers' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DescribeUsers" :: Core.ByteString),
        "Version" Core.=: ("2015-02-02" :: Core.ByteString),
        "UserId" Core.=: userId,
        "Engine" Core.=: engine,
        "Filters"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Core.<$> filters),
        "Marker" Core.=: marker,
        "MaxRecords" Core.=: maxRecords
      ]

-- | /See:/ 'newDescribeUsersResponse' smart constructor.
data DescribeUsersResponse = DescribeUsersResponse'
  { -- | A list of users.
    users :: Core.Maybe [User],
    -- | An optional marker returned from a prior request. Use this marker for
    -- pagination of results from this operation. If this parameter is
    -- specified, the response includes only records beyond the marker, up to
    -- the value specified by MaxRecords. >
    marker :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeUsersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'users', 'describeUsersResponse_users' - A list of users.
--
-- 'marker', 'describeUsersResponse_marker' - An optional marker returned from a prior request. Use this marker for
-- pagination of results from this operation. If this parameter is
-- specified, the response includes only records beyond the marker, up to
-- the value specified by MaxRecords. >
--
-- 'httpStatus', 'describeUsersResponse_httpStatus' - The response's http status code.
newDescribeUsersResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeUsersResponse
newDescribeUsersResponse pHttpStatus_ =
  DescribeUsersResponse'
    { users = Core.Nothing,
      marker = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of users.
describeUsersResponse_users :: Lens.Lens' DescribeUsersResponse (Core.Maybe [User])
describeUsersResponse_users = Lens.lens (\DescribeUsersResponse' {users} -> users) (\s@DescribeUsersResponse' {} a -> s {users = a} :: DescribeUsersResponse) Core.. Lens.mapping Lens._Coerce

-- | An optional marker returned from a prior request. Use this marker for
-- pagination of results from this operation. If this parameter is
-- specified, the response includes only records beyond the marker, up to
-- the value specified by MaxRecords. >
describeUsersResponse_marker :: Lens.Lens' DescribeUsersResponse (Core.Maybe Core.Text)
describeUsersResponse_marker = Lens.lens (\DescribeUsersResponse' {marker} -> marker) (\s@DescribeUsersResponse' {} a -> s {marker = a} :: DescribeUsersResponse)

-- | The response's http status code.
describeUsersResponse_httpStatus :: Lens.Lens' DescribeUsersResponse Core.Int
describeUsersResponse_httpStatus = Lens.lens (\DescribeUsersResponse' {httpStatus} -> httpStatus) (\s@DescribeUsersResponse' {} a -> s {httpStatus = a} :: DescribeUsersResponse)

instance Core.NFData DescribeUsersResponse
