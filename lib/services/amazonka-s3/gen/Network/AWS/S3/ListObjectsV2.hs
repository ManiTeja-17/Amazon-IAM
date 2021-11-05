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
-- Module      : Network.AWS.S3.ListObjectsV2
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns some or all (up to 1,000) of the objects in a bucket with each
-- request. You can use the request parameters as selection criteria to
-- return a subset of the objects in a bucket. A @200 OK@ response can
-- contain valid or invalid XML. Make sure to design your application to
-- parse the contents of the response and handle it appropriately. Objects
-- are returned sorted in an ascending order of the respective key names in
-- the list. For more information about listing objects, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/ListingKeysUsingAPIs.html Listing object keys programmatically>
--
-- To use this operation, you must have READ access to the bucket.
--
-- To use this action in an Identity and Access Management (IAM) policy,
-- you must have permissions to perform the @s3:ListBucket@ action. The
-- bucket owner has this permission by default and can grant this
-- permission to others. For more information about permissions, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources Permissions Related to Bucket Subresource Operations>
-- and
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html Managing Access Permissions to Your Amazon S3 Resources>.
--
-- This section describes the latest revision of this action. We recommend
-- that you use this revised API for application development. For backward
-- compatibility, Amazon S3 continues to support the prior version of this
-- API,
-- <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html ListObjects>.
--
-- To get a list of your buckets, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListBuckets.html ListBuckets>.
--
-- The following operations are related to @ListObjectsV2@:
--
-- -   <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html GetObject>
--
-- -   <https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html PutObject>
--
-- -   <https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html CreateBucket>
--
-- This operation returns paginated results.
module Network.AWS.S3.ListObjectsV2
  ( -- * Creating a Request
    ListObjectsV2 (..),
    newListObjectsV2,

    -- * Request Lenses
    listObjectsV2_startAfter,
    listObjectsV2_continuationToken,
    listObjectsV2_fetchOwner,
    listObjectsV2_prefix,
    listObjectsV2_encodingType,
    listObjectsV2_requestPayer,
    listObjectsV2_maxKeys,
    listObjectsV2_delimiter,
    listObjectsV2_expectedBucketOwner,
    listObjectsV2_bucket,

    -- * Destructuring the Response
    ListObjectsV2Response (..),
    newListObjectsV2Response,

    -- * Response Lenses
    listObjectsV2Response_startAfter,
    listObjectsV2Response_keyCount,
    listObjectsV2Response_contents,
    listObjectsV2Response_continuationToken,
    listObjectsV2Response_prefix,
    listObjectsV2Response_commonPrefixes,
    listObjectsV2Response_encodingType,
    listObjectsV2Response_name,
    listObjectsV2Response_nextContinuationToken,
    listObjectsV2Response_maxKeys,
    listObjectsV2Response_isTruncated,
    listObjectsV2Response_delimiter,
    listObjectsV2Response_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.S3.Types

-- | /See:/ 'newListObjectsV2' smart constructor.
data ListObjectsV2 = ListObjectsV2'
  { -- | StartAfter is where you want Amazon S3 to start listing from. Amazon S3
    -- starts listing after this specified key. StartAfter can be any key in
    -- the bucket.
    startAfter :: Prelude.Maybe Prelude.Text,
    -- | ContinuationToken indicates Amazon S3 that the list is being continued
    -- on this bucket with a token. ContinuationToken is obfuscated and is not
    -- a real key.
    continuationToken :: Prelude.Maybe Prelude.Text,
    -- | The owner field is not present in listV2 by default, if you want to
    -- return owner field with each key in the result then set the fetch owner
    -- field to true.
    fetchOwner :: Prelude.Maybe Prelude.Bool,
    -- | Limits the response to keys that begin with the specified prefix.
    prefix :: Prelude.Maybe Prelude.Text,
    -- | Encoding type used by Amazon S3 to encode object keys in the response.
    encodingType :: Prelude.Maybe EncodingType,
    -- | Confirms that the requester knows that she or he will be charged for the
    -- list objects request in V2 style. Bucket owners need not specify this
    -- parameter in their requests.
    requestPayer :: Prelude.Maybe RequestPayer,
    -- | Sets the maximum number of keys returned in the response. By default the
    -- action returns up to 1,000 key names. The response might contain fewer
    -- keys but will never contain more.
    maxKeys :: Prelude.Maybe Prelude.Int,
    -- | A delimiter is a character you use to group keys.
    delimiter :: Prelude.Maybe Delimiter,
    -- | The account ID of the expected bucket owner. If the bucket is owned by a
    -- different account, the request will fail with an HTTP
    -- @403 (Access Denied)@ error.
    expectedBucketOwner :: Prelude.Maybe Prelude.Text,
    -- | Bucket name to list.
    --
    -- When using this action with an access point, you must direct requests to
    -- the access point hostname. The access point hostname takes the form
    -- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
    -- When using this action with an access point through the Amazon Web
    -- Services SDKs, you provide the access point ARN in place of the bucket
    -- name. For more information about access point ARNs, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
    -- in the /Amazon S3 User Guide/.
    --
    -- When using this action with Amazon S3 on Outposts, you must direct
    -- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
    -- takes the form
    -- /AccessPointName/-/AccountId/./outpostID/.s3-outposts./Region/.amazonaws.com.
    -- When using this action using S3 on Outposts through the Amazon Web
    -- Services SDKs, you provide the Outposts bucket ARN in place of the
    -- bucket name. For more information about S3 on Outposts ARNs, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using S3 on Outposts>
    -- in the /Amazon S3 User Guide/.
    bucket :: BucketName
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListObjectsV2' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'startAfter', 'listObjectsV2_startAfter' - StartAfter is where you want Amazon S3 to start listing from. Amazon S3
-- starts listing after this specified key. StartAfter can be any key in
-- the bucket.
--
-- 'continuationToken', 'listObjectsV2_continuationToken' - ContinuationToken indicates Amazon S3 that the list is being continued
-- on this bucket with a token. ContinuationToken is obfuscated and is not
-- a real key.
--
-- 'fetchOwner', 'listObjectsV2_fetchOwner' - The owner field is not present in listV2 by default, if you want to
-- return owner field with each key in the result then set the fetch owner
-- field to true.
--
-- 'prefix', 'listObjectsV2_prefix' - Limits the response to keys that begin with the specified prefix.
--
-- 'encodingType', 'listObjectsV2_encodingType' - Encoding type used by Amazon S3 to encode object keys in the response.
--
-- 'requestPayer', 'listObjectsV2_requestPayer' - Confirms that the requester knows that she or he will be charged for the
-- list objects request in V2 style. Bucket owners need not specify this
-- parameter in their requests.
--
-- 'maxKeys', 'listObjectsV2_maxKeys' - Sets the maximum number of keys returned in the response. By default the
-- action returns up to 1,000 key names. The response might contain fewer
-- keys but will never contain more.
--
-- 'delimiter', 'listObjectsV2_delimiter' - A delimiter is a character you use to group keys.
--
-- 'expectedBucketOwner', 'listObjectsV2_expectedBucketOwner' - The account ID of the expected bucket owner. If the bucket is owned by a
-- different account, the request will fail with an HTTP
-- @403 (Access Denied)@ error.
--
-- 'bucket', 'listObjectsV2_bucket' - Bucket name to list.
--
-- When using this action with an access point, you must direct requests to
-- the access point hostname. The access point hostname takes the form
-- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
-- When using this action with an access point through the Amazon Web
-- Services SDKs, you provide the access point ARN in place of the bucket
-- name. For more information about access point ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
-- in the /Amazon S3 User Guide/.
--
-- When using this action with Amazon S3 on Outposts, you must direct
-- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
-- takes the form
-- /AccessPointName/-/AccountId/./outpostID/.s3-outposts./Region/.amazonaws.com.
-- When using this action using S3 on Outposts through the Amazon Web
-- Services SDKs, you provide the Outposts bucket ARN in place of the
-- bucket name. For more information about S3 on Outposts ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using S3 on Outposts>
-- in the /Amazon S3 User Guide/.
newListObjectsV2 ::
  -- | 'bucket'
  BucketName ->
  ListObjectsV2
newListObjectsV2 pBucket_ =
  ListObjectsV2'
    { startAfter = Prelude.Nothing,
      continuationToken = Prelude.Nothing,
      fetchOwner = Prelude.Nothing,
      prefix = Prelude.Nothing,
      encodingType = Prelude.Nothing,
      requestPayer = Prelude.Nothing,
      maxKeys = Prelude.Nothing,
      delimiter = Prelude.Nothing,
      expectedBucketOwner = Prelude.Nothing,
      bucket = pBucket_
    }

-- | StartAfter is where you want Amazon S3 to start listing from. Amazon S3
-- starts listing after this specified key. StartAfter can be any key in
-- the bucket.
listObjectsV2_startAfter :: Lens.Lens' ListObjectsV2 (Prelude.Maybe Prelude.Text)
listObjectsV2_startAfter = Lens.lens (\ListObjectsV2' {startAfter} -> startAfter) (\s@ListObjectsV2' {} a -> s {startAfter = a} :: ListObjectsV2)

-- | ContinuationToken indicates Amazon S3 that the list is being continued
-- on this bucket with a token. ContinuationToken is obfuscated and is not
-- a real key.
listObjectsV2_continuationToken :: Lens.Lens' ListObjectsV2 (Prelude.Maybe Prelude.Text)
listObjectsV2_continuationToken = Lens.lens (\ListObjectsV2' {continuationToken} -> continuationToken) (\s@ListObjectsV2' {} a -> s {continuationToken = a} :: ListObjectsV2)

-- | The owner field is not present in listV2 by default, if you want to
-- return owner field with each key in the result then set the fetch owner
-- field to true.
listObjectsV2_fetchOwner :: Lens.Lens' ListObjectsV2 (Prelude.Maybe Prelude.Bool)
listObjectsV2_fetchOwner = Lens.lens (\ListObjectsV2' {fetchOwner} -> fetchOwner) (\s@ListObjectsV2' {} a -> s {fetchOwner = a} :: ListObjectsV2)

-- | Limits the response to keys that begin with the specified prefix.
listObjectsV2_prefix :: Lens.Lens' ListObjectsV2 (Prelude.Maybe Prelude.Text)
listObjectsV2_prefix = Lens.lens (\ListObjectsV2' {prefix} -> prefix) (\s@ListObjectsV2' {} a -> s {prefix = a} :: ListObjectsV2)

-- | Encoding type used by Amazon S3 to encode object keys in the response.
listObjectsV2_encodingType :: Lens.Lens' ListObjectsV2 (Prelude.Maybe EncodingType)
listObjectsV2_encodingType = Lens.lens (\ListObjectsV2' {encodingType} -> encodingType) (\s@ListObjectsV2' {} a -> s {encodingType = a} :: ListObjectsV2)

-- | Confirms that the requester knows that she or he will be charged for the
-- list objects request in V2 style. Bucket owners need not specify this
-- parameter in their requests.
listObjectsV2_requestPayer :: Lens.Lens' ListObjectsV2 (Prelude.Maybe RequestPayer)
listObjectsV2_requestPayer = Lens.lens (\ListObjectsV2' {requestPayer} -> requestPayer) (\s@ListObjectsV2' {} a -> s {requestPayer = a} :: ListObjectsV2)

-- | Sets the maximum number of keys returned in the response. By default the
-- action returns up to 1,000 key names. The response might contain fewer
-- keys but will never contain more.
listObjectsV2_maxKeys :: Lens.Lens' ListObjectsV2 (Prelude.Maybe Prelude.Int)
listObjectsV2_maxKeys = Lens.lens (\ListObjectsV2' {maxKeys} -> maxKeys) (\s@ListObjectsV2' {} a -> s {maxKeys = a} :: ListObjectsV2)

-- | A delimiter is a character you use to group keys.
listObjectsV2_delimiter :: Lens.Lens' ListObjectsV2 (Prelude.Maybe Delimiter)
listObjectsV2_delimiter = Lens.lens (\ListObjectsV2' {delimiter} -> delimiter) (\s@ListObjectsV2' {} a -> s {delimiter = a} :: ListObjectsV2)

-- | The account ID of the expected bucket owner. If the bucket is owned by a
-- different account, the request will fail with an HTTP
-- @403 (Access Denied)@ error.
listObjectsV2_expectedBucketOwner :: Lens.Lens' ListObjectsV2 (Prelude.Maybe Prelude.Text)
listObjectsV2_expectedBucketOwner = Lens.lens (\ListObjectsV2' {expectedBucketOwner} -> expectedBucketOwner) (\s@ListObjectsV2' {} a -> s {expectedBucketOwner = a} :: ListObjectsV2)

-- | Bucket name to list.
--
-- When using this action with an access point, you must direct requests to
-- the access point hostname. The access point hostname takes the form
-- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
-- When using this action with an access point through the Amazon Web
-- Services SDKs, you provide the access point ARN in place of the bucket
-- name. For more information about access point ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
-- in the /Amazon S3 User Guide/.
--
-- When using this action with Amazon S3 on Outposts, you must direct
-- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
-- takes the form
-- /AccessPointName/-/AccountId/./outpostID/.s3-outposts./Region/.amazonaws.com.
-- When using this action using S3 on Outposts through the Amazon Web
-- Services SDKs, you provide the Outposts bucket ARN in place of the
-- bucket name. For more information about S3 on Outposts ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using S3 on Outposts>
-- in the /Amazon S3 User Guide/.
listObjectsV2_bucket :: Lens.Lens' ListObjectsV2 BucketName
listObjectsV2_bucket = Lens.lens (\ListObjectsV2' {bucket} -> bucket) (\s@ListObjectsV2' {} a -> s {bucket = a} :: ListObjectsV2)

instance Core.AWSPager ListObjectsV2 where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listObjectsV2Response_isTruncated
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.isNothing
        ( rs
            Lens.^? listObjectsV2Response_nextContinuationToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listObjectsV2_continuationToken
          Lens..~ rs
          Lens.^? listObjectsV2Response_nextContinuationToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListObjectsV2 where
  type
    AWSResponse ListObjectsV2 =
      ListObjectsV2Response
  request =
    Request.s3vhost
      Prelude.. Request.get defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          ListObjectsV2Response'
            Prelude.<$> (x Core..@? "StartAfter")
            Prelude.<*> (x Core..@? "KeyCount")
            Prelude.<*> (Core.may (Core.parseXMLList "Contents") x)
            Prelude.<*> (x Core..@? "ContinuationToken")
            Prelude.<*> (x Core..@? "Prefix")
            Prelude.<*> (Core.may (Core.parseXMLList "CommonPrefixes") x)
            Prelude.<*> (x Core..@? "EncodingType")
            Prelude.<*> (x Core..@? "Name")
            Prelude.<*> (x Core..@? "NextContinuationToken")
            Prelude.<*> (x Core..@? "MaxKeys")
            Prelude.<*> (x Core..@? "IsTruncated")
            Prelude.<*> (x Core..@? "Delimiter")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListObjectsV2

instance Prelude.NFData ListObjectsV2

instance Core.ToHeaders ListObjectsV2 where
  toHeaders ListObjectsV2' {..} =
    Prelude.mconcat
      [ "x-amz-request-payer" Core.=# requestPayer,
        "x-amz-expected-bucket-owner"
          Core.=# expectedBucketOwner
      ]

instance Core.ToPath ListObjectsV2 where
  toPath ListObjectsV2' {..} =
    Prelude.mconcat ["/", Core.toBS bucket]

instance Core.ToQuery ListObjectsV2 where
  toQuery ListObjectsV2' {..} =
    Prelude.mconcat
      [ "start-after" Core.=: startAfter,
        "continuation-token" Core.=: continuationToken,
        "fetch-owner" Core.=: fetchOwner,
        "prefix" Core.=: prefix,
        "encoding-type" Core.=: encodingType,
        "max-keys" Core.=: maxKeys,
        "delimiter" Core.=: delimiter,
        "list-type=2"
      ]

-- | /See:/ 'newListObjectsV2Response' smart constructor.
data ListObjectsV2Response = ListObjectsV2Response'
  { -- | If StartAfter was sent with the request, it is included in the response.
    startAfter :: Prelude.Maybe Prelude.Text,
    -- | KeyCount is the number of keys returned with this request. KeyCount will
    -- always be less than or equals to MaxKeys field. Say you ask for 50 keys,
    -- your result will include less than equals 50 keys
    keyCount :: Prelude.Maybe Prelude.Int,
    -- | Metadata about each object returned.
    contents :: Prelude.Maybe [Object],
    -- | If ContinuationToken was sent with the request, it is included in the
    -- response.
    continuationToken :: Prelude.Maybe Prelude.Text,
    -- | Keys that begin with the indicated prefix.
    prefix :: Prelude.Maybe Prelude.Text,
    -- | All of the keys (up to 1,000) rolled up into a common prefix count as a
    -- single return when calculating the number of returns.
    --
    -- A response can contain @CommonPrefixes@ only if you specify a delimiter.
    --
    -- @CommonPrefixes@ contains all (if there are any) keys between @Prefix@
    -- and the next occurrence of the string specified by a delimiter.
    --
    -- @CommonPrefixes@ lists keys that act like subdirectories in the
    -- directory specified by @Prefix@.
    --
    -- For example, if the prefix is @notes\/@ and the delimiter is a slash
    -- (@\/@) as in @notes\/summer\/july@, the common prefix is
    -- @notes\/summer\/@. All of the keys that roll up into a common prefix
    -- count as a single return when calculating the number of returns.
    commonPrefixes :: Prelude.Maybe [CommonPrefix],
    -- | Encoding type used by Amazon S3 to encode object key names in the XML
    -- response.
    --
    -- If you specify the encoding-type request parameter, Amazon S3 includes
    -- this element in the response, and returns encoded key name values in the
    -- following response elements:
    --
    -- @Delimiter, Prefix, Key,@ and @StartAfter@.
    encodingType :: Prelude.Maybe EncodingType,
    -- | The bucket name.
    --
    -- When using this action with an access point, you must direct requests to
    -- the access point hostname. The access point hostname takes the form
    -- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
    -- When using this action with an access point through the Amazon Web
    -- Services SDKs, you provide the access point ARN in place of the bucket
    -- name. For more information about access point ARNs, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
    -- in the /Amazon S3 User Guide/.
    --
    -- When using this action with Amazon S3 on Outposts, you must direct
    -- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
    -- takes the form
    -- /AccessPointName/-/AccountId/./outpostID/.s3-outposts./Region/.amazonaws.com.
    -- When using this action using S3 on Outposts through the Amazon Web
    -- Services SDKs, you provide the Outposts bucket ARN in place of the
    -- bucket name. For more information about S3 on Outposts ARNs, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using S3 on Outposts>
    -- in the /Amazon S3 User Guide/.
    name :: Prelude.Maybe BucketName,
    -- | @NextContinuationToken@ is sent when @isTruncated@ is true, which means
    -- there are more keys in the bucket that can be listed. The next list
    -- requests to Amazon S3 can be continued with this
    -- @NextContinuationToken@. @NextContinuationToken@ is obfuscated and is
    -- not a real key
    nextContinuationToken :: Prelude.Maybe Prelude.Text,
    -- | Sets the maximum number of keys returned in the response. By default the
    -- action returns up to 1,000 key names. The response might contain fewer
    -- keys but will never contain more.
    maxKeys :: Prelude.Maybe Prelude.Int,
    -- | Set to false if all of the results were returned. Set to true if more
    -- keys are available to return. If the number of results exceeds that
    -- specified by MaxKeys, all of the results might not be returned.
    isTruncated :: Prelude.Maybe Prelude.Bool,
    -- | Causes keys that contain the same string between the prefix and the
    -- first occurrence of the delimiter to be rolled up into a single result
    -- element in the CommonPrefixes collection. These rolled-up keys are not
    -- returned elsewhere in the response. Each rolled-up result counts as only
    -- one return against the @MaxKeys@ value.
    delimiter :: Prelude.Maybe Delimiter,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListObjectsV2Response' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'startAfter', 'listObjectsV2Response_startAfter' - If StartAfter was sent with the request, it is included in the response.
--
-- 'keyCount', 'listObjectsV2Response_keyCount' - KeyCount is the number of keys returned with this request. KeyCount will
-- always be less than or equals to MaxKeys field. Say you ask for 50 keys,
-- your result will include less than equals 50 keys
--
-- 'contents', 'listObjectsV2Response_contents' - Metadata about each object returned.
--
-- 'continuationToken', 'listObjectsV2Response_continuationToken' - If ContinuationToken was sent with the request, it is included in the
-- response.
--
-- 'prefix', 'listObjectsV2Response_prefix' - Keys that begin with the indicated prefix.
--
-- 'commonPrefixes', 'listObjectsV2Response_commonPrefixes' - All of the keys (up to 1,000) rolled up into a common prefix count as a
-- single return when calculating the number of returns.
--
-- A response can contain @CommonPrefixes@ only if you specify a delimiter.
--
-- @CommonPrefixes@ contains all (if there are any) keys between @Prefix@
-- and the next occurrence of the string specified by a delimiter.
--
-- @CommonPrefixes@ lists keys that act like subdirectories in the
-- directory specified by @Prefix@.
--
-- For example, if the prefix is @notes\/@ and the delimiter is a slash
-- (@\/@) as in @notes\/summer\/july@, the common prefix is
-- @notes\/summer\/@. All of the keys that roll up into a common prefix
-- count as a single return when calculating the number of returns.
--
-- 'encodingType', 'listObjectsV2Response_encodingType' - Encoding type used by Amazon S3 to encode object key names in the XML
-- response.
--
-- If you specify the encoding-type request parameter, Amazon S3 includes
-- this element in the response, and returns encoded key name values in the
-- following response elements:
--
-- @Delimiter, Prefix, Key,@ and @StartAfter@.
--
-- 'name', 'listObjectsV2Response_name' - The bucket name.
--
-- When using this action with an access point, you must direct requests to
-- the access point hostname. The access point hostname takes the form
-- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
-- When using this action with an access point through the Amazon Web
-- Services SDKs, you provide the access point ARN in place of the bucket
-- name. For more information about access point ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
-- in the /Amazon S3 User Guide/.
--
-- When using this action with Amazon S3 on Outposts, you must direct
-- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
-- takes the form
-- /AccessPointName/-/AccountId/./outpostID/.s3-outposts./Region/.amazonaws.com.
-- When using this action using S3 on Outposts through the Amazon Web
-- Services SDKs, you provide the Outposts bucket ARN in place of the
-- bucket name. For more information about S3 on Outposts ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using S3 on Outposts>
-- in the /Amazon S3 User Guide/.
--
-- 'nextContinuationToken', 'listObjectsV2Response_nextContinuationToken' - @NextContinuationToken@ is sent when @isTruncated@ is true, which means
-- there are more keys in the bucket that can be listed. The next list
-- requests to Amazon S3 can be continued with this
-- @NextContinuationToken@. @NextContinuationToken@ is obfuscated and is
-- not a real key
--
-- 'maxKeys', 'listObjectsV2Response_maxKeys' - Sets the maximum number of keys returned in the response. By default the
-- action returns up to 1,000 key names. The response might contain fewer
-- keys but will never contain more.
--
-- 'isTruncated', 'listObjectsV2Response_isTruncated' - Set to false if all of the results were returned. Set to true if more
-- keys are available to return. If the number of results exceeds that
-- specified by MaxKeys, all of the results might not be returned.
--
-- 'delimiter', 'listObjectsV2Response_delimiter' - Causes keys that contain the same string between the prefix and the
-- first occurrence of the delimiter to be rolled up into a single result
-- element in the CommonPrefixes collection. These rolled-up keys are not
-- returned elsewhere in the response. Each rolled-up result counts as only
-- one return against the @MaxKeys@ value.
--
-- 'httpStatus', 'listObjectsV2Response_httpStatus' - The response's http status code.
newListObjectsV2Response ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListObjectsV2Response
newListObjectsV2Response pHttpStatus_ =
  ListObjectsV2Response'
    { startAfter =
        Prelude.Nothing,
      keyCount = Prelude.Nothing,
      contents = Prelude.Nothing,
      continuationToken = Prelude.Nothing,
      prefix = Prelude.Nothing,
      commonPrefixes = Prelude.Nothing,
      encodingType = Prelude.Nothing,
      name = Prelude.Nothing,
      nextContinuationToken = Prelude.Nothing,
      maxKeys = Prelude.Nothing,
      isTruncated = Prelude.Nothing,
      delimiter = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If StartAfter was sent with the request, it is included in the response.
listObjectsV2Response_startAfter :: Lens.Lens' ListObjectsV2Response (Prelude.Maybe Prelude.Text)
listObjectsV2Response_startAfter = Lens.lens (\ListObjectsV2Response' {startAfter} -> startAfter) (\s@ListObjectsV2Response' {} a -> s {startAfter = a} :: ListObjectsV2Response)

-- | KeyCount is the number of keys returned with this request. KeyCount will
-- always be less than or equals to MaxKeys field. Say you ask for 50 keys,
-- your result will include less than equals 50 keys
listObjectsV2Response_keyCount :: Lens.Lens' ListObjectsV2Response (Prelude.Maybe Prelude.Int)
listObjectsV2Response_keyCount = Lens.lens (\ListObjectsV2Response' {keyCount} -> keyCount) (\s@ListObjectsV2Response' {} a -> s {keyCount = a} :: ListObjectsV2Response)

-- | Metadata about each object returned.
listObjectsV2Response_contents :: Lens.Lens' ListObjectsV2Response (Prelude.Maybe [Object])
listObjectsV2Response_contents = Lens.lens (\ListObjectsV2Response' {contents} -> contents) (\s@ListObjectsV2Response' {} a -> s {contents = a} :: ListObjectsV2Response) Prelude.. Lens.mapping Lens.coerced

-- | If ContinuationToken was sent with the request, it is included in the
-- response.
listObjectsV2Response_continuationToken :: Lens.Lens' ListObjectsV2Response (Prelude.Maybe Prelude.Text)
listObjectsV2Response_continuationToken = Lens.lens (\ListObjectsV2Response' {continuationToken} -> continuationToken) (\s@ListObjectsV2Response' {} a -> s {continuationToken = a} :: ListObjectsV2Response)

-- | Keys that begin with the indicated prefix.
listObjectsV2Response_prefix :: Lens.Lens' ListObjectsV2Response (Prelude.Maybe Prelude.Text)
listObjectsV2Response_prefix = Lens.lens (\ListObjectsV2Response' {prefix} -> prefix) (\s@ListObjectsV2Response' {} a -> s {prefix = a} :: ListObjectsV2Response)

-- | All of the keys (up to 1,000) rolled up into a common prefix count as a
-- single return when calculating the number of returns.
--
-- A response can contain @CommonPrefixes@ only if you specify a delimiter.
--
-- @CommonPrefixes@ contains all (if there are any) keys between @Prefix@
-- and the next occurrence of the string specified by a delimiter.
--
-- @CommonPrefixes@ lists keys that act like subdirectories in the
-- directory specified by @Prefix@.
--
-- For example, if the prefix is @notes\/@ and the delimiter is a slash
-- (@\/@) as in @notes\/summer\/july@, the common prefix is
-- @notes\/summer\/@. All of the keys that roll up into a common prefix
-- count as a single return when calculating the number of returns.
listObjectsV2Response_commonPrefixes :: Lens.Lens' ListObjectsV2Response (Prelude.Maybe [CommonPrefix])
listObjectsV2Response_commonPrefixes = Lens.lens (\ListObjectsV2Response' {commonPrefixes} -> commonPrefixes) (\s@ListObjectsV2Response' {} a -> s {commonPrefixes = a} :: ListObjectsV2Response) Prelude.. Lens.mapping Lens.coerced

-- | Encoding type used by Amazon S3 to encode object key names in the XML
-- response.
--
-- If you specify the encoding-type request parameter, Amazon S3 includes
-- this element in the response, and returns encoded key name values in the
-- following response elements:
--
-- @Delimiter, Prefix, Key,@ and @StartAfter@.
listObjectsV2Response_encodingType :: Lens.Lens' ListObjectsV2Response (Prelude.Maybe EncodingType)
listObjectsV2Response_encodingType = Lens.lens (\ListObjectsV2Response' {encodingType} -> encodingType) (\s@ListObjectsV2Response' {} a -> s {encodingType = a} :: ListObjectsV2Response)

-- | The bucket name.
--
-- When using this action with an access point, you must direct requests to
-- the access point hostname. The access point hostname takes the form
-- /AccessPointName/-/AccountId/.s3-accesspoint./Region/.amazonaws.com.
-- When using this action with an access point through the Amazon Web
-- Services SDKs, you provide the access point ARN in place of the bucket
-- name. For more information about access point ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html Using access points>
-- in the /Amazon S3 User Guide/.
--
-- When using this action with Amazon S3 on Outposts, you must direct
-- requests to the S3 on Outposts hostname. The S3 on Outposts hostname
-- takes the form
-- /AccessPointName/-/AccountId/./outpostID/.s3-outposts./Region/.amazonaws.com.
-- When using this action using S3 on Outposts through the Amazon Web
-- Services SDKs, you provide the Outposts bucket ARN in place of the
-- bucket name. For more information about S3 on Outposts ARNs, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html Using S3 on Outposts>
-- in the /Amazon S3 User Guide/.
listObjectsV2Response_name :: Lens.Lens' ListObjectsV2Response (Prelude.Maybe BucketName)
listObjectsV2Response_name = Lens.lens (\ListObjectsV2Response' {name} -> name) (\s@ListObjectsV2Response' {} a -> s {name = a} :: ListObjectsV2Response)

-- | @NextContinuationToken@ is sent when @isTruncated@ is true, which means
-- there are more keys in the bucket that can be listed. The next list
-- requests to Amazon S3 can be continued with this
-- @NextContinuationToken@. @NextContinuationToken@ is obfuscated and is
-- not a real key
listObjectsV2Response_nextContinuationToken :: Lens.Lens' ListObjectsV2Response (Prelude.Maybe Prelude.Text)
listObjectsV2Response_nextContinuationToken = Lens.lens (\ListObjectsV2Response' {nextContinuationToken} -> nextContinuationToken) (\s@ListObjectsV2Response' {} a -> s {nextContinuationToken = a} :: ListObjectsV2Response)

-- | Sets the maximum number of keys returned in the response. By default the
-- action returns up to 1,000 key names. The response might contain fewer
-- keys but will never contain more.
listObjectsV2Response_maxKeys :: Lens.Lens' ListObjectsV2Response (Prelude.Maybe Prelude.Int)
listObjectsV2Response_maxKeys = Lens.lens (\ListObjectsV2Response' {maxKeys} -> maxKeys) (\s@ListObjectsV2Response' {} a -> s {maxKeys = a} :: ListObjectsV2Response)

-- | Set to false if all of the results were returned. Set to true if more
-- keys are available to return. If the number of results exceeds that
-- specified by MaxKeys, all of the results might not be returned.
listObjectsV2Response_isTruncated :: Lens.Lens' ListObjectsV2Response (Prelude.Maybe Prelude.Bool)
listObjectsV2Response_isTruncated = Lens.lens (\ListObjectsV2Response' {isTruncated} -> isTruncated) (\s@ListObjectsV2Response' {} a -> s {isTruncated = a} :: ListObjectsV2Response)

-- | Causes keys that contain the same string between the prefix and the
-- first occurrence of the delimiter to be rolled up into a single result
-- element in the CommonPrefixes collection. These rolled-up keys are not
-- returned elsewhere in the response. Each rolled-up result counts as only
-- one return against the @MaxKeys@ value.
listObjectsV2Response_delimiter :: Lens.Lens' ListObjectsV2Response (Prelude.Maybe Delimiter)
listObjectsV2Response_delimiter = Lens.lens (\ListObjectsV2Response' {delimiter} -> delimiter) (\s@ListObjectsV2Response' {} a -> s {delimiter = a} :: ListObjectsV2Response)

-- | The response's http status code.
listObjectsV2Response_httpStatus :: Lens.Lens' ListObjectsV2Response Prelude.Int
listObjectsV2Response_httpStatus = Lens.lens (\ListObjectsV2Response' {httpStatus} -> httpStatus) (\s@ListObjectsV2Response' {} a -> s {httpStatus = a} :: ListObjectsV2Response)

instance Prelude.NFData ListObjectsV2Response