{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.S3Outposts.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3Outposts.Lens
  ( -- * Operations

    -- ** CreateEndpoint
    createEndpoint_accessType,
    createEndpoint_customerOwnedIpv4Pool,
    createEndpoint_outpostId,
    createEndpoint_subnetId,
    createEndpoint_securityGroupId,
    createEndpointResponse_endpointArn,
    createEndpointResponse_httpStatus,

    -- ** DeleteEndpoint
    deleteEndpoint_endpointId,
    deleteEndpoint_outpostId,

    -- ** ListEndpoints
    listEndpoints_nextToken,
    listEndpoints_maxResults,
    listEndpointsResponse_nextToken,
    listEndpointsResponse_endpoints,
    listEndpointsResponse_httpStatus,

    -- * Types

    -- ** Endpoint
    endpoint_creationTime,
    endpoint_status,
    endpoint_vpcId,
    endpoint_networkInterfaces,
    endpoint_outpostsId,
    endpoint_subnetId,
    endpoint_securityGroupId,
    endpoint_accessType,
    endpoint_customerOwnedIpv4Pool,
    endpoint_cidrBlock,
    endpoint_endpointArn,

    -- ** NetworkInterface
    networkInterface_networkInterfaceId,
  )
where

import Amazonka.S3Outposts.CreateEndpoint
import Amazonka.S3Outposts.DeleteEndpoint
import Amazonka.S3Outposts.ListEndpoints
import Amazonka.S3Outposts.Types.Endpoint
import Amazonka.S3Outposts.Types.NetworkInterface
