{-# LANGUAGE DeriveGeneric               #-}
{-# LANGUAGE FlexibleInstances           #-}
{-# LANGUAGE NoImplicitPrelude           #-}
{-# LANGUAGE OverloadedStrings           #-}
{-# LANGUAGE RecordWildCards             #-}
{-# LANGUAGE TypeFamilies                #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Module      : Network.AWS.CloudFormation.DescribeStackResources
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Returns AWS resource descriptions for running and deleted stacks. If
-- StackName is specified, all the associated resources that are part of the
-- stack are returned. If PhysicalResourceId is specified, the associated
-- resources of the stack that the resource belongs to are returned. Only the
-- first 100 resources will be returned. If your stack has more resources than
-- this, you should use ListStackResources instead. For deleted stacks,
-- DescribeStackResources returns resource information for up to 90 days after
-- the stack has been deleted. You must specify either StackName or
-- PhysicalResourceId, but not both. In addition, you can specify
-- LogicalResourceId to filter the returned result. For more information about
-- resources, the LogicalResourceId and PhysicalResourceId, go to the AWS
-- CloudFormation User Guide. A ValidationError is returned if you specify
-- both StackName and PhysicalResourceId in the same request.
-- https://cloudformation.us-east-1.amazonaws.com/
-- ?Action=DescribeStackResources &StackName=MyStack &Version=2010-05-15
-- &SignatureVersion=2 &Timestamp=2010-07-27T22%3A26%3A28.000Z
-- &AWSAccessKeyId=[AWS Access KeyID] &Signature=[Signature]
-- arn:aws:cloudformation:us-east-1:123456789:stack/MyStack/aaf549a0-a413-11df-adb3-5081b3858e83
-- MyStack MyDBInstance MyStack_DB1 AWS::DBInstance 2010-07-27T22:27:28Z
-- CREATE_COMPLETE
-- arn:aws:cloudformation:us-east-1:123456789:stack/MyStack/aaf549a0-a413-11df-adb3-5081b3858e83
-- MyStack MyAutoScalingGroup MyStack_ASG1 AWS::AutoScalingGroup
-- 2010-07-27T22:28:28Z CREATE_IN_PROGRESS.
module Network.AWS.CloudFormation.DescribeStackResources
    (
    -- * Request
      DescribeStackResources
    -- ** Request constructor
    , describeStackResources
    -- ** Request lenses
    , dsr1StackName
    , dsr1LogicalResourceId
    , dsr1PhysicalResourceId

    -- * Response
    , DescribeStackResourcesResponse
    -- ** Response constructor
    , describeStackResourcesResponse
    -- ** Response lenses
    , dsrrrStackResources
    ) where

import Network.AWS.Request.Query
import Network.AWS.CloudFormation.Types
import Network.AWS.Prelude

-- | The input for DescribeStackResources action.
data DescribeStackResources = DescribeStackResources
    { _dsr1StackName :: Maybe Text
    , _dsr1LogicalResourceId :: Maybe Text
    , _dsr1PhysicalResourceId :: Maybe Text
    } deriving (Eq, Show, Generic)

-- | Smart constructor for the minimum required parameters to construct
-- a valid 'DescribeStackResources' request.
--
-- The fields accessible through corresponding lenses are:
--
-- * @StackName ::@ @Maybe Text@
--
-- * @LogicalResourceId ::@ @Maybe Text@
--
-- * @PhysicalResourceId ::@ @Maybe Text@
--
describeStackResources :: DescribeStackResources
describeStackResources = DescribeStackResources
    { _dsr1StackName = Nothing
    , _dsr1LogicalResourceId = Nothing
    , _dsr1PhysicalResourceId = Nothing
    }

-- | The name or the unique identifier associated with the stack, which are not
-- always interchangeable: Running stacks: You can specify either the stack's
-- name or its unique stack ID. Deleted stacks: You must specify the unique
-- stack ID. Default: There is no default value. Required: Conditional. If you
-- do not specify StackName, you must specify PhysicalResourceId.
dsr1StackName :: Lens' DescribeStackResources (Maybe Text)
dsr1StackName = lens _dsr1StackName (\s a -> s { _dsr1StackName = a })

-- | The logical name of the resource as specified in the template. Default:
-- There is no default value.
dsr1LogicalResourceId :: Lens' DescribeStackResources (Maybe Text)
dsr1LogicalResourceId =
    lens _dsr1LogicalResourceId (\s a -> s { _dsr1LogicalResourceId = a })

-- | The name or unique identifier that corresponds to a physical instance ID of
-- a resource supported by AWS CloudFormation. For example, for an Amazon
-- Elastic Compute Cloud (EC2) instance, PhysicalResourceId corresponds to the
-- InstanceId. You can pass the EC2 InstanceId to DescribeStackResources to
-- find which stack the instance belongs to and what other resources are part
-- of the stack. Required: Conditional. If you do not specify
-- PhysicalResourceId, you must specify StackName. Default: There is no
-- default value.
dsr1PhysicalResourceId :: Lens' DescribeStackResources (Maybe Text)
dsr1PhysicalResourceId =
    lens _dsr1PhysicalResourceId (\s a -> s { _dsr1PhysicalResourceId = a })

instance ToQuery DescribeStackResources where
    toQuery = genericQuery def

-- | The output for a DescribeStackResources action.
newtype DescribeStackResourcesResponse = DescribeStackResourcesResponse
    { _dsrrrStackResources :: [StackResource]
    } deriving (Show, Generic)

-- | Smart constructor for the minimum required parameters to construct
-- a valid 'DescribeStackResourcesResponse' response.
--
-- This constructor is provided for convenience and testing purposes.
--
-- The fields accessible through corresponding lenses are:
--
-- * @StackResources ::@ @[StackResource]@
--
describeStackResourcesResponse :: DescribeStackResourcesResponse
describeStackResourcesResponse = DescribeStackResourcesResponse
    { _dsrrrStackResources = mempty
    }

-- | A list of StackResource structures.
dsrrrStackResources :: Lens' DescribeStackResourcesResponse [StackResource]
dsrrrStackResources =
    lens _dsrrrStackResources (\s a -> s { _dsrrrStackResources = a })

instance FromXML DescribeStackResourcesResponse where
    fromXMLOptions = xmlOptions

instance AWSRequest DescribeStackResources where
    type Sv DescribeStackResources = CloudFormation
    type Rs DescribeStackResources = DescribeStackResourcesResponse

    request = post "DescribeStackResources"
    response _ = xmlResponse
