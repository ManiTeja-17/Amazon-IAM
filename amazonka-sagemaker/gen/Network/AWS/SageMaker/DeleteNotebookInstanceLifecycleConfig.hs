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
-- Module      : Network.AWS.SageMaker.DeleteNotebookInstanceLifecycleConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a notebook instance lifecycle configuration.
module Network.AWS.SageMaker.DeleteNotebookInstanceLifecycleConfig
  ( -- * Creating a Request
    DeleteNotebookInstanceLifecycleConfig (..),
    newDeleteNotebookInstanceLifecycleConfig,

    -- * Request Lenses
    deleteNotebookInstanceLifecycleConfig_notebookInstanceLifecycleConfigName,

    -- * Destructuring the Response
    DeleteNotebookInstanceLifecycleConfigResponse (..),
    newDeleteNotebookInstanceLifecycleConfigResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newDeleteNotebookInstanceLifecycleConfig' smart constructor.
data DeleteNotebookInstanceLifecycleConfig = DeleteNotebookInstanceLifecycleConfig'
  { -- | The name of the lifecycle configuration to delete.
    notebookInstanceLifecycleConfigName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteNotebookInstanceLifecycleConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'notebookInstanceLifecycleConfigName', 'deleteNotebookInstanceLifecycleConfig_notebookInstanceLifecycleConfigName' - The name of the lifecycle configuration to delete.
newDeleteNotebookInstanceLifecycleConfig ::
  -- | 'notebookInstanceLifecycleConfigName'
  Core.Text ->
  DeleteNotebookInstanceLifecycleConfig
newDeleteNotebookInstanceLifecycleConfig
  pNotebookInstanceLifecycleConfigName_ =
    DeleteNotebookInstanceLifecycleConfig'
      { notebookInstanceLifecycleConfigName =
          pNotebookInstanceLifecycleConfigName_
      }

-- | The name of the lifecycle configuration to delete.
deleteNotebookInstanceLifecycleConfig_notebookInstanceLifecycleConfigName :: Lens.Lens' DeleteNotebookInstanceLifecycleConfig Core.Text
deleteNotebookInstanceLifecycleConfig_notebookInstanceLifecycleConfigName = Lens.lens (\DeleteNotebookInstanceLifecycleConfig' {notebookInstanceLifecycleConfigName} -> notebookInstanceLifecycleConfigName) (\s@DeleteNotebookInstanceLifecycleConfig' {} a -> s {notebookInstanceLifecycleConfigName = a} :: DeleteNotebookInstanceLifecycleConfig)

instance
  Core.AWSRequest
    DeleteNotebookInstanceLifecycleConfig
  where
  type
    AWSResponse
      DeleteNotebookInstanceLifecycleConfig =
      DeleteNotebookInstanceLifecycleConfigResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      DeleteNotebookInstanceLifecycleConfigResponse'

instance
  Core.Hashable
    DeleteNotebookInstanceLifecycleConfig

instance
  Core.NFData
    DeleteNotebookInstanceLifecycleConfig

instance
  Core.ToHeaders
    DeleteNotebookInstanceLifecycleConfig
  where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.DeleteNotebookInstanceLifecycleConfig" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance
  Core.ToJSON
    DeleteNotebookInstanceLifecycleConfig
  where
  toJSON DeleteNotebookInstanceLifecycleConfig' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ( "NotebookInstanceLifecycleConfigName"
                  Core..= notebookInstanceLifecycleConfigName
              )
          ]
      )

instance
  Core.ToPath
    DeleteNotebookInstanceLifecycleConfig
  where
  toPath = Core.const "/"

instance
  Core.ToQuery
    DeleteNotebookInstanceLifecycleConfig
  where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteNotebookInstanceLifecycleConfigResponse' smart constructor.
data DeleteNotebookInstanceLifecycleConfigResponse = DeleteNotebookInstanceLifecycleConfigResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteNotebookInstanceLifecycleConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteNotebookInstanceLifecycleConfigResponse ::
  DeleteNotebookInstanceLifecycleConfigResponse
newDeleteNotebookInstanceLifecycleConfigResponse =
  DeleteNotebookInstanceLifecycleConfigResponse'

instance
  Core.NFData
    DeleteNotebookInstanceLifecycleConfigResponse
