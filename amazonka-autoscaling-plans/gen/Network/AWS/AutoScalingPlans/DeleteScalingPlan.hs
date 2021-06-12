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
-- Module      : Network.AWS.AutoScalingPlans.DeleteScalingPlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified scaling plan.
--
-- Deleting a scaling plan deletes the underlying ScalingInstruction for
-- all of the scalable resources that are covered by the plan.
--
-- If the plan has launched resources or has scaling activities in
-- progress, you must delete those resources separately.
module Network.AWS.AutoScalingPlans.DeleteScalingPlan
  ( -- * Creating a Request
    DeleteScalingPlan (..),
    newDeleteScalingPlan,

    -- * Request Lenses
    deleteScalingPlan_scalingPlanName,
    deleteScalingPlan_scalingPlanVersion,

    -- * Destructuring the Response
    DeleteScalingPlanResponse (..),
    newDeleteScalingPlanResponse,

    -- * Response Lenses
    deleteScalingPlanResponse_httpStatus,
  )
where

import Network.AWS.AutoScalingPlans.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteScalingPlan' smart constructor.
data DeleteScalingPlan = DeleteScalingPlan'
  { -- | The name of the scaling plan.
    scalingPlanName :: Core.Text,
    -- | The version number of the scaling plan. Currently, the only valid value
    -- is @1@.
    scalingPlanVersion :: Core.Integer
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteScalingPlan' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'scalingPlanName', 'deleteScalingPlan_scalingPlanName' - The name of the scaling plan.
--
-- 'scalingPlanVersion', 'deleteScalingPlan_scalingPlanVersion' - The version number of the scaling plan. Currently, the only valid value
-- is @1@.
newDeleteScalingPlan ::
  -- | 'scalingPlanName'
  Core.Text ->
  -- | 'scalingPlanVersion'
  Core.Integer ->
  DeleteScalingPlan
newDeleteScalingPlan
  pScalingPlanName_
  pScalingPlanVersion_ =
    DeleteScalingPlan'
      { scalingPlanName =
          pScalingPlanName_,
        scalingPlanVersion = pScalingPlanVersion_
      }

-- | The name of the scaling plan.
deleteScalingPlan_scalingPlanName :: Lens.Lens' DeleteScalingPlan Core.Text
deleteScalingPlan_scalingPlanName = Lens.lens (\DeleteScalingPlan' {scalingPlanName} -> scalingPlanName) (\s@DeleteScalingPlan' {} a -> s {scalingPlanName = a} :: DeleteScalingPlan)

-- | The version number of the scaling plan. Currently, the only valid value
-- is @1@.
deleteScalingPlan_scalingPlanVersion :: Lens.Lens' DeleteScalingPlan Core.Integer
deleteScalingPlan_scalingPlanVersion = Lens.lens (\DeleteScalingPlan' {scalingPlanVersion} -> scalingPlanVersion) (\s@DeleteScalingPlan' {} a -> s {scalingPlanVersion = a} :: DeleteScalingPlan)

instance Core.AWSRequest DeleteScalingPlan where
  type
    AWSResponse DeleteScalingPlan =
      DeleteScalingPlanResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteScalingPlanResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DeleteScalingPlan

instance Core.NFData DeleteScalingPlan

instance Core.ToHeaders DeleteScalingPlan where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AnyScaleScalingPlannerFrontendService.DeleteScalingPlan" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DeleteScalingPlan where
  toJSON DeleteScalingPlan' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just
              ("ScalingPlanName" Core..= scalingPlanName),
            Core.Just
              ("ScalingPlanVersion" Core..= scalingPlanVersion)
          ]
      )

instance Core.ToPath DeleteScalingPlan where
  toPath = Core.const "/"

instance Core.ToQuery DeleteScalingPlan where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDeleteScalingPlanResponse' smart constructor.
data DeleteScalingPlanResponse = DeleteScalingPlanResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DeleteScalingPlanResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteScalingPlanResponse_httpStatus' - The response's http status code.
newDeleteScalingPlanResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DeleteScalingPlanResponse
newDeleteScalingPlanResponse pHttpStatus_ =
  DeleteScalingPlanResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteScalingPlanResponse_httpStatus :: Lens.Lens' DeleteScalingPlanResponse Core.Int
deleteScalingPlanResponse_httpStatus = Lens.lens (\DeleteScalingPlanResponse' {httpStatus} -> httpStatus) (\s@DeleteScalingPlanResponse' {} a -> s {httpStatus = a} :: DeleteScalingPlanResponse)

instance Core.NFData DeleteScalingPlanResponse
