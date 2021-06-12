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
-- Module      : Network.AWS.WAF.Types.SubscribedRuleGroupSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.SubscribedRuleGroupSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | This is __AWS WAF Classic__ documentation. For more information, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html AWS WAF Classic>
-- in the developer guide.
--
-- __For the latest version of AWS WAF__, use the AWS WAFV2 API and see the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html AWS WAF Developer Guide>.
-- With the latest version, AWS WAF has a single set of endpoints for
-- regional and global use.
--
-- A summary of the rule groups you are subscribed to.
--
-- /See:/ 'newSubscribedRuleGroupSummary' smart constructor.
data SubscribedRuleGroupSummary = SubscribedRuleGroupSummary'
  { -- | A unique identifier for a @RuleGroup@.
    ruleGroupId :: Core.Text,
    -- | A friendly name or description of the @RuleGroup@. You can\'t change the
    -- name of a @RuleGroup@ after you create it.
    name :: Core.Text,
    -- | A friendly name or description for the metrics for this @RuleGroup@. The
    -- name can contain only alphanumeric characters (A-Z, a-z, 0-9), with
    -- maximum length 128 and minimum length one. It can\'t contain whitespace
    -- or metric names reserved for AWS WAF, including \"All\" and
    -- \"Default_Action.\" You can\'t change the name of the metric after you
    -- create the @RuleGroup@.
    metricName :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'SubscribedRuleGroupSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ruleGroupId', 'subscribedRuleGroupSummary_ruleGroupId' - A unique identifier for a @RuleGroup@.
--
-- 'name', 'subscribedRuleGroupSummary_name' - A friendly name or description of the @RuleGroup@. You can\'t change the
-- name of a @RuleGroup@ after you create it.
--
-- 'metricName', 'subscribedRuleGroupSummary_metricName' - A friendly name or description for the metrics for this @RuleGroup@. The
-- name can contain only alphanumeric characters (A-Z, a-z, 0-9), with
-- maximum length 128 and minimum length one. It can\'t contain whitespace
-- or metric names reserved for AWS WAF, including \"All\" and
-- \"Default_Action.\" You can\'t change the name of the metric after you
-- create the @RuleGroup@.
newSubscribedRuleGroupSummary ::
  -- | 'ruleGroupId'
  Core.Text ->
  -- | 'name'
  Core.Text ->
  -- | 'metricName'
  Core.Text ->
  SubscribedRuleGroupSummary
newSubscribedRuleGroupSummary
  pRuleGroupId_
  pName_
  pMetricName_ =
    SubscribedRuleGroupSummary'
      { ruleGroupId =
          pRuleGroupId_,
        name = pName_,
        metricName = pMetricName_
      }

-- | A unique identifier for a @RuleGroup@.
subscribedRuleGroupSummary_ruleGroupId :: Lens.Lens' SubscribedRuleGroupSummary Core.Text
subscribedRuleGroupSummary_ruleGroupId = Lens.lens (\SubscribedRuleGroupSummary' {ruleGroupId} -> ruleGroupId) (\s@SubscribedRuleGroupSummary' {} a -> s {ruleGroupId = a} :: SubscribedRuleGroupSummary)

-- | A friendly name or description of the @RuleGroup@. You can\'t change the
-- name of a @RuleGroup@ after you create it.
subscribedRuleGroupSummary_name :: Lens.Lens' SubscribedRuleGroupSummary Core.Text
subscribedRuleGroupSummary_name = Lens.lens (\SubscribedRuleGroupSummary' {name} -> name) (\s@SubscribedRuleGroupSummary' {} a -> s {name = a} :: SubscribedRuleGroupSummary)

-- | A friendly name or description for the metrics for this @RuleGroup@. The
-- name can contain only alphanumeric characters (A-Z, a-z, 0-9), with
-- maximum length 128 and minimum length one. It can\'t contain whitespace
-- or metric names reserved for AWS WAF, including \"All\" and
-- \"Default_Action.\" You can\'t change the name of the metric after you
-- create the @RuleGroup@.
subscribedRuleGroupSummary_metricName :: Lens.Lens' SubscribedRuleGroupSummary Core.Text
subscribedRuleGroupSummary_metricName = Lens.lens (\SubscribedRuleGroupSummary' {metricName} -> metricName) (\s@SubscribedRuleGroupSummary' {} a -> s {metricName = a} :: SubscribedRuleGroupSummary)

instance Core.FromJSON SubscribedRuleGroupSummary where
  parseJSON =
    Core.withObject
      "SubscribedRuleGroupSummary"
      ( \x ->
          SubscribedRuleGroupSummary'
            Core.<$> (x Core..: "RuleGroupId")
            Core.<*> (x Core..: "Name")
            Core.<*> (x Core..: "MetricName")
      )

instance Core.Hashable SubscribedRuleGroupSummary

instance Core.NFData SubscribedRuleGroupSummary
