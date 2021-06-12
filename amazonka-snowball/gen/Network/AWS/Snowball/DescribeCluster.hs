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
-- Module      : Network.AWS.Snowball.DescribeCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specific cluster including shipping
-- information, cluster status, and other important metadata.
module Network.AWS.Snowball.DescribeCluster
  ( -- * Creating a Request
    DescribeCluster (..),
    newDescribeCluster,

    -- * Request Lenses
    describeCluster_clusterId,

    -- * Destructuring the Response
    DescribeClusterResponse (..),
    newDescribeClusterResponse,

    -- * Response Lenses
    describeClusterResponse_clusterMetadata,
    describeClusterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Snowball.Types

-- | /See:/ 'newDescribeCluster' smart constructor.
data DescribeCluster = DescribeCluster'
  { -- | The automatically generated ID for a cluster.
    clusterId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterId', 'describeCluster_clusterId' - The automatically generated ID for a cluster.
newDescribeCluster ::
  -- | 'clusterId'
  Core.Text ->
  DescribeCluster
newDescribeCluster pClusterId_ =
  DescribeCluster' {clusterId = pClusterId_}

-- | The automatically generated ID for a cluster.
describeCluster_clusterId :: Lens.Lens' DescribeCluster Core.Text
describeCluster_clusterId = Lens.lens (\DescribeCluster' {clusterId} -> clusterId) (\s@DescribeCluster' {} a -> s {clusterId = a} :: DescribeCluster)

instance Core.AWSRequest DescribeCluster where
  type
    AWSResponse DescribeCluster =
      DescribeClusterResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeClusterResponse'
            Core.<$> (x Core..?> "ClusterMetadata")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeCluster

instance Core.NFData DescribeCluster

instance Core.ToHeaders DescribeCluster where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSIESnowballJobManagementService.DescribeCluster" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeCluster where
  toJSON DescribeCluster' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("ClusterId" Core..= clusterId)]
      )

instance Core.ToPath DescribeCluster where
  toPath = Core.const "/"

instance Core.ToQuery DescribeCluster where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeClusterResponse' smart constructor.
data DescribeClusterResponse = DescribeClusterResponse'
  { -- | Information about a specific cluster, including shipping information,
    -- cluster status, and other important metadata.
    clusterMetadata :: Core.Maybe ClusterMetadata,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterMetadata', 'describeClusterResponse_clusterMetadata' - Information about a specific cluster, including shipping information,
-- cluster status, and other important metadata.
--
-- 'httpStatus', 'describeClusterResponse_httpStatus' - The response's http status code.
newDescribeClusterResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeClusterResponse
newDescribeClusterResponse pHttpStatus_ =
  DescribeClusterResponse'
    { clusterMetadata =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about a specific cluster, including shipping information,
-- cluster status, and other important metadata.
describeClusterResponse_clusterMetadata :: Lens.Lens' DescribeClusterResponse (Core.Maybe ClusterMetadata)
describeClusterResponse_clusterMetadata = Lens.lens (\DescribeClusterResponse' {clusterMetadata} -> clusterMetadata) (\s@DescribeClusterResponse' {} a -> s {clusterMetadata = a} :: DescribeClusterResponse)

-- | The response's http status code.
describeClusterResponse_httpStatus :: Lens.Lens' DescribeClusterResponse Core.Int
describeClusterResponse_httpStatus = Lens.lens (\DescribeClusterResponse' {httpStatus} -> httpStatus) (\s@DescribeClusterResponse' {} a -> s {httpStatus = a} :: DescribeClusterResponse)

instance Core.NFData DescribeClusterResponse
