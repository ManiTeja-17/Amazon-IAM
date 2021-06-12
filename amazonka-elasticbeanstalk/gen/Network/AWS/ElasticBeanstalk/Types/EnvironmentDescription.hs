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
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EnvironmentDescription where

import qualified Network.AWS.Core as Core
import Network.AWS.ElasticBeanstalk.Types.EnvironmentHealth
import Network.AWS.ElasticBeanstalk.Types.EnvironmentHealthStatus
import Network.AWS.ElasticBeanstalk.Types.EnvironmentLink
import Network.AWS.ElasticBeanstalk.Types.EnvironmentResourcesDescription
import Network.AWS.ElasticBeanstalk.Types.EnvironmentStatus
import Network.AWS.ElasticBeanstalk.Types.EnvironmentTier
import qualified Network.AWS.Lens as Lens

-- | Describes the properties of an environment.
--
-- /See:/ 'newEnvironmentDescription' smart constructor.
data EnvironmentDescription = EnvironmentDescription'
  { -- | Indicates if there is an in-progress environment configuration update or
    -- application version deployment that you can cancel.
    --
    -- @true:@ There is an update in progress.
    --
    -- @false:@ There are no updates currently in progress.
    abortableOperationInProgress :: Core.Maybe Core.Bool,
    -- | The name of the configuration template used to originally launch this
    -- environment.
    templateName :: Core.Maybe Core.Text,
    -- | The current operational status of the environment:
    --
    -- -   @Launching@: Environment is in the process of initial deployment.
    --
    -- -   @Updating@: Environment is in the process of updating its
    --     configuration settings or application version.
    --
    -- -   @Ready@: Environment is available to have an action performed on it,
    --     such as update or terminate.
    --
    -- -   @Terminating@: Environment is in the shut-down process.
    --
    -- -   @Terminated@: Environment is not running.
    status :: Core.Maybe EnvironmentStatus,
    -- | The creation date for this environment.
    dateCreated :: Core.Maybe Core.ISO8601,
    -- | A list of links to other environments in the same group.
    environmentLinks :: Core.Maybe [EnvironmentLink],
    -- | The name of the @SolutionStack@ deployed with this environment.
    solutionStackName :: Core.Maybe Core.Text,
    -- | The ID of this environment.
    environmentId :: Core.Maybe Core.Text,
    -- | The name of this environment.
    environmentName :: Core.Maybe Core.Text,
    -- | The ARN of the platform version.
    platformArn :: Core.Maybe Core.Text,
    -- | The application version deployed in this environment.
    versionLabel :: Core.Maybe Core.Text,
    -- | Describes the health status of the environment. AWS Elastic Beanstalk
    -- indicates the failure levels for a running environment:
    --
    -- -   @Red@: Indicates the environment is not responsive. Occurs when
    --     three or more consecutive failures occur for an environment.
    --
    -- -   @Yellow@: Indicates that something is wrong. Occurs when two
    --     consecutive failures occur for an environment.
    --
    -- -   @Green@: Indicates the environment is healthy and fully functional.
    --
    -- -   @Grey@: Default health for a new environment. The environment is not
    --     fully launched and health checks have not started or health checks
    --     are suspended during an @UpdateEnvironment@ or @RestartEnvironment@
    --     request.
    --
    -- Default: @Grey@
    health :: Core.Maybe EnvironmentHealth,
    -- | The URL to the CNAME for this environment.
    cname :: Core.Maybe Core.Text,
    -- | The description of the AWS resources used by this environment.
    resources :: Core.Maybe EnvironmentResourcesDescription,
    -- | The last modified date for this environment.
    dateUpdated :: Core.Maybe Core.ISO8601,
    -- | Describes this environment.
    description :: Core.Maybe Core.Text,
    -- | Returns the health status of the application running in your
    -- environment. For more information, see
    -- <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html Health Colors and Statuses>.
    healthStatus :: Core.Maybe EnvironmentHealthStatus,
    -- | The environment\'s Amazon Resource Name (ARN), which can be used in
    -- other API requests that require an ARN.
    environmentArn :: Core.Maybe Core.Text,
    -- | For load-balanced, autoscaling environments, the URL to the
    -- LoadBalancer. For single-instance environments, the IP address of the
    -- instance.
    endpointURL :: Core.Maybe Core.Text,
    -- | The name of the application associated with this environment.
    applicationName :: Core.Maybe Core.Text,
    -- | Describes the current tier of this environment.
    tier :: Core.Maybe EnvironmentTier,
    -- | The Amazon Resource Name (ARN) of the environment\'s operations role.
    -- For more information, see
    -- <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html Operations roles>
    -- in the /AWS Elastic Beanstalk Developer Guide/.
    operationsRole :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EnvironmentDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'abortableOperationInProgress', 'environmentDescription_abortableOperationInProgress' - Indicates if there is an in-progress environment configuration update or
-- application version deployment that you can cancel.
--
-- @true:@ There is an update in progress.
--
-- @false:@ There are no updates currently in progress.
--
-- 'templateName', 'environmentDescription_templateName' - The name of the configuration template used to originally launch this
-- environment.
--
-- 'status', 'environmentDescription_status' - The current operational status of the environment:
--
-- -   @Launching@: Environment is in the process of initial deployment.
--
-- -   @Updating@: Environment is in the process of updating its
--     configuration settings or application version.
--
-- -   @Ready@: Environment is available to have an action performed on it,
--     such as update or terminate.
--
-- -   @Terminating@: Environment is in the shut-down process.
--
-- -   @Terminated@: Environment is not running.
--
-- 'dateCreated', 'environmentDescription_dateCreated' - The creation date for this environment.
--
-- 'environmentLinks', 'environmentDescription_environmentLinks' - A list of links to other environments in the same group.
--
-- 'solutionStackName', 'environmentDescription_solutionStackName' - The name of the @SolutionStack@ deployed with this environment.
--
-- 'environmentId', 'environmentDescription_environmentId' - The ID of this environment.
--
-- 'environmentName', 'environmentDescription_environmentName' - The name of this environment.
--
-- 'platformArn', 'environmentDescription_platformArn' - The ARN of the platform version.
--
-- 'versionLabel', 'environmentDescription_versionLabel' - The application version deployed in this environment.
--
-- 'health', 'environmentDescription_health' - Describes the health status of the environment. AWS Elastic Beanstalk
-- indicates the failure levels for a running environment:
--
-- -   @Red@: Indicates the environment is not responsive. Occurs when
--     three or more consecutive failures occur for an environment.
--
-- -   @Yellow@: Indicates that something is wrong. Occurs when two
--     consecutive failures occur for an environment.
--
-- -   @Green@: Indicates the environment is healthy and fully functional.
--
-- -   @Grey@: Default health for a new environment. The environment is not
--     fully launched and health checks have not started or health checks
--     are suspended during an @UpdateEnvironment@ or @RestartEnvironment@
--     request.
--
-- Default: @Grey@
--
-- 'cname', 'environmentDescription_cname' - The URL to the CNAME for this environment.
--
-- 'resources', 'environmentDescription_resources' - The description of the AWS resources used by this environment.
--
-- 'dateUpdated', 'environmentDescription_dateUpdated' - The last modified date for this environment.
--
-- 'description', 'environmentDescription_description' - Describes this environment.
--
-- 'healthStatus', 'environmentDescription_healthStatus' - Returns the health status of the application running in your
-- environment. For more information, see
-- <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html Health Colors and Statuses>.
--
-- 'environmentArn', 'environmentDescription_environmentArn' - The environment\'s Amazon Resource Name (ARN), which can be used in
-- other API requests that require an ARN.
--
-- 'endpointURL', 'environmentDescription_endpointURL' - For load-balanced, autoscaling environments, the URL to the
-- LoadBalancer. For single-instance environments, the IP address of the
-- instance.
--
-- 'applicationName', 'environmentDescription_applicationName' - The name of the application associated with this environment.
--
-- 'tier', 'environmentDescription_tier' - Describes the current tier of this environment.
--
-- 'operationsRole', 'environmentDescription_operationsRole' - The Amazon Resource Name (ARN) of the environment\'s operations role.
-- For more information, see
-- <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html Operations roles>
-- in the /AWS Elastic Beanstalk Developer Guide/.
newEnvironmentDescription ::
  EnvironmentDescription
newEnvironmentDescription =
  EnvironmentDescription'
    { abortableOperationInProgress =
        Core.Nothing,
      templateName = Core.Nothing,
      status = Core.Nothing,
      dateCreated = Core.Nothing,
      environmentLinks = Core.Nothing,
      solutionStackName = Core.Nothing,
      environmentId = Core.Nothing,
      environmentName = Core.Nothing,
      platformArn = Core.Nothing,
      versionLabel = Core.Nothing,
      health = Core.Nothing,
      cname = Core.Nothing,
      resources = Core.Nothing,
      dateUpdated = Core.Nothing,
      description = Core.Nothing,
      healthStatus = Core.Nothing,
      environmentArn = Core.Nothing,
      endpointURL = Core.Nothing,
      applicationName = Core.Nothing,
      tier = Core.Nothing,
      operationsRole = Core.Nothing
    }

-- | Indicates if there is an in-progress environment configuration update or
-- application version deployment that you can cancel.
--
-- @true:@ There is an update in progress.
--
-- @false:@ There are no updates currently in progress.
environmentDescription_abortableOperationInProgress :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Bool)
environmentDescription_abortableOperationInProgress = Lens.lens (\EnvironmentDescription' {abortableOperationInProgress} -> abortableOperationInProgress) (\s@EnvironmentDescription' {} a -> s {abortableOperationInProgress = a} :: EnvironmentDescription)

