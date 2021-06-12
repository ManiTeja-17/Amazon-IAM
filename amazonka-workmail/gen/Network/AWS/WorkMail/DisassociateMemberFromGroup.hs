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
-- Module      : Network.AWS.WorkMail.DisassociateMemberFromGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a member from a group.
module Network.AWS.WorkMail.DisassociateMemberFromGroup
  ( -- * Creating a Request
    DisassociateMemberFromGroup (..),
    newDisassociateMemberFromGroup,

    -- * Request Lenses
    disassociateMemberFromGroup_organizationId,
    disassociateMemberFromGroup_groupId,
    disassociateMemberFromGroup_memberId,

    -- * Destructuring the Response
    DisassociateMemberFromGroupResponse (..),
    newDisassociateMemberFromGroupResponse,

    -- * Response Lenses
    disassociateMemberFromGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'newDisassociateMemberFromGroup' smart constructor.
data DisassociateMemberFromGroup = DisassociateMemberFromGroup'
  { -- | The identifier for the organization under which the group exists.
    organizationId :: Core.Text,
    -- | The identifier for the group from which members are removed.
    groupId :: Core.Text,
    -- | The identifier for the member to be removed to the group.
    memberId :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DisassociateMemberFromGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'organizationId', 'disassociateMemberFromGroup_organizationId' - The identifier for the organization under which the group exists.
--
-- 'groupId', 'disassociateMemberFromGroup_groupId' - The identifier for the group from which members are removed.
--
-- 'memberId', 'disassociateMemberFromGroup_memberId' - The identifier for the member to be removed to the group.
newDisassociateMemberFromGroup ::
  -- | 'organizationId'
  Core.Text ->
  -- | 'groupId'
  Core.Text ->
  -- | 'memberId'
  Core.Text ->
  DisassociateMemberFromGroup
newDisassociateMemberFromGroup
  pOrganizationId_
  pGroupId_
  pMemberId_ =
    DisassociateMemberFromGroup'
      { organizationId =
          pOrganizationId_,
        groupId = pGroupId_,
        memberId = pMemberId_
      }

-- | The identifier for the organization under which the group exists.
disassociateMemberFromGroup_organizationId :: Lens.Lens' DisassociateMemberFromGroup Core.Text
disassociateMemberFromGroup_organizationId = Lens.lens (\DisassociateMemberFromGroup' {organizationId} -> organizationId) (\s@DisassociateMemberFromGroup' {} a -> s {organizationId = a} :: DisassociateMemberFromGroup)

-- | The identifier for the group from which members are removed.
disassociateMemberFromGroup_groupId :: Lens.Lens' DisassociateMemberFromGroup Core.Text
disassociateMemberFromGroup_groupId = Lens.lens (\DisassociateMemberFromGroup' {groupId} -> groupId) (\s@DisassociateMemberFromGroup' {} a -> s {groupId = a} :: DisassociateMemberFromGroup)

-- | The identifier for the member to be removed to the group.
disassociateMemberFromGroup_memberId :: Lens.Lens' DisassociateMemberFromGroup Core.Text
disassociateMemberFromGroup_memberId = Lens.lens (\DisassociateMemberFromGroup' {memberId} -> memberId) (\s@DisassociateMemberFromGroup' {} a -> s {memberId = a} :: DisassociateMemberFromGroup)

instance Core.AWSRequest DisassociateMemberFromGroup where
  type
    AWSResponse DisassociateMemberFromGroup =
      DisassociateMemberFromGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DisassociateMemberFromGroupResponse'
            Core.<$> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DisassociateMemberFromGroup

instance Core.NFData DisassociateMemberFromGroup

instance Core.ToHeaders DisassociateMemberFromGroup where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "WorkMailService.DisassociateMemberFromGroup" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DisassociateMemberFromGroup where
  toJSON DisassociateMemberFromGroup' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("OrganizationId" Core..= organizationId),
            Core.Just ("GroupId" Core..= groupId),
            Core.Just ("MemberId" Core..= memberId)
          ]
      )

instance Core.ToPath DisassociateMemberFromGroup where
  toPath = Core.const "/"

instance Core.ToQuery DisassociateMemberFromGroup where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDisassociateMemberFromGroupResponse' smart constructor.
data DisassociateMemberFromGroupResponse = DisassociateMemberFromGroupResponse'
  { -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DisassociateMemberFromGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'disassociateMemberFromGroupResponse_httpStatus' - The response's http status code.
newDisassociateMemberFromGroupResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DisassociateMemberFromGroupResponse
newDisassociateMemberFromGroupResponse pHttpStatus_ =
  DisassociateMemberFromGroupResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
disassociateMemberFromGroupResponse_httpStatus :: Lens.Lens' DisassociateMemberFromGroupResponse Core.Int
disassociateMemberFromGroupResponse_httpStatus = Lens.lens (\DisassociateMemberFromGroupResponse' {httpStatus} -> httpStatus) (\s@DisassociateMemberFromGroupResponse' {} a -> s {httpStatus = a} :: DisassociateMemberFromGroupResponse)

instance
  Core.NFData
    DisassociateMemberFromGroupResponse
