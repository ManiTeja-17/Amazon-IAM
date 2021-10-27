{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.SageMakerFeatureStoreRuntime
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.SageMakerFeatureStoreRuntime where

import Data.Proxy
import Network.AWS.SageMakerFeatureStoreRuntime
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.AWS.SageMakerFeatureStoreRuntime.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestPutRecord $
--             newPutRecord
--
--         , requestDeleteRecord $
--             newDeleteRecord
--
--         , requestBatchGetRecord $
--             newBatchGetRecord
--
--         , requestGetRecord $
--             newGetRecord
--
--           ]

--     , testGroup "response"
--         [ responsePutRecord $
--             newPutRecordResponse
--
--         , responseDeleteRecord $
--             newDeleteRecordResponse
--
--         , responseBatchGetRecord $
--             newBatchGetRecordResponse
--
--         , responseGetRecord $
--             newGetRecordResponse
--
--           ]
--     ]

-- Requests

requestPutRecord :: PutRecord -> TestTree
requestPutRecord =
  req
    "PutRecord"
    "fixture/PutRecord.yaml"

requestDeleteRecord :: DeleteRecord -> TestTree
requestDeleteRecord =
  req
    "DeleteRecord"
    "fixture/DeleteRecord.yaml"

requestBatchGetRecord :: BatchGetRecord -> TestTree
requestBatchGetRecord =
  req
    "BatchGetRecord"
    "fixture/BatchGetRecord.yaml"

requestGetRecord :: GetRecord -> TestTree
requestGetRecord =
  req
    "GetRecord"
    "fixture/GetRecord.yaml"

-- Responses

responsePutRecord :: PutRecordResponse -> TestTree
responsePutRecord =
  res
    "PutRecordResponse"
    "fixture/PutRecordResponse.proto"
    defaultService
    (Proxy :: Proxy PutRecord)

responseDeleteRecord :: DeleteRecordResponse -> TestTree
responseDeleteRecord =
  res
    "DeleteRecordResponse"
    "fixture/DeleteRecordResponse.proto"
    defaultService
    (Proxy :: Proxy DeleteRecord)

responseBatchGetRecord :: BatchGetRecordResponse -> TestTree
responseBatchGetRecord =
  res
    "BatchGetRecordResponse"
    "fixture/BatchGetRecordResponse.proto"
    defaultService
    (Proxy :: Proxy BatchGetRecord)

responseGetRecord :: GetRecordResponse -> TestTree
responseGetRecord =
  res
    "GetRecordResponse"
    "fixture/GetRecordResponse.proto"
    defaultService
    (Proxy :: Proxy GetRecord)
