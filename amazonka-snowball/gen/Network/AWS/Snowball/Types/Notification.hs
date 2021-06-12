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
-- Module      : Network.AWS.Snowball.Types.Notification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.Notification where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Snowball.Types.JobState

-- | The Amazon Simple Notification Service (Amazon SNS) notification
-- settings associated with a specific job. The @Notification@ object is
-- returned as a part of the response syntax of the @DescribeJob@ action in
-- the @JobMetadata@ data type.
--
-- When the notification settings are defined during job creation, you can
-- choose to notify based on a specific set of job states using the
-- @JobStatesToNotify@ array of strings, or you can specify that you want
-- to have Amazon SNS notifications sent out for all job states with
-- @NotifyAll@ set to true.
--
-- /See:/ 'newNotification' smart constructor.
data Notification = Notification'
  { -- | The list of job states that will trigger a notification for this job.
    jobStatesToNotify :: Core.Maybe [JobState],
    -- | Any change in job state will trigger a notification for this job.
    notifyAll :: Core.Maybe Core.Bool,
    -- | The new SNS @TopicArn@ that you want to associate with this job. You can
    -- create Amazon Resource Names (ARNs) for topics by using the
    -- <https://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html CreateTopic>
    -- Amazon SNS API action.
    --
    -- You can subscribe email addresses to an Amazon SNS topic through the AWS
    -- Management Console, or by using the
    -- <https://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html Subscribe>
    -- AWS Simple Notification Service (SNS) API action.
    snsTopicARN :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Notification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobStatesToNotify', 'notification_jobStatesToNotify' - The list of job states that will trigger a notification for this job.
--
-- 'notifyAll', 'notification_notifyAll' - Any change in job state will trigger a notification for this job.
--
-- 'snsTopicARN', 'notification_snsTopicARN' - The new SNS @TopicArn@ that you want to associate with this job. You can
-- create Amazon Resource Names (ARNs) for topics by using the
-- <https://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html CreateTopic>
-- Amazon SNS API action.
--
-- You can subscribe email addresses to an Amazon SNS topic through the AWS
-- Management Console, or by using the
-- <https://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html Subscribe>
-- AWS Simple Notification Service (SNS) API action.
newNotification ::
  Notification
newNotification =
  Notification'
    { jobStatesToNotify = Core.Nothing,
      notifyAll = Core.Nothing,
      snsTopicARN = Core.Nothing
    }

-- | The list of job states that will trigger a notification for this job.
notification_jobStatesToNotify :: Lens.Lens' Notification (Core.Maybe [JobState])
notification_jobStatesToNotify = Lens.lens (\Notification' {jobStatesToNotify} -> jobStatesToNotify) (\s@Notification' {} a -> s {jobStatesToNotify = a} :: Notification) Core.. Lens.mapping Lens._Coerce

-- | Any change in job state will trigger a notification for this job.
notification_notifyAll :: Lens.Lens' Notification (Core.Maybe Core.Bool)
notification_notifyAll = Lens.lens (\Notification' {notifyAll} -> notifyAll) (\s@Notification' {} a -> s {notifyAll = a} :: Notification)

-- | The new SNS @TopicArn@ that you want to associate with this job. You can
-- create Amazon Resource Names (ARNs) for topics by using the
-- <https://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html CreateTopic>
-- Amazon SNS API action.
--
-- You can subscribe email addresses to an Amazon SNS topic through the AWS
-- Management Console, or by using the
-- <https://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html Subscribe>
-- AWS Simple Notification Service (SNS) API action.
notification_snsTopicARN :: Lens.Lens' Notification (Core.Maybe Core.Text)
notification_snsTopicARN = Lens.lens (\Notification' {snsTopicARN} -> snsTopicARN) (\s@Notification' {} a -> s {snsTopicARN = a} :: Notification)

instance Core.FromJSON Notification where
  parseJSON =
    Core.withObject
      "Notification"
      ( \x ->
          Notification'
            Core.<$> (x Core..:? "JobStatesToNotify" Core..!= Core.mempty)
            Core.<*> (x Core..:? "NotifyAll")
            Core.<*> (x Core..:? "SnsTopicARN")
      )

instance Core.Hashable Notification

instance Core.NFData Notification

instance Core.ToJSON Notification where
  toJSON Notification' {..} =
    Core.object
      ( Core.catMaybes
          [ ("JobStatesToNotify" Core..=)
              Core.<$> jobStatesToNotify,
            ("NotifyAll" Core..=) Core.<$> notifyAll,
            ("SnsTopicARN" Core..=) Core.<$> snsTopicARN
          ]
      )
