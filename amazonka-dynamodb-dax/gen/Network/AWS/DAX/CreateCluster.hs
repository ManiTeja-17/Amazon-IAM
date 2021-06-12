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
-- Module      : Network.AWS.DAX.CreateCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a DAX cluster. All nodes in the cluster run the same DAX caching
-- software.
module Network.AWS.DAX.CreateCluster
  ( -- * Creating a Request
    CreateCluster (..),
    newCreateCluster,

    -- * Request Lenses
    createCluster_securityGroupIds,
    createCluster_availabilityZones,
    createCluster_sSESpecification,
    createCluster_preferredMaintenanceWindow,
    createCluster_tags,
    createCluster_notificationTopicArn,
    createCluster_parameterGroupName,
    createCluster_description,
    createCluster_subnetGroupName,
    createCluster_clusterName,
    createCluster_nodeType,
    createCluster_replicationFactor,
    createCluster_iamRoleArn,

    -- * Destructuring the Response
    CreateClusterResponse (..),
    newCreateClusterResponse,

    -- * Response Lenses
    createClusterResponse_cluster,
    createClusterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DAX.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateCluster' smart constructor.
data CreateCluster = CreateCluster'
  { -- | A list of security group IDs to be assigned to each node in the DAX
    -- cluster. (Each of the security group ID is system-generated.)
    --
    -- If this parameter is not specified, DAX assigns the default VPC security
    -- group to each node.
    securityGroupIds :: Core.Maybe [Core.Text],
    -- | The Availability Zones (AZs) in which the cluster nodes will reside
    -- after the cluster has been created or updated. If provided, the length
    -- of this list must equal the @ReplicationFactor@ parameter. If you omit
    -- this parameter, DAX will spread the nodes across Availability Zones for
    -- the highest availability.
    availabilityZones :: Core.Maybe [Core.Text],
    -- | Represents the settings used to enable server-side encryption on the
    -- cluster.
    sSESpecification :: Core.Maybe SSESpecification,
    -- | Specifies the weekly time range during which maintenance on the DAX
    -- cluster is performed. It is specified as a range in the format
    -- ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
    -- is a 60 minute period. Valid values for @ddd@ are:
    --
    -- -   @sun@
    --
    -- -   @mon@
    --
    -- -   @tue@
    --
    -- -   @wed@
    --
    -- -   @thu@
    --
    -- -   @fri@
    --
    -- -   @sat@
    --
    -- Example: @sun:05:00-sun:09:00@
    --
    -- If you don\'t specify a preferred maintenance window when you create or
    -- modify a cache cluster, DAX assigns a 60-minute maintenance window on a
    -- randomly selected day of the week.
    preferredMaintenanceWindow :: Core.Maybe Core.Text,
    -- | A set of tags to associate with the DAX cluster.
    tags :: Core.Maybe [Tag],
    -- | The Amazon Resource Name (ARN) of the Amazon SNS topic to which
    -- notifications will be sent.
    --
    -- The Amazon SNS topic owner must be same as the DAX cluster owner.
    notificationTopicArn :: Core.Maybe Core.Text,
    -- | The parameter group to be associated with the DAX cluster.
    parameterGroupName :: Core.Maybe Core.Text,
    -- | A description of the cluster.
    description :: Core.Maybe Core.Text,
    -- | The name of the subnet group to be used for the replication group.
    --
    -- DAX clusters can only run in an Amazon VPC environment. All of the
    -- subnets that you specify in a subnet group must exist in the same VPC.
    subnetGroupName :: Core.Maybe Core.Text,
    -- | The cluster identifier. This parameter is stored as a lowercase string.
    --
    -- __Constraints:__
    --
    -- -   A name must contain from 1 to 20 alphanumeric characters or hyphens.
    --
    -- -   The first character must be a letter.
    --
    -- -   A name cannot end with a hyphen or contain two consecutive hyphens.
    clusterName :: Core.Text,
    -- | The compute and memory capacity of the nodes in the cluster.
    nodeType :: Core.Text,
    -- | The number of nodes in the DAX cluster. A replication factor of 1 will
    -- create a single-node cluster, without any read replicas. For additional
    -- fault tolerance, you can create a multiple node cluster with one or more
    -- read replicas. To do this, set @ReplicationFactor@ to a number between 3
    -- (one primary and two read replicas) and 10 (one primary and nine read
    -- replicas). @If the AvailabilityZones@ parameter is provided, its length
    -- must equal the @ReplicationFactor@.
    --
    -- AWS recommends that you have at least two read replicas per cluster.
    replicationFactor :: Core.Int,
    -- | A valid Amazon Resource Name (ARN) that identifies an IAM role. At
    -- runtime, DAX will assume this role and use the role\'s permissions to
    -- access DynamoDB on your behalf.
    iamRoleArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'securityGroupIds', 'createCluster_securityGroupIds' - A list of security group IDs to be assigned to each node in the DAX
-- cluster. (Each of the security group ID is system-generated.)
--
-- If this parameter is not specified, DAX assigns the default VPC security
-- group to each node.
--
-- 'availabilityZones', 'createCluster_availabilityZones' - The Availability Zones (AZs) in which the cluster nodes will reside
-- after the cluster has been created or updated. If provided, the length
-- of this list must equal the @ReplicationFactor@ parameter. If you omit
-- this parameter, DAX will spread the nodes across Availability Zones for
-- the highest availability.
--
-- 'sSESpecification', 'createCluster_sSESpecification' - Represents the settings used to enable server-side encryption on the
-- cluster.
--
-- 'preferredMaintenanceWindow', 'createCluster_preferredMaintenanceWindow' - Specifies the weekly time range during which maintenance on the DAX
-- cluster is performed. It is specified as a range in the format
-- ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
-- is a 60 minute period. Valid values for @ddd@ are:
--
-- -   @sun@
--
-- -   @mon@
--
-- -   @tue@
--
-- -   @wed@
--
-- -   @thu@
--
-- -   @fri@
--
-- -   @sat@
--
-- Example: @sun:05:00-sun:09:00@
--
-- If you don\'t specify a preferred maintenance window when you create or
-- modify a cache cluster, DAX assigns a 60-minute maintenance window on a
-- randomly selected day of the week.
--
-- 'tags', 'createCluster_tags' - A set of tags to associate with the DAX cluster.
--
-- 'notificationTopicArn', 'createCluster_notificationTopicArn' - The Amazon Resource Name (ARN) of the Amazon SNS topic to which
-- notifications will be sent.
--
-- The Amazon SNS topic owner must be same as the DAX cluster owner.
--
-- 'parameterGroupName', 'createCluster_parameterGroupName' - The parameter group to be associated with the DAX cluster.
--
-- 'description', 'createCluster_description' - A description of the cluster.
--
-- 'subnetGroupName', 'createCluster_subnetGroupName' - The name of the subnet group to be used for the replication group.
--
-- DAX clusters can only run in an Amazon VPC environment. All of the
-- subnets that you specify in a subnet group must exist in the same VPC.
--
-- 'clusterName', 'createCluster_clusterName' - The cluster identifier. This parameter is stored as a lowercase string.
--
-- __Constraints:__
--
-- -   A name must contain from 1 to 20 alphanumeric characters or hyphens.
--
-- -   The first character must be a letter.
--
-- -   A name cannot end with a hyphen or contain two consecutive hyphens.
--
-- 'nodeType', 'createCluster_nodeType' - The compute and memory capacity of the nodes in the cluster.
--
-- 'replicationFactor', 'createCluster_replicationFactor' - The number of nodes in the DAX cluster. A replication factor of 1 will
-- create a single-node cluster, without any read replicas. For additional
-- fault tolerance, you can create a multiple node cluster with one or more
-- read replicas. To do this, set @ReplicationFactor@ to a number between 3
-- (one primary and two read replicas) and 10 (one primary and nine read
-- replicas). @If the AvailabilityZones@ parameter is provided, its length
-- must equal the @ReplicationFactor@.
--
-- AWS recommends that you have at least two read replicas per cluster.
--
-- 'iamRoleArn', 'createCluster_iamRoleArn' - A valid Amazon Resource Name (ARN) that identifies an IAM role. At
-- runtime, DAX will assume this role and use the role\'s permissions to
-- access DynamoDB on your behalf.
newCreateCluster ::
  -- | 'clusterName'
  Core.Text ->
  -- | 'nodeType'
  Core.Text ->
  -- | 'replicationFactor'
  Core.Int ->
  -- | 'iamRoleArn'
  Core.Text ->
  CreateCluster
newCreateCluster
  pClusterName_
  pNodeType_
  pReplicationFactor_
  pIamRoleArn_ =
    CreateCluster'
      { securityGroupIds = Core.Nothing,
        availabilityZones = Core.Nothing,
        sSESpecification = Core.Nothing,
        preferredMaintenanceWindow = Core.Nothing,
        tags = Core.Nothing,
        notificationTopicArn = Core.Nothing,
        parameterGroupName = Core.Nothing,
        description = Core.Nothing,
        subnetGroupName = Core.Nothing,
        clusterName = pClusterName_,
        nodeType = pNodeType_,
        replicationFactor = pReplicationFactor_,
        iamRoleArn = pIamRoleArn_
      }

-- | A list of security group IDs to be assigned to each node in the DAX
-- cluster. (Each of the security group ID is system-generated.)
--
-- If this parameter is not specified, DAX assigns the default VPC security
-- group to each node.
createCluster_securityGroupIds :: Lens.Lens' CreateCluster (Core.Maybe [Core.Text])
createCluster_securityGroupIds = Lens.lens (\CreateCluster' {securityGroupIds} -> securityGroupIds) (\s@CreateCluster' {} a -> s {securityGroupIds = a} :: CreateCluster) Core.. Lens.mapping Lens._Coerce

-- | The Availability Zones (AZs) in which the cluster nodes will reside
-- after the cluster has been created or updated. If provided, the length
-- of this list must equal the @ReplicationFactor@ parameter. If you omit
-- this parameter, DAX will spread the nodes across Availability Zones for
-- the highest availability.
createCluster_availabilityZones :: Lens.Lens' CreateCluster (Core.Maybe [Core.Text])
createCluster_availabilityZones = Lens.lens (\CreateCluster' {availabilityZones} -> availabilityZones) (\s@CreateCluster' {} a -> s {availabilityZones = a} :: CreateCluster) Core.. Lens.mapping Lens._Coerce

-- | Represents the settings used to enable server-side encryption on the
-- cluster.
createCluster_sSESpecification :: Lens.Lens' CreateCluster (Core.Maybe SSESpecification)
createCluster_sSESpecification = Lens.lens (\CreateCluster' {sSESpecification} -> sSESpecification) (\s@CreateCluster' {} a -> s {sSESpecification = a} :: CreateCluster)

-- | Specifies the weekly time range during which maintenance on the DAX
-- cluster is performed. It is specified as a range in the format
-- ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
-- is a 60 minute period. Valid values for @ddd@ are:
--
-- -   @sun@
--
-- -   @mon@
--
-- -   @tue@
--
-- -   @wed@
--
-- -   @thu@
--
-- -   @fri@
--
-- -   @sat@
--
-- Example: @sun:05:00-sun:09:00@
--
-- If you don\'t specify a preferred maintenance window when you create or
-- modify a cache cluster, DAX assigns a 60-minute maintenance window on a
-- randomly selected day of the week.
createCluster_preferredMaintenanceWindow :: Lens.Lens' CreateCluster (Core.Maybe Core.Text)
createCluster_preferredMaintenanceWindow = Lens.lens (\CreateCluster' {preferredMaintenanceWindow} -> preferredMaintenanceWindow) (\s@CreateCluster' {} a -> s {preferredMaintenanceWindow = a} :: CreateCluster)

-- | A set of tags to associate with the DAX cluster.
createCluster_tags :: Lens.Lens' CreateCluster (Core.Maybe [Tag])
createCluster_tags = Lens.lens (\CreateCluster' {tags} -> tags) (\s@CreateCluster' {} a -> s {tags = a} :: CreateCluster) Core.. Lens.mapping Lens._Coerce

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic to which
-- notifications will be sent.
--
-- The Amazon SNS topic owner must be same as the DAX cluster owner.
createCluster_notificationTopicArn :: Lens.Lens' CreateCluster (Core.Maybe Core.Text)
createCluster_notificationTopicArn = Lens.lens (\CreateCluster' {notificationTopicArn} -> notificationTopicArn) (\s@CreateCluster' {} a -> s {notificationTopicArn = a} :: CreateCluster)

-- | The parameter group to be associated with the DAX cluster.
createCluster_parameterGroupName :: Lens.Lens' CreateCluster (Core.Maybe Core.Text)
createCluster_parameterGroupName = Lens.lens (\CreateCluster' {parameterGroupName} -> parameterGroupName) (\s@CreateCluster' {} a -> s {parameterGroupName = a} :: CreateCluster)

-- | A description of the cluster.
createCluster_description :: Lens.Lens' CreateCluster (Core.Maybe Core.Text)
createCluster_description = Lens.lens (\CreateCluster' {description} -> description) (\s@CreateCluster' {} a -> s {description = a} :: CreateCluster)

-- | The name of the subnet group to be used for the replication group.
--
-- DAX clusters can only run in an Amazon VPC environment. All of the
-- subnets that you specify in a subnet group must exist in the same VPC.
createCluster_subnetGroupName :: Lens.Lens' CreateCluster (Core.Maybe Core.Text)
createCluster_subnetGroupName = Lens.lens (\CreateCluster' {subnetGroupName} -> subnetGroupName) (\s@CreateCluster' {} a -> s {subnetGroupName = a} :: CreateCluster)

-- | The cluster identifier. This parameter is stored as a lowercase string.
--
-- __Constraints:__
--
-- -   A name must contain from 1 to 20 alphanumeric characters or hyphens.
--
-- -   The first character must be a letter.
--
-- -   A name cannot end with a hyphen or contain two consecutive hyphens.
createCluster_clusterName :: Lens.Lens' CreateCluster Core.Text
createCluster_clusterName = Lens.lens (\CreateCluster' {clusterName} -> clusterName) (\s@CreateCluster' {} a -> s {clusterName = a} :: CreateCluster)

-- | The compute and memory capacity of the nodes in the cluster.
createCluster_nodeType :: Lens.Lens' CreateCluster Core.Text
createCluster_nodeType = Lens.lens (\CreateCluster' {nodeType} -> nodeType) (\s@CreateCluster' {} a -> s {nodeType = a} :: CreateCluster)

-- | The number of nodes in the DAX cluster. A replication factor of 1 will
-- create a single-node cluster, without any read replicas. For additional
-- fault tolerance, you can create a multiple node cluster with one or more
-- read replicas. To do this, set @ReplicationFactor@ to a number between 3
-- (one primary and two read replicas) and 10 (one primary and nine read
-- replicas). @If the AvailabilityZones@ parameter is provided, its length
-- must equal the @ReplicationFactor@.
--
-- AWS recommends that you have at least two read replicas per cluster.
createCluster_replicationFactor :: Lens.Lens' CreateCluster Core.Int
createCluster_replicationFactor = Lens.lens (\CreateCluster' {replicationFactor} -> replicationFactor) (\s@CreateCluster' {} a -> s {replicationFactor = a} :: CreateCluster)

-- | A valid Amazon Resource Name (ARN) that identifies an IAM role. At
-- runtime, DAX will assume this role and use the role\'s permissions to
-- access DynamoDB on your behalf.
createCluster_iamRoleArn :: Lens.Lens' CreateCluster Core.Text
createCluster_iamRoleArn = Lens.lens (\CreateCluster' {iamRoleArn} -> iamRoleArn) (\s@CreateCluster' {} a -> s {iamRoleArn = a} :: CreateCluster)

instance Core.AWSRequest CreateCluster where
  type
    AWSResponse CreateCluster =
      CreateClusterResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateClusterResponse'
            Core.<$> (x Core..?> "Cluster")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateCluster

instance Core.NFData CreateCluster

instance Core.ToHeaders CreateCluster where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ("AmazonDAXV3.CreateCluster" :: Core.ByteString),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateCluster where
  toJSON CreateCluster' {..} =
    Core.object
      ( Core.catMaybes
          [ ("SecurityGroupIds" Core..=)
              Core.<$> securityGroupIds,
            ("AvailabilityZones" Core..=)
              Core.<$> availabilityZones,
            ("SSESpecification" Core..=)
              Core.<$> sSESpecification,
            ("PreferredMaintenanceWindow" Core..=)
              Core.<$> preferredMaintenanceWindow,
            ("Tags" Core..=) Core.<$> tags,
            ("NotificationTopicArn" Core..=)
              Core.<$> notificationTopicArn,
            ("ParameterGroupName" Core..=)
              Core.<$> parameterGroupName,
            ("Description" Core..=) Core.<$> description,
            ("SubnetGroupName" Core..=) Core.<$> subnetGroupName,
            Core.Just ("ClusterName" Core..= clusterName),
            Core.Just ("NodeType" Core..= nodeType),
            Core.Just
              ("ReplicationFactor" Core..= replicationFactor),
            Core.Just ("IamRoleArn" Core..= iamRoleArn)
          ]
      )

instance Core.ToPath CreateCluster where
  toPath = Core.const "/"

instance Core.ToQuery CreateCluster where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newCreateClusterResponse' smart constructor.
data CreateClusterResponse = CreateClusterResponse'
  { -- | A description of the DAX cluster that you have created.
    cluster :: Core.Maybe Cluster,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cluster', 'createClusterResponse_cluster' - A description of the DAX cluster that you have created.
--
-- 'httpStatus', 'createClusterResponse_httpStatus' - The response's http status code.
newCreateClusterResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateClusterResponse
newCreateClusterResponse pHttpStatus_ =
  CreateClusterResponse'
    { cluster = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A description of the DAX cluster that you have created.
createClusterResponse_cluster :: Lens.Lens' CreateClusterResponse (Core.Maybe Cluster)
createClusterResponse_cluster = Lens.lens (\CreateClusterResponse' {cluster} -> cluster) (\s@CreateClusterResponse' {} a -> s {cluster = a} :: CreateClusterResponse)

-- | The response's http status code.
createClusterResponse_httpStatus :: Lens.Lens' CreateClusterResponse Core.Int
createClusterResponse_httpStatus = Lens.lens (\CreateClusterResponse' {httpStatus} -> httpStatus) (\s@CreateClusterResponse' {} a -> s {httpStatus = a} :: CreateClusterResponse)

instance Core.NFData CreateClusterResponse
