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
-- Module      : Network.AWS.OpsWorksCM.AssociateNode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a new node with the server. For more information about how to
-- disassociate a node, see DisassociateNode.
--
-- On a Chef server: This command is an alternative to @knife bootstrap@.
--
-- Example (Chef):
-- @aws opsworks-cm associate-node --server-name MyServer --node-name MyManagedNode --engine-attributes \"Name=CHEF_ORGANIZATION,Value=default\" \"Name=CHEF_NODE_PUBLIC_KEY,Value=public-key-pem\"@
--
-- On a Puppet server, this command is an alternative to the
-- @puppet cert sign@ command that signs a Puppet node CSR.
--
-- Example (Puppet):
-- @aws opsworks-cm associate-node --server-name MyServer --node-name MyManagedNode --engine-attributes \"Name=PUPPET_NODE_CSR,Value=csr-pem\"@
--
-- A node can can only be associated with servers that are in a @HEALTHY@
-- state. Otherwise, an @InvalidStateException@ is thrown. A
-- @ResourceNotFoundException@ is thrown when the server does not exist. A
-- @ValidationException@ is raised when parameters of the request are not
-- valid. The AssociateNode API call can be integrated into Auto Scaling
-- configurations, AWS Cloudformation templates, or the user data of a
-- server\'s instance.
module Network.AWS.OpsWorksCM.AssociateNode
  ( -- * Creating a Request
    AssociateNode (..),
    newAssociateNode,

    -- * Request Lenses
    associateNode_serverName,
    associateNode_nodeName,
    associateNode_engineAttributes,

    -- * Destructuring the Response
    AssociateNodeResponse (..),
    newAssociateNodeResponse,

    -- * Response Lenses
    associateNodeResponse_nodeAssociationStatusToken,
    associateNodeResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpsWorksCM.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAssociateNode' smart constructor.
data AssociateNode = AssociateNode'
  { -- | The name of the server with which to associate the node.
    serverName :: Core.Text,
    -- | The name of the node.
    nodeName :: Core.Text,
    -- | Engine attributes used for associating the node.
    --
    -- __Attributes accepted in a AssociateNode request for Chef__
    --
    -- -   @CHEF_ORGANIZATION@: The Chef organization with which the node is
    --     associated. By default only one organization named @default@ can
    --     exist.
    --
    -- -   @CHEF_NODE_PUBLIC_KEY@: A PEM-formatted public key. This key is
    --     required for the @chef-client@ agent to access the Chef API.
    --
    -- __Attributes accepted in a AssociateNode request for Puppet__
    --
    -- -   @PUPPET_NODE_CSR@: A PEM-formatted certificate-signing request (CSR)
    --     that is created by the node.
    engineAttributes :: [EngineAttribute]
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'AssociateNode' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serverName', 'associateNode_serverName' - The name of the server with which to associate the node.
--
-- 'nodeName', 'associateNode_nodeName' - The name of the node.
--
-- 'engineAttributes', 'associateNode_engineAttributes' - Engine attributes used for associating the node.
--
-- __Attributes accepted in a AssociateNode request for Chef__
--
-- -   @CHEF_ORGANIZATION@: The Chef organization with which the node is
--     associated. By default only one organization named @default@ can
--     exist.
--
-- -   @CHEF_NODE_PUBLIC_KEY@: A PEM-formatted public key. This key is
--     required for the @chef-client@ agent to access the Chef API.
--
-- __Attributes accepted in a AssociateNode request for Puppet__
--
-- -   @PUPPET_NODE_CSR@: A PEM-formatted certificate-signing request (CSR)
--     that is created by the node.
newAssociateNode ::
  -- | 'serverName'
  Core.Text ->
  -- | 'nodeName'
  Core.Text ->
  AssociateNode
newAssociateNode pServerName_ pNodeName_ =
  AssociateNode'
    { serverName = pServerName_,
      nodeName = pNodeName_,
      engineAttributes = Core.mempty
    }

-- | The name of the server with which to associate the node.
associateNode_serverName :: Lens.Lens' AssociateNode Core.Text
associateNode_serverName = Lens.lens (\AssociateNode' {serverName} -> serverName) (\s@AssociateNode' {} a -> s {serverName = a} :: AssociateNode)

-- | The name of the node.
associateNode_nodeName :: Lens.Lens' AssociateNode Core.Text
associateNode_nodeName = Lens.lens (\AssociateNode' {nodeName} -> nodeName) (\s@AssociateNode' {} a -> s {nodeName = a} :: AssociateNode)

-- | Engine attributes used for associating the node.
--
-- __Attributes accepted in a AssociateNode request for Chef__
--
-- -   @CHEF_ORGANIZATION@: The Chef organization with which the node is
--     associated. By default only one organization named @default@ can
--     exist.
--
-- -   @CHEF_NODE_PUBLIC_KEY@: A PEM-formatted public key. This key is
--     required for the @chef-client@ agent to access the Chef API.
--
-- __Attributes accepted in a AssociateNode request for Puppet__
--
-- -   @PUPPET_NODE_CSR@: A PEM-formatted certificate-signing request (CSR)
--     that is created by the node.
associateNode_engineAttributes :: Lens.Lens' AssociateNode [EngineAttribute]
associateNode_engineAttributes = Lens.lens (\AssociateNode' {engineAttributes} -> engineAttributes) (\s@AssociateNode' {} a -> s {engineAttributes = a} :: AssociateNode) Core.. Lens._Coerce

instance Core.AWSRequest AssociateNode where
  type
    AWSResponse AssociateNode =
      AssociateNodeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AssociateNodeResponse'
            Core.<$> (x Core..?> "NodeAssociationStatusToken")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable AssociateNode

instance Core.NFData AssociateNode

instance Core.ToHeaders AssociateNode where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "OpsWorksCM_V2016_11_01.AssociateNode" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON AssociateNode where
  toJSON AssociateNode' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ServerName" Core..= serverName),
            Core.Just ("NodeName" Core..= nodeName),
            Core.Just
              ("EngineAttributes" Core..= engineAttributes)
          ]
      )

