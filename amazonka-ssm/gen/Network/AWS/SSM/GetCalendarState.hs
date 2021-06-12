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
-- Module      : Network.AWS.SSM.GetCalendarState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the state of the AWS Systems Manager Change Calendar at an
-- optional, specified time. If you specify a time, @GetCalendarState@
-- returns the state of the calendar at a specific time, and returns the
-- next time that the Change Calendar state will transition. If you do not
-- specify a time, @GetCalendarState@ assumes the current time. Change
-- Calendar entries have two possible states: @OPEN@ or @CLOSED@.
--
-- If you specify more than one calendar in a request, the command returns
-- the status of @OPEN@ only if all calendars in the request are open. If
-- one or more calendars in the request are closed, the status returned is
-- @CLOSED@.
--
-- For more information about Systems Manager Change Calendar, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-change-calendar.html AWS Systems Manager Change Calendar>
-- in the /AWS Systems Manager User Guide/.
module Network.AWS.SSM.GetCalendarState
  ( -- * Creating a Request
    GetCalendarState (..),
    newGetCalendarState,

    -- * Request Lenses
    getCalendarState_atTime,
    getCalendarState_calendarNames,

    -- * Destructuring the Response
    GetCalendarStateResponse (..),
    newGetCalendarStateResponse,

    -- * Response Lenses
    getCalendarStateResponse_atTime,
    getCalendarStateResponse_state,
    getCalendarStateResponse_nextTransitionTime,
    getCalendarStateResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSM.Types

-- | /See:/ 'newGetCalendarState' smart constructor.
data GetCalendarState = GetCalendarState'
  { -- | (Optional) The specific time for which you want to get calendar state
    -- information, in <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601>
    -- format. If you do not add @AtTime@, the current time is assumed.
    atTime :: Core.Maybe Core.Text,
    -- | The names or Amazon Resource Names (ARNs) of the Systems Manager
    -- documents that represent the calendar entries for which you want to get
    -- the state.
    calendarNames :: [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetCalendarState' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'atTime', 'getCalendarState_atTime' - (Optional) The specific time for which you want to get calendar state
-- information, in <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601>
-- format. If you do not add @AtTime@, the current time is assumed.
--
-- 'calendarNames', 'getCalendarState_calendarNames' - The names or Amazon Resource Names (ARNs) of the Systems Manager
-- documents that represent the calendar entries for which you want to get
-- the state.
newGetCalendarState ::
  GetCalendarState
newGetCalendarState =
  GetCalendarState'
    { atTime = Core.Nothing,
      calendarNames = Core.mempty
    }

-- | (Optional) The specific time for which you want to get calendar state
-- information, in <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601>
-- format. If you do not add @AtTime@, the current time is assumed.
getCalendarState_atTime :: Lens.Lens' GetCalendarState (Core.Maybe Core.Text)
getCalendarState_atTime = Lens.lens (\GetCalendarState' {atTime} -> atTime) (\s@GetCalendarState' {} a -> s {atTime = a} :: GetCalendarState)

-- | The names or Amazon Resource Names (ARNs) of the Systems Manager
-- documents that represent the calendar entries for which you want to get
-- the state.
getCalendarState_calendarNames :: Lens.Lens' GetCalendarState [Core.Text]
getCalendarState_calendarNames = Lens.lens (\GetCalendarState' {calendarNames} -> calendarNames) (\s@GetCalendarState' {} a -> s {calendarNames = a} :: GetCalendarState) Core.. Lens._Coerce

instance Core.AWSRequest GetCalendarState where
  type
    AWSResponse GetCalendarState =
      GetCalendarStateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetCalendarStateResponse'
            Core.<$> (x Core..?> "AtTime")
            Core.<*> (x Core..?> "State")
            Core.<*> (x Core..?> "NextTransitionTime")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetCalendarState

instance Core.NFData GetCalendarState

instance Core.ToHeaders GetCalendarState where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AmazonSSM.GetCalendarState" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON GetCalendarState where
  toJSON GetCalendarState' {..} =
    Core.object
      ( Core.catMaybes
          [ ("AtTime" Core..=) Core.<$> atTime,
            Core.Just ("CalendarNames" Core..= calendarNames)
          ]
      )

instance Core.ToPath GetCalendarState where
  toPath = Core.const "/"

instance Core.ToQuery GetCalendarState where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newGetCalendarStateResponse' smart constructor.
data GetCalendarStateResponse = GetCalendarStateResponse'
  { -- | The time, as an <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601>
    -- string, that you specified in your command. If you did not specify a
    -- time, @GetCalendarState@ uses the current time.
    atTime :: Core.Maybe Core.Text,
    -- | The state of the calendar. An @OPEN@ calendar indicates that actions are
    -- allowed to proceed, and a @CLOSED@ calendar indicates that actions are
    -- not allowed to proceed.
    state :: Core.Maybe CalendarState,
    -- | The time, as an <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601>
    -- string, that the calendar state will change. If the current calendar
    -- state is @OPEN@, @NextTransitionTime@ indicates when the calendar state
    -- changes to @CLOSED@, and vice-versa.
    nextTransitionTime :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetCalendarStateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'atTime', 'getCalendarStateResponse_atTime' - The time, as an <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601>
-- string, that you specified in your command. If you did not specify a
-- time, @GetCalendarState@ uses the current time.
--
-- 'state', 'getCalendarStateResponse_state' - The state of the calendar. An @OPEN@ calendar indicates that actions are
-- allowed to proceed, and a @CLOSED@ calendar indicates that actions are
-- not allowed to proceed.
--
-- 'nextTransitionTime', 'getCalendarStateResponse_nextTransitionTime' - The time, as an <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601>
-- string, that the calendar state will change. If the current calendar
-- state is @OPEN@, @NextTransitionTime@ indicates when the calendar state
-- changes to @CLOSED@, and vice-versa.
--
-- 'httpStatus', 'getCalendarStateResponse_httpStatus' - The response's http status code.
newGetCalendarStateResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetCalendarStateResponse
newGetCalendarStateResponse pHttpStatus_ =
  GetCalendarStateResponse'
    { atTime = Core.Nothing,
      state = Core.Nothing,
      nextTransitionTime = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time, as an <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601>
-- string, that you specified in your command. If you did not specify a
-- time, @GetCalendarState@ uses the current time.
getCalendarStateResponse_atTime :: Lens.Lens' GetCalendarStateResponse (Core.Maybe Core.Text)
getCalendarStateResponse_atTime = Lens.lens (\GetCalendarStateResponse' {atTime} -> atTime) (\s@GetCalendarStateResponse' {} a -> s {atTime = a} :: GetCalendarStateResponse)

-- | The state of the calendar. An @OPEN@ calendar indicates that actions are
-- allowed to proceed, and a @CLOSED@ calendar indicates that actions are
-- not allowed to proceed.
getCalendarStateResponse_state :: Lens.Lens' GetCalendarStateResponse (Core.Maybe CalendarState)
getCalendarStateResponse_state = Lens.lens (\GetCalendarStateResponse' {state} -> state) (\s@GetCalendarStateResponse' {} a -> s {state = a} :: GetCalendarStateResponse)

-- | The time, as an <https://en.wikipedia.org/wiki/ISO_8601 ISO 8601>
-- string, that the calendar state will change. If the current calendar
-- state is @OPEN@, @NextTransitionTime@ indicates when the calendar state
-- changes to @CLOSED@, and vice-versa.
getCalendarStateResponse_nextTransitionTime :: Lens.Lens' GetCalendarStateResponse (Core.Maybe Core.Text)
getCalendarStateResponse_nextTransitionTime = Lens.lens (\GetCalendarStateResponse' {nextTransitionTime} -> nextTransitionTime) (\s@GetCalendarStateResponse' {} a -> s {nextTransitionTime = a} :: GetCalendarStateResponse)

-- | The response's http status code.
getCalendarStateResponse_httpStatus :: Lens.Lens' GetCalendarStateResponse Core.Int
getCalendarStateResponse_httpStatus = Lens.lens (\GetCalendarStateResponse' {httpStatus} -> httpStatus) (\s@GetCalendarStateResponse' {} a -> s {httpStatus = a} :: GetCalendarStateResponse)

instance Core.NFData GetCalendarStateResponse
