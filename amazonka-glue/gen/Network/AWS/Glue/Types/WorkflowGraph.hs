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
-- Module      : Network.AWS.Glue.Types.WorkflowGraph
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.WorkflowGraph where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types.Edge
import Network.AWS.Glue.Types.Node
import qualified Network.AWS.Lens as Lens

-- | A workflow graph represents the complete workflow containing all the AWS
-- Glue components present in the workflow and all the directed connections
-- between them.
--
-- /See:/ 'newWorkflowGraph' smart constructor.
data WorkflowGraph = WorkflowGraph'
  { -- | A list of the the AWS Glue components belong to the workflow represented
    -- as nodes.
    nodes :: Core.Maybe [Node],
    -- | A list of all the directed connections between the nodes belonging to
    -- the workflow.
    edges :: Core.Maybe [Edge]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'WorkflowGraph' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nodes', 'workflowGraph_nodes' - A list of the the AWS Glue components belong to the workflow represented
-- as nodes.
--
-- 'edges', 'workflowGraph_edges' - A list of all the directed connections between the nodes belonging to
-- the workflow.
newWorkflowGraph ::
  WorkflowGraph
newWorkflowGraph =
  WorkflowGraph'
    { nodes = Core.Nothing,
      edges = Core.Nothing
    }

-- | A list of the the AWS Glue components belong to the workflow represented
-- as nodes.
workflowGraph_nodes :: Lens.Lens' WorkflowGraph (Core.Maybe [Node])
workflowGraph_nodes = Lens.lens (\WorkflowGraph' {nodes} -> nodes) (\s@WorkflowGraph' {} a -> s {nodes = a} :: WorkflowGraph) Core.. Lens.mapping Lens._Coerce

-- | A list of all the directed connections between the nodes belonging to
-- the workflow.
workflowGraph_edges :: Lens.Lens' WorkflowGraph (Core.Maybe [Edge])
workflowGraph_edges = Lens.lens (\WorkflowGraph' {edges} -> edges) (\s@WorkflowGraph' {} a -> s {edges = a} :: WorkflowGraph) Core.. Lens.mapping Lens._Coerce

instance Core.FromJSON WorkflowGraph where
  parseJSON =
    Core.withObject
      "WorkflowGraph"
      ( \x ->
          WorkflowGraph'
            Core.<$> (x Core..:? "Nodes" Core..!= Core.mempty)
            Core.<*> (x Core..:? "Edges" Core..!= Core.mempty)
      )

instance Core.Hashable WorkflowGraph

instance Core.NFData WorkflowGraph
