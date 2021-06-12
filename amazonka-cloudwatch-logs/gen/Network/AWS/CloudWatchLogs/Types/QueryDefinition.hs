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
-- Module      : Network.AWS.CloudWatchLogs.Types.QueryDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.QueryDefinition where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | This structure contains details about a saved CloudWatch Logs Insights
-- query definition.
--
-- /See:/ 'newQueryDefinition' smart constructor.
data QueryDefinition = QueryDefinition'
  { -- | The query string to use for this definition. For more information, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html CloudWatch Logs Insights Query Syntax>.
    queryString :: Core.Maybe Core.Text,
    -- | The name of the query definition.
    name :: Core.Maybe Core.Text,
    -- | If this query definition contains a list of log groups that it is
    -- limited to, that list appears here.
    logGroupNames :: Core.Maybe [Core.Text],
    -- | The date that the query definition was most recently modified.
    lastModified :: Core.Maybe Core.Natural,
    -- | The unique ID of the query definition.
    queryDefinitionId :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'QueryDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'queryString', 'queryDefinition_queryString' - The query string to use for this definition. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html CloudWatch Logs Insights Query Syntax>.
--
-- 'name', 'queryDefinition_name' - The name of the query definition.
--
-- 'logGroupNames', 'queryDefinition_logGroupNames' - If this query definition contains a list of log groups that it is
-- limited to, that list appears here.
--
-- 'lastModified', 'queryDefinition_lastModified' - The date that the query definition was most recently modified.
--
-- 'queryDefinitionId', 'queryDefinition_queryDefinitionId' - The unique ID of the query definition.
newQueryDefinition ::
  QueryDefinition
newQueryDefinition =
  QueryDefinition'
    { queryString = Core.Nothing,
      name = Core.Nothing,
      logGroupNames = Core.Nothing,
      lastModified = Core.Nothing,
      queryDefinitionId = Core.Nothing
    }

-- | The query string to use for this definition. For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html CloudWatch Logs Insights Query Syntax>.
queryDefinition_queryString :: Lens.Lens' QueryDefinition (Core.Maybe Core.Text)
queryDefinition_queryString = Lens.lens (\QueryDefinition' {queryString} -> queryString) (\s@QueryDefinition' {} a -> s {queryString = a} :: QueryDefinition)

-- | The name of the query definition.
queryDefinition_name :: Lens.Lens' QueryDefinition (Core.Maybe Core.Text)
queryDefinition_name = Lens.lens (\QueryDefinition' {name} -> name) (\s@QueryDefinition' {} a -> s {name = a} :: QueryDefinition)

-- | If this query definition contains a list of log groups that it is
-- limited to, that list appears here.
queryDefinition_logGroupNames :: Lens.Lens' QueryDefinition (Core.Maybe [Core.Text])
queryDefinition_logGroupNames = Lens.lens (\QueryDefinition' {logGroupNames} -> logGroupNames) (\s@QueryDefinition' {} a -> s {logGroupNames = a} :: QueryDefinition) Core.. Lens.mapping Lens._Coerce

-- | The date that the query definition was most recently modified.
queryDefinition_lastModified :: Lens.Lens' QueryDefinition (Core.Maybe Core.Natural)
queryDefinition_lastModified = Lens.lens (\QueryDefinition' {lastModified} -> lastModified) (\s@QueryDefinition' {} a -> s {lastModified = a} :: QueryDefinition)

-- | The unique ID of the query definition.
queryDefinition_queryDefinitionId :: Lens.Lens' QueryDefinition (Core.Maybe Core.Text)
queryDefinition_queryDefinitionId = Lens.lens (\QueryDefinition' {queryDefinitionId} -> queryDefinitionId) (\s@QueryDefinition' {} a -> s {queryDefinitionId = a} :: QueryDefinition)

instance Core.FromJSON QueryDefinition where
  parseJSON =
    Core.withObject
      "QueryDefinition"
      ( \x ->
          QueryDefinition'
            Core.<$> (x Core..:? "queryString")
            Core.<*> (x Core..:? "name")
            Core.<*> (x Core..:? "logGroupNames" Core..!= Core.mempty)
            Core.<*> (x Core..:? "lastModified")
            Core.<*> (x Core..:? "queryDefinitionId")
      )

instance Core.Hashable QueryDefinition

instance Core.NFData QueryDefinition
