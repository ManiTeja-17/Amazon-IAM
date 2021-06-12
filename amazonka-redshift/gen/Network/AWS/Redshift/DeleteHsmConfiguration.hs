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
-- Module      : Network.AWS.Redshift.DeleteHsmConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified Amazon Redshift HSM configuration.
module Network.AWS.Redshift.DeleteHsmConfiguration
  ( -- * Creating a Request
    DeleteHsmConfiguration (..),
    newDeleteHsmConfiguration,

    -- * Request Lenses
    deleteHsmConfiguration_hsmConfigurationIdentifier,

    -- * Destructuring the Response
    DeleteHsmConfigurationResponse (..),
    newDeleteHsmConfigurationResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Redshift.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDeleteHsmConfiguration' smart constructor.
data DeleteHsmConfiguration = DeleteHsmConfiguration'
  { -- | The identifier of the Amazon Redshift HSM configuration to be deleted.
    hsmConfigurationIdentifier :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteHsmConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hsmConfigurationIdentifier', 'deleteHsmConfiguration_hsmConfigurationIdentifier' - The identifier of the Amazon Redshift HSM configuration to be deleted.
newDeleteHsmConfiguration ::
  -- | 'hsmConfigurationIdentifier'
  Core.Text ->
  DeleteHsmConfiguration
newDeleteHsmConfiguration
  pHsmConfigurationIdentifier_ =
    DeleteHsmConfiguration'
      { hsmConfigurationIdentifier =
          pHsmConfigurationIdentifier_
      }

-- | The identifier of the Amazon Redshift HSM configuration to be deleted.
deleteHsmConfiguration_hsmConfigurationIdentifier :: Lens.Lens' DeleteHsmConfiguration Core.Text
deleteHsmConfiguration_hsmConfigurationIdentifier = Lens.lens (\DeleteHsmConfiguration' {hsmConfigurationIdentifier} -> hsmConfigurationIdentifier) (\s@DeleteHsmConfiguration' {} a -> s {hsmConfigurationIdentifier = a} :: DeleteHsmConfiguration)

instance Core.AWSRequest DeleteHsmConfiguration where
  type
    AWSResponse DeleteHsmConfiguration =
      DeleteHsmConfigurationResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull
      DeleteHsmConfigurationResponse'

instance Core.Hashable DeleteHsmConfiguration

instance Core.NFData DeleteHsmConfiguration

instance Core.ToHeaders DeleteHsmConfiguration where
  toHeaders = Core.const Core.mempty

instance Core.ToPath DeleteHsmConfiguration where
  toPath = Core.const "/"

instance Core.ToQuery DeleteHsmConfiguration where
  toQuery DeleteHsmConfiguration' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("DeleteHsmConfiguration" :: Core.ByteString),
        "Version" Core.=: ("2012-12-01" :: Core.ByteString),
        "HsmConfigurationIdentifier"
          Core.=: hsmConfigurationIdentifier
      ]

-- | /See:/ 'newDeleteHsmConfigurationResponse' smart constructor.
data DeleteHsmConfigurationResponse = DeleteHsmConfigurationResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteHsmConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteHsmConfigurationResponse ::
  DeleteHsmConfigurationResponse
newDeleteHsmConfigurationResponse =
  DeleteHsmConfigurationResponse'

instance Core.NFData DeleteHsmConfigurationResponse
