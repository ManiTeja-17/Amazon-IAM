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
-- Module      : Network.AWS.WorkMail.DescribeGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the data available for the group.
module Network.AWS.WorkMail.DescribeGroup
  ( -- * Creating a Request
    DescribeGroup (..),
    newDescribeGroup,

    -- * Request Lenses
    describeGroup_organizationId,
    describeGroup_groupId,

    -- * Destructuring the Response
    DescribeGroupResponse (..),
    newDescribeGroupResponse,

    -- * Response Lenses
    describeGroupResponse_enabledDate,
    describeGroupResponse_groupId,
    describeGroupResponse_state,
    describeGroupResponse_name,
    describeGroupResponse_email,
    describeGroupResponse_disabledDate,
    describeGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'newDescribeGroup' smart constructor.
data DescribeGroup = DescribeGroup'
  { -- | The identifier for the organization under which the group exists.
    organizationId :: Core.Text,
    -- | The identifier for the group to be described.
    groupId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'organizationId', 'describeGroup_organizationId' - The identifier for the organization under which the group exists.
--
-- 'groupId', 'describeGroup_groupId' - The identifier for the group to be described.
newDescribeGroup ::
  -- | 'organizationId'
  Core.Text ->
  -- | 'groupId'
  Core.Text ->
  DescribeGroup
newDescribeGroup pOrganizationId_ pGroupId_ =
  DescribeGroup'
    { organizationId = pOrganizationId_,
      groupId = pGroupId_
    }

-- | The identifier for the organization under which the group exists.
describeGroup_organizationId :: Lens.Lens' DescribeGroup Core.Text
describeGroup_organizationId = Lens.lens (\DescribeGroup' {organizationId} -> organizationId) (\s@DescribeGroup' {} a -> s {organizationId = a} :: DescribeGroup)

-- | The identifier for the group to be described.
describeGroup_groupId :: Lens.Lens' DescribeGroup Core.Text
describeGroup_groupId = Lens.lens (\DescribeGroup' {groupId} -> groupId) (\s@DescribeGroup' {} a -> s {groupId = a} :: DescribeGroup)

instance Core.AWSRequest DescribeGroup where
  type
    AWSResponse DescribeGroup =
      DescribeGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeGroupResponse'
            Core.<$> (x Core..?> "EnabledDate")
            Core.<*> (x Core..?> "GroupId")
            Core.<*> (x Core..?> "State")
            Core.<*> (x Core..?> "Name")
            Core.<*> (x Core..?> "Email")
            Core.<*> (x Core..?> "DisabledDate")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeGroup

instance Core.NFData DescribeGroup

instance Core.ToHeaders DescribeGroup where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("WorkMailService.DescribeGroup" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeGroup where
  toJSON DescribeGroup' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("OrganizationId" Core..= organizationId),
            Core.Just ("GroupId" Core..= groupId)
          ]
      )

instance Core.ToPath DescribeGroup where
  toPath = Core.const "/"

instance Core.ToQuery DescribeGroup where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeGroupResponse' smart constructor.
data DescribeGroupResponse = DescribeGroupResponse'
  { -- | The date and time when a user was registered to WorkMail, in UNIX epoch
    -- time format.
    enabledDate :: Core.Maybe Core.POSIX,
    -- | The identifier of the described group.
    groupId :: Core.Maybe Core.Text,
    -- | The state of the user: enabled (registered to Amazon WorkMail) or
    -- disabled (deregistered or never registered to WorkMail).
    state :: Core.Maybe EntityState,
    -- | The name of the described group.
    name :: Core.Maybe Core.Text,
    -- | The email of the described group.
    email :: Core.Maybe Core.Text,
    -- | The date and time when a user was deregistered from WorkMail, in UNIX
    -- epoch time format.
    disabledDate :: Core.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabledDate', 'describeGroupResponse_enabledDate' - The date and time when a user was registered to WorkMail, in UNIX epoch
-- time format.
--
-- 'groupId', 'describeGroupResponse_groupId' - The identifier of the described group.
--
-- 'state', 'describeGroupResponse_state' - The state of the user: enabled (registered to Amazon WorkMail) or
-- disabled (deregistered or never registered to WorkMail).
--
-- 'name', 'describeGroupResponse_name' - The name of the described group.
--
-- 'email', 'describeGroupResponse_email' - The email of the described group.
--
-- 'disabledDate', 'describeGroupResponse_disabledDate' - The date and time when a user was deregistered from WorkMail, in UNIX
-- epoch time format.
--
-- 'httpStatus', 'describeGroupResponse_httpStatus' - The response's http status code.
newDescribeGroupResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeGroupResponse
newDescribeGroupResponse pHttpStatus_ =
  DescribeGroupResponse'
    { enabledDate = Core.Nothing,
      groupId = Core.Nothing,
      state = Core.Nothing,
      name = Core.Nothing,
      email = Core.Nothing,
      disabledDate = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The date and time when a user was registered to WorkMail, in UNIX epoch
-- time format.
describeGroupResponse_enabledDate :: Lens.Lens' DescribeGroupResponse (Core.Maybe Core.UTCTime)
describeGroupResponse_enabledDate = Lens.lens (\DescribeGroupResponse' {enabledDate} -> enabledDate) (\s@DescribeGroupResponse' {} a -> s {enabledDate = a} :: DescribeGroupResponse) Core.. Lens.mapping Core._Time

-- | The identifier of the described group.
describeGroupResponse_groupId :: Lens.Lens' DescribeGroupResponse (Core.Maybe Core.Text)
describeGroupResponse_groupId = Lens.lens (\DescribeGroupResponse' {groupId} -> groupId) (\s@DescribeGroupResponse' {} a -> s {groupId = a} :: DescribeGroupResponse)

-- | The state of the user: enabled (registered to Amazon WorkMail) or
-- disabled (deregistered or never registered to WorkMail).
describeGroupResponse_state :: Lens.Lens' DescribeGroupResponse (Core.Maybe EntityState)
describeGroupResponse_state = Lens.lens (\DescribeGroupResponse' {state} -> state) (\s@DescribeGroupResponse' {} a -> s {state = a} :: DescribeGroupResponse)

-- | The name of the described group.
describeGroupResponse_name :: Lens.Lens' DescribeGroupResponse (Core.Maybe Core.Text)
describeGroupResponse_name = Lens.lens (\DescribeGroupResponse' {name} -> name) (\s@DescribeGroupResponse' {} a -> s {name = a} :: DescribeGroupResponse)

-- | The email of the described group.
describeGroupResponse_email :: Lens.Lens' DescribeGroupResponse (Core.Maybe Core.Text)
describeGroupResponse_email = Lens.lens (\DescribeGroupResponse' {email} -> email) (\s@DescribeGroupResponse' {} a -> s {email = a} :: DescribeGroupResponse)

-- | The date and time when a user was deregistered from WorkMail, in UNIX
-- epoch time format.
describeGroupResponse_disabledDate :: Lens.Lens' DescribeGroupResponse (Core.Maybe Core.UTCTime)
describeGroupResponse_disabledDate = Lens.lens (\DescribeGroupResponse' {disabledDate} -> disabledDate) (\s@DescribeGroupResponse' {} a -> s {disabledDate = a} :: DescribeGroupResponse) Core.. Lens.mapping Core._Time

-- | The response's http status code.
describeGroupResponse_httpStatus :: Lens.Lens' DescribeGroupResponse Core.Int
describeGroupResponse_httpStatus = Lens.lens (\DescribeGroupResponse' {httpStatus} -> httpStatus) (\s@DescribeGroupResponse' {} a -> s {httpStatus = a} :: DescribeGroupResponse)

instance Core.NFData DescribeGroupResponse
