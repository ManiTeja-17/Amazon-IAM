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
-- Module      : Network.AWS.CloudFormation.Types.StackSetOperationResultSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackSetOperationResultSummary where

import Network.AWS.CloudFormation.Types.AccountGateResult
import Network.AWS.CloudFormation.Types.StackSetOperationResultStatus
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The structure that contains information about a specified operation\'s
-- results for a given account in a given Region.
--
-- /See:/ 'newStackSetOperationResultSummary' smart constructor.
data StackSetOperationResultSummary = StackSetOperationResultSummary'
  { -- | The results of the account gate function AWS CloudFormation invokes, if
    -- present, before proceeding with stack set operations in an account
    accountGateResult :: Core.Maybe AccountGateResult,
    -- | The result status of the stack set operation for the given account in
    -- the given Region.
    --
    -- -   @CANCELLED@: The operation in the specified account and Region has
    --     been cancelled. This is either because a user has stopped the stack
    --     set operation, or because the failure tolerance of the stack set
    --     operation has been exceeded.
    --
    -- -   @FAILED@: The operation in the specified account and Region failed.
    --
    --     If the stack set operation fails in enough accounts within a Region,
    --     the failure tolerance for the stack set operation as a whole might
    --     be exceeded.
    --
    -- -   @RUNNING@: The operation in the specified account and Region is
    --     currently in progress.
    --
    -- -   @PENDING@: The operation in the specified account and Region has yet
    --     to start.
    --
    -- -   @SUCCEEDED@: The operation in the specified account and Region
    --     completed successfully.
    status :: Core.Maybe StackSetOperationResultStatus,
    -- | [Service-managed permissions] The organization root ID or organizational
    -- unit (OU) IDs that you specified for
    -- <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html DeploymentTargets>.
    organizationalUnitId :: Core.Maybe Core.Text,
    -- | [Self-managed permissions] The name of the AWS account for this
    -- operation result.
    account :: Core.Maybe Core.Text,
    -- | The name of the AWS Region for this operation result.
    region :: Core.Maybe Core.Text,
    -- | The reason for the assigned result status.
    statusReason :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'StackSetOperationResultSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountGateResult', 'stackSetOperationResultSummary_accountGateResult' - The results of the account gate function AWS CloudFormation invokes, if
-- present, before proceeding with stack set operations in an account
--
-- 'status', 'stackSetOperationResultSummary_status' - The result status of the stack set operation for the given account in
-- the given Region.
--
-- -   @CANCELLED@: The operation in the specified account and Region has
--     been cancelled. This is either because a user has stopped the stack
--     set operation, or because the failure tolerance of the stack set
--     operation has been exceeded.
--
-- -   @FAILED@: The operation in the specified account and Region failed.
--
--     If the stack set operation fails in enough accounts within a Region,
--     the failure tolerance for the stack set operation as a whole might
--     be exceeded.
--
-- -   @RUNNING@: The operation in the specified account and Region is
--     currently in progress.
--
-- -   @PENDING@: The operation in the specified account and Region has yet
--     to start.
--
-- -   @SUCCEEDED@: The operation in the specified account and Region
--     completed successfully.
--
-- 'organizationalUnitId', 'stackSetOperationResultSummary_organizationalUnitId' - [Service-managed permissions] The organization root ID or organizational
-- unit (OU) IDs that you specified for
-- <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html DeploymentTargets>.
--
-- 'account', 'stackSetOperationResultSummary_account' - [Self-managed permissions] The name of the AWS account for this
-- operation result.
--
-- 'region', 'stackSetOperationResultSummary_region' - The name of the AWS Region for this operation result.
--
-- 'statusReason', 'stackSetOperationResultSummary_statusReason' - The reason for the assigned result status.
newStackSetOperationResultSummary ::
  StackSetOperationResultSummary
newStackSetOperationResultSummary =
  StackSetOperationResultSummary'
    { accountGateResult =
        Core.Nothing,
      status = Core.Nothing,
      organizationalUnitId = Core.Nothing,
      account = Core.Nothing,
      region = Core.Nothing,
      statusReason = Core.Nothing
    }

-- | The results of the account gate function AWS CloudFormation invokes, if
-- present, before proceeding with stack set operations in an account
stackSetOperationResultSummary_accountGateResult :: Lens.Lens' StackSetOperationResultSummary (Core.Maybe AccountGateResult)
stackSetOperationResultSummary_accountGateResult = Lens.lens (\StackSetOperationResultSummary' {accountGateResult} -> accountGateResult) (\s@StackSetOperationResultSummary' {} a -> s {accountGateResult = a} :: StackSetOperationResultSummary)

-- | The result status of the stack set operation for the given account in
-- the given Region.
--
-- -   @CANCELLED@: The operation in the specified account and Region has
--     been cancelled. This is either because a user has stopped the stack
--     set operation, or because the failure tolerance of the stack set
--     operation has been exceeded.
--
-- -   @FAILED@: The operation in the specified account and Region failed.
--
--     If the stack set operation fails in enough accounts within a Region,
--     the failure tolerance for the stack set operation as a whole might
--     be exceeded.
--
-- -   @RUNNING@: The operation in the specified account and Region is
--     currently in progress.
--
-- -   @PENDING@: The operation in the specified account and Region has yet
--     to start.
--
-- -   @SUCCEEDED@: The operation in the specified account and Region
--     completed successfully.
stackSetOperationResultSummary_status :: Lens.Lens' StackSetOperationResultSummary (Core.Maybe StackSetOperationResultStatus)
stackSetOperationResultSummary_status = Lens.lens (\StackSetOperationResultSummary' {status} -> status) (\s@StackSetOperationResultSummary' {} a -> s {status = a} :: StackSetOperationResultSummary)

-- | [Service-managed permissions] The organization root ID or organizational
-- unit (OU) IDs that you specified for
-- <https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html DeploymentTargets>.
stackSetOperationResultSummary_organizationalUnitId :: Lens.Lens' StackSetOperationResultSummary (Core.Maybe Core.Text)
stackSetOperationResultSummary_organizationalUnitId = Lens.lens (\StackSetOperationResultSummary' {organizationalUnitId} -> organizationalUnitId) (\s@StackSetOperationResultSummary' {} a -> s {organizationalUnitId = a} :: StackSetOperationResultSummary)

-- | [Self-managed permissions] The name of the AWS account for this
-- operation result.
stackSetOperationResultSummary_account :: Lens.Lens' StackSetOperationResultSummary (Core.Maybe Core.Text)
stackSetOperationResultSummary_account = Lens.lens (\StackSetOperationResultSummary' {account} -> account) (\s@StackSetOperationResultSummary' {} a -> s {account = a} :: StackSetOperationResultSummary)

-- | The name of the AWS Region for this operation result.
stackSetOperationResultSummary_region :: Lens.Lens' StackSetOperationResultSummary (Core.Maybe Core.Text)
stackSetOperationResultSummary_region = Lens.lens (\StackSetOperationResultSummary' {region} -> region) (\s@StackSetOperationResultSummary' {} a -> s {region = a} :: StackSetOperationResultSummary)

-- | The reason for the assigned result status.
stackSetOperationResultSummary_statusReason :: Lens.Lens' StackSetOperationResultSummary (Core.Maybe Core.Text)
stackSetOperationResultSummary_statusReason = Lens.lens (\StackSetOperationResultSummary' {statusReason} -> statusReason) (\s@StackSetOperationResultSummary' {} a -> s {statusReason = a} :: StackSetOperationResultSummary)

instance Core.FromXML StackSetOperationResultSummary where
  parseXML x =
    StackSetOperationResultSummary'
      Core.<$> (x Core..@? "AccountGateResult")
      Core.<*> (x Core..@? "Status")
      Core.<*> (x Core..@? "OrganizationalUnitId")
      Core.<*> (x Core..@? "Account")
      Core.<*> (x Core..@? "Region")
      Core.<*> (x Core..@? "StatusReason")

instance Core.Hashable StackSetOperationResultSummary

instance Core.NFData StackSetOperationResultSummary
