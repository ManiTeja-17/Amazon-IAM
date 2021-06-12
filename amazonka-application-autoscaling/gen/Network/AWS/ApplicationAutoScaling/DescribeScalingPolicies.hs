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
-- Module      : Network.AWS.ApplicationAutoScaling.DescribeScalingPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the Application Auto Scaling scaling policies for the
-- specified service namespace.
--
-- You can filter the results using @ResourceId@, @ScalableDimension@, and
-- @PolicyNames@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html Target tracking scaling policies>
-- and
-- <https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html Step scaling policies>
-- in the /Application Auto Scaling User Guide/.
--
-- This operation returns paginated results.
module Network.AWS.ApplicationAutoScaling.DescribeScalingPolicies
  ( -- * Creating a Request
    DescribeScalingPolicies (..),
    newDescribeScalingPolicies,

    -- * Request Lenses
    describeScalingPolicies_resourceId,
    describeScalingPolicies_nextToken,
    describeScalingPolicies_maxResults,
    describeScalingPolicies_scalableDimension,
    describeScalingPolicies_policyNames,
    describeScalingPolicies_serviceNamespace,

    -- * Destructuring the Response
    DescribeScalingPoliciesResponse (..),
    newDescribeScalingPoliciesResponse,

    -- * Response Lenses
    describeScalingPoliciesResponse_nextToken,
    describeScalingPoliciesResponse_scalingPolicies,
    describeScalingPoliciesResponse_httpStatus,
  )
where