-- | The name of the configuration template used to originally launch this
-- environment.
environmentDescription_templateName :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Text)
environmentDescription_templateName = Lens.lens (\EnvironmentDescription' {templateName} -> templateName) (\s@EnvironmentDescription' {} a -> s {templateName = a} :: EnvironmentDescription)

-- | The current operational status of the environment:
--
-- -   @Launching@: Environment is in the process of initial deployment.
--
-- -   @Updating@: Environment is in the process of updating its
--     configuration settings or application version.
--
-- -   @Ready@: Environment is available to have an action performed on it,
--     such as update or terminate.
--
-- -   @Terminating@: Environment is in the shut-down process.
--
-- -   @Terminated@: Environment is not running.
environmentDescription_status :: Lens.Lens' EnvironmentDescription (Core.Maybe EnvironmentStatus)
environmentDescription_status = Lens.lens (\EnvironmentDescription' {status} -> status) (\s@EnvironmentDescription' {} a -> s {status = a} :: EnvironmentDescription)

-- | The creation date for this environment.
environmentDescription_dateCreated :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.UTCTime)
environmentDescription_dateCreated = Lens.lens (\EnvironmentDescription' {dateCreated} -> dateCreated) (\s@EnvironmentDescription' {} a -> s {dateCreated = a} :: EnvironmentDescription) Core.. Lens.mapping Core._Time

