{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.TerminateRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.TerminateRequest where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | Describes the information used to terminate a WorkSpace.
--
-- /See:/ 'newTerminateRequest' smart constructor.
data TerminateRequest = TerminateRequest'
  { -- | The identifier of the WorkSpace.
    workspaceId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'TerminateRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workspaceId', 'terminateRequest_workspaceId' - The identifier of the WorkSpace.
newTerminateRequest ::
  -- | 'workspaceId'
  Core.Text ->
  TerminateRequest
newTerminateRequest pWorkspaceId_ =
  TerminateRequest' {workspaceId = pWorkspaceId_}

-- | The identifier of the WorkSpace.
terminateRequest_workspaceId :: Lens.Lens' TerminateRequest Core.Text
terminateRequest_workspaceId = Lens.lens (\TerminateRequest' {workspaceId} -> workspaceId) (\s@TerminateRequest' {} a -> s {workspaceId = a} :: TerminateRequest)

instance Core.Hashable TerminateRequest

instance Core.NFData TerminateRequest

instance Core.ToJSON TerminateRequest where
  toJSON TerminateRequest' {..} =
    Core.object
      ( Core.catMaybes
          [Core.Just ("WorkspaceId" Core..= workspaceId)]
      )
