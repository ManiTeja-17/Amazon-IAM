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
-- Module      : Network.AWS.IAM.Types.ResourceSpecificResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.ResourceSpecificResult where

import qualified Network.AWS.Core as Core
import Network.AWS.IAM.Types.PermissionsBoundaryDecisionDetail
import Network.AWS.IAM.Types.PolicyEvaluationDecisionType
import Network.AWS.IAM.Types.Statement
import qualified Network.AWS.Lens as Lens

-- | Contains the result of the simulation of a single API operation call on
-- a single resource.
--
-- This data type is used by a member of the EvaluationResult data type.
--
-- /See:/ 'newResourceSpecificResult' smart constructor.
data ResourceSpecificResult = ResourceSpecificResult'
  { -- | Additional details about the results of the evaluation decision on a
    -- single resource. This parameter is returned only for cross-account
    -- simulations. This parameter explains how each policy type contributes to
    -- the resource-specific evaluation decision.
    evalDecisionDetails :: Core.Maybe (Core.HashMap Core.Text PolicyEvaluationDecisionType),
    -- | Contains information about the effect that a permissions boundary has on
    -- a policy simulation when that boundary is applied to an IAM entity.
    permissionsBoundaryDecisionDetail :: Core.Maybe PermissionsBoundaryDecisionDetail,
    -- | A list of the statements in the input policies that determine the result
    -- for this part of the simulation. Remember that even if multiple
    -- statements allow the operation on the resource, if /any/ statement
    -- denies that operation, then the explicit deny overrides any allow. In
    -- addition, the deny statement is the only entry included in the result.
    matchedStatements :: Core.Maybe [Statement],
    -- | A list of context keys that are required by the included input policies
    -- but that were not provided by one of the input parameters. This list is
    -- used when a list of ARNs is included in the @ResourceArns@ parameter
    -- instead of \"*\". If you do not specify individual resources, by setting
    -- @ResourceArns@ to \"*\" or by not including the @ResourceArns@
    -- parameter, then any missing context values are instead included under
    -- the @EvaluationResults@ section. To discover the context keys used by a
    -- set of policies, you can call GetContextKeysForCustomPolicy or
    -- GetContextKeysForPrincipalPolicy.
    missingContextValues :: Core.Maybe [Core.Text],
    -- | The name of the simulated resource, in Amazon Resource Name (ARN)
    -- format.
    evalResourceName :: Core.Text,
    -- | The result of the simulation of the simulated API operation on the
    -- resource specified in @EvalResourceName@.
    evalResourceDecision :: PolicyEvaluationDecisionType
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ResourceSpecificResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'evalDecisionDetails', 'resourceSpecificResult_evalDecisionDetails' - Additional details about the results of the evaluation decision on a
-- single resource. This parameter is returned only for cross-account
-- simulations. This parameter explains how each policy type contributes to
-- the resource-specific evaluation decision.
--
-- 'permissionsBoundaryDecisionDetail', 'resourceSpecificResult_permissionsBoundaryDecisionDetail' - Contains information about the effect that a permissions boundary has on
-- a policy simulation when that boundary is applied to an IAM entity.
--
-- 'matchedStatements', 'resourceSpecificResult_matchedStatements' - A list of the statements in the input policies that determine the result
-- for this part of the simulation. Remember that even if multiple
-- statements allow the operation on the resource, if /any/ statement
-- denies that operation, then the explicit deny overrides any allow. In
-- addition, the deny statement is the only entry included in the result.
--
-- 'missingContextValues', 'resourceSpecificResult_missingContextValues' - A list of context keys that are required by the included input policies
-- but that were not provided by one of the input parameters. This list is
-- used when a list of ARNs is included in the @ResourceArns@ parameter
-- instead of \"*\". If you do not specify individual resources, by setting
-- @ResourceArns@ to \"*\" or by not including the @ResourceArns@
-- parameter, then any missing context values are instead included under
-- the @EvaluationResults@ section. To discover the context keys used by a
-- set of policies, you can call GetContextKeysForCustomPolicy or
-- GetContextKeysForPrincipalPolicy.
--
-- 'evalResourceName', 'resourceSpecificResult_evalResourceName' - The name of the simulated resource, in Amazon Resource Name (ARN)
-- format.
--
-- 'evalResourceDecision', 'resourceSpecificResult_evalResourceDecision' - The result of the simulation of the simulated API operation on the
-- resource specified in @EvalResourceName@.
newResourceSpecificResult ::
  -- | 'evalResourceName'
  Core.Text ->
  -- | 'evalResourceDecision'
  PolicyEvaluationDecisionType ->
  ResourceSpecificResult
newResourceSpecificResult
  pEvalResourceName_
  pEvalResourceDecision_ =
    ResourceSpecificResult'
      { evalDecisionDetails =
          Core.Nothing,
        permissionsBoundaryDecisionDetail = Core.Nothing,
        matchedStatements = Core.Nothing,
        missingContextValues = Core.Nothing,
        evalResourceName = pEvalResourceName_,
        evalResourceDecision = pEvalResourceDecision_
      }

-- | Additional details about the results of the evaluation decision on a
-- single resource. This parameter is returned only for cross-account
-- simulations. This parameter explains how each policy type contributes to
-- the resource-specific evaluation decision.
resourceSpecificResult_evalDecisionDetails :: Lens.Lens' ResourceSpecificResult (Core.Maybe (Core.HashMap Core.Text PolicyEvaluationDecisionType))
resourceSpecificResult_evalDecisionDetails = Lens.lens (\ResourceSpecificResult' {evalDecisionDetails} -> evalDecisionDetails) (\s@ResourceSpecificResult' {} a -> s {evalDecisionDetails = a} :: ResourceSpecificResult) Core.. Lens.mapping Lens._Coerce

-- | Contains information about the effect that a permissions boundary has on
-- a policy simulation when that boundary is applied to an IAM entity.
resourceSpecificResult_permissionsBoundaryDecisionDetail :: Lens.Lens' ResourceSpecificResult (Core.Maybe PermissionsBoundaryDecisionDetail)
resourceSpecificResult_permissionsBoundaryDecisionDetail = Lens.lens (\ResourceSpecificResult' {permissionsBoundaryDecisionDetail} -> permissionsBoundaryDecisionDetail) (\s@ResourceSpecificResult' {} a -> s {permissionsBoundaryDecisionDetail = a} :: ResourceSpecificResult)

-- | A list of the statements in the input policies that determine the result
-- for this part of the simulation. Remember that even if multiple
-- statements allow the operation on the resource, if /any/ statement
-- denies that operation, then the explicit deny overrides any allow. In
-- addition, the deny statement is the only entry included in the result.
resourceSpecificResult_matchedStatements :: Lens.Lens' ResourceSpecificResult (Core.Maybe [Statement])
resourceSpecificResult_matchedStatements = Lens.lens (\ResourceSpecificResult' {matchedStatements} -> matchedStatements) (\s@ResourceSpecificResult' {} a -> s {matchedStatements = a} :: ResourceSpecificResult) Core.. Lens.mapping Lens._Coerce

-- | A list of context keys that are required by the included input policies
-- but that were not provided by one of the input parameters. This list is
-- used when a list of ARNs is included in the @ResourceArns@ parameter
-- instead of \"*\". If you do not specify individual resources, by setting
-- @ResourceArns@ to \"*\" or by not including the @ResourceArns@
-- parameter, then any missing context values are instead included under
-- the @EvaluationResults@ section. To discover the context keys used by a
-- set of policies, you can call GetContextKeysForCustomPolicy or
-- GetContextKeysForPrincipalPolicy.
resourceSpecificResult_missingContextValues :: Lens.Lens' ResourceSpecificResult (Core.Maybe [Core.Text])
resourceSpecificResult_missingContextValues = Lens.lens (\ResourceSpecificResult' {missingContextValues} -> missingContextValues) (\s@ResourceSpecificResult' {} a -> s {missingContextValues = a} :: ResourceSpecificResult) Core.. Lens.mapping Lens._Coerce

-- | The name of the simulated resource, in Amazon Resource Name (ARN)
-- format.
resourceSpecificResult_evalResourceName :: Lens.Lens' ResourceSpecificResult Core.Text
resourceSpecificResult_evalResourceName = Lens.lens (\ResourceSpecificResult' {evalResourceName} -> evalResourceName) (\s@ResourceSpecificResult' {} a -> s {evalResourceName = a} :: ResourceSpecificResult)

-- | The result of the simulation of the simulated API operation on the
-- resource specified in @EvalResourceName@.
resourceSpecificResult_evalResourceDecision :: Lens.Lens' ResourceSpecificResult PolicyEvaluationDecisionType
resourceSpecificResult_evalResourceDecision = Lens.lens (\ResourceSpecificResult' {evalResourceDecision} -> evalResourceDecision) (\s@ResourceSpecificResult' {} a -> s {evalResourceDecision = a} :: ResourceSpecificResult)

instance Core.FromXML ResourceSpecificResult where
  parseXML x =
    ResourceSpecificResult'
      Core.<$> ( x Core..@? "EvalDecisionDetails"
                   Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLMap "entry" "key" "value")
               )
      Core.<*> (x Core..@? "PermissionsBoundaryDecisionDetail")
      Core.<*> ( x Core..@? "MatchedStatements" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "member")
               )
      Core.<*> ( x Core..@? "MissingContextValues"
                   Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "member")
               )
      Core.<*> (x Core..@ "EvalResourceName")
      Core.<*> (x Core..@ "EvalResourceDecision")

instance Core.Hashable ResourceSpecificResult

instance Core.NFData ResourceSpecificResult