-- | A list of links to other environments in the same group.
environmentDescription_environmentLinks :: Lens.Lens' EnvironmentDescription (Core.Maybe [EnvironmentLink])
environmentDescription_environmentLinks = Lens.lens (\EnvironmentDescription' {environmentLinks} -> environmentLinks) (\s@EnvironmentDescription' {} a -> s {environmentLinks = a} :: EnvironmentDescription) Core.. Lens.mapping Lens._Coerce

-- | The name of the @SolutionStack@ deployed with this environment.
environmentDescription_solutionStackName :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Text)
environmentDescription_solutionStackName = Lens.lens (\EnvironmentDescription' {solutionStackName} -> solutionStackName) (\s@EnvironmentDescription' {} a -> s {solutionStackName = a} :: EnvironmentDescription)

-- | The ID of this environment.
environmentDescription_environmentId :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Text)
environmentDescription_environmentId = Lens.lens (\EnvironmentDescription' {environmentId} -> environmentId) (\s@EnvironmentDescription' {} a -> s {environmentId = a} :: EnvironmentDescription)

-- | The name of this environment.
environmentDescription_environmentName :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Text)
environmentDescription_environmentName = Lens.lens (\EnvironmentDescription' {environmentName} -> environmentName) (\s@EnvironmentDescription' {} a -> s {environmentName = a} :: EnvironmentDescription)

-- | The ARN of the platform version.
environmentDescription_platformArn :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Text)
environmentDescription_platformArn = Lens.lens (\EnvironmentDescription' {platformArn} -> platformArn) (\s@EnvironmentDescription' {} a -> s {platformArn = a} :: EnvironmentDescription)

-- | The application version deployed in this environment.
environmentDescription_versionLabel :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Text)
environmentDescription_versionLabel = Lens.lens (\EnvironmentDescription' {versionLabel} -> versionLabel) (\s@EnvironmentDescription' {} a -> s {versionLabel = a} :: EnvironmentDescription)

-- | Describes the health status of the environment. AWS Elastic Beanstalk
-- indicates the failure levels for a running environment:
--
-- -   @Red@: Indicates the environment is not responsive. Occurs when
--     three or more consecutive failures occur for an environment.
--
-- -   @Yellow@: Indicates that something is wrong. Occurs when two
--     consecutive failures occur for an environment.
--
-- -   @Green@: Indicates the environment is healthy and fully functional.
--
-- -   @Grey@: Default health for a new environment. The environment is not
--     fully launched and health checks have not started or health checks
--     are suspended during an @UpdateEnvironment@ or @RestartEnvironment@
--     request.
--
-- Default: @Grey@
environmentDescription_health :: Lens.Lens' EnvironmentDescription (Core.Maybe EnvironmentHealth)
environmentDescription_health = Lens.lens (\EnvironmentDescription' {health} -> health) (\s@EnvironmentDescription' {} a -> s {health = a} :: EnvironmentDescription)

-- | The URL to the CNAME for this environment.
environmentDescription_cname :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Text)
environmentDescription_cname = Lens.lens (\EnvironmentDescription' {cname} -> cname) (\s@EnvironmentDescription' {} a -> s {cname = a} :: EnvironmentDescription)

