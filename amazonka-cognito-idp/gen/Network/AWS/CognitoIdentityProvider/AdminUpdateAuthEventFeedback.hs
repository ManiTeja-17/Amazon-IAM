{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.AdminUpdateAuthEventFeedback
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides feedback for an authentication event as to whether it was from
-- a valid user. This feedback is used for improving the risk evaluation
-- decision for the user pool as part of Amazon Cognito advanced security.
module Network.AWS.CognitoIdentityProvider.AdminUpdateAuthEventFeedback
  ( -- * Creating a Request
    AdminUpdateAuthEventFeedback (..),
    newAdminUpdateAuthEventFeedback,

    -- * Request Lenses
    adminUpdateAuthEventFeedback_userPoolId,
    adminUpdateAuthEventFeedback_username,
    adminUpdateAuthEventFeedback_eventId,
    adminUpdateAuthEventFeedback_feedbackValue,

    -- * Destructuring the Response
    AdminUpdateAuthEventFeedbackResponse (..),
    newAdminUpdateAuthEventFeedbackResponse,

    -- * Response Lenses
    adminUpdateAuthEventFeedbackResponse_httpStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAdminUpdateAuthEventFeedback' smart constructor.
data AdminUpdateAuthEventFeedback = AdminUpdateAuthEventFeedback'
  { -- | The user pool ID.
    userPoolId :: Core.Text,
    -- | The user pool username.
    username :: Core.Sensitive Core.Text,
    -- | The authentication event ID.
    eventId :: Core.Text,
    -- | The authentication event feedback value.
    feedbackValue :: FeedbackValueType
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'AdminUpdateAuthEventFeedback' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userPoolId', 'adminUpdateAuthEventFeedback_userPoolId' - The user pool ID.
--
-- 'username', 'adminUpdateAuthEventFeedback_username' - The user pool username.
--
-- 'eventId', 'adminUpdateAuthEventFeedback_eventId' - The authentication event ID.
--
-- 'feedbackValue', 'adminUpdateAuthEventFeedback_feedbackValue' - The authentication event feedback value.
newAdminUpdateAuthEventFeedback ::
  -- | 'userPoolId'
  Core.Text ->
  -- | 'username'
  Core.Text ->
  -- | 'eventId'
  Core.Text ->
  -- | 'feedbackValue'
  FeedbackValueType ->
  AdminUpdateAuthEventFeedback
newAdminUpdateAuthEventFeedback
  pUserPoolId_
  pUsername_
  pEventId_
  pFeedbackValue_ =
    AdminUpdateAuthEventFeedback'
      { userPoolId =
          pUserPoolId_,
        username = Core._Sensitive Lens.# pUsername_,
        eventId = pEventId_,
        feedbackValue = pFeedbackValue_
      }

-- | The user pool ID.
adminUpdateAuthEventFeedback_userPoolId :: Lens.Lens' AdminUpdateAuthEventFeedback Core.Text
adminUpdateAuthEventFeedback_userPoolId = Lens.lens (\AdminUpdateAuthEventFeedback' {userPoolId} -> userPoolId) (\s@AdminUpdateAuthEventFeedback' {} a -> s {userPoolId = a} :: AdminUpdateAuthEventFeedback)

-- | The user pool username.
adminUpdateAuthEventFeedback_username :: Lens.Lens' AdminUpdateAuthEventFeedback Core.Text
adminUpdateAuthEventFeedback_username = Lens.lens (\AdminUpdateAuthEventFeedback' {username} -> username) (\s@AdminUpdateAuthEventFeedback' {} a -> s {username = a} :: AdminUpdateAuthEventFeedback) Core.. Core._Sensitive

-- | The authentication event ID.
adminUpdateAuthEventFeedback_eventId :: Lens.Lens' AdminUpdateAuthEventFeedback Core.Text
adminUpdateAuthEventFeedback_eventId = Lens.lens (\AdminUpdateAuthEventFeedback' {eventId} -> eventId) (\s@AdminUpdateAuthEventFeedback' {} a -> s {eventId = a} :: AdminUpdateAuthEventFeedback)

-- | The authentication event feedback value.
adminUpdateAuthEventFeedback_feedbackValue :: Lens.Lens' AdminUpdateAuthEventFeedback FeedbackValueType
adminUpdateAuthEventFeedback_feedbackValue = Lens.lens (\AdminUpdateAuthEventFeedback' {feedbackValue} -> feedbackValue) (\s@AdminUpdateAuthEventFeedback' {} a -> s {feedbackValue = a} :: AdminUpdateAuthEventFeedback)

instance Core.AWSRequest AdminUpdateAuthEventFeedback where
  type
    AWSResponse AdminUpdateAuthEventFeedback =
      AdminUpdateAuthEventFeedbackResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          AdminUpdateAuthEventFeedbackResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable AdminUpdateAuthEventFeedback

instance Core.NFData AdminUpdateAuthEventFeedback

instance Core.ToHeaders AdminUpdateAuthEventFeedback where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSCognitoIdentityProviderService.AdminUpdateAuthEventFeedback" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON AdminUpdateAuthEventFeedback where
  toJSON AdminUpdateAuthEventFeedback' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("UserPoolId" Core..= userPoolId),
            Core.Just ("Username" Core..= username),
            Core.Just ("EventId" Core..= eventId),
            Core.Just ("FeedbackValue" Core..= feedbackValue)
          ]
      )

instance Core.ToPath AdminUpdateAuthEventFeedback where
  toPath = Core.const "/"

instance Core.ToQuery AdminUpdateAuthEventFeedback where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newAdminUpdateAuthEventFeedbackResponse' smart constructor.
data AdminUpdateAuthEventFeedbackResponse = AdminUpdateAuthEventFeedbackResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AdminUpdateAuthEventFeedbackResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'adminUpdateAuthEventFeedbackResponse_httpStatus' - The response's http status code.
newAdminUpdateAuthEventFeedbackResponse ::
  -- | 'httpStatus'
  Core.Int ->
  AdminUpdateAuthEventFeedbackResponse
newAdminUpdateAuthEventFeedbackResponse pHttpStatus_ =
  AdminUpdateAuthEventFeedbackResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
adminUpdateAuthEventFeedbackResponse_httpStatus :: Lens.Lens' AdminUpdateAuthEventFeedbackResponse Core.Int
adminUpdateAuthEventFeedbackResponse_httpStatus = Lens.lens (\AdminUpdateAuthEventFeedbackResponse' {httpStatus} -> httpStatus) (\s@AdminUpdateAuthEventFeedbackResponse' {} a -> s {httpStatus = a} :: AdminUpdateAuthEventFeedbackResponse)

instance
  Core.NFData
    AdminUpdateAuthEventFeedbackResponse
