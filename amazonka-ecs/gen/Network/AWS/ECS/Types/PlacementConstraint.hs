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
-- Module      : Network.AWS.ECS.Types.PlacementConstraint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.PlacementConstraint where

import qualified Network.AWS.Core as Core
import Network.AWS.ECS.Types.PlacementConstraintType
import qualified Network.AWS.Lens as Lens

-- | An object representing a constraint on task placement. For more
-- information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html Task Placement Constraints>
-- in the /Amazon Elastic Container Service Developer Guide/.
--
-- If you are using the Fargate launch type, task placement constraints are
-- not supported.
--
-- /See:/ 'newPlacementConstraint' smart constructor.
data PlacementConstraint = PlacementConstraint'
  { -- | The type of constraint. Use @distinctInstance@ to ensure that each task
    -- in a particular group is running on a different container instance. Use
    -- @memberOf@ to restrict the selection to a group of valid candidates.
    type' :: Core.Maybe PlacementConstraintType,
    -- | A cluster query language expression to apply to the constraint. You
    -- cannot specify an expression if the constraint type is
    -- @distinctInstance@. For more information, see
    -- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html Cluster Query Language>
    -- in the /Amazon Elastic Container Service Developer Guide/.
    expression :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PlacementConstraint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'placementConstraint_type' - The type of constraint. Use @distinctInstance@ to ensure that each task
-- in a particular group is running on a different container instance. Use
-- @memberOf@ to restrict the selection to a group of valid candidates.
--
-- 'expression', 'placementConstraint_expression' - A cluster query language expression to apply to the constraint. You
-- cannot specify an expression if the constraint type is
-- @distinctInstance@. For more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html Cluster Query Language>
-- in the /Amazon Elastic Container Service Developer Guide/.
newPlacementConstraint ::
  PlacementConstraint
newPlacementConstraint =
  PlacementConstraint'
    { type' = Core.Nothing,
      expression = Core.Nothing
    }

-- | The type of constraint. Use @distinctInstance@ to ensure that each task
-- in a particular group is running on a different container instance. Use
-- @memberOf@ to restrict the selection to a group of valid candidates.
placementConstraint_type :: Lens.Lens' PlacementConstraint (Core.Maybe PlacementConstraintType)
placementConstraint_type = Lens.lens (\PlacementConstraint' {type'} -> type') (\s@PlacementConstraint' {} a -> s {type' = a} :: PlacementConstraint)

-- | A cluster query language expression to apply to the constraint. You
-- cannot specify an expression if the constraint type is
-- @distinctInstance@. For more information, see
-- <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html Cluster Query Language>
-- in the /Amazon Elastic Container Service Developer Guide/.
placementConstraint_expression :: Lens.Lens' PlacementConstraint (Core.Maybe Core.Text)
placementConstraint_expression = Lens.lens (\PlacementConstraint' {expression} -> expression) (\s@PlacementConstraint' {} a -> s {expression = a} :: PlacementConstraint)

instance Core.FromJSON PlacementConstraint where
  parseJSON =
    Core.withObject
      "PlacementConstraint"
      ( \x ->
          PlacementConstraint'
            Core.<$> (x Core..:? "type")
            Core.<*> (x Core..:? "expression")
      )

instance Core.Hashable PlacementConstraint

instance Core.NFData PlacementConstraint

instance Core.ToJSON PlacementConstraint where
  toJSON PlacementConstraint' {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("expression" Core..=) Core.<$> expression
          ]
      )