import Network.AWS.ApplicationAutoScaling.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeScalingPolicies' smart constructor.
data DescribeScalingPolicies = DescribeScalingPolicies'
  { -- | The identifier of the resource associated with the scaling policy. This
    -- string consists of the resource type and unique identifier.
    --
    -- -   ECS service - The resource type is @service@ and the unique
    --     identifier is the cluster name and service name. Example:
    --     @service\/default\/sample-webapp@.
    --
    -- -   Spot Fleet request - The resource type is @spot-fleet-request@ and
    --     the unique identifier is the Spot Fleet request ID. Example:
    --     @spot-fleet-request\/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@.
    --
    -- -   EMR cluster - The resource type is @instancegroup@ and the unique
    --     identifier is the cluster ID and instance group ID. Example:
    --     @instancegroup\/j-2EEZNYKUA1NTV\/ig-1791Y4E1L8YI0@.
    --
    -- -   AppStream 2.0 fleet - The resource type is @fleet@ and the unique
    --     identifier is the fleet name. Example: @fleet\/sample-fleet@.
    --
    -- -   DynamoDB table - The resource type is @table@ and the unique
    --     identifier is the table name. Example: @table\/my-table@.
    --
    -- -   DynamoDB global secondary index - The resource type is @index@ and
    --     the unique identifier is the index name. Example:
    --     @table\/my-table\/index\/my-table-index@.
    --
    -- -   Aurora DB cluster - The resource type is @cluster@ and the unique
    --     identifier is the cluster name. Example: @cluster:my-db-cluster@.
    --
    -- -   Amazon SageMaker endpoint variant - The resource type is @variant@
    --     and the unique identifier is the resource ID. Example:
    --     @endpoint\/my-end-point\/variant\/KMeansClustering@.
    --
    -- -   Custom resources are not supported with a resource type. This
    --     parameter must specify the @OutputValue@ from the CloudFormation
    --     template stack used to access the resources. The unique identifier
    --     is defined by the service provider. More information is available in
    --     our
    --     <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository>.
    --
    -- -   Amazon Comprehend document classification endpoint - The resource
    --     type and unique identifier are specified using the endpoint ARN.
    --     Example:
    --     @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint\/EXAMPLE@.
    --
    -- -   Amazon Comprehend entity recognizer endpoint - The resource type and
    --     unique identifier are specified using the endpoint ARN. Example:
    --     @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint\/EXAMPLE@.
    --
    -- -   Lambda provisioned concurrency - The resource type is @function@ and
    --     the unique identifier is the function name with a function version
    --     or alias name suffix that is not @$LATEST@. Example:
    --     @function:my-function:prod@ or @function:my-function:1@.
    --
    -- -   Amazon Keyspaces table - The resource type is @table@ and the unique
    --     identifier is the table name. Example:
    --     @keyspace\/mykeyspace\/table\/mytable@.
    --
    -- -   Amazon MSK cluster - The resource type and unique identifier are
    --     specified using the cluster ARN. Example:
    --     @arn:aws:kafka:us-east-1:123456789012:cluster\/demo-cluster-1\/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@.
    resourceId :: Core.Maybe Core.Text,
    -- | The token for the next set of results.
    nextToken :: Core.Maybe Core.Text,
    -- | The maximum number of scalable targets. This value can be between 1 and
    -- 50. The default value is 50.
    --
    -- If this parameter is used, the operation returns up to @MaxResults@
    -- results at a time, along with a @NextToken@ value. To get the next set
    -- of results, include the @NextToken@ value in a subsequent call. If this
    -- parameter is not used, the operation returns up to 50 results and a
    -- @NextToken@ value, if applicable.
    maxResults :: Core.Maybe Core.Int,
    -- | The scalable dimension. This string consists of the service namespace,
    -- resource type, and scaling property. If you specify a scalable
    -- dimension, you must also specify a resource ID.
    --
    -- -   @ecs:service:DesiredCount@ - The desired task count of an ECS
    --     service.
    --
    -- -   @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a
    --     Spot Fleet request.
    --
    -- -   @elasticmapreduce:instancegroup:InstanceCount@ - The instance count
    --     of an EMR Instance Group.
    --
    -- -   @appstream:fleet:DesiredCapacity@ - The desired capacity of an
    --     AppStream 2.0 fleet.
    --
    -- -   @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity
    --     for a DynamoDB table.
    --
    -- -   @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity
    --     for a DynamoDB table.
    --
    -- -   @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity
    --     for a DynamoDB global secondary index.
    --
    -- -   @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity
    --     for a DynamoDB global secondary index.
    --
    -- -   @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an
    --     Aurora DB cluster. Available for Aurora MySQL-compatible edition and
    --     Aurora PostgreSQL-compatible edition.
    --
    -- -   @sagemaker:variant:DesiredInstanceCount@ - The number of EC2
    --     instances for an Amazon SageMaker model endpoint variant.
    --
    -- -   @custom-resource:ResourceType:Property@ - The scalable dimension for
    --     a custom resource provided by your own application or service.
    --
    -- -   @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ -
    --     The number of inference units for an Amazon Comprehend document
    --     classification endpoint.
    --
    -- -   @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The
    --     number of inference units for an Amazon Comprehend entity recognizer
    --     endpoint.
    --
    -- -   @lambda:function:ProvisionedConcurrency@ - The provisioned
    --     concurrency for a Lambda function.
    --
    -- -   @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity
    --     for an Amazon Keyspaces table.
    --
    -- -   @cassandra:table:WriteCapacityUnits@ - The provisioned write
    --     capacity for an Amazon Keyspaces table.
    --
    -- -   @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in
    --     GiB) for brokers in an Amazon MSK cluster.
    scalableDimension :: Core.Maybe ScalableDimension,
    -- | The names of the scaling policies to describe.
    policyNames :: Core.Maybe [Core.Text],
    -- | The namespace of the AWS service that provides the resource. For a
    -- resource provided by your own application or service, use
    -- @custom-resource@ instead.
    serviceNamespace :: ServiceNamespace
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeScalingPolicies' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceId', 'describeScalingPolicies_resourceId' - The identifier of the resource associated with the scaling policy. This
-- string consists of the resource type and unique identifier.
--
-- -   ECS service - The resource type is @service@ and the unique
--     identifier is the cluster name and service name. Example:
--     @service\/default\/sample-webapp@.
--
-- -   Spot Fleet request - The resource type is @spot-fleet-request@ and
--     the unique identifier is the Spot Fleet request ID. Example:
--     @spot-fleet-request\/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@.
--
-- -   EMR cluster - The resource type is @instancegroup@ and the unique
--     identifier is the cluster ID and instance group ID. Example:
--     @instancegroup\/j-2EEZNYKUA1NTV\/ig-1791Y4E1L8YI0@.
--
-- -   AppStream 2.0 fleet - The resource type is @fleet@ and the unique
--     identifier is the fleet name. Example: @fleet\/sample-fleet@.
--
-- -   DynamoDB table - The resource type is @table@ and the unique
--     identifier is the table name. Example: @table\/my-table@.
--
-- -   DynamoDB global secondary index - The resource type is @index@ and
--     the unique identifier is the index name. Example:
--     @table\/my-table\/index\/my-table-index@.
--
-- -   Aurora DB cluster - The resource type is @cluster@ and the unique
--     identifier is the cluster name. Example: @cluster:my-db-cluster@.
--
-- -   Amazon SageMaker endpoint variant - The resource type is @variant@
--     and the unique identifier is the resource ID. Example:
--     @endpoint\/my-end-point\/variant\/KMeansClustering@.
--
-- -   Custom resources are not supported with a resource type. This
--     parameter must specify the @OutputValue@ from the CloudFormation
--     template stack used to access the resources. The unique identifier
--     is defined by the service provider. More information is available in
--     our
--     <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository>.
--
-- -   Amazon Comprehend document classification endpoint - The resource
--     type and unique identifier are specified using the endpoint ARN.
--     Example:
--     @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint\/EXAMPLE@.
--
-- -   Amazon Comprehend entity recognizer endpoint - The resource type and
--     unique identifier are specified using the endpoint ARN. Example:
--     @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint\/EXAMPLE@.
--
-- -   Lambda provisioned concurrency - The resource type is @function@ and
--     the unique identifier is the function name with a function version
--     or alias name suffix that is not @$LATEST@. Example:
--     @function:my-function:prod@ or @function:my-function:1@.
--
-- -   Amazon Keyspaces table - The resource type is @table@ and the unique
--     identifier is the table name. Example:
--     @keyspace\/mykeyspace\/table\/mytable@.
--
-- -   Amazon MSK cluster - The resource type and unique identifier are
--     specified using the cluster ARN. Example:
--     @arn:aws:kafka:us-east-1:123456789012:cluster\/demo-cluster-1\/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@.
--
-- 'nextToken', 'describeScalingPolicies_nextToken' - The token for the next set of results.
--
-- 'maxResults', 'describeScalingPolicies_maxResults' - The maximum number of scalable targets. This value can be between 1 and
-- 50. The default value is 50.
--
-- If this parameter is used, the operation returns up to @MaxResults@
-- results at a time, along with a @NextToken@ value. To get the next set
-- of results, include the @NextToken@ value in a subsequent call. If this
-- parameter is not used, the operation returns up to 50 results and a
-- @NextToken@ value, if applicable.
--
-- 'scalableDimension', 'describeScalingPolicies_scalableDimension' - The scalable dimension. This string consists of the service namespace,
-- resource type, and scaling property. If you specify a scalable
-- dimension, you must also specify a resource ID.
--
-- -   @ecs:service:DesiredCount@ - The desired task count of an ECS
--     service.
--
-- -   @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a
--     Spot Fleet request.
--
-- -   @elasticmapreduce:instancegroup:InstanceCount@ - The instance count
--     of an EMR Instance Group.
--
-- -   @appstream:fleet:DesiredCapacity@ - The desired capacity of an
--     AppStream 2.0 fleet.
--
-- -   @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity
--     for a DynamoDB table.
--
-- -   @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity
--     for a DynamoDB table.
--
-- -   @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity
--     for a DynamoDB global secondary index.
--
-- -   @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity
--     for a DynamoDB global secondary index.
--
-- -   @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an
--     Aurora DB cluster. Available for Aurora MySQL-compatible edition and
--     Aurora PostgreSQL-compatible edition.
--
-- -   @sagemaker:variant:DesiredInstanceCount@ - The number of EC2
--     instances for an Amazon SageMaker model endpoint variant.
--
-- -   @custom-resource:ResourceType:Property@ - The scalable dimension for
--     a custom resource provided by your own application or service.
--
-- -   @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ -
--     The number of inference units for an Amazon Comprehend document
--     classification endpoint.
--
-- -   @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The
--     number of inference units for an Amazon Comprehend entity recognizer
--     endpoint.
--
-- -   @lambda:function:ProvisionedConcurrency@ - The provisioned
--     concurrency for a Lambda function.
--
-- -   @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity
--     for an Amazon Keyspaces table.
--
-- -   @cassandra:table:WriteCapacityUnits@ - The provisioned write
--     capacity for an Amazon Keyspaces table.
--
-- -   @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in
--     GiB) for brokers in an Amazon MSK cluster.
--
-- 'policyNames', 'describeScalingPolicies_policyNames' - The names of the scaling policies to describe.
--
-- 'serviceNamespace', 'describeScalingPolicies_serviceNamespace' - The namespace of the AWS service that provides the resource. For a
-- resource provided by your own application or service, use
-- @custom-resource@ instead.
newDescribeScalingPolicies ::
  -- | 'serviceNamespace'
  ServiceNamespace ->
  DescribeScalingPolicies
