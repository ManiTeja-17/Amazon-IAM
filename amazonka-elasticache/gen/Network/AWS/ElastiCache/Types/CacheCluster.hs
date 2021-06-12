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
-- Module      : Network.AWS.ElastiCache.Types.CacheCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.CacheCluster where

import qualified Network.AWS.Core as Core
import Network.AWS.ElastiCache.Types.CacheNode
import Network.AWS.ElastiCache.Types.CacheParameterGroupStatus
import Network.AWS.ElastiCache.Types.CacheSecurityGroupMembership
import Network.AWS.ElastiCache.Types.Endpoint
import Network.AWS.ElastiCache.Types.NotificationConfiguration
import Network.AWS.ElastiCache.Types.PendingModifiedValues
import Network.AWS.ElastiCache.Types.SecurityGroupMembership
import qualified Network.AWS.Lens as Lens

-- | Contains all of the attributes of a specific cluster.
--
-- /See:/ 'newCacheCluster' smart constructor.
data CacheCluster = CacheCluster'
  { -- | A list of cache nodes that are members of the cluster.
    cacheNodes :: Core.Maybe [CacheNode],
    -- | The date and time when the cluster was created.
    cacheClusterCreateTime :: Core.Maybe Core.ISO8601,
    -- | The number of cache nodes in the cluster.
    --
    -- For clusters running Redis, this value must be 1. For clusters running
    -- Memcached, this value must be between 1 and 20.
    numCacheNodes :: Core.Maybe Core.Int,
    -- | A list of cache security group elements, composed of name and status
    -- sub-elements.
    cacheSecurityGroups :: Core.Maybe [CacheSecurityGroupMembership],
    -- | The replication group to which this cluster belongs. If this field is
    -- empty, the cluster is not associated with any replication group.
    replicationGroupId :: Core.Maybe Core.Text,
    -- | The user-supplied identifier of the cluster. This identifier is a unique
    -- key that identifies a cluster.
    cacheClusterId :: Core.Maybe Core.Text,
    -- | The daily time range (in UTC) during which ElastiCache begins taking a
    -- daily snapshot of your cluster.
    --
    -- Example: @05:00-09:00@
    snapshotWindow :: Core.Maybe Core.Text,
    -- | The ARN (Amazon Resource Name) of the cache cluster.
    arn :: Core.Maybe Core.Text,
    -- | Describes a notification topic and its status. Notification topics are
    -- used for publishing ElastiCache events to subscribers using Amazon
    -- Simple Notification Service (SNS).
    notificationConfiguration :: Core.Maybe NotificationConfiguration,
    -- | The number of days for which ElastiCache retains automatic cluster
    -- snapshots before deleting them. For example, if you set
    -- @SnapshotRetentionLimit@ to 5, a snapshot that was taken today is
    -- retained for 5 days before being deleted.
    --
    -- If the value of SnapshotRetentionLimit is set to zero (0), backups are
    -- turned off.
    snapshotRetentionLimit :: Core.Maybe Core.Int,
    -- | Status of the cache parameter group.
    cacheParameterGroup :: Core.Maybe CacheParameterGroupStatus,
    -- | A list of VPC Security Groups associated with the cluster.
    securityGroups :: Core.Maybe [SecurityGroupMembership],
    -- | The name of the Availability Zone in which the cluster is located or
    -- \"Multiple\" if the cache nodes are located in different Availability
    -- Zones.
    preferredAvailabilityZone :: Core.Maybe Core.Text,
    -- | A flag that enables encryption at-rest when set to @true@.
    --
    -- You cannot modify the value of @AtRestEncryptionEnabled@ after the
    -- cluster is created. To enable at-rest encryption on a cluster you must
    -- set @AtRestEncryptionEnabled@ to @true@ when you create a cluster.
    --
    -- __Required:__ Only available when creating a replication group in an
    -- Amazon VPC using redis version @3.2.6@, @4.x@ or later.
    --
    -- Default: @false@
    atRestEncryptionEnabled :: Core.Maybe Core.Bool,
    -- | The name of the cache subnet group associated with the cluster.
    cacheSubnetGroupName :: Core.Maybe Core.Text,
    -- | The version of the cache engine that is used in this cluster.
    engineVersion :: Core.Maybe Core.Text,
    -- | Specifies the weekly time range during which maintenance on the cluster
    -- is performed. It is specified as a range in the format
    -- ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
    -- is a 60 minute period.
    --
    -- Valid values for @ddd@ are:
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
    -- Example: @sun:23:00-mon:01:30@
    preferredMaintenanceWindow :: Core.Maybe Core.Text,
    -- | The name of the compute and memory capacity node type for the cluster.
    --
    -- The following node types are supported by ElastiCache. Generally
    -- speaking, the current generation types provide more memory and
    -- computational power at lower cost when compared to their equivalent
    -- previous generation counterparts.
    --
    -- -   General purpose:
    --
    --     -   Current generation:
    --
    --         __M6g node types__ (available only for Redis engine version
    --         5.0.6 onward and for Memcached engine version 1.5.16 onward).
    --
    --         @cache.m6g.large@, @cache.m6g.xlarge@, @cache.m6g.2xlarge@,
    --         @cache.m6g.4xlarge@, @cache.m6g.8xlarge@, @cache.m6g.12xlarge@,
    --         @cache.m6g.16xlarge@
    --
    --         For region availability, see
    --         <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion Supported Node Types>
    --
    --         __M5 node types:__ @cache.m5.large@, @cache.m5.xlarge@,
    --         @cache.m5.2xlarge@, @cache.m5.4xlarge@, @cache.m5.12xlarge@,
    --         @cache.m5.24xlarge@
    --
    --         __M4 node types:__ @cache.m4.large@, @cache.m4.xlarge@,
    --         @cache.m4.2xlarge@, @cache.m4.4xlarge@, @cache.m4.10xlarge@
    --
    --         __T3 node types:__ @cache.t3.micro@, @cache.t3.small@,
    --         @cache.t3.medium@
    --
    --         __T2 node types:__ @cache.t2.micro@, @cache.t2.small@,
    --         @cache.t2.medium@
    --
    --     -   Previous generation: (not recommended)
    --
    --         __T1 node types:__ @cache.t1.micro@
    --
    --         __M1 node types:__ @cache.m1.small@, @cache.m1.medium@,
    --         @cache.m1.large@, @cache.m1.xlarge@
    --
    --         __M3 node types:__ @cache.m3.medium@, @cache.m3.large@,
    --         @cache.m3.xlarge@, @cache.m3.2xlarge@
    --
    -- -   Compute optimized:
    --
    --     -   Previous generation: (not recommended)
    --
    --         __C1 node types:__ @cache.c1.xlarge@
    --
    -- -   Memory optimized:
    --
    --     -   Current generation:
    --
    --         __R6g node types__ (available only for Redis engine version
    --         5.0.6 onward and for Memcached engine version 1.5.16 onward).
    --
    --         @cache.r6g.large@, @cache.r6g.xlarge@, @cache.r6g.2xlarge@,
    --         @cache.r6g.4xlarge@, @cache.r6g.8xlarge@, @cache.r6g.12xlarge@,
    --         @cache.r6g.16xlarge@
    --
    --         For region availability, see
    --         <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion Supported Node Types>
    --
    --         __R5 node types:__ @cache.r5.large@, @cache.r5.xlarge@,
    --         @cache.r5.2xlarge@, @cache.r5.4xlarge@, @cache.r5.12xlarge@,
    --         @cache.r5.24xlarge@
    --
    --         __R4 node types:__ @cache.r4.large@, @cache.r4.xlarge@,
    --         @cache.r4.2xlarge@, @cache.r4.4xlarge@, @cache.r4.8xlarge@,
    --         @cache.r4.16xlarge@
    --
    --     -   Previous generation: (not recommended)
    --
    --         __M2 node types:__ @cache.m2.xlarge@, @cache.m2.2xlarge@,
    --         @cache.m2.4xlarge@
    --
    --         __R3 node types:__ @cache.r3.large@, @cache.r3.xlarge@,
    --         @cache.r3.2xlarge@, @cache.r3.4xlarge@, @cache.r3.8xlarge@
    --
    -- __Additional node type info__
    --
    -- -   All current generation instance types are created in Amazon VPC by
    --     default.
    --
    -- -   Redis append-only files (AOF) are not supported for T1 or T2
    --     instances.
    --
    -- -   Redis Multi-AZ with automatic failover is not supported on T1
    --     instances.
    --
    -- -   Redis configuration variables @appendonly@ and @appendfsync@ are not
    --     supported on Redis version 2.8.22 and later.
    cacheNodeType :: Core.Maybe Core.Text,
    -- | The date the auth token was last modified
    authTokenLastModifiedDate :: Core.Maybe Core.ISO8601,
    -- | The URL of the web page where you can download the latest ElastiCache
    -- client library.
    clientDownloadLandingPage :: Core.Maybe Core.Text,
    -- | The name of the cache engine (@memcached@ or @redis@) to be used for
    -- this cluster.
    engine :: Core.Maybe Core.Text,
    -- | The outpost ARN in which the cache cluster is created.
    preferredOutpostArn :: Core.Maybe Core.Text,
    -- | A flag that enables using an @AuthToken@ (password) when issuing Redis
    -- commands.
    --
    -- Default: @false@
    authTokenEnabled :: Core.Maybe Core.Bool,
    pendingModifiedValues :: Core.Maybe PendingModifiedValues,
    -- | Represents a Memcached cluster endpoint which can be used by an
    -- application to connect to any node in the cluster. The configuration
    -- endpoint will always have @.cfg@ in it.
    --
    -- Example: @mem-3.9dvc4r.cfg.usw2.cache.amazonaws.com:11211@
    configurationEndpoint :: Core.Maybe Endpoint,
    -- | A flag that enables in-transit encryption when set to @true@.
    --
    -- You cannot modify the value of @TransitEncryptionEnabled@ after the
    -- cluster is created. To enable in-transit encryption on a cluster you
    -- must set @TransitEncryptionEnabled@ to @true@ when you create a cluster.
    --
    -- __Required:__ Only available when creating a replication group in an
    -- Amazon VPC using redis version @3.2.6@, @4.x@ or later.
    --
    -- Default: @false@
    transitEncryptionEnabled :: Core.Maybe Core.Bool,
    -- | This parameter is currently disabled.
    autoMinorVersionUpgrade :: Core.Maybe Core.Bool,
    -- | The current state of this cluster, one of the following values:
    -- @available@, @creating@, @deleted@, @deleting@, @incompatible-network@,
    -- @modifying@, @rebooting cluster nodes@, @restore-failed@, or
    -- @snapshotting@.
    cacheClusterStatus :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'CacheCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cacheNodes', 'cacheCluster_cacheNodes' - A list of cache nodes that are members of the cluster.
--
-- 'cacheClusterCreateTime', 'cacheCluster_cacheClusterCreateTime' - The date and time when the cluster was created.
--
-- 'numCacheNodes', 'cacheCluster_numCacheNodes' - The number of cache nodes in the cluster.
--
-- For clusters running Redis, this value must be 1. For clusters running
-- Memcached, this value must be between 1 and 20.
--
-- 'cacheSecurityGroups', 'cacheCluster_cacheSecurityGroups' - A list of cache security group elements, composed of name and status
-- sub-elements.
--
-- 'replicationGroupId', 'cacheCluster_replicationGroupId' - The replication group to which this cluster belongs. If this field is
-- empty, the cluster is not associated with any replication group.
--
-- 'cacheClusterId', 'cacheCluster_cacheClusterId' - The user-supplied identifier of the cluster. This identifier is a unique
-- key that identifies a cluster.
--
-- 'snapshotWindow', 'cacheCluster_snapshotWindow' - The daily time range (in UTC) during which ElastiCache begins taking a
-- daily snapshot of your cluster.
--
-- Example: @05:00-09:00@
--
-- 'arn', 'cacheCluster_arn' - The ARN (Amazon Resource Name) of the cache cluster.
--
-- 'notificationConfiguration', 'cacheCluster_notificationConfiguration' - Describes a notification topic and its status. Notification topics are
-- used for publishing ElastiCache events to subscribers using Amazon
-- Simple Notification Service (SNS).
--
-- 'snapshotRetentionLimit', 'cacheCluster_snapshotRetentionLimit' - The number of days for which ElastiCache retains automatic cluster
-- snapshots before deleting them. For example, if you set
-- @SnapshotRetentionLimit@ to 5, a snapshot that was taken today is
-- retained for 5 days before being deleted.
--
-- If the value of SnapshotRetentionLimit is set to zero (0), backups are
-- turned off.
--
-- 'cacheParameterGroup', 'cacheCluster_cacheParameterGroup' - Status of the cache parameter group.
--
-- 'securityGroups', 'cacheCluster_securityGroups' - A list of VPC Security Groups associated with the cluster.
--
-- 'preferredAvailabilityZone', 'cacheCluster_preferredAvailabilityZone' - The name of the Availability Zone in which the cluster is located or
-- \"Multiple\" if the cache nodes are located in different Availability
-- Zones.
--
-- 'atRestEncryptionEnabled', 'cacheCluster_atRestEncryptionEnabled' - A flag that enables encryption at-rest when set to @true@.
--
-- You cannot modify the value of @AtRestEncryptionEnabled@ after the
-- cluster is created. To enable at-rest encryption on a cluster you must
-- set @AtRestEncryptionEnabled@ to @true@ when you create a cluster.
--
-- __Required:__ Only available when creating a replication group in an
-- Amazon VPC using redis version @3.2.6@, @4.x@ or later.
--
-- Default: @false@
--
-- 'cacheSubnetGroupName', 'cacheCluster_cacheSubnetGroupName' - The name of the cache subnet group associated with the cluster.
--
-- 'engineVersion', 'cacheCluster_engineVersion' - The version of the cache engine that is used in this cluster.
--
-- 'preferredMaintenanceWindow', 'cacheCluster_preferredMaintenanceWindow' - Specifies the weekly time range during which maintenance on the cluster
-- is performed. It is specified as a range in the format
-- ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
-- is a 60 minute period.
--
-- Valid values for @ddd@ are:
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
-- Example: @sun:23:00-mon:01:30@
--
-- 'cacheNodeType', 'cacheCluster_cacheNodeType' - The name of the compute and memory capacity node type for the cluster.
--
-- The following node types are supported by ElastiCache. Generally
-- speaking, the current generation types provide more memory and
-- computational power at lower cost when compared to their equivalent
-- previous generation counterparts.
--
-- -   General purpose:
--
--     -   Current generation:
--
--         __M6g node types__ (available only for Redis engine version
--         5.0.6 onward and for Memcached engine version 1.5.16 onward).
--
--         @cache.m6g.large@, @cache.m6g.xlarge@, @cache.m6g.2xlarge@,
--         @cache.m6g.4xlarge@, @cache.m6g.8xlarge@, @cache.m6g.12xlarge@,
--         @cache.m6g.16xlarge@
--
--         For region availability, see
--         <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion Supported Node Types>
--
--         __M5 node types:__ @cache.m5.large@, @cache.m5.xlarge@,
--         @cache.m5.2xlarge@, @cache.m5.4xlarge@, @cache.m5.12xlarge@,
--         @cache.m5.24xlarge@
--
--         __M4 node types:__ @cache.m4.large@, @cache.m4.xlarge@,
--         @cache.m4.2xlarge@, @cache.m4.4xlarge@, @cache.m4.10xlarge@
--
--         __T3 node types:__ @cache.t3.micro@, @cache.t3.small@,
--         @cache.t3.medium@
--
--         __T2 node types:__ @cache.t2.micro@, @cache.t2.small@,
--         @cache.t2.medium@
--
--     -   Previous generation: (not recommended)
--
--         __T1 node types:__ @cache.t1.micro@
--
--         __M1 node types:__ @cache.m1.small@, @cache.m1.medium@,
--         @cache.m1.large@, @cache.m1.xlarge@
--
--         __M3 node types:__ @cache.m3.medium@, @cache.m3.large@,
--         @cache.m3.xlarge@, @cache.m3.2xlarge@
--
-- -   Compute optimized:
--
--     -   Previous generation: (not recommended)
--
--         __C1 node types:__ @cache.c1.xlarge@
--
-- -   Memory optimized:
--
--     -   Current generation:
--
--         __R6g node types__ (available only for Redis engine version
--         5.0.6 onward and for Memcached engine version 1.5.16 onward).
--
--         @cache.r6g.large@, @cache.r6g.xlarge@, @cache.r6g.2xlarge@,
--         @cache.r6g.4xlarge@, @cache.r6g.8xlarge@, @cache.r6g.12xlarge@,
--         @cache.r6g.16xlarge@
--
--         For region availability, see
--         <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion Supported Node Types>
--
--         __R5 node types:__ @cache.r5.large@, @cache.r5.xlarge@,
--         @cache.r5.2xlarge@, @cache.r5.4xlarge@, @cache.r5.12xlarge@,
--         @cache.r5.24xlarge@
--
--         __R4 node types:__ @cache.r4.large@, @cache.r4.xlarge@,
--         @cache.r4.2xlarge@, @cache.r4.4xlarge@, @cache.r4.8xlarge@,
--         @cache.r4.16xlarge@
--
--     -   Previous generation: (not recommended)
--
--         __M2 node types:__ @cache.m2.xlarge@, @cache.m2.2xlarge@,
--         @cache.m2.4xlarge@
--
--         __R3 node types:__ @cache.r3.large@, @cache.r3.xlarge@,
--         @cache.r3.2xlarge@, @cache.r3.4xlarge@, @cache.r3.8xlarge@
--
-- __Additional node type info__
--
-- -   All current generation instance types are created in Amazon VPC by
--     default.
--
-- -   Redis append-only files (AOF) are not supported for T1 or T2
--     instances.
--
-- -   Redis Multi-AZ with automatic failover is not supported on T1
--     instances.
--
-- -   Redis configuration variables @appendonly@ and @appendfsync@ are not
--     supported on Redis version 2.8.22 and later.
--
-- 'authTokenLastModifiedDate', 'cacheCluster_authTokenLastModifiedDate' - The date the auth token was last modified
--
-- 'clientDownloadLandingPage', 'cacheCluster_clientDownloadLandingPage' - The URL of the web page where you can download the latest ElastiCache
-- client library.
--
-- 'engine', 'cacheCluster_engine' - The name of the cache engine (@memcached@ or @redis@) to be used for
-- this cluster.
--
-- 'preferredOutpostArn', 'cacheCluster_preferredOutpostArn' - The outpost ARN in which the cache cluster is created.
--
-- 'authTokenEnabled', 'cacheCluster_authTokenEnabled' - A flag that enables using an @AuthToken@ (password) when issuing Redis
-- commands.
--
-- Default: @false@
--
-- 'pendingModifiedValues', 'cacheCluster_pendingModifiedValues' - Undocumented member.
--
-- 'configurationEndpoint', 'cacheCluster_configurationEndpoint' - Represents a Memcached cluster endpoint which can be used by an
-- application to connect to any node in the cluster. The configuration
-- endpoint will always have @.cfg@ in it.
--
-- Example: @mem-3.9dvc4r.cfg.usw2.cache.amazonaws.com:11211@
--
-- 'transitEncryptionEnabled', 'cacheCluster_transitEncryptionEnabled' - A flag that enables in-transit encryption when set to @true@.
--
-- You cannot modify the value of @TransitEncryptionEnabled@ after the
-- cluster is created. To enable in-transit encryption on a cluster you
-- must set @TransitEncryptionEnabled@ to @true@ when you create a cluster.
--
-- __Required:__ Only available when creating a replication group in an
-- Amazon VPC using redis version @3.2.6@, @4.x@ or later.
--
-- Default: @false@
--
-- 'autoMinorVersionUpgrade', 'cacheCluster_autoMinorVersionUpgrade' - This parameter is currently disabled.
--
-- 'cacheClusterStatus', 'cacheCluster_cacheClusterStatus' - The current state of this cluster, one of the following values:
-- @available@, @creating@, @deleted@, @deleting@, @incompatible-network@,
-- @modifying@, @rebooting cluster nodes@, @restore-failed@, or
-- @snapshotting@.
newCacheCluster ::
  CacheCluster
newCacheCluster =
  CacheCluster'
    { cacheNodes = Core.Nothing,
      cacheClusterCreateTime = Core.Nothing,
      numCacheNodes = Core.Nothing,
      cacheSecurityGroups = Core.Nothing,
      replicationGroupId = Core.Nothing,
      cacheClusterId = Core.Nothing,
      snapshotWindow = Core.Nothing,
      arn = Core.Nothing,
      notificationConfiguration = Core.Nothing,
      snapshotRetentionLimit = Core.Nothing,
      cacheParameterGroup = Core.Nothing,
      securityGroups = Core.Nothing,
      preferredAvailabilityZone = Core.Nothing,
      atRestEncryptionEnabled = Core.Nothing,
      cacheSubnetGroupName = Core.Nothing,
      engineVersion = Core.Nothing,
      preferredMaintenanceWindow = Core.Nothing,
      cacheNodeType = Core.Nothing,
      authTokenLastModifiedDate = Core.Nothing,
      clientDownloadLandingPage = Core.Nothing,
      engine = Core.Nothing,
      preferredOutpostArn = Core.Nothing,
      authTokenEnabled = Core.Nothing,
      pendingModifiedValues = Core.Nothing,
      configurationEndpoint = Core.Nothing,
      transitEncryptionEnabled = Core.Nothing,
      autoMinorVersionUpgrade = Core.Nothing,
      cacheClusterStatus = Core.Nothing
    }

-- | A list of cache nodes that are members of the cluster.
cacheCluster_cacheNodes :: Lens.Lens' CacheCluster (Core.Maybe [CacheNode])
cacheCluster_cacheNodes = Lens.lens (\CacheCluster' {cacheNodes} -> cacheNodes) (\s@CacheCluster' {} a -> s {cacheNodes = a} :: CacheCluster) Core.. Lens.mapping Lens._Coerce

-- | The date and time when the cluster was created.
cacheCluster_cacheClusterCreateTime :: Lens.Lens' CacheCluster (Core.Maybe Core.UTCTime)
cacheCluster_cacheClusterCreateTime = Lens.lens (\CacheCluster' {cacheClusterCreateTime} -> cacheClusterCreateTime) (\s@CacheCluster' {} a -> s {cacheClusterCreateTime = a} :: CacheCluster) Core.. Lens.mapping Core._Time

-- | The number of cache nodes in the cluster.
--
-- For clusters running Redis, this value must be 1. For clusters running
-- Memcached, this value must be between 1 and 20.
cacheCluster_numCacheNodes :: Lens.Lens' CacheCluster (Core.Maybe Core.Int)
cacheCluster_numCacheNodes = Lens.lens (\CacheCluster' {numCacheNodes} -> numCacheNodes) (\s@CacheCluster' {} a -> s {numCacheNodes = a} :: CacheCluster)

-- | A list of cache security group elements, composed of name and status
-- sub-elements.
cacheCluster_cacheSecurityGroups :: Lens.Lens' CacheCluster (Core.Maybe [CacheSecurityGroupMembership])
cacheCluster_cacheSecurityGroups = Lens.lens (\CacheCluster' {cacheSecurityGroups} -> cacheSecurityGroups) (\s@CacheCluster' {} a -> s {cacheSecurityGroups = a} :: CacheCluster) Core.. Lens.mapping Lens._Coerce

-- | The replication group to which this cluster belongs. If this field is
-- empty, the cluster is not associated with any replication group.
cacheCluster_replicationGroupId :: Lens.Lens' CacheCluster (Core.Maybe Core.Text)
cacheCluster_replicationGroupId = Lens.lens (\CacheCluster' {replicationGroupId} -> replicationGroupId) (\s@CacheCluster' {} a -> s {replicationGroupId = a} :: CacheCluster)

-- | The user-supplied identifier of the cluster. This identifier is a unique
-- key that identifies a cluster.
cacheCluster_cacheClusterId :: Lens.Lens' CacheCluster (Core.Maybe Core.Text)
cacheCluster_cacheClusterId = Lens.lens (\CacheCluster' {cacheClusterId} -> cacheClusterId) (\s@CacheCluster' {} a -> s {cacheClusterId = a} :: CacheCluster)

-- | The daily time range (in UTC) during which ElastiCache begins taking a
-- daily snapshot of your cluster.
--
-- Example: @05:00-09:00@
cacheCluster_snapshotWindow :: Lens.Lens' CacheCluster (Core.Maybe Core.Text)
cacheCluster_snapshotWindow = Lens.lens (\CacheCluster' {snapshotWindow} -> snapshotWindow) (\s@CacheCluster' {} a -> s {snapshotWindow = a} :: CacheCluster)

-- | The ARN (Amazon Resource Name) of the cache cluster.
cacheCluster_arn :: Lens.Lens' CacheCluster (Core.Maybe Core.Text)
cacheCluster_arn = Lens.lens (\CacheCluster' {arn} -> arn) (\s@CacheCluster' {} a -> s {arn = a} :: CacheCluster)

-- | Describes a notification topic and its status. Notification topics are
-- used for publishing ElastiCache events to subscribers using Amazon
-- Simple Notification Service (SNS).
cacheCluster_notificationConfiguration :: Lens.Lens' CacheCluster (Core.Maybe NotificationConfiguration)
cacheCluster_notificationConfiguration = Lens.lens (\CacheCluster' {notificationConfiguration} -> notificationConfiguration) (\s@CacheCluster' {} a -> s {notificationConfiguration = a} :: CacheCluster)

-- | The number of days for which ElastiCache retains automatic cluster
-- snapshots before deleting them. For example, if you set
-- @SnapshotRetentionLimit@ to 5, a snapshot that was taken today is
-- retained for 5 days before being deleted.
--
-- If the value of SnapshotRetentionLimit is set to zero (0), backups are
-- turned off.
cacheCluster_snapshotRetentionLimit :: Lens.Lens' CacheCluster (Core.Maybe Core.Int)
cacheCluster_snapshotRetentionLimit = Lens.lens (\CacheCluster' {snapshotRetentionLimit} -> snapshotRetentionLimit) (\s@CacheCluster' {} a -> s {snapshotRetentionLimit = a} :: CacheCluster)

-- | Status of the cache parameter group.
cacheCluster_cacheParameterGroup :: Lens.Lens' CacheCluster (Core.Maybe CacheParameterGroupStatus)
cacheCluster_cacheParameterGroup = Lens.lens (\CacheCluster' {cacheParameterGroup} -> cacheParameterGroup) (\s@CacheCluster' {} a -> s {cacheParameterGroup = a} :: CacheCluster)

-- | A list of VPC Security Groups associated with the cluster.
cacheCluster_securityGroups :: Lens.Lens' CacheCluster (Core.Maybe [SecurityGroupMembership])
cacheCluster_securityGroups = Lens.lens (\CacheCluster' {securityGroups} -> securityGroups) (\s@CacheCluster' {} a -> s {securityGroups = a} :: CacheCluster) Core.. Lens.mapping Lens._Coerce

-- | The name of the Availability Zone in which the cluster is located or
-- \"Multiple\" if the cache nodes are located in different Availability
-- Zones.
cacheCluster_preferredAvailabilityZone :: Lens.Lens' CacheCluster (Core.Maybe Core.Text)
cacheCluster_preferredAvailabilityZone = Lens.lens (\CacheCluster' {preferredAvailabilityZone} -> preferredAvailabilityZone) (\s@CacheCluster' {} a -> s {preferredAvailabilityZone = a} :: CacheCluster)

-- | A flag that enables encryption at-rest when set to @true@.
--
-- You cannot modify the value of @AtRestEncryptionEnabled@ after the
-- cluster is created. To enable at-rest encryption on a cluster you must
-- set @AtRestEncryptionEnabled@ to @true@ when you create a cluster.
--
-- __Required:__ Only available when creating a replication group in an
-- Amazon VPC using redis version @3.2.6@, @4.x@ or later.
--
-- Default: @false@
cacheCluster_atRestEncryptionEnabled :: Lens.Lens' CacheCluster (Core.Maybe Core.Bool)
cacheCluster_atRestEncryptionEnabled = Lens.lens (\CacheCluster' {atRestEncryptionEnabled} -> atRestEncryptionEnabled) (\s@CacheCluster' {} a -> s {atRestEncryptionEnabled = a} :: CacheCluster)

-- | The name of the cache subnet group associated with the cluster.
cacheCluster_cacheSubnetGroupName :: Lens.Lens' CacheCluster (Core.Maybe Core.Text)
cacheCluster_cacheSubnetGroupName = Lens.lens (\CacheCluster' {cacheSubnetGroupName} -> cacheSubnetGroupName) (\s@CacheCluster' {} a -> s {cacheSubnetGroupName = a} :: CacheCluster)

-- | The version of the cache engine that is used in this cluster.
cacheCluster_engineVersion :: Lens.Lens' CacheCluster (Core.Maybe Core.Text)
cacheCluster_engineVersion = Lens.lens (\CacheCluster' {engineVersion} -> engineVersion) (\s@CacheCluster' {} a -> s {engineVersion = a} :: CacheCluster)

-- | Specifies the weekly time range during which maintenance on the cluster
-- is performed. It is specified as a range in the format
-- ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
-- is a 60 minute period.
--
-- Valid values for @ddd@ are:
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
-- Example: @sun:23:00-mon:01:30@
cacheCluster_preferredMaintenanceWindow :: Lens.Lens' CacheCluster (Core.Maybe Core.Text)
cacheCluster_preferredMaintenanceWindow = Lens.lens (\CacheCluster' {preferredMaintenanceWindow} -> preferredMaintenanceWindow) (\s@CacheCluster' {} a -> s {preferredMaintenanceWindow = a} :: CacheCluster)

-- | The name of the compute and memory capacity node type for the cluster.
--
-- The following node types are supported by ElastiCache. Generally
-- speaking, the current generation types provide more memory and
-- computational power at lower cost when compared to their equivalent
-- previous generation counterparts.
--
-- -   General purpose:
--
--     -   Current generation:
--
--         __M6g node types__ (available only for Redis engine version
--         5.0.6 onward and for Memcached engine version 1.5.16 onward).
--
--         @cache.m6g.large@, @cache.m6g.xlarge@, @cache.m6g.2xlarge@,
--         @cache.m6g.4xlarge@, @cache.m6g.8xlarge@, @cache.m6g.12xlarge@,
--         @cache.m6g.16xlarge@
--
--         For region availability, see
--         <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion Supported Node Types>
--
--         __M5 node types:__ @cache.m5.large@, @cache.m5.xlarge@,
--         @cache.m5.2xlarge@, @cache.m5.4xlarge@, @cache.m5.12xlarge@,
--         @cache.m5.24xlarge@
--
--         __M4 node types:__ @cache.m4.large@, @cache.m4.xlarge@,
--         @cache.m4.2xlarge@, @cache.m4.4xlarge@, @cache.m4.10xlarge@
--
--         __T3 node types:__ @cache.t3.micro@, @cache.t3.small@,
--         @cache.t3.medium@
--
--         __T2 node types:__ @cache.t2.micro@, @cache.t2.small@,
--         @cache.t2.medium@
--
--     -   Previous generation: (not recommended)
--
--         __T1 node types:__ @cache.t1.micro@
--
--         __M1 node types:__ @cache.m1.small@, @cache.m1.medium@,
--         @cache.m1.large@, @cache.m1.xlarge@
--
--         __M3 node types:__ @cache.m3.medium@, @cache.m3.large@,
--         @cache.m3.xlarge@, @cache.m3.2xlarge@
--
-- -   Compute optimized:
--
--     -   Previous generation: (not recommended)
--
--         __C1 node types:__ @cache.c1.xlarge@
--
-- -   Memory optimized:
--
--     -   Current generation:
--
--         __R6g node types__ (available only for Redis engine version
--         5.0.6 onward and for Memcached engine version 1.5.16 onward).
--
--         @cache.r6g.large@, @cache.r6g.xlarge@, @cache.r6g.2xlarge@,
--         @cache.r6g.4xlarge@, @cache.r6g.8xlarge@, @cache.r6g.12xlarge@,
--         @cache.r6g.16xlarge@
--
--         For region availability, see
--         <https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion Supported Node Types>
--
--         __R5 node types:__ @cache.r5.large@, @cache.r5.xlarge@,
--         @cache.r5.2xlarge@, @cache.r5.4xlarge@, @cache.r5.12xlarge@,
--         @cache.r5.24xlarge@
--
--         __R4 node types:__ @cache.r4.large@, @cache.r4.xlarge@,
--         @cache.r4.2xlarge@, @cache.r4.4xlarge@, @cache.r4.8xlarge@,
--         @cache.r4.16xlarge@
--
--     -   Previous generation: (not recommended)
--
--         __M2 node types:__ @cache.m2.xlarge@, @cache.m2.2xlarge@,
--         @cache.m2.4xlarge@
--
--         __R3 node types:__ @cache.r3.large@, @cache.r3.xlarge@,
--         @cache.r3.2xlarge@, @cache.r3.4xlarge@, @cache.r3.8xlarge@
--
-- __Additional node type info__
--
-- -   All current generation instance types are created in Amazon VPC by
--     default.
--
-- -   Redis append-only files (AOF) are not supported for T1 or T2
--     instances.
--
-- -   Redis Multi-AZ with automatic failover is not supported on T1
--     instances.
--
-- -   Redis configuration variables @appendonly@ and @appendfsync@ are not
--     supported on Redis version 2.8.22 and later.
cacheCluster_cacheNodeType :: Lens.Lens' CacheCluster (Core.Maybe Core.Text)
cacheCluster_cacheNodeType = Lens.lens (\CacheCluster' {cacheNodeType} -> cacheNodeType) (\s@CacheCluster' {} a -> s {cacheNodeType = a} :: CacheCluster)

-- | The date the auth token was last modified
cacheCluster_authTokenLastModifiedDate :: Lens.Lens' CacheCluster (Core.Maybe Core.UTCTime)
cacheCluster_authTokenLastModifiedDate = Lens.lens (\CacheCluster' {authTokenLastModifiedDate} -> authTokenLastModifiedDate) (\s@CacheCluster' {} a -> s {authTokenLastModifiedDate = a} :: CacheCluster) Core.. Lens.mapping Core._Time

-- | The URL of the web page where you can download the latest ElastiCache
-- client library.
cacheCluster_clientDownloadLandingPage :: Lens.Lens' CacheCluster (Core.Maybe Core.Text)
cacheCluster_clientDownloadLandingPage = Lens.lens (\CacheCluster' {clientDownloadLandingPage} -> clientDownloadLandingPage) (\s@CacheCluster' {} a -> s {clientDownloadLandingPage = a} :: CacheCluster)

-- | The name of the cache engine (@memcached@ or @redis@) to be used for
-- this cluster.
cacheCluster_engine :: Lens.Lens' CacheCluster (Core.Maybe Core.Text)
cacheCluster_engine = Lens.lens (\CacheCluster' {engine} -> engine) (\s@CacheCluster' {} a -> s {engine = a} :: CacheCluster)

-- | The outpost ARN in which the cache cluster is created.
cacheCluster_preferredOutpostArn :: Lens.Lens' CacheCluster (Core.Maybe Core.Text)
cacheCluster_preferredOutpostArn = Lens.lens (\CacheCluster' {preferredOutpostArn} -> preferredOutpostArn) (\s@CacheCluster' {} a -> s {preferredOutpostArn = a} :: CacheCluster)

-- | A flag that enables using an @AuthToken@ (password) when issuing Redis
-- commands.
--
-- Default: @false@
cacheCluster_authTokenEnabled :: Lens.Lens' CacheCluster (Core.Maybe Core.Bool)
cacheCluster_authTokenEnabled = Lens.lens (\CacheCluster' {authTokenEnabled} -> authTokenEnabled) (\s@CacheCluster' {} a -> s {authTokenEnabled = a} :: CacheCluster)

-- | Undocumented member.
cacheCluster_pendingModifiedValues :: Lens.Lens' CacheCluster (Core.Maybe PendingModifiedValues)
cacheCluster_pendingModifiedValues = Lens.lens (\CacheCluster' {pendingModifiedValues} -> pendingModifiedValues) (\s@CacheCluster' {} a -> s {pendingModifiedValues = a} :: CacheCluster)

-- | Represents a Memcached cluster endpoint which can be used by an
-- application to connect to any node in the cluster. The configuration
-- endpoint will always have @.cfg@ in it.
--
-- Example: @mem-3.9dvc4r.cfg.usw2.cache.amazonaws.com:11211@
cacheCluster_configurationEndpoint :: Lens.Lens' CacheCluster (Core.Maybe Endpoint)
cacheCluster_configurationEndpoint = Lens.lens (\CacheCluster' {configurationEndpoint} -> configurationEndpoint) (\s@CacheCluster' {} a -> s {configurationEndpoint = a} :: CacheCluster)

-- | A flag that enables in-transit encryption when set to @true@.
--
-- You cannot modify the value of @TransitEncryptionEnabled@ after the
-- cluster is created. To enable in-transit encryption on a cluster you
-- must set @TransitEncryptionEnabled@ to @true@ when you create a cluster.
--
-- __Required:__ Only available when creating a replication group in an
-- Amazon VPC using redis version @3.2.6@, @4.x@ or later.
--
-- Default: @false@
cacheCluster_transitEncryptionEnabled :: Lens.Lens' CacheCluster (Core.Maybe Core.Bool)
cacheCluster_transitEncryptionEnabled = Lens.lens (\CacheCluster' {transitEncryptionEnabled} -> transitEncryptionEnabled) (\s@CacheCluster' {} a -> s {transitEncryptionEnabled = a} :: CacheCluster)

-- | This parameter is currently disabled.
cacheCluster_autoMinorVersionUpgrade :: Lens.Lens' CacheCluster (Core.Maybe Core.Bool)
cacheCluster_autoMinorVersionUpgrade = Lens.lens (\CacheCluster' {autoMinorVersionUpgrade} -> autoMinorVersionUpgrade) (\s@CacheCluster' {} a -> s {autoMinorVersionUpgrade = a} :: CacheCluster)

-- | The current state of this cluster, one of the following values:
-- @available@, @creating@, @deleted@, @deleting@, @incompatible-network@,
-- @modifying@, @rebooting cluster nodes@, @restore-failed@, or
-- @snapshotting@.
cacheCluster_cacheClusterStatus :: Lens.Lens' CacheCluster (Core.Maybe Core.Text)
cacheCluster_cacheClusterStatus = Lens.lens (\CacheCluster' {cacheClusterStatus} -> cacheClusterStatus) (\s@CacheCluster' {} a -> s {cacheClusterStatus = a} :: CacheCluster)

instance Core.FromXML CacheCluster where
  parseXML x =
    CacheCluster'
      Core.<$> ( x Core..@? "CacheNodes" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "CacheNode")
               )
      Core.<*> (x Core..@? "CacheClusterCreateTime")
      Core.<*> (x Core..@? "NumCacheNodes")
      Core.<*> ( x Core..@? "CacheSecurityGroups"
                   Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "CacheSecurityGroup")
               )
      Core.<*> (x Core..@? "ReplicationGroupId")
      Core.<*> (x Core..@? "CacheClusterId")
      Core.<*> (x Core..@? "SnapshotWindow")
      Core.<*> (x Core..@? "ARN")
      Core.<*> (x Core..@? "NotificationConfiguration")
      Core.<*> (x Core..@? "SnapshotRetentionLimit")
      Core.<*> (x Core..@? "CacheParameterGroup")
      Core.<*> ( x Core..@? "SecurityGroups" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "member")
               )
      Core.<*> (x Core..@? "PreferredAvailabilityZone")
      Core.<*> (x Core..@? "AtRestEncryptionEnabled")
      Core.<*> (x Core..@? "CacheSubnetGroupName")
      Core.<*> (x Core..@? "EngineVersion")
      Core.<*> (x Core..@? "PreferredMaintenanceWindow")
      Core.<*> (x Core..@? "CacheNodeType")
      Core.<*> (x Core..@? "AuthTokenLastModifiedDate")
      Core.<*> (x Core..@? "ClientDownloadLandingPage")
      Core.<*> (x Core..@? "Engine")
      Core.<*> (x Core..@? "PreferredOutpostArn")
      Core.<*> (x Core..@? "AuthTokenEnabled")
      Core.<*> (x Core..@? "PendingModifiedValues")
      Core.<*> (x Core..@? "ConfigurationEndpoint")
      Core.<*> (x Core..@? "TransitEncryptionEnabled")
      Core.<*> (x Core..@? "AutoMinorVersionUpgrade")
      Core.<*> (x Core..@? "CacheClusterStatus")

instance Core.Hashable CacheCluster

instance Core.NFData CacheCluster
