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
-- Module      : Network.AWS.RDS.CreateDBClusterEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new custom endpoint and associates it with an Amazon Aurora DB
-- cluster.
--
-- This action only applies to Aurora DB clusters.
module Network.AWS.RDS.CreateDBClusterEndpoint
  ( -- * Creating a Request
    CreateDBClusterEndpoint (..),
    newCreateDBClusterEndpoint,

    -- * Request Lenses
    createDBClusterEndpoint_excludedMembers,
    createDBClusterEndpoint_tags,
    createDBClusterEndpoint_staticMembers,
    createDBClusterEndpoint_dbClusterIdentifier,
    createDBClusterEndpoint_dbClusterEndpointIdentifier,
    createDBClusterEndpoint_endpointType,

    -- * Destructuring the Response
    DBClusterEndpoint (..),
    newDBClusterEndpoint,

    -- * Response Lenses
    dbClusterEndpoint_dbClusterEndpointIdentifier,
    dbClusterEndpoint_status,
    dbClusterEndpoint_excludedMembers,
    dbClusterEndpoint_endpointType,
    dbClusterEndpoint_customEndpointType,
    dbClusterEndpoint_dbClusterEndpointArn,
    dbClusterEndpoint_dbClusterIdentifier,
    dbClusterEndpoint_dbClusterEndpointResourceIdentifier,
    dbClusterEndpoint_endpoint,
    dbClusterEndpoint_staticMembers,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateDBClusterEndpoint' smart constructor.
data CreateDBClusterEndpoint = CreateDBClusterEndpoint'
  { -- | List of DB instance identifiers that aren\'t part of the custom endpoint
    -- group. All other eligible instances are reachable through the custom
    -- endpoint. Only relevant if the list of static members is empty.
    excludedMembers :: Core.Maybe [Core.Text],
    -- | The tags to be assigned to the Amazon RDS resource.
    tags :: Core.Maybe [Tag],
    -- | List of DB instance identifiers that are part of the custom endpoint
    -- group.
    staticMembers :: Core.Maybe [Core.Text],
    -- | The DB cluster identifier of the DB cluster associated with the
    -- endpoint. This parameter is stored as a lowercase string.
    dbClusterIdentifier :: Core.Text,
    -- | The identifier to use for the new endpoint. This parameter is stored as
    -- a lowercase string.
    dbClusterEndpointIdentifier :: Core.Text,
    -- | The type of the endpoint. One of: @READER@, @WRITER@, @ANY@.
    endpointType :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateDBClusterEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'excludedMembers', 'createDBClusterEndpoint_excludedMembers' - List of DB instance identifiers that aren\'t part of the custom endpoint
-- group. All other eligible instances are reachable through the custom
-- endpoint. Only relevant if the list of static members is empty.
--
-- 'tags', 'createDBClusterEndpoint_tags' - The tags to be assigned to the Amazon RDS resource.
--
-- 'staticMembers', 'createDBClusterEndpoint_staticMembers' - List of DB instance identifiers that are part of the custom endpoint
-- group.
--
-- 'dbClusterIdentifier', 'createDBClusterEndpoint_dbClusterIdentifier' - The DB cluster identifier of the DB cluster associated with the
-- endpoint. This parameter is stored as a lowercase string.
--
-- 'dbClusterEndpointIdentifier', 'createDBClusterEndpoint_dbClusterEndpointIdentifier' - The identifier to use for the new endpoint. This parameter is stored as
-- a lowercase string.
--
-- 'endpointType', 'createDBClusterEndpoint_endpointType' - The type of the endpoint. One of: @READER@, @WRITER@, @ANY@.
newCreateDBClusterEndpoint ::
  -- | 'dbClusterIdentifier'
  Core.Text ->
  -- | 'dbClusterEndpointIdentifier'
  Core.Text ->
  -- | 'endpointType'
  Core.Text ->
  CreateDBClusterEndpoint
newCreateDBClusterEndpoint
  pDBClusterIdentifier_
  pDBClusterEndpointIdentifier_
  pEndpointType_ =
    CreateDBClusterEndpoint'
      { excludedMembers =
          Core.Nothing,
        tags = Core.Nothing,
        staticMembers = Core.Nothing,
        dbClusterIdentifier = pDBClusterIdentifier_,
        dbClusterEndpointIdentifier =
          pDBClusterEndpointIdentifier_,
        endpointType = pEndpointType_
      }

-- | List of DB instance identifiers that aren\'t part of the custom endpoint
-- group. All other eligible instances are reachable through the custom
-- endpoint. Only relevant if the list of static members is empty.
createDBClusterEndpoint_excludedMembers :: Lens.Lens' CreateDBClusterEndpoint (Core.Maybe [Core.Text])
createDBClusterEndpoint_excludedMembers = Lens.lens (\CreateDBClusterEndpoint' {excludedMembers} -> excludedMembers) (\s@CreateDBClusterEndpoint' {} a -> s {excludedMembers = a} :: CreateDBClusterEndpoint) Core.. Lens.mapping Lens._Coerce

-- | The tags to be assigned to the Amazon RDS resource.
createDBClusterEndpoint_tags :: Lens.Lens' CreateDBClusterEndpoint (Core.Maybe [Tag])
createDBClusterEndpoint_tags = Lens.lens (\CreateDBClusterEndpoint' {tags} -> tags) (\s@CreateDBClusterEndpoint' {} a -> s {tags = a} :: CreateDBClusterEndpoint) Core.. Lens.mapping Lens._Coerce

-- | List of DB instance identifiers that are part of the custom endpoint
-- group.
createDBClusterEndpoint_staticMembers :: Lens.Lens' CreateDBClusterEndpoint (Core.Maybe [Core.Text])
createDBClusterEndpoint_staticMembers = Lens.lens (\CreateDBClusterEndpoint' {staticMembers} -> staticMembers) (\s@CreateDBClusterEndpoint' {} a -> s {staticMembers = a} :: CreateDBClusterEndpoint) Core.. Lens.mapping Lens._Coerce

-- | The DB cluster identifier of the DB cluster associated with the
-- endpoint. This parameter is stored as a lowercase string.
createDBClusterEndpoint_dbClusterIdentifier :: Lens.Lens' CreateDBClusterEndpoint Core.Text
createDBClusterEndpoint_dbClusterIdentifier = Lens.lens (\CreateDBClusterEndpoint' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@CreateDBClusterEndpoint' {} a -> s {dbClusterIdentifier = a} :: CreateDBClusterEndpoint)

-- | The identifier to use for the new endpoint. This parameter is stored as
-- a lowercase string.
createDBClusterEndpoint_dbClusterEndpointIdentifier :: Lens.Lens' CreateDBClusterEndpoint Core.Text
createDBClusterEndpoint_dbClusterEndpointIdentifier = Lens.lens (\CreateDBClusterEndpoint' {dbClusterEndpointIdentifier} -> dbClusterEndpointIdentifier) (\s@CreateDBClusterEndpoint' {} a -> s {dbClusterEndpointIdentifier = a} :: CreateDBClusterEndpoint)

-- | The type of the endpoint. One of: @READER@, @WRITER@, @ANY@.
createDBClusterEndpoint_endpointType :: Lens.Lens' CreateDBClusterEndpoint Core.Text
createDBClusterEndpoint_endpointType = Lens.lens (\CreateDBClusterEndpoint' {endpointType} -> endpointType) (\s@CreateDBClusterEndpoint' {} a -> s {endpointType = a} :: CreateDBClusterEndpoint)

instance Core.AWSRequest CreateDBClusterEndpoint where
  type
    AWSResponse CreateDBClusterEndpoint =
      DBClusterEndpoint
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreateDBClusterEndpointResult"
      (\s h x -> Core.parseXML x)

instance Core.Hashable CreateDBClusterEndpoint

instance Core.NFData CreateDBClusterEndpoint

instance Core.ToHeaders CreateDBClusterEndpoint where
  toHeaders = Core.const Core.mempty

instance Core.ToPath CreateDBClusterEndpoint where
  toPath = Core.const "/"

instance Core.ToQuery CreateDBClusterEndpoint where
  toQuery CreateDBClusterEndpoint' {..} =
    Core.mconcat
      [ "Action"
          Core.=: ("CreateDBClusterEndpoint" :: Core.ByteString),
        "Version" Core.=: ("2014-10-31" :: Core.ByteString),
        "ExcludedMembers"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Core.<$> excludedMembers),
        "Tags"
          Core.=: Core.toQuery (Core.toQueryList "Tag" Core.<$> tags),
        "StaticMembers"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Core.<$> staticMembers),
        "DBClusterIdentifier" Core.=: dbClusterIdentifier,
        "DBClusterEndpointIdentifier"
          Core.=: dbClusterEndpointIdentifier,
        "EndpointType" Core.=: endpointType
      ]
