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
-- Module      : Network.AWS.ApplicationAutoScaling.DescribeScalableTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the scalable targets in the specified namespace.
--
-- You can filter the results using @ResourceIds@ and @ScalableDimension@.
--
-- This operation returns paginated results.
module Network.AWS.ApplicationAutoScaling.DescribeScalableTargets
  ( -- * Creating a Request
    DescribeScalableTargets (..),
    newDescribeScalableTargets,

    -- * Request Lenses
    describeScalableTargets_nextToken,
    describeScalableTargets_maxResults,
    describeScalableTargets_scalableDimension,
    describeScalableTargets_resourceIds,
    describeScalableTargets_serviceNamespace,

    -- * Destructuring the Response
    DescribeScalableTargetsResponse (..),
    newDescribeScalableTargetsResponse,

    -- * Response Lenses
    describeScalableTargetsResponse_nextToken,
    describeScalableTargetsResponse_scalableTargets,
    describeScalableTargetsResponse_httpStatus,
  )
where

import Network.AWS.ApplicationAutoScaling.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeScalableTargets' smart constructor.
data DescribeScalableTargets = DescribeScalableTargets'
  { -- | The token for the next set of results.
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
    -- | The scalable dimension associated with the scalable target. This string
    -- consists of the service namespace, resource type, and scaling property.
    -- If you specify a scalable dimension, you must also specify a resource
    -- ID.
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
    -- | The identifier of the resource associated with the scalable target. This
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
    resourceIds :: Core.Maybe [Core.Text],
    -- | The namespace of the AWS service that provides the resource. For a
    -- resource provided by your own application or service, use
    -- @custom-resource@ instead.
    serviceNamespace :: ServiceNamespace
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeScalableTargets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeScalableTargets_nextToken' - The token for the next set of results.
--
-- 'maxResults', 'describeScalableTargets_maxResults' - The maximum number of scalable targets. This value can be between 1 and
-- 50. The default value is 50.
--
-- If this parameter is used, the operation returns up to @MaxResults@
-- results at a time, along with a @NextToken@ value. To get the next set
-- of results, include the @NextToken@ value in a subsequent call. If this
-- parameter is not used, the operation returns up to 50 results and a
-- @NextToken@ value, if applicable.
--
-- 'scalableDimension', 'describeScalableTargets_scalableDimension' - The scalable dimension associated with the scalable target. This string
-- consists of the service namespace, resource type, and scaling property.
-- If you specify a scalable dimension, you must also specify a resource
-- ID.
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
-- 'resourceIds', 'describeScalableTargets_resourceIds' - The identifier of the resource associated with the scalable target. This
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
-- 'serviceNamespace', 'describeScalableTargets_serviceNamespace' - The namespace of the AWS service that provides the resource. For a
-- resource provided by your own application or service, use
-- @custom-resource@ instead.
newDescribeScalableTargets ::
  -- | 'serviceNamespace'
  ServiceNamespace ->
  DescribeScalableTargets
newDescribeScalableTargets pServiceNamespace_ =
  DescribeScalableTargets'
    { nextToken = Core.Nothing,
      maxResults = Core.Nothing,
      scalableDimension = Core.Nothing,
      resourceIds = Core.Nothing,
      serviceNamespace = pServiceNamespace_
    }

-- | The token for the next set of results.
describeScalableTargets_nextToken :: Lens.Lens' DescribeScalableTargets (Core.Maybe Core.Text)
describeScalableTargets_nextToken = Lens.lens (\DescribeScalableTargets' {nextToken} -> nextToken) (\s@DescribeScalableTargets' {} a -> s {nextToken = a} :: DescribeScalableTargets)

-- | The maximum number of scalable targets. This value can be between 1 and
-- 50. The default value is 50.
--
-- If this parameter is used, the operation returns up to @MaxResults@
-- results at a time, along with a @NextToken@ value. To get the next set
-- of results, include the @NextToken@ value in a subsequent call. If this
-- parameter is not used, the operation returns up to 50 results and a
-- @NextToken@ value, if applicable.
describeScalableTargets_maxResults :: Lens.Lens' DescribeScalableTargets (Core.Maybe Core.Int)
describeScalableTargets_maxResults = Lens.lens (\DescribeScalableTargets' {maxResults} -> maxResults) (\s@DescribeScalableTargets' {} a -> s {maxResults = a} :: DescribeScalableTargets)

-- | The scalable dimension associated with the scalable target. This string
-- consists of the service namespace, resource type, and scaling property.
-- If you specify a scalable dimension, you must also specify a resource
-- ID.
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
describeScalableTargets_scalableDimension :: Lens.Lens' DescribeScalableTargets (Core.Maybe ScalableDimension)
describeScalableTargets_scalableDimension = Lens.lens (\DescribeScalableTargets' {scalableDimension} -> scalableDimension) (\s@DescribeScalableTargets' {} a -> s {scalableDimension = a} :: DescribeScalableTargets)

-- | The identifier of the resource associated with the scalable target. This
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
describeScalableTargets_resourceIds :: Lens.Lens' DescribeScalableTargets (Core.Maybe [Core.Text])
describeScalableTargets_resourceIds = Lens.lens (\DescribeScalableTargets' {resourceIds} -> resourceIds) (\s@DescribeScalableTargets' {} a -> s {resourceIds = a} :: DescribeScalableTargets) Core.. Lens.mapping Lens._Coerce

-- | The namespace of the AWS service that provides the resource. For a
-- resource provided by your own application or service, use
-- @custom-resource@ instead.
describeScalableTargets_serviceNamespace :: Lens.Lens' DescribeScalableTargets ServiceNamespace
describeScalableTargets_serviceNamespace = Lens.lens (\DescribeScalableTargets' {serviceNamespace} -> serviceNamespace) (\s@DescribeScalableTargets' {} a -> s {serviceNamespace = a} :: DescribeScalableTargets)

instance Core.AWSPager DescribeScalableTargets where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeScalableTargetsResponse_nextToken
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.stop
        ( rs
            Lens.^? describeScalableTargetsResponse_scalableTargets
              Core.. Lens._Just
        ) =
      Core.Nothing
    | Core.otherwise =
      Core.Just Core.$
        rq
          Lens.& describeScalableTargets_nextToken
          Lens..~ rs
          Lens.^? describeScalableTargetsResponse_nextToken
            Core.. Lens._Just

instance Core.AWSRequest DescribeScalableTargets where
  type
    AWSResponse DescribeScalableTargets =
      DescribeScalableTargetsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeScalableTargetsResponse'
            Core.<$> (x Core..?> "NextToken")
            Core.<*> (x Core..?> "ScalableTargets" Core..!@ Core.mempty)
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable DescribeScalableTargets

instance Core.NFData DescribeScalableTargets

instance Core.ToHeaders DescribeScalableTargets where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AnyScaleFrontendService.DescribeScalableTargets" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON DescribeScalableTargets where
  toJSON DescribeScalableTargets' {..} =
    Core.object
      ( Core.catMaybes
          [ ("NextToken" Core..=) Core.<$> nextToken,
            ("MaxResults" Core..=) Core.<$> maxResults,
            ("ScalableDimension" Core..=)
              Core.<$> scalableDimension,
            ("ResourceIds" Core..=) Core.<$> resourceIds,
            Core.Just
              ("ServiceNamespace" Core..= serviceNamespace)
          ]
      )

instance Core.ToPath DescribeScalableTargets where
  toPath = Core.const "/"

instance Core.ToQuery DescribeScalableTargets where
  toQuery = Core.const Core.mempty

-- | /See:/ 'newDescribeScalableTargetsResponse' smart constructor.
data DescribeScalableTargetsResponse = DescribeScalableTargetsResponse'
  { -- | The token required to get the next set of results. This value is @null@
    -- if there are no more results to return.
    nextToken :: Core.Maybe Core.Text,
    -- | The scalable targets that match the request parameters.
    scalableTargets :: Core.Maybe [ScalableTarget],
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'DescribeScalableTargetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeScalableTargetsResponse_nextToken' - The token required to get the next set of results. This value is @null@
-- if there are no more results to return.
--
-- 'scalableTargets', 'describeScalableTargetsResponse_scalableTargets' - The scalable targets that match the request parameters.
--
-- 'httpStatus', 'describeScalableTargetsResponse_httpStatus' - The response's http status code.
newDescribeScalableTargetsResponse ::
  -- | 'httpStatus'
  Core.Int ->
  DescribeScalableTargetsResponse
newDescribeScalableTargetsResponse pHttpStatus_ =
  DescribeScalableTargetsResponse'
    { nextToken =
        Core.Nothing,
      scalableTargets = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token required to get the next set of results. This value is @null@
-- if there are no more results to return.
describeScalableTargetsResponse_nextToken :: Lens.Lens' DescribeScalableTargetsResponse (Core.Maybe Core.Text)
describeScalableTargetsResponse_nextToken = Lens.lens (\DescribeScalableTargetsResponse' {nextToken} -> nextToken) (\s@DescribeScalableTargetsResponse' {} a -> s {nextToken = a} :: DescribeScalableTargetsResponse)

-- | The scalable targets that match the request parameters.
describeScalableTargetsResponse_scalableTargets :: Lens.Lens' DescribeScalableTargetsResponse (Core.Maybe [ScalableTarget])
describeScalableTargetsResponse_scalableTargets = Lens.lens (\DescribeScalableTargetsResponse' {scalableTargets} -> scalableTargets) (\s@DescribeScalableTargetsResponse' {} a -> s {scalableTargets = a} :: DescribeScalableTargetsResponse) Core.. Lens.mapping Lens._Coerce

-- | The response's http status code.
describeScalableTargetsResponse_httpStatus :: Lens.Lens' DescribeScalableTargetsResponse Core.Int
describeScalableTargetsResponse_httpStatus = Lens.lens (\DescribeScalableTargetsResponse' {httpStatus} -> httpStatus) (\s@DescribeScalableTargetsResponse' {} a -> s {httpStatus = a} :: DescribeScalableTargetsResponse)

instance Core.NFData DescribeScalableTargetsResponse