newDescribeScalingPolicies pServiceNamespace_ =
  DescribeScalingPolicies'
    { resourceId = Core.Nothing,
      nextToken = Core.Nothing,
      maxResults = Core.Nothing,
      scalableDimension = Core.Nothing,
      policyNames = Core.Nothing,
      serviceNamespace = pServiceNamespace_
    }

-- | The identifier of the resource associated with the scaling policy. This
-- string consists of the resource type and unique identifier.
--
-- -   ECS service - The resource type is @service@ and the unique
--     identifier is the cluster name and service name. Example:
--     @service\/default\/sample-webapp@.
--
-- -   Spot Fleet request - The resource type is @spot-fleet-request@ and
--     the unique identifier is the Spot Fleet request ID. Example:
--     @spot-fleet-request\/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE@.
--
-- -   EMR cluster - The resource type is @instancegroup@ and the unique
--     identifier is the cluster ID and instance group ID. Example:
--     @instancegroup\/j-2EEZNYKUA1NTV\/ig-1791Y4E1L8YI0@.
--
-- -   AppStream 2.0 fleet - The resource type is @fleet@ and the unique
--     identifier is the fleet name. Example: @fleet\/sample-fleet@.
--
-- -   DynamoDB table - The resource type is @table@ and the unique
--     identifier is the table name. Example: @table\/my-table@.
--
-- -   DynamoDB global secondary index - The resource type is @index@ and
--     the unique identifier is the index name. Example:
--     @table\/my-table\/index\/my-table-index@.
--
-- -   Aurora DB cluster - The resource type is @cluster@ and the unique
--     identifier is the cluster name. Example: @cluster:my-db-cluster@.
--
-- -   Amazon SageMaker endpoint variant - The resource type is @variant@
--     and the unique identifier is the resource ID. Example:
--     @endpoint\/my-end-point\/variant\/KMeansClustering@.
--
-- -   Custom resources are not supported with a resource type. This
--     parameter must specify the @OutputValue@ from the CloudFormation
--     template stack used to access the resources. The unique identifier
--     is defined by the service provider. More information is available in
--     our
--     <https://github.com/aws/aws-auto-scaling-custom-resource GitHub repository>.
--
-- -   Amazon Comprehend document classification endpoint - The resource
--     type and unique identifier are specified using the endpoint ARN.
--     Example:
--     @arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint\/EXAMPLE@.
--
-- -   Amazon Comprehend entity recognizer endpoint - The resource type and
--     unique identifier are specified using the endpoint ARN. Example:
--     @arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint\/EXAMPLE@.
--
-- -   Lambda provisioned concurrency - The resource type is @function@ and
--     the unique identifier is the function name with a function version
--     or alias name suffix that is not @$LATEST@. Example:
--     @function:my-function:prod@ or @function:my-function:1@.
--
-- -   Amazon Keyspaces table - The resource type is @table@ and the unique
--     identifier is the table name. Example:
--     @keyspace\/mykeyspace\/table\/mytable@.
--
-- -   Amazon MSK cluster - The resource type and unique identifier are
--     specified using the cluster ARN. Example:
--     @arn:aws:kafka:us-east-1:123456789012:cluster\/demo-cluster-1\/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5@.
describeScalingPolicies_resourceId :: Lens.Lens' DescribeScalingPolicies (Core.Maybe Core.Text)
describeScalingPolicies_resourceId = Lens.lens (\DescribeScalingPolicies' {resourceId} -> resourceId) (\s@DescribeScalingPolicies' {} a -> s {resourceId = a} :: DescribeScalingPolicies)

