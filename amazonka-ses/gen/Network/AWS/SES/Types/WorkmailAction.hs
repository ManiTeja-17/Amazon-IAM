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
-- Module      : Network.AWS.SES.Types.WorkmailAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.WorkmailAction where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | When included in a receipt rule, this action calls Amazon WorkMail and,
-- optionally, publishes a notification to Amazon Simple Notification
-- Service (Amazon SNS). You will typically not use this action directly
-- because Amazon WorkMail adds the rule automatically during its setup
-- procedure.
--
-- For information using a receipt rule to call Amazon WorkMail, see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-workmail.html Amazon SES Developer Guide>.
--
-- /See:/ 'newWorkmailAction' smart constructor.
data WorkmailAction = WorkmailAction'
  { -- | The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when
    -- the WorkMail action is called. An example of an Amazon SNS topic ARN is
    -- @arn:aws:sns:us-west-2:123456789012:MyTopic@. For more information about
    -- Amazon SNS topics, see the
    -- <https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide>.
    topicArn :: Core.Maybe Core.Text,
    -- | The ARN of the Amazon WorkMail organization. An example of an Amazon
    -- WorkMail organization ARN is
    -- @arn:aws:workmail:us-west-2:123456789012:organization\/m-68755160c4cb4e29a2b2f8fb58f359d7@.
    -- For information about Amazon WorkMail organizations, see the
    -- <https://docs.aws.amazon.com/workmail/latest/adminguide/organizations_overview.html Amazon WorkMail Administrator Guide>.
    organizationArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'WorkmailAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'topicArn', 'workmailAction_topicArn' - The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when
-- the WorkMail action is called. An example of an Amazon SNS topic ARN is
-- @arn:aws:sns:us-west-2:123456789012:MyTopic@. For more information about
-- Amazon SNS topics, see the
-- <https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide>.
--
-- 'organizationArn', 'workmailAction_organizationArn' - The ARN of the Amazon WorkMail organization. An example of an Amazon
-- WorkMail organization ARN is
-- @arn:aws:workmail:us-west-2:123456789012:organization\/m-68755160c4cb4e29a2b2f8fb58f359d7@.
-- For information about Amazon WorkMail organizations, see the
-- <https://docs.aws.amazon.com/workmail/latest/adminguide/organizations_overview.html Amazon WorkMail Administrator Guide>.
newWorkmailAction ::
  -- | 'organizationArn'
  Core.Text ->
  WorkmailAction
newWorkmailAction pOrganizationArn_ =
  WorkmailAction'
    { topicArn = Core.Nothing,
      organizationArn = pOrganizationArn_
    }

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when
-- the WorkMail action is called. An example of an Amazon SNS topic ARN is
-- @arn:aws:sns:us-west-2:123456789012:MyTopic@. For more information about
-- Amazon SNS topics, see the
-- <https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide>.
workmailAction_topicArn :: Lens.Lens' WorkmailAction (Core.Maybe Core.Text)
workmailAction_topicArn = Lens.lens (\WorkmailAction' {topicArn} -> topicArn) (\s@WorkmailAction' {} a -> s {topicArn = a} :: WorkmailAction)

-- | The ARN of the Amazon WorkMail organization. An example of an Amazon
-- WorkMail organization ARN is
-- @arn:aws:workmail:us-west-2:123456789012:organization\/m-68755160c4cb4e29a2b2f8fb58f359d7@.
-- For information about Amazon WorkMail organizations, see the
-- <https://docs.aws.amazon.com/workmail/latest/adminguide/organizations_overview.html Amazon WorkMail Administrator Guide>.
workmailAction_organizationArn :: Lens.Lens' WorkmailAction Core.Text
workmailAction_organizationArn = Lens.lens (\WorkmailAction' {organizationArn} -> organizationArn) (\s@WorkmailAction' {} a -> s {organizationArn = a} :: WorkmailAction)

instance Core.FromXML WorkmailAction where
  parseXML x =
    WorkmailAction'
      Core.<$> (x Core..@? "TopicArn")
      Core.<*> (x Core..@ "OrganizationArn")

instance Core.Hashable WorkmailAction

instance Core.NFData WorkmailAction

instance Core.ToQuery WorkmailAction where
  toQuery WorkmailAction' {..} =
    Core.mconcat
      [ "TopicArn" Core.=: topicArn,
        "OrganizationArn" Core.=: organizationArn
      ]
