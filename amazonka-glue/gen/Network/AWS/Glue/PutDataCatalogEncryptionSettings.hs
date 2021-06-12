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
-- Module      : Network.AWS.Glue.PutDataCatalogEncryptionSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the security configuration for a specified catalog. After the
-- configuration has been set, the specified encryption is applied to every
-- catalog write thereafter.
module Network.AWS.Glue.PutDataCatalogEncryptionSettings
  ( -- * Creating a Request
    PutDataCatalogEncryptionSettings (..),
    newPutDataCatalogEncryptionSettings,

    -- * Request Lenses
    putDataCatalogEncryptionSettings_catalogId,
    putDataCatalogEncryptionSettings_dataCatalogEncryptionSettings,

    -- * Destructuring the Response
    PutDataCatalogEncryptionSettingsResponse (..),
    newPutDataCatalogEncryptionSettingsResponse,

    -- * Response Lenses
    putDataCatalogEncryptionSettingsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutDataCatalogEncryptionSettings' smart constructor.
data PutDataCatalogEncryptionSettings = PutDataCatalogEncryptionSettings'
  { -- | The ID of the Data Catalog to set the security configuration for. If
    -- none is provided, the AWS account ID is used by default.
    catalogId :: Core.Maybe Core.Text,
    -- | The security configuration to set.
    dataCatalogEncryptionSettings :: DataCatalogEncryptionSettings
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PutDataCatalogEncryptionSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogId', 'putDataCatalogEncryptionSettings_catalogId' - The ID of the Data Catalog to set the security configuration for. If
-- none is provided, the AWS account ID is used by default.
--
-- 'dataCatalogEncryptionSettings', 'putDataCatalogEncryptionSettings_dataCatalogEncryptionSettings' - The security configuration to set.
newPutDataCatalogEncryptionSettings ::
  -- | 'dataCatalogEncryptionSettings'
  DataCatalogEncryptionSettings ->
  PutDataCatalogEncryptionSettings
newPutDataCatalogEncryptionSettings
  pDataCatalogEncryptionSettings_ =
    PutDataCatalogEncryptionSettings'
      { catalogId =
          Core.Nothing,
        dataCatalogEncryptionSettings =
          pDataCatalogEncryptionSettings_
      }

-- | The ID of the Data Catalog to set the security configuration for. If
-- none is provided, the AWS account ID is used by default.
putDataCatalogEncryptionSettings_catalogId :: Lens.Lens' PutDataCatalogEncryptionSettings (Core.Maybe Core.Text)
putDataCatalogEncryptionSettings_catalogId = Lens.lens (\PutDataCatalogEncryptionSettings' {catalogId} -> catalogId) (\s@PutDataCatalogEncryptionSettings' {} a -> s {catalogId = a} :: PutDataCatalogEncryptionSettings)

-- | The security configuration to set.
putDataCatalogEncryptionSettings_dataCatalogEncryptionSettings :: Lens.Lens' PutDataCatalogEncryptionSettings DataCatalogEncryptionSettings
putDataCatalogEncryptionSettings_dataCatalogEncryptionSettings = Lens.lens (\PutDataCatalogEncryptionSettings' {dataCatalogEncryptionSettings} -> dataCatalogEncryptionSettings) (\s@PutDataCatalogEncryptionSettings' {} a -> s {dataCatalogEncryptionSettings = a} :: PutDataCatalogEncryptionSettings)

instance
  Core.AWSRequest
    PutDataCatalogEncryptionSettings
  where
  type
    AWSResponse PutDataCatalogEncryptionSettings =
      PutDataCatalogEncryptionSettingsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          PutDataCatalogEncryptionSettingsResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance
  Core.Hashable
    PutDataCatalogEncryptionSettings

instance Core.NFData PutDataCatalogEncryptionSettings

instance
  Core.ToHeaders
    PutDataCatalogEncryptionSettings
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSGlue.PutDataCatalogEncryptionSettings" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON PutDataCatalogEncryptionSettings where
  toJSON PutDataCatalogEncryptionSettings' {..} =
    Core.object
      ( Core.catMaybes
          [ ("CatalogId" Core..=) Core.<$> catalogId,
            Core.Just
              ( "DataCatalogEncryptionSettings"
                  Core..= dataCatalogEncryptionSettings
              )
          ]
      )

instance Core.ToPath PutDataCatalogEncryptionSettings where
  toPath = Core.const "/"

instance
  Core.ToQuery
    PutDataCatalogEncryptionSettings
  where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newPutDataCatalogEncryptionSettingsResponse' smart constructor.
data PutDataCatalogEncryptionSettingsResponse = PutDataCatalogEncryptionSettingsResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PutDataCatalogEncryptionSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'putDataCatalogEncryptionSettingsResponse_httpStatus' - The response's http status code.
newPutDataCatalogEncryptionSettingsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  PutDataCatalogEncryptionSettingsResponse
newPutDataCatalogEncryptionSettingsResponse
  pHttpStatus_ =
    PutDataCatalogEncryptionSettingsResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
putDataCatalogEncryptionSettingsResponse_httpStatus :: Lens.Lens' PutDataCatalogEncryptionSettingsResponse Core.Int
putDataCatalogEncryptionSettingsResponse_httpStatus = Lens.lens (\PutDataCatalogEncryptionSettingsResponse' {httpStatus} -> httpStatus) (\s@PutDataCatalogEncryptionSettingsResponse' {} a -> s {httpStatus = a} :: PutDataCatalogEncryptionSettingsResponse)

instance
  Core.NFData
    PutDataCatalogEncryptionSettingsResponse