instance Core.ToPath AssociateNode where
  toPath = Core.const "/"

instance Core.ToQuery AssociateNode where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newAssociateNodeResponse' smart constructor.
data AssociateNodeResponse = AssociateNodeResponse'
  { -- | Contains a token which can be passed to the
    -- @DescribeNodeAssociationStatus@ API call to get the status of the
    -- association request.
    nodeAssociationStatusToken :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'AssociateNodeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nodeAssociationStatusToken', 'associateNodeResponse_nodeAssociationStatusToken' - Contains a token which can be passed to the
-- @DescribeNodeAssociationStatus@ API call to get the status of the
-- association request.
--
-- 'httpStatus', 'associateNodeResponse_httpStatus' - The response's http status code.
newAssociateNodeResponse ::
  -- | 'httpStatus'
  Core.Int ->
  AssociateNodeResponse
newAssociateNodeResponse pHttpStatus_ =
  AssociateNodeResponse'
    { nodeAssociationStatusToken =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Contains a token which can be passed to the
-- @DescribeNodeAssociationStatus@ API call to get the status of the
-- association request.
associateNodeResponse_nodeAssociationStatusToken :: Lens.Lens' AssociateNodeResponse (Core.Maybe Core.Text)
associateNodeResponse_nodeAssociationStatusToken = Lens.lens (\AssociateNodeResponse' {nodeAssociationStatusToken} -> nodeAssociationStatusToken) (\s@AssociateNodeResponse' {} a -> s {nodeAssociationStatusToken = a} :: AssociateNodeResponse)

-- | The response's http status code.
associateNodeResponse_httpStatus :: Lens.Lens' AssociateNodeResponse Core.Int
associateNodeResponse_httpStatus = Lens.lens (\AssociateNodeResponse' {httpStatus} -> httpStatus) (\s@AssociateNodeResponse' {} a -> s {httpStatus = a} :: AssociateNodeResponse)

instance Core.NFData AssociateNodeResponse
