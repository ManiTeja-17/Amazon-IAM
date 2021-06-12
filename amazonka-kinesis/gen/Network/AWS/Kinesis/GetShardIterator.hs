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
-- Module      : Network.AWS.Kinesis.GetShardIterator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an Amazon Kinesis shard iterator. A shard iterator expires 5
-- minutes after it is returned to the requester.
--
-- A shard iterator specifies the shard position from which to start
-- reading data records sequentially. The position is specified using the
-- sequence number of a data record in a shard. A sequence number is the
-- identifier associated with every record ingested in the stream, and is
-- assigned when a record is put into the stream. Each stream has one or
-- more shards.
--
-- You must specify the shard iterator type. For example, you can set the
-- @ShardIteratorType@ parameter to read exactly from the position denoted
-- by a specific sequence number by using the @AT_SEQUENCE_NUMBER@ shard
-- iterator type. Alternatively, the parameter can read right after the
-- sequence number by using the @AFTER_SEQUENCE_NUMBER@ shard iterator
-- type, using sequence numbers returned by earlier calls to PutRecord,
-- PutRecords, GetRecords, or DescribeStream. In the request, you can
-- specify the shard iterator type @AT_TIMESTAMP@ to read records from an
-- arbitrary point in time, @TRIM_HORIZON@ to cause @ShardIterator@ to
-- point to the last untrimmed record in the shard in the system (the
-- oldest data record in the shard), or @LATEST@ so that you always read
-- the most recent data in the shard.
--
-- When you read repeatedly from a stream, use a GetShardIterator request
-- to get the first shard iterator for use in your first GetRecords request
-- and for subsequent reads use the shard iterator returned by the
-- GetRecords request in @NextShardIterator@. A new shard iterator is
-- returned by every GetRecords request in @NextShardIterator@, which you
-- use in the @ShardIterator@ parameter of the next GetRecords request.
--
-- If a GetShardIterator request is made too often, you receive a
-- @ProvisionedThroughputExceededException@. For more information about
-- throughput limits, see GetRecords, and
-- <https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html Streams Limits>
-- in the /Amazon Kinesis Data Streams Developer Guide/.
--
-- If the shard is closed, GetShardIterator returns a valid iterator for
-- the last sequence number of the shard. A shard can be closed as a result
-- of using SplitShard or MergeShards.
--
-- GetShardIterator has a limit of five transactions per second per account
-- per open shard.
module Network.AWS.Kinesis.GetShardIterator
  ( -- * Creating a Request
    GetShardIterator (..),
    newGetShardIterator,

    -- * Request Lenses
    getShardIterator_startingSequenceNumber,
    getShardIterator_timestamp,
    getShardIterator_streamName,
    getShardIterator_shardId,
    getShardIterator_shardIteratorType,

    -- * Destructuring the Response
    GetShardIteratorResponse (..),
    newGetShardIteratorResponse,

    -- * Response Lenses
    getShardIteratorResponse_shardIterator,
    getShardIteratorResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Kinesis.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input for @GetShardIterator@.
--
-- /See:/ 'newGetShardIterator' smart constructor.
data GetShardIterator = GetShardIterator'
  { -- | The sequence number of the data record in the shard from which to start
    -- reading. Used with shard iterator type AT_SEQUENCE_NUMBER and
    -- AFTER_SEQUENCE_NUMBER.
    startingSequenceNumber :: Core.Maybe Core.Text,
    -- | The time stamp of the data record from which to start reading. Used with
    -- shard iterator type AT_TIMESTAMP. A time stamp is the Unix epoch date
    -- with precision in milliseconds. For example,
    -- @2016-04-04T19:58:46.480-00:00@ or @1459799926.480@. If a record with
    -- this exact time stamp does not exist, the iterator returned is for the
    -- next (later) record. If the time stamp is older than the current trim
    -- horizon, the iterator returned is for the oldest untrimmed data record
    -- (TRIM_HORIZON).
    timestamp :: Core.Maybe Core.POSIX,
    -- | The name of the Amazon Kinesis data stream.
    streamName :: Core.Text,
    -- | The shard ID of the Kinesis Data Streams shard to get the iterator for.
    shardId :: Core.Text,
    -- | Determines how the shard iterator is used to start reading data records
    -- from the shard.
    --
    -- The following are the valid Amazon Kinesis shard iterator types:
    --
    -- -   AT_SEQUENCE_NUMBER - Start reading from the position denoted by a
    --     specific sequence number, provided in the value
    --     @StartingSequenceNumber@.
    --
    -- -   AFTER_SEQUENCE_NUMBER - Start reading right after the position
    --     denoted by a specific sequence number, provided in the value
    --     @StartingSequenceNumber@.
    --
    -- -   AT_TIMESTAMP - Start reading from the position denoted by a specific
    --     time stamp, provided in the value @Timestamp@.
    --
    -- -   TRIM_HORIZON - Start reading at the last untrimmed record in the
    --     shard in the system, which is the oldest data record in the shard.
    --
    -- -   LATEST - Start reading just after the most recent record in the
    --     shard, so that you always read the most recent data in the shard.
    shardIteratorType :: ShardIteratorType
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetShardIterator' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'startingSequenceNumber', 'getShardIterator_startingSequenceNumber' - The sequence number of the data record in the shard from which to start
-- reading. Used with shard iterator type AT_SEQUENCE_NUMBER and
-- AFTER_SEQUENCE_NUMBER.
--
-- 'timestamp', 'getShardIterator_timestamp' - The time stamp of the data record from which to start reading. Used with
-- shard iterator type AT_TIMESTAMP. A time stamp is the Unix epoch date
-- with precision in milliseconds. For example,
-- @2016-04-04T19:58:46.480-00:00@ or @1459799926.480@. If a record with
-- this exact time stamp does not exist, the iterator returned is for the
-- next (later) record. If the time stamp is older than the current trim
-- horizon, the iterator returned is for the oldest untrimmed data record
-- (TRIM_HORIZON).
--
-- 'streamName', 'getShardIterator_streamName' - The name of the Amazon Kinesis data stream.
--
-- 'shardId', 'getShardIterator_shardId' - The shard ID of the Kinesis Data Streams shard to get the iterator for.
--
-- 'shardIteratorType', 'getShardIterator_shardIteratorType' - Determines how the shard iterator is used to start reading data records
-- from the shard.
--
-- The following are the valid Amazon Kinesis shard iterator types:
--
-- -   AT_SEQUENCE_NUMBER - Start reading from the position denoted by a
--     specific sequence number, provided in the value
--     @StartingSequenceNumber@.
--
-- -   AFTER_SEQUENCE_NUMBER - Start reading right after the position
--     denoted by a specific sequence number, provided in the value
--     @StartingSequenceNumber@.
--
-- -   AT_TIMESTAMP - Start reading from the position denoted by a specific
--     time stamp, provided in the value @Timestamp@.
--
-- -   TRIM_HORIZON - Start reading at the last untrimmed record in the
--     shard in the system, which is the oldest data record in the shard.
--
-- -   LATEST - Start reading just after the most recent record in the
--     shard, so that you always read the most recent data in the shard.
newGetShardIterator ::
  -- | 'streamName'
  Core.Text ->
  -- | 'shardId'
  Core.Text ->
  -- | 'shardIteratorType'
  ShardIteratorType ->
  GetShardIterator
newGetShardIterator
  pStreamName_
  pShardId_
  pShardIteratorType_ =
    GetShardIterator'
      { startingSequenceNumber =
          Core.Nothing,
        timestamp = Core.Nothing,
        streamName = pStreamName_,
        shardId = pShardId_,
        shardIteratorType = pShardIteratorType_
      }

-- | The sequence number of the data record in the shard from which to start
-- reading. Used with shard iterator type AT_SEQUENCE_NUMBER and
-- AFTER_SEQUENCE_NUMBER.
getShardIterator_startingSequenceNumber :: Lens.Lens' GetShardIterator (Core.Maybe Core.Text)
getShardIterator_startingSequenceNumber = Lens.lens (\GetShardIterator' {startingSequenceNumber} -> startingSequenceNumber) (\s@GetShardIterator' {} a -> s {startingSequenceNumber = a} :: GetShardIterator)

-- | The time stamp of the data record from which to start reading. Used with
-- shard iterator type AT_TIMESTAMP. A time stamp is the Unix epoch date
-- with precision in milliseconds. For example,
-- @2016-04-04T19:58:46.480-00:00@ or @1459799926.480@. If a record with
-- this exact time stamp does not exist, the iterator returned is for the
-- next (later) record. If the time stamp is older than the current trim
-- horizon, the iterator returned is for the oldest untrimmed data record
-- (TRIM_HORIZON).
getShardIterator_timestamp :: Lens.Lens' GetShardIterator (Core.Maybe Core.UTCTime)
getShardIterator_timestamp = Lens.lens (\GetShardIterator' {timestamp} -> timestamp) (\s@GetShardIterator' {} a -> s {timestamp = a} :: GetShardIterator) Core.. Lens.mapping Core._Time

-- | The name of the Amazon Kinesis data stream.
getShardIterator_streamName :: Lens.Lens' GetShardIterator Core.Text
getShardIterator_streamName = Lens.lens (\GetShardIterator' {streamName} -> streamName) (\s@GetShardIterator' {} a -> s {streamName = a} :: GetShardIterator)

-- | The shard ID of the Kinesis Data Streams shard to get the iterator for.
getShardIterator_shardId :: Lens.Lens' GetShardIterator Core.Text
getShardIterator_shardId = Lens.lens (\GetShardIterator' {shardId} -> shardId) (\s@GetShardIterator' {} a -> s {shardId = a} :: GetShardIterator)

-- | Determines how the shard iterator is used to start reading data records
-- from the shard.
--
-- The following are the valid Amazon Kinesis shard iterator types:
--
-- -   AT_SEQUENCE_NUMBER - Start reading from the position denoted by a
--     specific sequence number, provided in the value
--     @StartingSequenceNumber@.
--
-- -   AFTER_SEQUENCE_NUMBER - Start reading right after the position
--     denoted by a specific sequence number, provided in the value
--     @StartingSequenceNumber@.
--
-- -   AT_TIMESTAMP - Start reading from the position denoted by a specific
--     time stamp, provided in the value @Timestamp@.
--
-- -   TRIM_HORIZON - Start reading at the last untrimmed record in the
--     shard in the system, which is the oldest data record in the shard.
--
-- -   LATEST - Start reading just after the most recent record in the
--     shard, so that you always read the most recent data in the shard.
getShardIterator_shardIteratorType :: Lens.Lens' GetShardIterator ShardIteratorType
getShardIterator_shardIteratorType = Lens.lens (\GetShardIterator' {shardIteratorType} -> shardIteratorType) (\s@GetShardIterator' {} a -> s {shardIteratorType = a} :: GetShardIterator)

instance Core.AWSRequest GetShardIterator where
  type
    AWSResponse GetShardIterator =
      GetShardIteratorResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetShardIteratorResponse'
            Core.<$> (x Core..?> "ShardIterator")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable GetShardIterator

instance Core.NFData GetShardIterator

instance Core.ToHeaders GetShardIterator where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Kinesis_20131202.GetShardIterator" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON GetShardIterator where
  toJSON GetShardIterator' {..} =
    Core.object
      ( Core.catMaybes
          [ ("StartingSequenceNumber" Core..=)
              Core.<$> startingSequenceNumber,
            ("Timestamp" Core..=) Core.<$> timestamp,
            Core.Just ("StreamName" Core..= streamName),
            Core.Just ("ShardId" Core..= shardId),
            Core.Just
              ("ShardIteratorType" Core..= shardIteratorType)
          ]
      )

instance Core.ToPath GetShardIterator where
  toPath = Core.const "/"

instance Core.ToQuery GetShardIterator where
  toQuery = Core.const Core.mempty

-- | Represents the output for @GetShardIterator@.
--
-- /See:/ 'newGetShardIteratorResponse' smart constructor.
data GetShardIteratorResponse = GetShardIteratorResponse'
  { -- | The position in the shard from which to start reading data records
    -- sequentially. A shard iterator specifies this position using the
    -- sequence number of a data record in a shard.
    shardIterator :: Core.Maybe Core.Text,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'GetShardIteratorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'shardIterator', 'getShardIteratorResponse_shardIterator' - The position in the shard from which to start reading data records
-- sequentially. A shard iterator specifies this position using the
-- sequence number of a data record in a shard.
--
-- 'httpStatus', 'getShardIteratorResponse_httpStatus' - The response's http status code.
newGetShardIteratorResponse ::
  -- | 'httpStatus'
  Core.Int ->
  GetShardIteratorResponse
newGetShardIteratorResponse pHttpStatus_ =
  GetShardIteratorResponse'
    { shardIterator =
        Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The position in the shard from which to start reading data records
-- sequentially. A shard iterator specifies this position using the
-- sequence number of a data record in a shard.
getShardIteratorResponse_shardIterator :: Lens.Lens' GetShardIteratorResponse (Core.Maybe Core.Text)
getShardIteratorResponse_shardIterator = Lens.lens (\GetShardIteratorResponse' {shardIterator} -> shardIterator) (\s@GetShardIteratorResponse' {} a -> s {shardIterator = a} :: GetShardIteratorResponse)

-- | The response's http status code.
getShardIteratorResponse_httpStatus :: Lens.Lens' GetShardIteratorResponse Core.Int
getShardIteratorResponse_httpStatus = Lens.lens (\GetShardIteratorResponse' {httpStatus} -> httpStatus) (\s@GetShardIteratorResponse' {} a -> s {httpStatus = a} :: GetShardIteratorResponse)

instance Core.NFData GetShardIteratorResponse