-- | The token for the next set of results.
describeScalingPolicies_nextToken :: Lens.Lens' DescribeScalingPolicies (Core.Maybe Core.Text)
describeScalingPolicies_nextToken = Lens.lens (\DescribeScalingPolicies' {nextToken} -> nextToken) (\s@DescribeScalingPolicies' {} a -> s {nextToken = a} :: DescribeScalingPolicies)

-- | The maximum number of scalable targets. This value can be between 1 and
-- 50. The default value is 50.
--
-- If this parameter is used, the operation returns up to @MaxResults@
-- results at a time, along with a @NextToken@ value. To get the next set
-- of results, include the @NextToken@ value in a subsequent call. If this
-- parameter is not used, the operation returns up to 50 results and a
-- @NextToken@ value, if applicable.
describeScalingPolicies_maxResults :: Lens.Lens' DescribeScalingPolicies (Core.Maybe Core.Int)
describeScalingPolicies_maxResults = Lens.lens (\DescribeScalingPolicies' {maxResults} -> maxResults) (\s@DescribeScalingPolicies' {} a -> s {maxResults = a} :: DescribeScalingPolicies)

-- | The scalable dimension. This string consists of the service namespace,
-- resource type, and scaling property. If you specify a scalable
-- dimension, you must also specify a resource ID.
--
-- -   @ecs:service:DesiredCount@ - The desired task count of an ECS
--     service.
--
-- -   @ec2:spot-fleet-request:TargetCapacity@ - The target capacity of a
--     Spot Fleet request.
--
-- -   @elasticmapreduce:instancegroup:InstanceCount@ - The instance count
--     of an EMR Instance Group.
--
-- -   @appstream:fleet:DesiredCapacity@ - The desired capacity of an
--     AppStream 2.0 fleet.
--
-- -   @dynamodb:table:ReadCapacityUnits@ - The provisioned read capacity
--     for a DynamoDB table.
--
-- -   @dynamodb:table:WriteCapacityUnits@ - The provisioned write capacity
--     for a DynamoDB table.
--
-- -   @dynamodb:index:ReadCapacityUnits@ - The provisioned read capacity
--     for a DynamoDB global secondary index.
--
-- -   @dynamodb:index:WriteCapacityUnits@ - The provisioned write capacity
--     for a DynamoDB global secondary index.
--
-- -   @rds:cluster:ReadReplicaCount@ - The count of Aurora Replicas in an
--     Aurora DB cluster. Available for Aurora MySQL-compatible edition and
--     Aurora PostgreSQL-compatible edition.
--
-- -   @sagemaker:variant:DesiredInstanceCount@ - The number of EC2
--     instances for an Amazon SageMaker model endpoint variant.
--
-- -   @custom-resource:ResourceType:Property@ - The scalable dimension for
--     a custom resource provided by your own application or service.
--
-- -   @comprehend:document-classifier-endpoint:DesiredInferenceUnits@ -
--     The number of inference units for an Amazon Comprehend document
--     classification endpoint.
--
-- -   @comprehend:entity-recognizer-endpoint:DesiredInferenceUnits@ - The
--     number of inference units for an Amazon Comprehend entity recognizer
--     endpoint.
--
-- -   @lambda:function:ProvisionedConcurrency@ - The provisioned
--     concurrency for a Lambda function.
--
-- -   @cassandra:table:ReadCapacityUnits@ - The provisioned read capacity
--     for an Amazon Keyspaces table.
--
-- -   @cassandra:table:WriteCapacityUnits@ - The provisioned write
--     capacity for an Amazon Keyspaces table.
--
-- -   @kafka:broker-storage:VolumeSize@ - The provisioned volume size (in
--     GiB) for brokers in an Amazon MSK cluster.
describeScalingPolicies_scalableDimension :: Lens.Lens' DescribeScalingPolicies (Core.Maybe ScalableDimension)
describeScalingPolicies_scalableDimension = Lens.lens (\DescribeScalingPolicies' {scalableDimension} -> scalableDimension) (\s@DescribeScalingPolicies' {} a -> s {scalableDimension = a} :: DescribeScalingPolicies)

