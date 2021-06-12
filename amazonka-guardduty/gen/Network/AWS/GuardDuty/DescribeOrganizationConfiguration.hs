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
-- Module      : Network.AWS.GuardDuty.DescribeOrganizationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the account selected as the delegated
-- administrator for GuardDuty.
module Network.AWS.GuardDuty.DescribeOrganizationConfiguration
  ( -- * Creating a Request
    DescribeOrganizationConfiguration (..),
    newDescribeOrganizationConfiguration,

    -- * Request Lenses
    describeOrganizationConfiguration_detectorId,

    -- * Destructuring the Response
    DescribeOrganizationConfigurationResponse (..),
    newDescribeOrganizationConfigurationResponse,

    -- * Response Lenses
    describeOrganizationConfigurationResponse_dataSources,
    describeOrganizationConfigurationResponse_httpStatus,
    describeOrganizationConfigurationResponse_autoEnable,
    describeOrganizationConfigurationResponse_memberAccountLimitReached,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GuardDuty.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeOrganizationConfiguration' smart constructor.
data DescribeOrganizationConfiguration = DescribeOrganizationConfiguration'
  { -- | The ID of the detector to retrieve information about the delegated
    -- administrator from.
    detectorId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeOrganizationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'detectorId', 'describeOrganizationConfiguration_detectorId' - The ID of the detector to retrieve information about the delegated
-- administrator from.
newDescribeOrganizationConfiguration ::
  -- | 'detectorId'
  Core.Text ->
  DescribeOrganizationConfiguration
newDescribeOrganizationConfiguration pDetectorId_ =
  DescribeOrganizationConfiguration'
    { detectorId =
        pDetectorId_
    }

-- | The ID of the detector to retrieve information about the delegated
-- administrator from.
describeOrganizationConfiguration_detectorId :: Lens.Lens' DescribeOrganizationConfiguration Core.Text
describeOrganizationConfiguration_detectorId = Lens.lens (\DescribeOrganizationConfiguration' {detectorId} -> detectorId) (\s@DescribeOrganizationConfiguration' {} a -> s {detectorId = a} :: DescribeOrganizationConfiguration)

instance
  Core.AWSRequest
    DescribeOrganizationConfiguration
  where
  type
    AWSResponse DescribeOrganizationConfiguration =
      DescribeOrganizationConfigurationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeOrganizationConfigurationResponse'
            Core.<$> (x Core..?> "dataSources")
            Core.<*> (Core.pure (Core.fromEnum s))
            Core.<*> (x Core..:> "autoEnable")
            Core.<*> (x Core..:> "memberAccountLimitReached")
      )

instance
  Core.Hashable
    DescribeOrganizationConfiguration

instance
  Core.NFData
    DescribeOrganizationConfiguration

instance
  Core.ToHeaders
    DescribeOrganizationConfiguration
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance
  Core.ToPath
    DescribeOrganizationConfiguration
  where
  toPath DescribeOrganizationConfiguration' {..} =
    Core.mconcat
      ["/detector/", Core.toBS detectorId, "/admin"]

instance
  Core.ToQuery
    DescribeOrganizationConfiguration
  where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeOrganizationConfigurationResponse' smart constructor.
data DescribeOrganizationConfigurationResponse = DescribeOrganizationConfigurationResponse'
  { -- | Describes which data sources are enabled automatically for member
    -- accounts.
    dataSources :: Core.Maybe OrganizationDataSourceConfigurationsResult,
    -- | The response's http status code.
    httpStatus :: Core.Int,
    -- | Indicates whether GuardDuty is automatically enabled for accounts added
    -- to the organization.
    autoEnable :: Core.Bool,
    -- | Indicates whether the maximum number of allowed member accounts are
    -- already associated with the delegated administrator account for your
    -- organization.
    memberAccountLimitReached :: Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeOrganizationConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataSources', 'describeOrganizationConfigurationResponse_dataSources' - Describes which data sources are enabled automatically for member
-- accounts.
--
-- 'httpStatus', 'describeOrganizationConfigurationResponse_httpStatus' - The response's http status code.
--
-- 'autoEnable', 'describeOrganizationConfigurationResponse_autoEnable' - Indicates whether GuardDuty is automatically enabled for accounts added
-- to the organization.
--
-- 'memberAccountLimitReached', 'describeOrganizationConfigurationResponse_memberAccountLimitReached' - Indicates whether the maximum number of allowed member accounts are
-- already associated with the delegated administrator account for your
-- organization.
newDescribeOrganizationConfigurationResponse ::
  -- | 'httpStatus'
  Core.Int ->
  -- | 'autoEnable'
  Core.Bool ->
  -- | 'memberAccountLimitReached'
  Core.Bool ->
  DescribeOrganizationConfigurationResponse
newDescribeOrganizationConfigurationResponse
  pHttpStatus_
  pAutoEnable_
  pMemberAccountLimitReached_ =
    DescribeOrganizationConfigurationResponse'
      { dataSources =
          Core.Nothing,
        httpStatus = pHttpStatus_,
        autoEnable = pAutoEnable_,
        memberAccountLimitReached =
          pMemberAccountLimitReached_
      }

-- | Describes which data sources are enabled automatically for member
-- accounts.
describeOrganizationConfigurationResponse_dataSources :: Lens.Lens' DescribeOrganizationConfigurationResponse (Core.Maybe OrganizationDataSourceConfigurationsResult)
describeOrganizationConfigurationResponse_dataSources = Lens.lens (\DescribeOrganizationConfigurationResponse' {dataSources} -> dataSources) (\s@DescribeOrganizationConfigurationResponse' {} a -> s {dataSources = a} :: DescribeOrganizationConfigurationResponse)

-- | The response's http status code.
describeOrganizationConfigurationResponse_httpStatus :: Lens.Lens' DescribeOrganizationConfigurationResponse Core.Int
describeOrganizationConfigurationResponse_httpStatus = Lens.lens (\DescribeOrganizationConfigurationResponse' {httpStatus} -> httpStatus) (\s@DescribeOrganizationConfigurationResponse' {} a -> s {httpStatus = a} :: DescribeOrganizationConfigurationResponse)

-- | Indicates whether GuardDuty is automatically enabled for accounts added
-- to the organization.
describeOrganizationConfigurationResponse_autoEnable :: Lens.Lens' DescribeOrganizationConfigurationResponse Core.Bool
describeOrganizationConfigurationResponse_autoEnable = Lens.lens (\DescribeOrganizationConfigurationResponse' {autoEnable} -> autoEnable) (\s@DescribeOrganizationConfigurationResponse' {} a -> s {autoEnable = a} :: DescribeOrganizationConfigurationResponse)

-- | Indicates whether the maximum number of allowed member accounts are
-- already associated with the delegated administrator account for your
-- organization.
describeOrganizationConfigurationResponse_memberAccountLimitReached :: Lens.Lens' DescribeOrganizationConfigurationResponse Core.Bool
describeOrganizationConfigurationResponse_memberAccountLimitReached = Lens.lens (\DescribeOrganizationConfigurationResponse' {memberAccountLimitReached} -> memberAccountLimitReached) (\s@DescribeOrganizationConfigurationResponse' {} a -> s {memberAccountLimitReached = a} :: DescribeOrganizationConfigurationResponse)

instance
  Core.NFData
    DescribeOrganizationConfigurationResponse
