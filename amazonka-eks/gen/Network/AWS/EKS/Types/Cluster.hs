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
-- Module      : Network.AWS.EKS.Types.Cluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EKS.Types.Cluster where

import qualified Network.AWS.Core as Core
import Network.AWS.EKS.Types.Certificate
import Network.AWS.EKS.Types.ClusterStatus
import Network.AWS.EKS.Types.EncryptionConfig
import Network.AWS.EKS.Types.Identity
import Network.AWS.EKS.Types.KubernetesNetworkConfigResponse
import Network.AWS.EKS.Types.Logging
import Network.AWS.EKS.Types.VpcConfigResponse
import qualified Network.AWS.Lens as Lens

-- | An object representing an Amazon EKS cluster.
--
-- /See:/ 'newCluster' smart constructor.
data Cluster = Cluster'
  { -- | The current status of the cluster.
    status :: Core.Maybe ClusterStatus,
    -- | The Amazon Resource Name (ARN) of the IAM role that provides permissions
    -- for the Kubernetes control plane to make calls to AWS API operations on
    -- your behalf.
    roleArn :: Core.Maybe Core.Text,
    -- | The VPC configuration used by the cluster control plane. Amazon EKS VPC
    -- resources have specific requirements to work properly with Kubernetes.
    -- For more information, see
    -- <https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html Cluster VPC Considerations>
    -- and
    -- <https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html Cluster Security Group Considerations>
    -- in the /Amazon EKS User Guide/.
    resourcesVpcConfig :: Core.Maybe VpcConfigResponse,
    -- | The Kubernetes network configuration for the cluster.
    kubernetesNetworkConfig :: Core.Maybe KubernetesNetworkConfigResponse,
    -- | The identity provider information for the cluster.
    identity :: Core.Maybe Identity,
    -- | The logging configuration for your cluster.
    logging :: Core.Maybe Logging,
    -- | The Unix epoch timestamp in seconds for when the cluster was created.
    createdAt :: Core.Maybe Core.POSIX,
    -- | The platform version of your Amazon EKS cluster. For more information,
    -- see
    -- <https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html Platform Versions>
    -- in the //Amazon EKS User Guide// .
    platformVersion :: Core.Maybe Core.Text,
    -- | The Amazon Resource Name (ARN) of the cluster.
    arn :: Core.Maybe Core.Text,
    -- | The encryption configuration for the cluster.
    encryptionConfig :: Core.Maybe [EncryptionConfig],
    -- | The Kubernetes server version for the cluster.
    version :: Core.Maybe Core.Text,
    -- | The name of the cluster.
    name :: Core.Maybe Core.Text,
    -- | The @certificate-authority-data@ for your cluster.
    certificateAuthority :: Core.Maybe Certificate,
    -- | The metadata that you apply to the cluster to assist with categorization
    -- and organization. Each tag consists of a key and an optional value, both
    -- of which you define. Cluster tags do not propagate to any other
    -- resources associated with the cluster.
    tags :: Core.Maybe (Core.HashMap Core.Text Core.Text),
    -- | The endpoint for your Kubernetes API server.
    endpoint :: Core.Maybe Core.Text,
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request.
    clientRequestToken :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Cluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'cluster_status' - The current status of the cluster.
--
-- 'roleArn', 'cluster_roleArn' - The Amazon Resource Name (ARN) of the IAM role that provides permissions
-- for the Kubernetes control plane to make calls to AWS API operations on
-- your behalf.
--
-- 'resourcesVpcConfig', 'cluster_resourcesVpcConfig' - The VPC configuration used by the cluster control plane. Amazon EKS VPC
-- resources have specific requirements to work properly with Kubernetes.
-- For more information, see
-- <https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html Cluster VPC Considerations>
-- and
-- <https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html Cluster Security Group Considerations>
-- in the /Amazon EKS User Guide/.
--
-- 'kubernetesNetworkConfig', 'cluster_kubernetesNetworkConfig' - The Kubernetes network configuration for the cluster.
--
-- 'identity', 'cluster_identity' - The identity provider information for the cluster.
--
-- 'logging', 'cluster_logging' - The logging configuration for your cluster.
--
-- 'createdAt', 'cluster_createdAt' - The Unix epoch timestamp in seconds for when the cluster was created.
--
-- 'platformVersion', 'cluster_platformVersion' - The platform version of your Amazon EKS cluster. For more information,
-- see
-- <https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html Platform Versions>
-- in the //Amazon EKS User Guide// .
--
-- 'arn', 'cluster_arn' - The Amazon Resource Name (ARN) of the cluster.
--
-- 'encryptionConfig', 'cluster_encryptionConfig' - The encryption configuration for the cluster.
--
-- 'version', 'cluster_version' - The Kubernetes server version for the cluster.
--
-- 'name', 'cluster_name' - The name of the cluster.
--
-- 'certificateAuthority', 'cluster_certificateAuthority' - The @certificate-authority-data@ for your cluster.
--
-- 'tags', 'cluster_tags' - The metadata that you apply to the cluster to assist with categorization
-- and organization. Each tag consists of a key and an optional value, both
-- of which you define. Cluster tags do not propagate to any other
-- resources associated with the cluster.
--
-- 'endpoint', 'cluster_endpoint' - The endpoint for your Kubernetes API server.
--
-- 'clientRequestToken', 'cluster_clientRequestToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
newCluster ::
  Cluster
newCluster =
  Cluster'
    { status = Core.Nothing,
      roleArn = Core.Nothing,
      resourcesVpcConfig = Core.Nothing,
      kubernetesNetworkConfig = Core.Nothing,
      identity = Core.Nothing,
      logging = Core.Nothing,
      createdAt = Core.Nothing,
      platformVersion = Core.Nothing,
      arn = Core.Nothing,
      encryptionConfig = Core.Nothing,
      version = Core.Nothing,
      name = Core.Nothing,
      certificateAuthority = Core.Nothing,
      tags = Core.Nothing,
      endpoint = Core.Nothing,
      clientRequestToken = Core.Nothing
    }

-- | The current status of the cluster.
cluster_status :: Lens.Lens' Cluster (Core.Maybe ClusterStatus)
cluster_status = Lens.lens (\Cluster' {status} -> status) (\s@Cluster' {} a -> s {status = a} :: Cluster)

-- | The Amazon Resource Name (ARN) of the IAM role that provides permissions
-- for the Kubernetes control plane to make calls to AWS API operations on
-- your behalf.
cluster_roleArn :: Lens.Lens' Cluster (Core.Maybe Core.Text)
cluster_roleArn = Lens.lens (\Cluster' {roleArn} -> roleArn) (\s@Cluster' {} a -> s {roleArn = a} :: Cluster)

-- | The VPC configuration used by the cluster control plane. Amazon EKS VPC
-- resources have specific requirements to work properly with Kubernetes.
-- For more information, see
-- <https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html Cluster VPC Considerations>
-- and
-- <https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html Cluster Security Group Considerations>
-- in the /Amazon EKS User Guide/.
cluster_resourcesVpcConfig :: Lens.Lens' Cluster (Core.Maybe VpcConfigResponse)
cluster_resourcesVpcConfig = Lens.lens (\Cluster' {resourcesVpcConfig} -> resourcesVpcConfig) (\s@Cluster' {} a -> s {resourcesVpcConfig = a} :: Cluster)

-- | The Kubernetes network configuration for the cluster.
cluster_kubernetesNetworkConfig :: Lens.Lens' Cluster (Core.Maybe KubernetesNetworkConfigResponse)
cluster_kubernetesNetworkConfig = Lens.lens (\Cluster' {kubernetesNetworkConfig} -> kubernetesNetworkConfig) (\s@Cluster' {} a -> s {kubernetesNetworkConfig = a} :: Cluster)

-- | The identity provider information for the cluster.
cluster_identity :: Lens.Lens' Cluster (Core.Maybe Identity)
cluster_identity = Lens.lens (\Cluster' {identity} -> identity) (\s@Cluster' {} a -> s {identity = a} :: Cluster)

-- | The logging configuration for your cluster.
cluster_logging :: Lens.Lens' Cluster (Core.Maybe Logging)
cluster_logging = Lens.lens (\Cluster' {logging} -> logging) (\s@Cluster' {} a -> s {logging = a} :: Cluster)

-- | The Unix epoch timestamp in seconds for when the cluster was created.
cluster_createdAt :: Lens.Lens' Cluster (Core.Maybe Core.UTCTime)
cluster_createdAt = Lens.lens (\Cluster' {createdAt} -> createdAt) (\s@Cluster' {} a -> s {createdAt = a} :: Cluster) Core.. Lens.mapping Core._Time

-- | The platform version of your Amazon EKS cluster. For more information,
-- see
-- <https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html Platform Versions>
-- in the //Amazon EKS User Guide// .
cluster_platformVersion :: Lens.Lens' Cluster (Core.Maybe Core.Text)
cluster_platformVersion = Lens.lens (\Cluster' {platformVersion} -> platformVersion) (\s@Cluster' {} a -> s {platformVersion = a} :: Cluster)

-- | The Amazon Resource Name (ARN) of the cluster.
cluster_arn :: Lens.Lens' Cluster (Core.Maybe Core.Text)
cluster_arn = Lens.lens (\Cluster' {arn} -> arn) (\s@Cluster' {} a -> s {arn = a} :: Cluster)

-- | The encryption configuration for the cluster.
cluster_encryptionConfig :: Lens.Lens' Cluster (Core.Maybe [EncryptionConfig])
cluster_encryptionConfig = Lens.lens (\Cluster' {encryptionConfig} -> encryptionConfig) (\s@Cluster' {} a -> s {encryptionConfig = a} :: Cluster) Core.. Lens.mapping Lens._Coerce

-- | The Kubernetes server version for the cluster.
cluster_version :: Lens.Lens' Cluster (Core.Maybe Core.Text)
cluster_version = Lens.lens (\Cluster' {version} -> version) (\s@Cluster' {} a -> s {version = a} :: Cluster)

-- | The name of the cluster.
cluster_name :: Lens.Lens' Cluster (Core.Maybe Core.Text)
cluster_name = Lens.lens (\Cluster' {name} -> name) (\s@Cluster' {} a -> s {name = a} :: Cluster)

-- | The @certificate-authority-data@ for your cluster.
cluster_certificateAuthority :: Lens.Lens' Cluster (Core.Maybe Certificate)
cluster_certificateAuthority = Lens.lens (\Cluster' {certificateAuthority} -> certificateAuthority) (\s@Cluster' {} a -> s {certificateAuthority = a} :: Cluster)

-- | The metadata that you apply to the cluster to assist with categorization
-- and organization. Each tag consists of a key and an optional value, both
-- of which you define. Cluster tags do not propagate to any other
-- resources associated with the cluster.
cluster_tags :: Lens.Lens' Cluster (Core.Maybe (Core.HashMap Core.Text Core.Text))
cluster_tags = Lens.lens (\Cluster' {tags} -> tags) (\s@Cluster' {} a -> s {tags = a} :: Cluster) Core.. Lens.mapping Lens._Coerce

-- | The endpoint for your Kubernetes API server.
cluster_endpoint :: Lens.Lens' Cluster (Core.Maybe Core.Text)
cluster_endpoint = Lens.lens (\Cluster' {endpoint} -> endpoint) (\s@Cluster' {} a -> s {endpoint = a} :: Cluster)

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request.
cluster_clientRequestToken :: Lens.Lens' Cluster (Core.Maybe Core.Text)
cluster_clientRequestToken = Lens.lens (\Cluster' {clientRequestToken} -> clientRequestToken) (\s@Cluster' {} a -> s {clientRequestToken = a} :: Cluster)

instance Core.FromJSON Cluster where
  parseJSON =
    Core.withObject
      "Cluster"
      ( \x ->
          Cluster'
            Core.<$> (x Core..:? "status")
            Core.<*> (x Core..:? "roleArn")
            Core.<*> (x Core..:? "resourcesVpcConfig")
            Core.<*> (x Core..:? "kubernetesNetworkConfig")
            Core.<*> (x Core..:? "identity")
            Core.<*> (x Core..:? "logging")
            Core.<*> (x Core..:? "createdAt")
            Core.<*> (x Core..:? "platformVersion")
            Core.<*> (x Core..:? "arn")
            Core.<*> (x Core..:? "encryptionConfig" Core..!= Core.mempty)
            Core.<*> (x Core..:? "version")
            Core.<*> (x Core..:? "name")
            Core.<*> (x Core..:? "certificateAuthority")
            Core.<*> (x Core..:? "tags" Core..!= Core.mempty)
            Core.<*> (x Core..:? "endpoint")
            Core.<*> (x Core..:? "clientRequestToken")
      )

instance Core.Hashable Cluster

instance Core.NFData Cluster
