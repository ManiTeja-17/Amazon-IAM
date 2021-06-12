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
-- Module      : Network.AWS.Redshift.Types.ScheduledAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ScheduledAction where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.ScheduledActionState
import Network.AWS.Redshift.Types.ScheduledActionType

-- | Describes a scheduled action. You can use a scheduled action to trigger
-- some Amazon Redshift API operations on a schedule. For information about
-- which API operations can be scheduled, see ScheduledActionType.
--
-- /See:/ 'newScheduledAction' smart constructor.
data ScheduledAction = ScheduledAction'
  { -- | A JSON format string of the Amazon Redshift API operation with input
    -- parameters.
    --
    -- \"@{\\\"ResizeCluster\\\":{\\\"NodeType\\\":\\\"ds2.8xlarge\\\",\\\"ClusterIdentifier\\\":\\\"my-test-cluster\\\",\\\"NumberOfNodes\\\":3}}@\".
    targetAction :: Core.Maybe ScheduledActionType,
    -- | List of times when the scheduled action will run.
    nextInvocations :: Core.Maybe [Core.ISO8601],
    -- | The IAM role to assume to run the scheduled action. This IAM role must
    -- have permission to run the Amazon Redshift API operation in the
    -- scheduled action. This IAM role must allow the Amazon Redshift scheduler
    -- (Principal scheduler.redshift.amazonaws.com) to assume permissions on
    -- your behalf. For more information about the IAM role to use with the
    -- Amazon Redshift scheduler, see
    -- <https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html Using Identity-Based Policies for Amazon Redshift>
    -- in the /Amazon Redshift Cluster Management Guide/.
    iamRole :: Core.Maybe Core.Text,
    -- | The description of the scheduled action.
    scheduledActionDescription :: Core.Maybe Core.Text,
    -- | The start time in UTC when the schedule is active. Before this time, the
    -- scheduled action does not trigger.
    startTime :: Core.Maybe Core.ISO8601,
    -- | The end time in UTC when the schedule is no longer active. After this
    -- time, the scheduled action does not trigger.
    endTime :: Core.Maybe Core.ISO8601,
    -- | The state of the scheduled action. For example, @DISABLED@.
    state :: Core.Maybe ScheduledActionState,
    -- | The name of the scheduled action.
    scheduledActionName :: Core.Maybe Core.Text,
    -- | The schedule for a one-time (at format) or recurring (cron format)
    -- scheduled action. Schedule invocations must be separated by at least one
    -- hour.
    --
    -- Format of at expressions is \"@at(yyyy-mm-ddThh:mm:ss)@\". For example,
    -- \"@at(2016-03-04T17:27:00)@\".
    --
    -- Format of cron expressions is
    -- \"@cron(Minutes Hours Day-of-month Month Day-of-week Year)@\". For
    -- example, \"@cron(0 10 ? * MON *)@\". For more information, see
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions Cron Expressions>
    -- in the /Amazon CloudWatch Events User Guide/.
    schedule :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'ScheduledAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetAction', 'scheduledAction_targetAction' - A JSON format string of the Amazon Redshift API operation with input
-- parameters.
--
-- \"@{\\\"ResizeCluster\\\":{\\\"NodeType\\\":\\\"ds2.8xlarge\\\",\\\"ClusterIdentifier\\\":\\\"my-test-cluster\\\",\\\"NumberOfNodes\\\":3}}@\".
--
-- 'nextInvocations', 'scheduledAction_nextInvocations' - List of times when the scheduled action will run.
--
-- 'iamRole', 'scheduledAction_iamRole' - The IAM role to assume to run the scheduled action. This IAM role must
-- have permission to run the Amazon Redshift API operation in the
-- scheduled action. This IAM role must allow the Amazon Redshift scheduler
-- (Principal scheduler.redshift.amazonaws.com) to assume permissions on
-- your behalf. For more information about the IAM role to use with the
-- Amazon Redshift scheduler, see
-- <https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html Using Identity-Based Policies for Amazon Redshift>
-- in the /Amazon Redshift Cluster Management Guide/.
--
-- 'scheduledActionDescription', 'scheduledAction_scheduledActionDescription' - The description of the scheduled action.
--
-- 'startTime', 'scheduledAction_startTime' - The start time in UTC when the schedule is active. Before this time, the
-- scheduled action does not trigger.
--
-- 'endTime', 'scheduledAction_endTime' - The end time in UTC when the schedule is no longer active. After this
-- time, the scheduled action does not trigger.
--
-- 'state', 'scheduledAction_state' - The state of the scheduled action. For example, @DISABLED@.
--
-- 'scheduledActionName', 'scheduledAction_scheduledActionName' - The name of the scheduled action.
--
-- 'schedule', 'scheduledAction_schedule' - The schedule for a one-time (at format) or recurring (cron format)
-- scheduled action. Schedule invocations must be separated by at least one
-- hour.
--
-- Format of at expressions is \"@at(yyyy-mm-ddThh:mm:ss)@\". For example,
-- \"@at(2016-03-04T17:27:00)@\".
--
-- Format of cron expressions is
-- \"@cron(Minutes Hours Day-of-month Month Day-of-week Year)@\". For
-- example, \"@cron(0 10 ? * MON *)@\". For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions Cron Expressions>
-- in the /Amazon CloudWatch Events User Guide/.
newScheduledAction ::
  ScheduledAction
newScheduledAction =
  ScheduledAction'
    { targetAction = Core.Nothing,
      nextInvocations = Core.Nothing,
      iamRole = Core.Nothing,
      scheduledActionDescription = Core.Nothing,
      startTime = Core.Nothing,
      endTime = Core.Nothing,
      state = Core.Nothing,
      scheduledActionName = Core.Nothing,
      schedule = Core.Nothing
    }

-- | A JSON format string of the Amazon Redshift API operation with input
-- parameters.
--
-- \"@{\\\"ResizeCluster\\\":{\\\"NodeType\\\":\\\"ds2.8xlarge\\\",\\\"ClusterIdentifier\\\":\\\"my-test-cluster\\\",\\\"NumberOfNodes\\\":3}}@\".
scheduledAction_targetAction :: Lens.Lens' ScheduledAction (Core.Maybe ScheduledActionType)
scheduledAction_targetAction = Lens.lens (\ScheduledAction' {targetAction} -> targetAction) (\s@ScheduledAction' {} a -> s {targetAction = a} :: ScheduledAction)

-- | List of times when the scheduled action will run.
scheduledAction_nextInvocations :: Lens.Lens' ScheduledAction (Core.Maybe [Core.UTCTime])
scheduledAction_nextInvocations = Lens.lens (\ScheduledAction' {nextInvocations} -> nextInvocations) (\s@ScheduledAction' {} a -> s {nextInvocations = a} :: ScheduledAction) Core.. Lens.mapping Lens._Coerce

-- | The IAM role to assume to run the scheduled action. This IAM role must
-- have permission to run the Amazon Redshift API operation in the
-- scheduled action. This IAM role must allow the Amazon Redshift scheduler
-- (Principal scheduler.redshift.amazonaws.com) to assume permissions on
-- your behalf. For more information about the IAM role to use with the
-- Amazon Redshift scheduler, see
-- <https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html Using Identity-Based Policies for Amazon Redshift>
-- in the /Amazon Redshift Cluster Management Guide/.
scheduledAction_iamRole :: Lens.Lens' ScheduledAction (Core.Maybe Core.Text)
scheduledAction_iamRole = Lens.lens (\ScheduledAction' {iamRole} -> iamRole) (\s@ScheduledAction' {} a -> s {iamRole = a} :: ScheduledAction)

-- | The description of the scheduled action.
scheduledAction_scheduledActionDescription :: Lens.Lens' ScheduledAction (Core.Maybe Core.Text)
scheduledAction_scheduledActionDescription = Lens.lens (\ScheduledAction' {scheduledActionDescription} -> scheduledActionDescription) (\s@ScheduledAction' {} a -> s {scheduledActionDescription = a} :: ScheduledAction)

-- | The start time in UTC when the schedule is active. Before this time, the
-- scheduled action does not trigger.
scheduledAction_startTime :: Lens.Lens' ScheduledAction (Core.Maybe Core.UTCTime)
scheduledAction_startTime = Lens.lens (\ScheduledAction' {startTime} -> startTime) (\s@ScheduledAction' {} a -> s {startTime = a} :: ScheduledAction) Core.. Lens.mapping Core._Time

-- | The end time in UTC when the schedule is no longer active. After this
-- time, the scheduled action does not trigger.
scheduledAction_endTime :: Lens.Lens' ScheduledAction (Core.Maybe Core.UTCTime)
scheduledAction_endTime = Lens.lens (\ScheduledAction' {endTime} -> endTime) (\s@ScheduledAction' {} a -> s {endTime = a} :: ScheduledAction) Core.. Lens.mapping Core._Time

-- | The state of the scheduled action. For example, @DISABLED@.
scheduledAction_state :: Lens.Lens' ScheduledAction (Core.Maybe ScheduledActionState)
scheduledAction_state = Lens.lens (\ScheduledAction' {state} -> state) (\s@ScheduledAction' {} a -> s {state = a} :: ScheduledAction)

-- | The name of the scheduled action.
scheduledAction_scheduledActionName :: Lens.Lens' ScheduledAction (Core.Maybe Core.Text)
scheduledAction_scheduledActionName = Lens.lens (\ScheduledAction' {scheduledActionName} -> scheduledActionName) (\s@ScheduledAction' {} a -> s {scheduledActionName = a} :: ScheduledAction)

-- | The schedule for a one-time (at format) or recurring (cron format)
-- scheduled action. Schedule invocations must be separated by at least one
-- hour.
--
-- Format of at expressions is \"@at(yyyy-mm-ddThh:mm:ss)@\". For example,
-- \"@at(2016-03-04T17:27:00)@\".
--
-- Format of cron expressions is
-- \"@cron(Minutes Hours Day-of-month Month Day-of-week Year)@\". For
-- example, \"@cron(0 10 ? * MON *)@\". For more information, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions Cron Expressions>
-- in the /Amazon CloudWatch Events User Guide/.
scheduledAction_schedule :: Lens.Lens' ScheduledAction (Core.Maybe Core.Text)
scheduledAction_schedule = Lens.lens (\ScheduledAction' {schedule} -> schedule) (\s@ScheduledAction' {} a -> s {schedule = a} :: ScheduledAction)

instance Core.FromXML ScheduledAction where
  parseXML x =
    ScheduledAction'
      Core.<$> (x Core..@? "TargetAction")
      Core.<*> ( x Core..@? "NextInvocations" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "ScheduledActionTime")
               )
      Core.<*> (x Core..@? "IamRole")
      Core.<*> (x Core..@? "ScheduledActionDescription")
      Core.<*> (x Core..@? "StartTime")
      Core.<*> (x Core..@? "EndTime")
      Core.<*> (x Core..@? "State")
      Core.<*> (x Core..@? "ScheduledActionName")
      Core.<*> (x Core..@? "Schedule")

instance Core.Hashable ScheduledAction

instance Core.NFData ScheduledAction
