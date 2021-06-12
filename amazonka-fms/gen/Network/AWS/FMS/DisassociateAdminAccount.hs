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
-- Module      : Network.AWS.FMS.DisassociateAdminAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates the account that has been set as the AWS Firewall Manager
-- administrator account. To set a different account as the administrator
-- account, you must submit an @AssociateAdminAccount@ request.
module Network.AWS.FMS.DisassociateAdminAccount
  ( -- * Creating a Request
    DisassociateAdminAccount (..),
    newDisassociateAdminAccount,

    -- * Destructuring the Response
    DisassociateAdminAccountResponse (..),
    newDisassociateAdminAccountResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisassociateAdminAccount' smart constructor.
data DisassociateAdminAccount = DisassociateAdminAccount'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DisassociateAdminAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDisassociateAdminAccount ::
  DisassociateAdminAccount
newDisassociateAdminAccount =
  DisassociateAdminAccount'

instance Core.AWSRequest DisassociateAdminAccount where
  type
    AWSResponse DisassociateAdminAccount =
      DisassociateAdminAccountResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      DisassociateAdminAccountResponse'

instance Core.Hashable DisassociateAdminAccount

instance Core.NFData DisassociateAdminAccount

instance Core.ToHeaders DisassociateAdminAccount where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSFMS_20180101.DisassociateAdminAccount" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DisassociateAdminAccount where
  toJSON = Core.const (Core.Object Core.mempty)

instance Core.ToPath DisassociateAdminAccount where
  toPath = Core.const "/"

instance Core.ToQuery DisassociateAdminAccount where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDisassociateAdminAccountResponse' smart constructor.
data DisassociateAdminAccountResponse = DisassociateAdminAccountResponse'
  {
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DisassociateAdminAccountResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDisassociateAdminAccountResponse ::
  DisassociateAdminAccountResponse
newDisassociateAdminAccountResponse =
  DisassociateAdminAccountResponse'

instance Core.NFData DisassociateAdminAccountResponse