-- | The names of the scaling policies to describe.
describeScalingPolicies_policyNames :: Lens.Lens' DescribeScalingPolicies (Core.Maybe [Core.Text])
describeScalingPolicies_policyNames = Lens.lens (\DescribeScalingPolicies' {policyNames} -> policyNames) (\s@DescribeScalingPolicies' {} a -> s {policyNames = a} :: DescribeScalingPolicies) Core.. Lens.mapping Lens._Coerce

-- | The namespace of the AWS service that provides the resource. For a
-- resource provided by your own application or service, use
-- @custom-resource@ instead.
describeScalingPolicies_serviceNamespace :: Lens.Lens' DescribeScalingPolicies ServiceNamespace
describeScalingPolicies_serviceNamespace = Lens.lens (\DescribeScalingPolicies' {serviceNamespace} -> serviceNamespace) (\s@DescribeScalingPolicies' {} a -> s {serviceNamespace = a} :: DescribeScalingPolicies)

instance Core.AWSPager DescribeScalingPolicies where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeScalingPoliciesResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeScalingPoliciesResponse_scalingPolicies
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeScalingPolicies_nextToken
          Lens..~ rs
          Lens.^? describeScalingPoliciesResponse_nextToken
            Core.. Lens._Just

instance Core.AWSRequest DescribeScalingPolicies where
  type
    AWSResponse DescribeScalingPolicies =
      DescribeScalingPoliciesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeScalingPoliciesResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> (x Core..?> "ScalingPolicies" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeScalingPolicies

instance Core.NFData DescribeScalingPolicies

instance Core.ToHeaders DescribeScalingPolicies where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AnyScaleFrontendService.DescribeScalingPolicies" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeScalingPolicies where
  toJSON DescribeScalingPolicies' {..} =
    Core.object
      ( Core.catMaybes
          [ ("ResourceId" Core..=) Core.<$> resourceId,
            ("NextToken" Core..=) Core.<$> nextToken,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("ScalableDimension" Core..=)
              Core.<$> scalableDimension,
            ("PolicyNames" Core..=) Core.<$> policyNames,
            Core.Just
              ("ServiceNamespace" Core..= serviceNamespace)
          ]
      )

instance Core.ToPath DescribeScalingPolicies where
  toPath = Core.const "/"

instance Core.ToQuery DescribeScalingPolicies where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeScalingPoliciesResponse' smart constructor.
data DescribeScalingPoliciesResponse = DescribeScalingPoliciesResponse'
  { -- | The token required to get the next set of results. This value is @null@
    -- if there are no more results to return.
    nextToken :: Core.Maybe Core.Text,
    -- | Information about the scaling policies.
    scalingPolicies :: Core.Maybe [ScalingPolicy],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeScalingPoliciesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeScalingPoliciesResponse_nextToken' - The token required to get the next set of results. This value is @null@
-- if there are no more results to return.
--
-- 'scalingPolicies', 'describeScalingPoliciesResponse_scalingPolicies' - Information about the scaling policies.
--
-- 'httpStatus', 'describeScalingPoliciesResponse_httpStatus' - The response's http status code.
newDescribeScalingPoliciesResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeScalingPoliciesResponse
newDescribeScalingPoliciesResponse pHttpStatus_ =
  DescribeScalingPoliciesResponse'
    { nextToken =
        Core.Nothing,
      scalingPolicies = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token required to get the next set of results. This value is @null@
-- if there are no more results to return.
describeScalingPoliciesResponse_nextToken :: Lens.Lens' DescribeScalingPoliciesResponse (Core.Maybe Core.Text)
describeScalingPoliciesResponse_nextToken = Lens.lens (\DescribeScalingPoliciesResponse' {nextToken} -> nextToken) (\s@DescribeScalingPoliciesResponse' {} a -> s {nextToken = a} :: DescribeScalingPoliciesResponse)

-- | Information about the scaling policies.
describeScalingPoliciesResponse_scalingPolicies :: Lens.Lens' DescribeScalingPoliciesResponse (Core.Maybe [ScalingPolicy])
describeScalingPoliciesResponse_scalingPolicies = Lens.lens (\DescribeScalingPoliciesResponse' {scalingPolicies} -> scalingPolicies) (\s@DescribeScalingPoliciesResponse' {} a -> s {scalingPolicies = a} :: DescribeScalingPoliciesResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeScalingPoliciesResponse_httpStatus :: Lens.Lens' DescribeScalingPoliciesResponse Core.Int
describeScalingPoliciesResponse_httpStatus = Lens.lens (\DescribeScalingPoliciesResponse' {httpStatus} -> httpStatus) (\s@DescribeScalingPoliciesResponse' {} a -> s {httpStatus = a} :: DescribeScalingPoliciesResponse)

instance Core.NFData DescribeScalingPoliciesResponse
