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
-- Module      : Network.AWS.Redshift.DescribeClusterSecurityGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about Amazon Redshift security groups. If the name
-- of a security group is specified, the response will contain only
-- information about only that security group.
--
-- For information about managing security groups, go to
-- <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html Amazon Redshift Cluster Security Groups>
-- in the /Amazon Redshift Cluster Management Guide/.
--
-- If you specify both tag keys and tag values in the same request, Amazon
-- Redshift returns all security groups that match any combination of the
-- specified keys and values. For example, if you have @owner@ and
-- @environment@ for tag keys, and @admin@ and @test@ for tag values, all
-- security groups that have any combination of those values are returned.
--
-- If both tag keys and values are omitted from the request, security
-- groups are returned regardless of whether they have tag keys or values
-- associated with them.
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeClusterSecurityGroups
  ( -- * Creating a Request
    DescribeClusterSecurityGroups (..),
    newDescribeClusterSecurityGroups,

    -- * Request Lenses
    describeClusterSecurityGroups_tagKeys,
    describeClusterSecurityGroups_clusterSecurityGroupName,
    describeClusterSecurityGroups_tagValues,
    describeClusterSecurityGroups_marker,
    describeClusterSecurityGroups_maxRecords,

    -- * Destructuring the Response
    DescribeClusterSecurityGroupsResponse (..),
    newDescribeClusterSecurityGroupsResponse,

    -- * Response Lenses
    describeClusterSecurityGroupsResponse_clusterSecurityGroups,
    describeClusterSecurityGroupsResponse_marker,
    describeClusterSecurityGroupsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Redshift.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDescribeClusterSecurityGroups' smart constructor.
data DescribeClusterSecurityGroups = DescribeClusterSecurityGroups'
  { -- | A tag key or keys for which you want to return all matching cluster
    -- security groups that are associated with the specified key or keys. For
    -- example, suppose that you have security groups that are tagged with keys
    -- called @owner@ and @environment@. If you specify both of these tag keys
    -- in the request, Amazon Redshift returns a response with the security
    -- groups that have either or both of these tag keys associated with them.
    tagKeys :: Core.Maybe [Core.Text],
    -- | The name of a cluster security group for which you are requesting
    -- details. You can specify either the __Marker__ parameter or a
    -- __ClusterSecurityGroupName__ parameter, but not both.
    --
    -- Example: @securitygroup1@
    clusterSecurityGroupName :: Core.Maybe Core.Text,
    -- | A tag value or values for which you want to return all matching cluster
    -- security groups that are associated with the specified tag value or
    -- values. For example, suppose that you have security groups that are
    -- tagged with values called @admin@ and @test@. If you specify both of
    -- these tag values in the request, Amazon Redshift returns a response with
    -- the security groups that have either or both of these tag values
    -- associated with them.
    tagValues :: Core.Maybe [Core.Text],
    -- | An optional parameter that specifies the starting point to return a set
    -- of response records. When the results of a DescribeClusterSecurityGroups
    -- request exceed the value specified in @MaxRecords@, AWS returns a value
    -- in the @Marker@ field of the response. You can retrieve the next set of
    -- response records by providing the returned marker value in the @Marker@
    -- parameter and retrying the request.
    --
    -- Constraints: You can specify either the __ClusterSecurityGroupName__
    -- parameter or the __Marker__ parameter, but not both.
    marker :: Core.Maybe Core.Text,
    -- | The maximum number of response records to return in each call. If the
    -- number of remaining response records exceeds the specified @MaxRecords@
    -- value, a value is returned in a @marker@ field of the response. You can
    -- retrieve the next set of records by retrying the command with the
    -- returned marker value.
    --
    -- Default: @100@
    --
    -- Constraints: minimum 20, maximum 100.
    maxRecords :: Core.Maybe Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeClusterSecurityGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tagKeys', 'describeClusterSecurityGroups_tagKeys' - A tag key or keys for which you want to return all matching cluster
-- security groups that are associated with the specified key or keys. For
-- example, suppose that you have security groups that are tagged with keys
-- called @owner@ and @environment@. If you specify both of these tag keys
-- in the request, Amazon Redshift returns a response with the security
-- groups that have either or both of these tag keys associated with them.
--
-- 'clusterSecurityGroupName', 'describeClusterSecurityGroups_clusterSecurityGroupName' - The name of a cluster security group for which you are requesting
-- details. You can specify either the __Marker__ parameter or a
-- __ClusterSecurityGroupName__ parameter, but not both.
--
-- Example: @securitygroup1@
--
-- 'tagValues', 'describeClusterSecurityGroups_tagValues' - A tag value or values for which you want to return all matching cluster
-- security groups that are associated with the specified tag value or
-- values. For example, suppose that you have security groups that are
-- tagged with values called @admin@ and @test@. If you specify both of
-- these tag values in the request, Amazon Redshift returns a response with
-- the security groups that have either or both of these tag values
-- associated with them.
--
-- 'marker', 'describeClusterSecurityGroups_marker' - An optional parameter that specifies the starting point to return a set
-- of response records. When the results of a DescribeClusterSecurityGroups
-- request exceed the value specified in @MaxRecords@, AWS returns a value
-- in the @Marker@ field of the response. You can retrieve the next set of
-- response records by providing the returned marker value in the @Marker@
-- parameter and retrying the request.
--
-- Constraints: You can specify either the __ClusterSecurityGroupName__
-- parameter or the __Marker__ parameter, but not both.
--
-- 'maxRecords', 'describeClusterSecurityGroups_maxRecords' - The maximum number of response records to return in each call. If the
-- number of remaining response records exceeds the specified @MaxRecords@
-- value, a value is returned in a @marker@ field of the response. You can
-- retrieve the next set of records by retrying the command with the
-- returned marker value.
--
-- Default: @100@
--
-- Constraints: minimum 20, maximum 100.
newDescribeClusterSecurityGroups ::
  DescribeClusterSecurityGroups
newDescribeClusterSecurityGroups =
  DescribeClusterSecurityGroups'
    { tagKeys =
        Core.Nothing,
      clusterSecurityGroupName = Core.Nothing,
      tagValues = Core.Nothing,
      marker = Core.Nothing,
      maxRecords = Core.Nothing
    }

-- | A tag key or keys for which you want to return all matching cluster
-- security groups that are associated with the specified key or keys. For
-- example, suppose that you have security groups that are tagged with keys
-- called @owner@ and @environment@. If you specify both of these tag keys
-- in the request, Amazon Redshift returns a response with the security
-- groups that have either or both of these tag keys associated with them.
describeClusterSecurityGroups_tagKeys :: Lens.Lens' DescribeClusterSecurityGroups (Core.Maybe [Core.Text])
describeClusterSecurityGroups_tagKeys = Lens.lens (\DescribeClusterSecurityGroups' {tagKeys} -> tagKeys) (\s@DescribeClusterSecurityGroups' {} a -> s {tagKeys = a} :: DescribeClusterSecurityGroups) Core.. Lens.mapping Lens._Coerce

-- | The name of a cluster security group for which you are requesting
-- details. You can specify either the __Marker__ parameter or a
-- __ClusterSecurityGroupName__ parameter, but not both.
--
-- Example: @securitygroup1@
describeClusterSecurityGroups_clusterSecurityGroupName :: Lens.Lens' DescribeClusterSecurityGroups (Core.Maybe Core.Text)
describeClusterSecurityGroups_clusterSecurityGroupName = Lens.lens (\DescribeClusterSecurityGroups' {clusterSecurityGroupName} -> clusterSecurityGroupName) (\s@DescribeClusterSecurityGroups' {} a -> s {clusterSecurityGroupName = a} :: DescribeClusterSecurityGroups)

-- | A tag value or values for which you want to return all matching cluster
-- security groups that are associated with the specified tag value or
-- values. For example, suppose that you have security groups that are
-- tagged with values called @admin@ and @test@. If you specify both of
-- these tag values in the request, Amazon Redshift returns a response with
-- the security groups that have either or both of these tag values
-- associated with them.
describeClusterSecurityGroups_tagValues :: Lens.Lens' DescribeClusterSecurityGroups (Core.Maybe [Core.Text])
describeClusterSecurityGroups_tagValues = Lens.lens (\DescribeClusterSecurityGroups' {tagValues} -> tagValues) (\s@DescribeClusterSecurityGroups' {} a -> s {tagValues = a} :: DescribeClusterSecurityGroups) Core.. Lens.mapping Lens._Coerce

-- | An optional parameter that specifies the starting point to return a set
-- of response records. When the results of a DescribeClusterSecurityGroups
-- request exceed the value specified in @MaxRecords@, AWS returns a value
-- in the @Marker@ field of the response. You can retrieve the next set of
-- response records by providing the returned marker value in the @Marker@
-- parameter and retrying the request.
--
-- Constraints: You can specify either the __ClusterSecurityGroupName__
-- parameter or the __Marker__ parameter, but not both.
describeClusterSecurityGroups_marker :: Lens.Lens' DescribeClusterSecurityGroups (Core.Maybe Core.Text)
describeClusterSecurityGroups_marker = Lens.lens (\DescribeClusterSecurityGroups' {marker} -> marker) (\s@DescribeClusterSecurityGroups' {} a -> s {marker = a} :: DescribeClusterSecurityGroups)

-- | The maximum number of response records to return in each call. If the
-- number of remaining response records exceeds the specified @MaxRecords@
-- value, a value is returned in a @marker@ field of the response. You can
-- retrieve the next set of records by retrying the command with the
-- returned marker value.
--
-- Default: @100@
--
-- Constraints: minimum 20, maximum 100.
describeClusterSecurityGroups_maxRecords :: Lens.Lens' DescribeClusterSecurityGroups (Core.Maybe Core.Int)
describeClusterSecurityGroups_maxRecords = Lens.lens (\DescribeClusterSecurityGroups' {maxRecords} -> maxRecords) (\s@DescribeClusterSecurityGroups' {} a -> s {maxRecords = a} :: DescribeClusterSecurityGroups)

instance Core.AWSPager DescribeClusterSecurityGroups where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeClusterSecurityGroupsResponse_marker
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeClusterSecurityGroupsResponse_clusterSecurityGroups
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeClusterSecurityGroups_marker
          Lens..~ rs
          Lens.^? describeClusterSecurityGroupsResponse_marker
            Core.. Lens._Just

instance
  Core.AWSRequest
    DescribeClusterSecurityGroups
  where
  type
    AWSResponse DescribeClusterSecurityGroups =
      DescribeClusterSecurityGroupsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeClusterSecurityGroupsResult"
      ( \s h x ->
          DescribeClusterSecurityGroupsResponse'
            Core.<$> ( x Core..@? "ClusterSecurityGroups"
                         Core..!@ Core.mempty
                         Core.>>= Core.may (Core.parseXMLList "ClusterSecurityGroup")
                     )
            Core.<*> (x Core..@? "Marker")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeClusterSecurityGroups

instance Core.NFData DescribeClusterSecurityGroups

instance Core.ToHeaders DescribeClusterSecurityGroups where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DescribeClusterSecurityGroups where
  toPath = Core.const "/"

instance Core.ToQuery DescribeClusterSecurityGroups where
  toQuery DescribeClusterSecurityGroups' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DescribeClusterSecurityGroups" :: Core.ByteString),
        "Version" Core.=: ("2012-12-01" :: Core.ByteString),
        "TagKeys"
          Core.=: Core.toQuery
            (Core.toQueryList "TagKey" Core.<$> tagKeys),
        "ClusterSecurityGroupName"
          Core.=: clusterSecurityGroupName,
        "TagValues"
          Core.=: Core.toQuery
            (Core.toQueryList "TagValue" Core.<$> tagValues),
        "Marker" Core.=: marker,
        "MaxRecords" Core.=: maxRecords
      ]

-- |
--
-- /See:/ 'newDescribeClusterSecurityGroupsResponse' smart constructor.
data DescribeClusterSecurityGroupsResponse = DescribeClusterSecurityGroupsResponse'
  { -- | A list of ClusterSecurityGroup instances.
    clusterSecurityGroups :: Core.Maybe [ClusterSecurityGroup],
    -- | A value that indicates the starting point for the next set of response
    -- records in a subsequent request. If a value is returned in a response,
    -- you can retrieve the next set of records by providing this returned
    -- marker value in the @Marker@ parameter and retrying the command. If the
    -- @Marker@ field is empty, all response records have been retrieved for
    -- the request.
    marker :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeClusterSecurityGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterSecurityGroups', 'describeClusterSecurityGroupsResponse_clusterSecurityGroups' - A list of ClusterSecurityGroup instances.
--
-- 'marker', 'describeClusterSecurityGroupsResponse_marker' - A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- marker value in the @Marker@ parameter and retrying the command. If the
-- @Marker@ field is empty, all response records have been retrieved for
-- the request.
--
-- 'httpStatus', 'describeClusterSecurityGroupsResponse_httpStatus' - The response's http status code.
newDescribeClusterSecurityGroupsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeClusterSecurityGroupsResponse
newDescribeClusterSecurityGroupsResponse pHttpStatus_ =
  DescribeClusterSecurityGroupsResponse'
    { clusterSecurityGroups =
        Core.Nothing,
      marker = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of ClusterSecurityGroup instances.
describeClusterSecurityGroupsResponse_clusterSecurityGroups :: Lens.Lens' DescribeClusterSecurityGroupsResponse (Core.Maybe [ClusterSecurityGroup])
describeClusterSecurityGroupsResponse_clusterSecurityGroups = Lens.lens (\DescribeClusterSecurityGroupsResponse' {clusterSecurityGroups} -> clusterSecurityGroups) (\s@DescribeClusterSecurityGroupsResponse' {} a -> s {clusterSecurityGroups = a} :: DescribeClusterSecurityGroupsResponse) Core.. Lens.mapping Lens._Coerce

-- | A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- marker value in the @Marker@ parameter and retrying the command. If the
-- @Marker@ field is empty, all response records have been retrieved for
-- the request.
describeClusterSecurityGroupsResponse_marker :: Lens.Lens' DescribeClusterSecurityGroupsResponse (Core.Maybe Core.Text)
describeClusterSecurityGroupsResponse_marker = Lens.lens (\DescribeClusterSecurityGroupsResponse' {marker} -> marker) (\s@DescribeClusterSecurityGroupsResponse' {} a -> s {marker = a} :: DescribeClusterSecurityGroupsResponse)

-- | The response's http status code.
describeClusterSecurityGroupsResponse_httpStatus :: Lens.Lens' DescribeClusterSecurityGroupsResponse Core.Int
describeClusterSecurityGroupsResponse_httpStatus = Lens.lens (\DescribeClusterSecurityGroupsResponse' {httpStatus} -> httpStatus) (\s@DescribeClusterSecurityGroupsResponse' {} a -> s {httpStatus = a} :: DescribeClusterSecurityGroupsResponse)

instance
  Core.NFData
    DescribeClusterSecurityGroupsResponse
