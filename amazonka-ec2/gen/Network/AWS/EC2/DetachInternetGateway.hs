{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DetachInternetGateway
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detaches an Internet gateway from a VPC, disabling connectivity between
-- the Internet and the VPC. The VPC must not contain any running instances
-- with Elastic IP addresses.
--
-- /See:/ <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DetachInternetGateway.html AWS API Reference> for DetachInternetGateway.
module Network.AWS.EC2.DetachInternetGateway
    (
    -- * Creating a Request
      detachInternetGateway
    , DetachInternetGateway
    -- * Request Lenses
    , digDryRun
    , digInternetGatewayId
    , digVPCId

    -- * Destructuring the Response
    , detachInternetGatewayResponse
    , DetachInternetGatewayResponse
    ) where

import           Network.AWS.EC2.Types
import           Network.AWS.EC2.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'detachInternetGateway' smart constructor.
data DetachInternetGateway = DetachInternetGateway'
    { _digDryRun            :: !(Maybe Bool)
    , _digInternetGatewayId :: !Text
    , _digVPCId             :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DetachInternetGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'digDryRun'
--
-- * 'digInternetGatewayId'
--
-- * 'digVPCId'
detachInternetGateway
    :: Text -- ^ 'digInternetGatewayId'
    -> Text -- ^ 'digVPCId'
    -> DetachInternetGateway
detachInternetGateway pInternetGatewayId_ pVPCId_ =
    DetachInternetGateway'
    { _digDryRun = Nothing
    , _digInternetGatewayId = pInternetGatewayId_
    , _digVPCId = pVPCId_
    }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is 'DryRunOperation'.
-- Otherwise, it is 'UnauthorizedOperation'.
digDryRun :: Lens' DetachInternetGateway (Maybe Bool)
digDryRun = lens _digDryRun (\ s a -> s{_digDryRun = a});

-- | The ID of the Internet gateway.
digInternetGatewayId :: Lens' DetachInternetGateway Text
digInternetGatewayId = lens _digInternetGatewayId (\ s a -> s{_digInternetGatewayId = a});

-- | The ID of the VPC.
digVPCId :: Lens' DetachInternetGateway Text
digVPCId = lens _digVPCId (\ s a -> s{_digVPCId = a});

instance AWSRequest DetachInternetGateway where
        type Sv DetachInternetGateway = EC2
        type Rs DetachInternetGateway =
             DetachInternetGatewayResponse
        request = postQuery
        response = receiveNull DetachInternetGatewayResponse'

instance ToHeaders DetachInternetGateway where
        toHeaders = const mempty

instance ToPath DetachInternetGateway where
        toPath = const "/"

instance ToQuery DetachInternetGateway where
        toQuery DetachInternetGateway'{..}
          = mconcat
              ["Action" =: ("DetachInternetGateway" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               "DryRun" =: _digDryRun,
               "InternetGatewayId" =: _digInternetGatewayId,
               "VpcId" =: _digVPCId]

-- | /See:/ 'detachInternetGatewayResponse' smart constructor.
data DetachInternetGatewayResponse =
    DetachInternetGatewayResponse'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DetachInternetGatewayResponse' with the minimum fields required to make a request.
--
detachInternetGatewayResponse
    :: DetachInternetGatewayResponse
detachInternetGatewayResponse = DetachInternetGatewayResponse'