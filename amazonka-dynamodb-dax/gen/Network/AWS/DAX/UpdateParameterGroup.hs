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
-- Module      : Network.AWS.DAX.UpdateParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the parameters of a parameter group. You can modify up to 20
-- parameters in a single request by submitting a list parameter name and
-- value pairs.
module Network.AWS.DAX.UpdateParameterGroup
  ( -- * Creating a Request
    UpdateParameterGroup (..),
    newUpdateParameterGroup,

    -- * Request Lenses
    updateParameterGroup_parameterGroupName,
    updateParameterGroup_parameterNameValues,

    -- * Destructuring the Response
    UpdateParameterGroupResponse (..),
    newUpdateParameterGroupResponse,

    -- * Response Lenses
    updateParameterGroupResponse_parameterGroup,
    updateParameterGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DAX.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateParameterGroup' smart constructor.
data UpdateParameterGroup = UpdateParameterGroup'
  { -- | The name of the parameter group.
    parameterGroupName :: Core.Text,
    -- | An array of name-value pairs for the parameters in the group. Each
    -- element in the array represents a single parameter.
    parameterNameValues :: [ParameterNameValue]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parameterGroupName', 'updateParameterGroup_parameterGroupName' - The name of the parameter group.
--
-- 'parameterNameValues', 'updateParameterGroup_parameterNameValues' - An array of name-value pairs for the parameters in the group. Each
-- element in the array represents a single parameter.
newUpdateParameterGroup ::
  -- | 'parameterGroupName'
  Core.Text ->
  UpdateParameterGroup
newUpdateParameterGroup pParameterGroupName_ =
  UpdateParameterGroup'
    { parameterGroupName =
        pParameterGroupName_,
      parameterNameValues = Core.mempty
    }

-- | The name of the parameter group.
updateParameterGroup_parameterGroupName :: Lens.Lens' UpdateParameterGroup Core.Text
updateParameterGroup_parameterGroupName = Lens.lens (\UpdateParameterGroup' {parameterGroupName} -> parameterGroupName) (\s@UpdateParameterGroup' {} a -> s {parameterGroupName = a} :: UpdateParameterGroup)

-- | An array of name-value pairs for the parameters in the group. Each
-- element in the array represents a single parameter.
updateParameterGroup_parameterNameValues :: Lens.Lens' UpdateParameterGroup [ParameterNameValue]
updateParameterGroup_parameterNameValues = Lens.lens (\UpdateParameterGroup' {parameterNameValues} -> parameterNameValues) (\s@UpdateParameterGroup' {} a -> s {parameterNameValues = a} :: UpdateParameterGroup) Core.. Lens._Coerce

instance Core.AWSRequest UpdateParameterGroup where
  type
    AWSResponse UpdateParameterGroup =
      UpdateParameterGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateParameterGroupResponse'
            Core.<$> (x Core..?> "ParameterGroup")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable UpdateParameterGroup

instance Core.NFData UpdateParameterGroup

instance Core.ToHeaders UpdateParameterGroup where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonDAXV3.UpdateParameterGroup" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON UpdateParameterGroup where
  toJSON UpdateParameterGroup' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("ParameterGroupName" Core..= parameterGroupName),
            Core.Just
              ("ParameterNameValues" Core..= parameterNameValues)
          ]
      )

instance Core.ToPath UpdateParameterGroup where
  toPath = Core.const "/"

instance Core.ToQuery UpdateParameterGroup where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newUpdateParameterGroupResponse' smart constructor.
data UpdateParameterGroupResponse = UpdateParameterGroupResponse'
  { -- | The parameter group that has been modified.
    parameterGroup :: Core.Maybe ParameterGroup,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'UpdateParameterGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parameterGroup', 'updateParameterGroupResponse_parameterGroup' - The parameter group that has been modified.
--
-- 'httpStatus', 'updateParameterGroupResponse_httpStatus' - The response's http status code.
newUpdateParameterGroupResponse ::
  -- | 'httpStatus'
  Core.Int ->
  UpdateParameterGroupResponse
newUpdateParameterGroupResponse pHttpStatus_ =
  UpdateParameterGroupResponse'
    { parameterGroup =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The parameter group that has been modified.
updateParameterGroupResponse_parameterGroup :: Lens.Lens' UpdateParameterGroupResponse (Core.Maybe ParameterGroup)
updateParameterGroupResponse_parameterGroup = Lens.lens (\UpdateParameterGroupResponse' {parameterGroup} -> parameterGroup) (\s@UpdateParameterGroupResponse' {} a -> s {parameterGroup = a} :: UpdateParameterGroupResponse)

-- | The response's http status code.
updateParameterGroupResponse_httpStatus :: Lens.Lens' UpdateParameterGroupResponse Core.Int
updateParameterGroupResponse_httpStatus = Lens.lens (\UpdateParameterGroupResponse' {httpStatus} -> httpStatus) (\s@UpdateParameterGroupResponse' {} a -> s {httpStatus = a} :: UpdateParameterGroupResponse)

instance Core.NFData UpdateParameterGroupResponse