-- | The description of the AWS resources used by this environment.
environmentDescription_resources :: Lens.Lens' EnvironmentDescription (Core.Maybe EnvironmentResourcesDescription)
environmentDescription_resources = Lens.lens (\EnvironmentDescription' {resources} -> resources) (\s@EnvironmentDescription' {} a -> s {resources = a} :: EnvironmentDescription)

-- | The last modified date for this environment.
environmentDescription_dateUpdated :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.UTCTime)
environmentDescription_dateUpdated = Lens.lens (\EnvironmentDescription' {dateUpdated} -> dateUpdated) (\s@EnvironmentDescription' {} a -> s {dateUpdated = a} :: EnvironmentDescription) Core.. Lens.mapping Core._Time

-- | Describes this environment.
environmentDescription_description :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Text)
environmentDescription_description = Lens.lens (\EnvironmentDescription' {description} -> description) (\s@EnvironmentDescription' {} a -> s {description = a} :: EnvironmentDescription)

-- | Returns the health status of the application running in your
-- environment. For more information, see
-- <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html Health Colors and Statuses>.
environmentDescription_healthStatus :: Lens.Lens' EnvironmentDescription (Core.Maybe EnvironmentHealthStatus)
environmentDescription_healthStatus = Lens.lens (\EnvironmentDescription' {healthStatus} -> healthStatus) (\s@EnvironmentDescription' {} a -> s {healthStatus = a} :: EnvironmentDescription)

-- | The environment\'s Amazon Resource Name (ARN), which can be used in
-- other API requests that require an ARN.
environmentDescription_environmentArn :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Text)
environmentDescription_environmentArn = Lens.lens (\EnvironmentDescription' {environmentArn} -> environmentArn) (\s@EnvironmentDescription' {} a -> s {environmentArn = a} :: EnvironmentDescription)

-- | For load-balanced, autoscaling environments, the URL to the
-- LoadBalancer. For single-instance environments, the IP address of the
-- instance.
environmentDescription_endpointURL :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Text)
environmentDescription_endpointURL = Lens.lens (\EnvironmentDescription' {endpointURL} -> endpointURL) (\s@EnvironmentDescription' {} a -> s {endpointURL = a} :: EnvironmentDescription)

-- | The name of the application associated with this environment.
environmentDescription_applicationName :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Text)
environmentDescription_applicationName = Lens.lens (\EnvironmentDescription' {applicationName} -> applicationName) (\s@EnvironmentDescription' {} a -> s {applicationName = a} :: EnvironmentDescription)

-- | Describes the current tier of this environment.
environmentDescription_tier :: Lens.Lens' EnvironmentDescription (Core.Maybe EnvironmentTier)
environmentDescription_tier = Lens.lens (\EnvironmentDescription' {tier} -> tier) (\s@EnvironmentDescription' {} a -> s {tier = a} :: EnvironmentDescription)

-- | The Amazon Resource Name (ARN) of the environment\'s operations role.
-- For more information, see
-- <https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html Operations roles>
-- in the /AWS Elastic Beanstalk Developer Guide/.
environmentDescription_operationsRole :: Lens.Lens' EnvironmentDescription (Core.Maybe Core.Text)
environmentDescription_operationsRole = Lens.lens (\EnvironmentDescription' {operationsRole} -> operationsRole) (\s@EnvironmentDescription' {} a -> s {operationsRole = a} :: EnvironmentDescription)

instance Core.FromXML EnvironmentDescription where
  parseXML x =
    EnvironmentDescription'
      Core.<$> (x Core..@? "AbortableOperationInProgress")
      Core.<*> (x Core..@? "TemplateName")
      Core.<*> (x Core..@? "Status")
      Core.<*> (x Core..@? "DateCreated")
      Core.<*> ( x Core..@? "EnvironmentLinks" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "member")
               )
      Core.<*> (x Core..@? "SolutionStackName")
      Core.<*> (x Core..@? "EnvironmentId")
      Core.<*> (x Core..@? "EnvironmentName")
      Core.<*> (x Core..@? "PlatformArn")
      Core.<*> (x Core..@? "VersionLabel")
      Core.<*> (x Core..@? "Health")
      Core.<*> (x Core..@? "CNAME")
      Core.<*> (x Core..@? "Resources")
      Core.<*> (x Core..@? "DateUpdated")
      Core.<*> (x Core..@? "Description")
      Core.<*> (x Core..@? "HealthStatus")
      Core.<*> (x Core..@? "EnvironmentArn")
      Core.<*> (x Core..@? "EndpointURL")
      Core.<*> (x Core..@? "ApplicationName")
      Core.<*> (x Core..@? "Tier")
      Core.<*> (x Core..@? "OperationsRole")

instance Core.Hashable EnvironmentDescription

instance Core.NFData EnvironmentDescription
