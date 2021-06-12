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
-- Module      : Network.AWS.S3.Types.MetricsAndOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.MetricsAndOperator where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.Tag

-- | A conjunction (logical AND) of predicates, which is used in evaluating a
-- metrics filter. The operator must have at least two predicates, and an
-- object must match all of the predicates in order for the filter to
-- apply.
--
-- /See:/ 'newMetricsAndOperator' smart constructor.
data MetricsAndOperator = MetricsAndOperator'
  { -- | The prefix used when evaluating an AND predicate.
    prefix :: Core.Maybe Core.Text,
    -- | The list of tags used when evaluating an AND predicate.
    tags :: Core.Maybe [Tag]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'MetricsAndOperator' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'prefix', 'metricsAndOperator_prefix' - The prefix used when evaluating an AND predicate.
--
-- 'tags', 'metricsAndOperator_tags' - The list of tags used when evaluating an AND predicate.
newMetricsAndOperator ::
  MetricsAndOperator
newMetricsAndOperator =
  MetricsAndOperator'
    { prefix = Core.Nothing,
      tags = Core.Nothing
    }

-- | The prefix used when evaluating an AND predicate.
metricsAndOperator_prefix :: Lens.Lens' MetricsAndOperator (Core.Maybe Core.Text)
metricsAndOperator_prefix = Lens.lens (\MetricsAndOperator' {prefix} -> prefix) (\s@MetricsAndOperator' {} a -> s {prefix = a} :: MetricsAndOperator)

-- | The list of tags used when evaluating an AND predicate.
metricsAndOperator_tags :: Lens.Lens' MetricsAndOperator (Core.Maybe [Tag])
metricsAndOperator_tags = Lens.lens (\MetricsAndOperator' {tags} -> tags) (\s@MetricsAndOperator' {} a -> s {tags = a} :: MetricsAndOperator) Core.. Lens.mapping Lens._Coerce

instance Core.FromXML MetricsAndOperator where
  parseXML x =
    MetricsAndOperator'
      Core.<$> (x Core..@? "Prefix")
      Core.<*> ( x Core..@? "Tag" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "Tag")
               )

instance Core.Hashable MetricsAndOperator

instance Core.NFData MetricsAndOperator

instance Core.ToXML MetricsAndOperator where
  toXML MetricsAndOperator' {..} =
    Core.mconcat
      [ "Prefix" Core.@= prefix,
        "Tag"
          Core.@= Core.toXML (Core.toXMLList "Tag" Core.<$> tags)
      ]
