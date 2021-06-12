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
-- Module      : Network.AWS.Route53.CreateHealthCheck
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new health check.
--
-- For information about adding health checks to resource record sets, see
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResourceRecordSet.html#Route53-Type-ResourceRecordSet-HealthCheckId HealthCheckId>
-- in
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_ChangeResourceRecordSets.html ChangeResourceRecordSets>.
--
-- __ELB Load Balancers__
--
-- If you\'re registering EC2 instances with an Elastic Load Balancing
-- (ELB) load balancer, do not create Amazon Route 53 health checks for the
-- EC2 instances. When you register an EC2 instance with a load balancer,
-- you configure settings for an ELB health check, which performs a similar
-- function to a Route 53 health check.
--
-- __Private Hosted Zones__
--
-- You can associate health checks with failover resource record sets in a
-- private hosted zone. Note the following:
--
-- -   Route 53 health checkers are outside the VPC. To check the health of
--     an endpoint within a VPC by IP address, you must assign a public IP
--     address to the instance in the VPC.
--
-- -   You can configure a health checker to check the health of an
--     external resource that the instance relies on, such as a database
--     server.
--
-- -   You can create a CloudWatch metric, associate an alarm with the
--     metric, and then create a health check that is based on the state of
--     the alarm. For example, you might create a CloudWatch metric that
--     checks the status of the Amazon EC2 @StatusCheckFailed@ metric, add
--     an alarm to the metric, and then create a health check that is based
--     on the state of the alarm. For information about creating CloudWatch
--     metrics and alarms by using the CloudWatch console, see the
--     <https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/WhatIsCloudWatch.html Amazon CloudWatch User Guide>.
module Network.AWS.Route53.CreateHealthCheck
  ( -- * Creating a Request
    CreateHealthCheck (..),
    newCreateHealthCheck,

    -- * Request Lenses
    createHealthCheck_callerReference,
    createHealthCheck_healthCheckConfig,

    -- * Destructuring the Response
    CreateHealthCheckResponse (..),
    newCreateHealthCheckResponse,

    -- * Response Lenses
    createHealthCheckResponse_httpStatus,
    createHealthCheckResponse_healthCheck,
    createHealthCheckResponse_location,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53.Types

-- | A complex type that contains the health check request information.
--
-- /See:/ 'newCreateHealthCheck' smart constructor.
data CreateHealthCheck = CreateHealthCheck'
  { -- | A unique string that identifies the request and that allows you to retry
    -- a failed @CreateHealthCheck@ request without the risk of creating two
    -- identical health checks:
    --
    -- -   If you send a @CreateHealthCheck@ request with the same
    --     @CallerReference@ and settings as a previous request, and if the
    --     health check doesn\'t exist, Amazon Route 53 creates the health
    --     check. If the health check does exist, Route 53 returns the settings
    --     for the existing health check.
    --
    -- -   If you send a @CreateHealthCheck@ request with the same
    --     @CallerReference@ as a deleted health check, regardless of the
    --     settings, Route 53 returns a @HealthCheckAlreadyExists@ error.
    --
    -- -   If you send a @CreateHealthCheck@ request with the same
    --     @CallerReference@ as an existing health check but with different
    --     settings, Route 53 returns a @HealthCheckAlreadyExists@ error.
    --
    -- -   If you send a @CreateHealthCheck@ request with a unique
    --     @CallerReference@ but settings identical to an existing health
    --     check, Route 53 creates the health check.
    callerReference :: Core.Text,
    -- | A complex type that contains settings for a new health check.
    healthCheckConfig :: HealthCheckConfig
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateHealthCheck' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'callerReference', 'createHealthCheck_callerReference' - A unique string that identifies the request and that allows you to retry
-- a failed @CreateHealthCheck@ request without the risk of creating two
-- identical health checks:
--
-- -   If you send a @CreateHealthCheck@ request with the same
--     @CallerReference@ and settings as a previous request, and if the
--     health check doesn\'t exist, Amazon Route 53 creates the health
--     check. If the health check does exist, Route 53 returns the settings
--     for the existing health check.
--
-- -   If you send a @CreateHealthCheck@ request with the same
--     @CallerReference@ as a deleted health check, regardless of the
--     settings, Route 53 returns a @HealthCheckAlreadyExists@ error.
--
-- -   If you send a @CreateHealthCheck@ request with the same
--     @CallerReference@ as an existing health check but with different
--     settings, Route 53 returns a @HealthCheckAlreadyExists@ error.
--
-- -   If you send a @CreateHealthCheck@ request with a unique
--     @CallerReference@ but settings identical to an existing health
--     check, Route 53 creates the health check.
--
-- 'healthCheckConfig', 'createHealthCheck_healthCheckConfig' - A complex type that contains settings for a new health check.
newCreateHealthCheck ::
  -- | 'callerReference'
  Core.Text ->
  -- | 'healthCheckConfig'
  HealthCheckConfig ->
  CreateHealthCheck
newCreateHealthCheck
  pCallerReference_
  pHealthCheckConfig_ =
    CreateHealthCheck'
      { callerReference =
          pCallerReference_,
        healthCheckConfig = pHealthCheckConfig_
      }

-- | A unique string that identifies the request and that allows you to retry
-- a failed @CreateHealthCheck@ request without the risk of creating two
-- identical health checks:
--
-- -   If you send a @CreateHealthCheck@ request with the same
--     @CallerReference@ and settings as a previous request, and if the
--     health check doesn\'t exist, Amazon Route 53 creates the health
--     check. If the health check does exist, Route 53 returns the settings
--     for the existing health check.
--
-- -   If you send a @CreateHealthCheck@ request with the same
--     @CallerReference@ as a deleted health check, regardless of the
--     settings, Route 53 returns a @HealthCheckAlreadyExists@ error.
--
-- -   If you send a @CreateHealthCheck@ request with the same
--     @CallerReference@ as an existing health check but with different
--     settings, Route 53 returns a @HealthCheckAlreadyExists@ error.
--
-- -   If you send a @CreateHealthCheck@ request with a unique
--     @CallerReference@ but settings identical to an existing health
--     check, Route 53 creates the health check.
createHealthCheck_callerReference :: Lens.Lens' CreateHealthCheck Core.Text
createHealthCheck_callerReference = Lens.lens (\CreateHealthCheck' {callerReference} -> callerReference) (\s@CreateHealthCheck' {} a -> s {callerReference = a} :: CreateHealthCheck)

-- | A complex type that contains settings for a new health check.
createHealthCheck_healthCheckConfig :: Lens.Lens' CreateHealthCheck HealthCheckConfig
createHealthCheck_healthCheckConfig = Lens.lens (\CreateHealthCheck' {healthCheckConfig} -> healthCheckConfig) (\s@CreateHealthCheck' {} a -> s {healthCheckConfig = a} :: CreateHealthCheck)

instance Core.AWSRequest CreateHealthCheck where
  type
    AWSResponse CreateHealthCheck =
      CreateHealthCheckResponse
  request = Request.postXML defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          CreateHealthCheckResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
            Core.<*> (x Core..@ "HealthCheck")
            Core.<*> (h Core..# "Location")
      )

instance Core.Hashable CreateHealthCheck

instance Core.NFData CreateHealthCheck

instance Core.ToElement CreateHealthCheck where
  toElement =
    Core.mkElement
      "{https://route53.amazonaws.com/doc/2013-04-01/}CreateHealthCheckRequest"

instance Core.ToHeaders CreateHealthCheck where
  toHeaders = Core.const Core.mempty

instance Core.ToPath CreateHealthCheck where
  toPath = Core.const "/2013-04-01/healthcheck"

instance Core.ToQuery CreateHealthCheck where
  toQuery = Core.const Core.mempty

instance Core.ToXML CreateHealthCheck where
  toXML CreateHealthCheck' {..} =
    Core.mconcat
      [ "CallerReference" Core.@= callerReference,
        "HealthCheckConfig" Core.@= healthCheckConfig
      ]

-- | A complex type containing the response information for the new health
-- check.
--
-- /See:/ 'newCreateHealthCheckResponse' smart constructor.
data CreateHealthCheckResponse = CreateHealthCheckResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | A complex type that contains identifying information about the health
    -- check.
    healthCheck :: HealthCheck,
    -- | The unique URL representing the new health check.
    location :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateHealthCheckResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createHealthCheckResponse_httpStatus' - The response's http status code.
--
-- 'healthCheck', 'createHealthCheckResponse_healthCheck' - A complex type that contains identifying information about the health
-- check.
--
-- 'location', 'createHealthCheckResponse_location' - The unique URL representing the new health check.
newCreateHealthCheckResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'healthCheck'
  HealthCheck ->
  -- | 'location'
  Core.Text ->
  CreateHealthCheckResponse
newCreateHealthCheckResponse
  pHttpStatus_
  pHealthCheck_
  pLocation_ =
    CreateHealthCheckResponse'
      { httpStatus =
          pHttpStatus_,
        healthCheck = pHealthCheck_,
        location = pLocation_
      }

-- | The response's http status code.
createHealthCheckResponse_httpStatus :: Lens.Lens' CreateHealthCheckResponse Core.Int
createHealthCheckResponse_httpStatus = Lens.lens (\CreateHealthCheckResponse' {httpStatus} -> httpStatus) (\s@CreateHealthCheckResponse' {} a -> s {httpStatus = a} :: CreateHealthCheckResponse)

-- | A complex type that contains identifying information about the health
-- check.
createHealthCheckResponse_healthCheck :: Lens.Lens' CreateHealthCheckResponse HealthCheck
createHealthCheckResponse_healthCheck = Lens.lens (\CreateHealthCheckResponse' {healthCheck} -> healthCheck) (\s@CreateHealthCheckResponse' {} a -> s {healthCheck = a} :: CreateHealthCheckResponse)

-- | The unique URL representing the new health check.
createHealthCheckResponse_location :: Lens.Lens' CreateHealthCheckResponse Core.Text
createHealthCheckResponse_location = Lens.lens (\CreateHealthCheckResponse' {location} -> location) (\s@CreateHealthCheckResponse' {} a -> s {location = a} :: CreateHealthCheckResponse)

instance Core.NFData CreateHealthCheckResponse
