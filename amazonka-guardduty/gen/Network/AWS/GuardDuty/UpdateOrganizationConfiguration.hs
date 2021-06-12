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
-- Module      : Network.AWS.GuardDuty.UpdateOrganizationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the delegated administrator account with the values provided.
module Network.AWS.GuardDuty.UpdateOrganizationConfiguration
  ( -- * Creating a Request
    UpdateOrganizationConfiguration (..),
    newUpdateOrganizationConfiguration,

    -- * Request Lenses
    updateOrganizationConfiguration_dataSources,
    updateOrganizationConfiguration_detectorId,
    updateOrganizationConfiguration_autoEnable,

    -- * Destructuring the Response
    UpdateOrganizationConfigurationResponse (..),
    newUpdateOrganizationConfigurationResponse,

    -- * Response Lenses
    updateOrganizationConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GuardDuty.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateOrganizationConfiguration' smart constructor.
data UpdateOrganizationConfiguration = UpdateOrganizationConfiguration'
  { -- | Describes which data sources will be updated.
    dataSources :: Core.Maybe OrganizationDataSourceConfigurations,
    -- | The ID of the detector to update the delegated administrator for.
    detectorId :: Core.Text,
    -- | Indicates whether to automatically enable member accounts in the
    -- organization.
    autoEnable :: Core.Bool
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateOrganizationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataSources', 'updateOrganizationConfiguration_dataSources' - Describes which data sources will be updated.
--
-- 'detectorId', 'updateOrganizationConfiguration_detectorId' - The ID of the detector to update the delegated administrator for.
--
-- 'autoEnable', 'updateOrganizationConfiguration_autoEnable' - Indicates whether to automatically enable member accounts in the
-- organization.
newUpdateOrganizationConfiguration ::
  -- | 'detectorId'
  Core.Text ->
  -- | 'autoEnable'
  Core.Bool ->
  UpdateOrganizationConfiguration
newUpdateOrganizationConfiguration
  pDetectorId_
  pAutoEnable_ =
    UpdateOrganizationConfiguration'
      { dataSources =
          Core.Nothing,
        detectorId = pDetectorId_,
        autoEnable = pAutoEnable_
      }

-- | Describes which data sources will be updated.
updateOrganizationConfiguration_dataSources :: Lens.Lens' UpdateOrganizationConfiguration (Core.Maybe OrganizationDataSourceConfigurations)
updateOrganizationConfiguration_dataSources = Lens.lens (\UpdateOrganizationConfiguration' {dataSources} -> dataSources) (\s@UpdateOrganizationConfiguration' {} a -> s {dataSources = a} :: UpdateOrganizationConfiguration)

-- | The ID of the detector to update the delegated administrator for.
updateOrganizationConfiguration_detectorId :: Lens.Lens' UpdateOrganizationConfiguration Core.Text
updateOrganizationConfiguration_detectorId = Lens.lens (\UpdateOrganizationConfiguration' {detectorId} -> detectorId) (\s@UpdateOrganizationConfiguration' {} a -> s {detectorId = a} :: UpdateOrganizationConfiguration)

-- | Indicates whether to automatically enable member accounts in the
-- organization.
updateOrganizationConfiguration_autoEnable :: Lens.Lens' UpdateOrganizationConfiguration Core.Bool
updateOrganizationConfiguration_autoEnable = Lens.lens (\UpdateOrganizationConfiguration' {autoEnable} -> autoEnable) (\s@UpdateOrganizationConfiguration' {} a -> s {autoEnable = a} :: UpdateOrganizationConfiguration)

instance
  Core.AWSRequest
    UpdateOrganizationConfiguration
  where
  type
    AWSResponse UpdateOrganizationConfiguration =
      UpdateOrganizationConfigurationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateOrganizationConfigurationResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    UpdateOrganizationConfiguration

instance Core.NFData UpdateOrganizationConfiguration

instance
  Core.ToHeaders
    UpdateOrganizationConfiguration
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateOrganizationConfiguration where
  toJSON UpdateOrganizationConfiguration' {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataSources" Core..=) Core.<$> dataSources,
            Core.Just ("autoEnable" Core..= autoEnable)
          ]
      )

instance Core.ToPath UpdateOrganizationConfiguration where
  toPath UpdateOrganizationConfiguration' {..} =
    Core.mconcat
      ["/detector/", Core.toBS detectorId, "/admin"]

instance Core.ToQuery UpdateOrganizationConfiguration where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newUpdateOrganizationConfigurationResponse' smart constructor.
data UpdateOrganizationConfigurationResponse = UpdateOrganizationConfigurationResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateOrganizationConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateOrganizationConfigurationResponse_httpStatus' - The response's http status code.
newUpdateOrganizationConfigurationResponse ::
  -- | 'httpStatus'
  Core.Int ->
  UpdateOrganizationConfigurationResponse
newUpdateOrganizationConfigurationResponse
  pHttpStatus_ =
    UpdateOrganizationConfigurationResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
updateOrganizationConfigurationResponse_httpStatus :: Lens.Lens' UpdateOrganizationConfigurationResponse Core.Int
updateOrganizationConfigurationResponse_httpStatus = Lens.lens (\UpdateOrganizationConfigurationResponse' {httpStatus} -> httpStatus) (\s@UpdateOrganizationConfigurationResponse' {} a -> s {httpStatus = a} :: UpdateOrganizationConfigurationResponse)

instance
  Core.NFData
    UpdateOrganizationConfigurationResponse
