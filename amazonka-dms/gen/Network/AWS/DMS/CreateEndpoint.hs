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
-- Module      : Network.AWS.DMS.CreateEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an endpoint using the provided settings.
module Network.AWS.DMS.CreateEndpoint
  ( -- * Creating a Request
    CreateEndpoint (..),
    newCreateEndpoint,

    -- * Request Lenses
    createEndpoint_sslMode,
    createEndpoint_mongoDbSettings,
    createEndpoint_neptuneSettings,
    createEndpoint_elasticsearchSettings,
    createEndpoint_externalTableDefinition,
    createEndpoint_oracleSettings,
    createEndpoint_postgreSQLSettings,
    createEndpoint_serviceAccessRoleArn,
    createEndpoint_certificateArn,
    createEndpoint_s3Settings,
    createEndpoint_serverName,
    createEndpoint_microsoftSQLServerSettings,
    createEndpoint_kmsKeyId,
    createEndpoint_iBMDb2Settings,
    createEndpoint_mySQLSettings,
    createEndpoint_password,
    createEndpoint_dmsTransferSettings,
    createEndpoint_tags,
    createEndpoint_port,
    createEndpoint_resourceIdentifier,
    createEndpoint_redshiftSettings,
    createEndpoint_username,
    createEndpoint_kafkaSettings,
    createEndpoint_docDbSettings,
    createEndpoint_dynamoDbSettings,
    createEndpoint_extraConnectionAttributes,
    createEndpoint_kinesisSettings,
    createEndpoint_sybaseSettings,
    createEndpoint_databaseName,
    createEndpoint_endpointIdentifier,
    createEndpoint_endpointType,
    createEndpoint_engineName,

    -- * Destructuring the Response
    CreateEndpointResponse (..),
    newCreateEndpointResponse,

    -- * Response Lenses
    createEndpointResponse_endpoint,
    createEndpointResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newCreateEndpoint' smart constructor.
data CreateEndpoint = CreateEndpoint'
  { -- | The Secure Sockets Layer (SSL) mode to use for the SSL connection. The
    -- default is @none@
    sslMode :: Core.Maybe DmsSslModeValue,
    -- | Settings in JSON format for the source MongoDB endpoint. For more
    -- information about the available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration Using MongoDB as a Target for AWS Database Migration Service>
    -- in the /AWS Database Migration Service User Guide./
    mongoDbSettings :: Core.Maybe MongoDbSettings,
    -- | Settings in JSON format for the target Amazon Neptune endpoint. For more
    -- information about the available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings Specifying Endpoint Settings for Amazon Neptune as a Target>
    -- in the /AWS Database Migration Service User Guide./
    neptuneSettings :: Core.Maybe NeptuneSettings,
    -- | Settings in JSON format for the target Elasticsearch endpoint. For more
    -- information about the available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration Extra Connection Attributes When Using Elasticsearch as a Target for AWS DMS>
    -- in the /AWS Database Migration Service User Guide/.
    elasticsearchSettings :: Core.Maybe ElasticsearchSettings,
    -- | The external table definition.
    externalTableDefinition :: Core.Maybe Core.Text,
    -- | Settings in JSON format for the source and target Oracle endpoint. For
    -- information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html Extra connection attributes when using Oracle as a source for AWS DMS>
    -- and
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html Extra connection attributes when using Oracle as a target for AWS DMS>
    -- in the /AWS Database Migration Service User Guide./
    oracleSettings :: Core.Maybe OracleSettings,
    -- | Settings in JSON format for the source and target PostgreSQL endpoint.
    -- For information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html Extra connection attributes when using PostgreSQL as a source for AWS DMS>
    -- and
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html Extra connection attributes when using PostgreSQL as a target for AWS DMS>
    -- in the /AWS Database Migration Service User Guide./
    postgreSQLSettings :: Core.Maybe PostgreSQLSettings,
    -- | The Amazon Resource Name (ARN) for the service access role that you want
    -- to use to create the endpoint.
    serviceAccessRoleArn :: Core.Maybe Core.Text,
    -- | The Amazon Resource Name (ARN) for the certificate.
    certificateArn :: Core.Maybe Core.Text,
    -- | Settings in JSON format for the target Amazon S3 endpoint. For more
    -- information about the available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring Extra Connection Attributes When Using Amazon S3 as a Target for AWS DMS>
    -- in the /AWS Database Migration Service User Guide./
    s3Settings :: Core.Maybe S3Settings,
    -- | The name of the server where the endpoint database resides.
    serverName :: Core.Maybe Core.Text,
    -- | Settings in JSON format for the source and target Microsoft SQL Server
    -- endpoint. For information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html Extra connection attributes when using SQL Server as a source for AWS DMS>
    -- and
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html Extra connection attributes when using SQL Server as a target for AWS DMS>
    -- in the /AWS Database Migration Service User Guide./
    microsoftSQLServerSettings :: Core.Maybe MicrosoftSQLServerSettings,
    -- | An AWS KMS key identifier that is used to encrypt the connection
    -- parameters for the endpoint.
    --
    -- If you don\'t specify a value for the @KmsKeyId@ parameter, then AWS DMS
    -- uses your default encryption key.
    --
    -- AWS KMS creates the default encryption key for your AWS account. Your
    -- AWS account has a different default encryption key for each AWS Region.
    kmsKeyId :: Core.Maybe Core.Text,
    -- | Settings in JSON format for the source IBM Db2 LUW endpoint. For
    -- information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html Extra connection attributes when using Db2 LUW as a source for AWS DMS>
    -- in the /AWS Database Migration Service User Guide./
    iBMDb2Settings :: Core.Maybe IBMDb2Settings,
    -- | Settings in JSON format for the source and target MySQL endpoint. For
    -- information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html Extra connection attributes when using MySQL as a source for AWS DMS>
    -- and
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html Extra connection attributes when using a MySQL-compatible database as a target for AWS DMS>
    -- in the /AWS Database Migration Service User Guide./
    mySQLSettings :: Core.Maybe MySQLSettings,
    -- | The password to be used to log in to the endpoint database.
    password :: Core.Maybe (Core.Sensitive Core.Text),
    -- | The settings in JSON format for the DMS transfer type of source
    -- endpoint.
    --
    -- Possible settings include the following:
    --
    -- -   @ServiceAccessRoleArn@ - The IAM role that has permission to access
    --     the Amazon S3 bucket.
    --
    -- -   @BucketName@ - The name of the S3 bucket to use.
    --
    -- -   @CompressionType@ - An optional parameter to use GZIP to compress
    --     the target files. To use GZIP, set this value to @NONE@ (the
    --     default). To keep the files uncompressed, don\'t use this value.
    --
    -- Shorthand syntax for these settings is as follows:
    -- @ServiceAccessRoleArn=string,BucketName=string,CompressionType=string@
    --
    -- JSON syntax for these settings is as follows:
    -- @{ \"ServiceAccessRoleArn\": \"string\", \"BucketName\": \"string\", \"CompressionType\": \"none\"|\"gzip\" } @
    dmsTransferSettings :: Core.Maybe DmsTransferSettings,
    -- | One or more tags to be assigned to the endpoint.
    tags :: Core.Maybe [Tag],
    -- | The port used by the endpoint database.
    port :: Core.Maybe Core.Int,
    -- | A friendly name for the resource identifier at the end of the
    -- @EndpointArn@ response parameter that is returned in the created
    -- @Endpoint@ object. The value for this parameter can have up to 31
    -- characters. It can contain only ASCII letters, digits, and hyphen
    -- (\'-\'). Also, it can\'t end with a hyphen or contain two consecutive
    -- hyphens, and can only begin with a letter, such as @Example-App-ARN1@.
    -- For example, this value might result in the @EndpointArn@ value
    -- @arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1@. If you don\'t
    -- specify a @ResourceIdentifier@ value, AWS DMS generates a default
    -- identifier value for the end of @EndpointArn@.
    resourceIdentifier :: Core.Maybe Core.Text,
    redshiftSettings :: Core.Maybe RedshiftSettings,
    -- | The user name to be used to log in to the endpoint database.
    username :: Core.Maybe Core.Text,
    -- | Settings in JSON format for the target Apache Kafka endpoint. For more
    -- information about the available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html Using Apache Kafka as a Target for AWS Database Migration Service>
    -- in the /AWS Database Migration Service User Guide./
    kafkaSettings :: Core.Maybe KafkaSettings,
    docDbSettings :: Core.Maybe DocDbSettings,
    -- | Settings in JSON format for the target Amazon DynamoDB endpoint. For
    -- information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html Using Object Mapping to Migrate Data to DynamoDB>
    -- in the /AWS Database Migration Service User Guide./
    dynamoDbSettings :: Core.Maybe DynamoDbSettings,
    -- | Additional attributes associated with the connection. Each attribute is
    -- specified as a name-value pair associated by an equal sign (=). Multiple
    -- attributes are separated by a semicolon (;) with no additional white
    -- space. For information on the attributes available for connecting your
    -- source or target endpoint, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Endpoints.html Working with AWS DMS Endpoints>
    -- in the /AWS Database Migration Service User Guide./
    extraConnectionAttributes :: Core.Maybe Core.Text,
    -- | Settings in JSON format for the target endpoint for Amazon Kinesis Data
    -- Streams. For more information about the available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html Using Amazon Kinesis Data Streams as a Target for AWS Database Migration Service>
    -- in the /AWS Database Migration Service User Guide./
    kinesisSettings :: Core.Maybe KinesisSettings,
    -- | Settings in JSON format for the source and target SAP ASE endpoint. For
    -- information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html Extra connection attributes when using SAP ASE as a source for AWS DMS>
    -- and
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html Extra connection attributes when using SAP ASE as a target for AWS DMS>
    -- in the /AWS Database Migration Service User Guide./
    sybaseSettings :: Core.Maybe SybaseSettings,
    -- | The name of the endpoint database.
    databaseName :: Core.Maybe Core.Text,
    -- | The database endpoint identifier. Identifiers must begin with a letter
    -- and must contain only ASCII letters, digits, and hyphens. They can\'t
    -- end with a hyphen, or contain two consecutive hyphens.
    endpointIdentifier :: Core.Text,
    -- | The type of endpoint. Valid values are @source@ and @target@.
    endpointType :: ReplicationEndpointTypeValue,
    -- | The type of engine for the endpoint. Valid values, depending on the
    -- @EndpointType@ value, include @\"mysql\"@, @\"oracle\"@, @\"postgres\"@,
    -- @\"mariadb\"@, @\"aurora\"@, @\"aurora-postgresql\"@, @\"redshift\"@,
    -- @\"s3\"@, @\"db2\"@, @\"azuredb\"@, @\"sybase\"@, @\"dynamodb\"@,
    -- @\"mongodb\"@, @\"kinesis\"@, @\"kafka\"@, @\"elasticsearch\"@,
    -- @\"docdb\"@, @\"sqlserver\"@, and @\"neptune\"@.
    engineName :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sslMode', 'createEndpoint_sslMode' - The Secure Sockets Layer (SSL) mode to use for the SSL connection. The
-- default is @none@
--
-- 'mongoDbSettings', 'createEndpoint_mongoDbSettings' - Settings in JSON format for the source MongoDB endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration Using MongoDB as a Target for AWS Database Migration Service>
-- in the /AWS Database Migration Service User Guide./
--
-- 'neptuneSettings', 'createEndpoint_neptuneSettings' - Settings in JSON format for the target Amazon Neptune endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings Specifying Endpoint Settings for Amazon Neptune as a Target>
-- in the /AWS Database Migration Service User Guide./
--
-- 'elasticsearchSettings', 'createEndpoint_elasticsearchSettings' - Settings in JSON format for the target Elasticsearch endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration Extra Connection Attributes When Using Elasticsearch as a Target for AWS DMS>
-- in the /AWS Database Migration Service User Guide/.
--
-- 'externalTableDefinition', 'createEndpoint_externalTableDefinition' - The external table definition.
--
-- 'oracleSettings', 'createEndpoint_oracleSettings' - Settings in JSON format for the source and target Oracle endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html Extra connection attributes when using Oracle as a source for AWS DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html Extra connection attributes when using Oracle as a target for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
--
-- 'postgreSQLSettings', 'createEndpoint_postgreSQLSettings' - Settings in JSON format for the source and target PostgreSQL endpoint.
-- For information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html Extra connection attributes when using PostgreSQL as a source for AWS DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html Extra connection attributes when using PostgreSQL as a target for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
--
-- 'serviceAccessRoleArn', 'createEndpoint_serviceAccessRoleArn' - The Amazon Resource Name (ARN) for the service access role that you want
-- to use to create the endpoint.
--
-- 'certificateArn', 'createEndpoint_certificateArn' - The Amazon Resource Name (ARN) for the certificate.
--
-- 's3Settings', 'createEndpoint_s3Settings' - Settings in JSON format for the target Amazon S3 endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring Extra Connection Attributes When Using Amazon S3 as a Target for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
--
-- 'serverName', 'createEndpoint_serverName' - The name of the server where the endpoint database resides.
--
-- 'microsoftSQLServerSettings', 'createEndpoint_microsoftSQLServerSettings' - Settings in JSON format for the source and target Microsoft SQL Server
-- endpoint. For information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html Extra connection attributes when using SQL Server as a source for AWS DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html Extra connection attributes when using SQL Server as a target for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
--
-- 'kmsKeyId', 'createEndpoint_kmsKeyId' - An AWS KMS key identifier that is used to encrypt the connection
-- parameters for the endpoint.
--
-- If you don\'t specify a value for the @KmsKeyId@ parameter, then AWS DMS
-- uses your default encryption key.
--
-- AWS KMS creates the default encryption key for your AWS account. Your
-- AWS account has a different default encryption key for each AWS Region.
--
-- 'iBMDb2Settings', 'createEndpoint_iBMDb2Settings' - Settings in JSON format for the source IBM Db2 LUW endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html Extra connection attributes when using Db2 LUW as a source for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
--
-- 'mySQLSettings', 'createEndpoint_mySQLSettings' - Settings in JSON format for the source and target MySQL endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html Extra connection attributes when using MySQL as a source for AWS DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html Extra connection attributes when using a MySQL-compatible database as a target for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
--
-- 'password', 'createEndpoint_password' - The password to be used to log in to the endpoint database.
--
-- 'dmsTransferSettings', 'createEndpoint_dmsTransferSettings' - The settings in JSON format for the DMS transfer type of source
-- endpoint.
--
-- Possible settings include the following:
--
-- -   @ServiceAccessRoleArn@ - The IAM role that has permission to access
--     the Amazon S3 bucket.
--
-- -   @BucketName@ - The name of the S3 bucket to use.
--
-- -   @CompressionType@ - An optional parameter to use GZIP to compress
--     the target files. To use GZIP, set this value to @NONE@ (the
--     default). To keep the files uncompressed, don\'t use this value.
--
-- Shorthand syntax for these settings is as follows:
-- @ServiceAccessRoleArn=string,BucketName=string,CompressionType=string@
--
-- JSON syntax for these settings is as follows:
-- @{ \"ServiceAccessRoleArn\": \"string\", \"BucketName\": \"string\", \"CompressionType\": \"none\"|\"gzip\" } @
--
-- 'tags', 'createEndpoint_tags' - One or more tags to be assigned to the endpoint.
--
-- 'port', 'createEndpoint_port' - The port used by the endpoint database.
--
-- 'resourceIdentifier', 'createEndpoint_resourceIdentifier' - A friendly name for the resource identifier at the end of the
-- @EndpointArn@ response parameter that is returned in the created
-- @Endpoint@ object. The value for this parameter can have up to 31
-- characters. It can contain only ASCII letters, digits, and hyphen
-- (\'-\'). Also, it can\'t end with a hyphen or contain two consecutive
-- hyphens, and can only begin with a letter, such as @Example-App-ARN1@.
-- For example, this value might result in the @EndpointArn@ value
-- @arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1@. If you don\'t
-- specify a @ResourceIdentifier@ value, AWS DMS generates a default
-- identifier value for the end of @EndpointArn@.
--
-- 'redshiftSettings', 'createEndpoint_redshiftSettings' - Undocumented member.
--
-- 'username', 'createEndpoint_username' - The user name to be used to log in to the endpoint database.
--
-- 'kafkaSettings', 'createEndpoint_kafkaSettings' - Settings in JSON format for the target Apache Kafka endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html Using Apache Kafka as a Target for AWS Database Migration Service>
-- in the /AWS Database Migration Service User Guide./
--
-- 'docDbSettings', 'createEndpoint_docDbSettings' - Undocumented member.
--
-- 'dynamoDbSettings', 'createEndpoint_dynamoDbSettings' - Settings in JSON format for the target Amazon DynamoDB endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html Using Object Mapping to Migrate Data to DynamoDB>
-- in the /AWS Database Migration Service User Guide./
--
-- 'extraConnectionAttributes', 'createEndpoint_extraConnectionAttributes' - Additional attributes associated with the connection. Each attribute is
-- specified as a name-value pair associated by an equal sign (=). Multiple
-- attributes are separated by a semicolon (;) with no additional white
-- space. For information on the attributes available for connecting your
-- source or target endpoint, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Endpoints.html Working with AWS DMS Endpoints>
-- in the /AWS Database Migration Service User Guide./
--
-- 'kinesisSettings', 'createEndpoint_kinesisSettings' - Settings in JSON format for the target endpoint for Amazon Kinesis Data
-- Streams. For more information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html Using Amazon Kinesis Data Streams as a Target for AWS Database Migration Service>
-- in the /AWS Database Migration Service User Guide./
--
-- 'sybaseSettings', 'createEndpoint_sybaseSettings' - Settings in JSON format for the source and target SAP ASE endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html Extra connection attributes when using SAP ASE as a source for AWS DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html Extra connection attributes when using SAP ASE as a target for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
--
-- 'databaseName', 'createEndpoint_databaseName' - The name of the endpoint database.
--
-- 'endpointIdentifier', 'createEndpoint_endpointIdentifier' - The database endpoint identifier. Identifiers must begin with a letter
-- and must contain only ASCII letters, digits, and hyphens. They can\'t
-- end with a hyphen, or contain two consecutive hyphens.
--
-- 'endpointType', 'createEndpoint_endpointType' - The type of endpoint. Valid values are @source@ and @target@.
--
-- 'engineName', 'createEndpoint_engineName' - The type of engine for the endpoint. Valid values, depending on the
-- @EndpointType@ value, include @\"mysql\"@, @\"oracle\"@, @\"postgres\"@,
-- @\"mariadb\"@, @\"aurora\"@, @\"aurora-postgresql\"@, @\"redshift\"@,
-- @\"s3\"@, @\"db2\"@, @\"azuredb\"@, @\"sybase\"@, @\"dynamodb\"@,
-- @\"mongodb\"@, @\"kinesis\"@, @\"kafka\"@, @\"elasticsearch\"@,
-- @\"docdb\"@, @\"sqlserver\"@, and @\"neptune\"@.
newCreateEndpoint ::
  -- | 'endpointIdentifier'
  Core.Text ->
  -- | 'endpointType'
  ReplicationEndpointTypeValue ->
  -- | 'engineName'
  Core.Text ->
  CreateEndpoint
newCreateEndpoint
  pEndpointIdentifier_
  pEndpointType_
  pEngineName_ =
    CreateEndpoint'
      { sslMode = Core.Nothing,
        mongoDbSettings = Core.Nothing,
        neptuneSettings = Core.Nothing,
        elasticsearchSettings = Core.Nothing,
        externalTableDefinition = Core.Nothing,
        oracleSettings = Core.Nothing,
        postgreSQLSettings = Core.Nothing,
        serviceAccessRoleArn = Core.Nothing,
        certificateArn = Core.Nothing,
        s3Settings = Core.Nothing,
        serverName = Core.Nothing,
        microsoftSQLServerSettings = Core.Nothing,
        kmsKeyId = Core.Nothing,
        iBMDb2Settings = Core.Nothing,
        mySQLSettings = Core.Nothing,
        password = Core.Nothing,
        dmsTransferSettings = Core.Nothing,
        tags = Core.Nothing,
        port = Core.Nothing,
        resourceIdentifier = Core.Nothing,
        redshiftSettings = Core.Nothing,
        username = Core.Nothing,
        kafkaSettings = Core.Nothing,
        docDbSettings = Core.Nothing,
        dynamoDbSettings = Core.Nothing,
        extraConnectionAttributes = Core.Nothing,
        kinesisSettings = Core.Nothing,
        sybaseSettings = Core.Nothing,
        databaseName = Core.Nothing,
        endpointIdentifier = pEndpointIdentifier_,
        endpointType = pEndpointType_,
        engineName = pEngineName_
      }

-- | The Secure Sockets Layer (SSL) mode to use for the SSL connection. The
-- default is @none@
createEndpoint_sslMode :: Lens.Lens' CreateEndpoint (Core.Maybe DmsSslModeValue)
createEndpoint_sslMode = Lens.lens (\CreateEndpoint' {sslMode} -> sslMode) (\s@CreateEndpoint' {} a -> s {sslMode = a} :: CreateEndpoint)

-- | Settings in JSON format for the source MongoDB endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration Using MongoDB as a Target for AWS Database Migration Service>
-- in the /AWS Database Migration Service User Guide./
createEndpoint_mongoDbSettings :: Lens.Lens' CreateEndpoint (Core.Maybe MongoDbSettings)
createEndpoint_mongoDbSettings = Lens.lens (\CreateEndpoint' {mongoDbSettings} -> mongoDbSettings) (\s@CreateEndpoint' {} a -> s {mongoDbSettings = a} :: CreateEndpoint)

-- | Settings in JSON format for the target Amazon Neptune endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings Specifying Endpoint Settings for Amazon Neptune as a Target>
-- in the /AWS Database Migration Service User Guide./
createEndpoint_neptuneSettings :: Lens.Lens' CreateEndpoint (Core.Maybe NeptuneSettings)
createEndpoint_neptuneSettings = Lens.lens (\CreateEndpoint' {neptuneSettings} -> neptuneSettings) (\s@CreateEndpoint' {} a -> s {neptuneSettings = a} :: CreateEndpoint)

-- | Settings in JSON format for the target Elasticsearch endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration Extra Connection Attributes When Using Elasticsearch as a Target for AWS DMS>
-- in the /AWS Database Migration Service User Guide/.
createEndpoint_elasticsearchSettings :: Lens.Lens' CreateEndpoint (Core.Maybe ElasticsearchSettings)
createEndpoint_elasticsearchSettings = Lens.lens (\CreateEndpoint' {elasticsearchSettings} -> elasticsearchSettings) (\s@CreateEndpoint' {} a -> s {elasticsearchSettings = a} :: CreateEndpoint)

-- | The external table definition.
createEndpoint_externalTableDefinition :: Lens.Lens' CreateEndpoint (Core.Maybe Core.Text)
createEndpoint_externalTableDefinition = Lens.lens (\CreateEndpoint' {externalTableDefinition} -> externalTableDefinition) (\s@CreateEndpoint' {} a -> s {externalTableDefinition = a} :: CreateEndpoint)

-- | Settings in JSON format for the source and target Oracle endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html Extra connection attributes when using Oracle as a source for AWS DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html Extra connection attributes when using Oracle as a target for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
createEndpoint_oracleSettings :: Lens.Lens' CreateEndpoint (Core.Maybe OracleSettings)
createEndpoint_oracleSettings = Lens.lens (\CreateEndpoint' {oracleSettings} -> oracleSettings) (\s@CreateEndpoint' {} a -> s {oracleSettings = a} :: CreateEndpoint)

-- | Settings in JSON format for the source and target PostgreSQL endpoint.
-- For information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html Extra connection attributes when using PostgreSQL as a source for AWS DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html Extra connection attributes when using PostgreSQL as a target for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
createEndpoint_postgreSQLSettings :: Lens.Lens' CreateEndpoint (Core.Maybe PostgreSQLSettings)
createEndpoint_postgreSQLSettings = Lens.lens (\CreateEndpoint' {postgreSQLSettings} -> postgreSQLSettings) (\s@CreateEndpoint' {} a -> s {postgreSQLSettings = a} :: CreateEndpoint)

-- | The Amazon Resource Name (ARN) for the service access role that you want
-- to use to create the endpoint.
createEndpoint_serviceAccessRoleArn :: Lens.Lens' CreateEndpoint (Core.Maybe Core.Text)
createEndpoint_serviceAccessRoleArn = Lens.lens (\CreateEndpoint' {serviceAccessRoleArn} -> serviceAccessRoleArn) (\s@CreateEndpoint' {} a -> s {serviceAccessRoleArn = a} :: CreateEndpoint)

-- | The Amazon Resource Name (ARN) for the certificate.
createEndpoint_certificateArn :: Lens.Lens' CreateEndpoint (Core.Maybe Core.Text)
createEndpoint_certificateArn = Lens.lens (\CreateEndpoint' {certificateArn} -> certificateArn) (\s@CreateEndpoint' {} a -> s {certificateArn = a} :: CreateEndpoint)

-- | Settings in JSON format for the target Amazon S3 endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring Extra Connection Attributes When Using Amazon S3 as a Target for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
createEndpoint_s3Settings :: Lens.Lens' CreateEndpoint (Core.Maybe S3Settings)
createEndpoint_s3Settings = Lens.lens (\CreateEndpoint' {s3Settings} -> s3Settings) (\s@CreateEndpoint' {} a -> s {s3Settings = a} :: CreateEndpoint)

-- | The name of the server where the endpoint database resides.
createEndpoint_serverName :: Lens.Lens' CreateEndpoint (Core.Maybe Core.Text)
createEndpoint_serverName = Lens.lens (\CreateEndpoint' {serverName} -> serverName) (\s@CreateEndpoint' {} a -> s {serverName = a} :: CreateEndpoint)

-- | Settings in JSON format for the source and target Microsoft SQL Server
-- endpoint. For information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html Extra connection attributes when using SQL Server as a source for AWS DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html Extra connection attributes when using SQL Server as a target for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
createEndpoint_microsoftSQLServerSettings :: Lens.Lens' CreateEndpoint (Core.Maybe MicrosoftSQLServerSettings)
createEndpoint_microsoftSQLServerSettings = Lens.lens (\CreateEndpoint' {microsoftSQLServerSettings} -> microsoftSQLServerSettings) (\s@CreateEndpoint' {} a -> s {microsoftSQLServerSettings = a} :: CreateEndpoint)

-- | An AWS KMS key identifier that is used to encrypt the connection
-- parameters for the endpoint.
--
-- If you don\'t specify a value for the @KmsKeyId@ parameter, then AWS DMS
-- uses your default encryption key.
--
-- AWS KMS creates the default encryption key for your AWS account. Your
-- AWS account has a different default encryption key for each AWS Region.
createEndpoint_kmsKeyId :: Lens.Lens' CreateEndpoint (Core.Maybe Core.Text)
createEndpoint_kmsKeyId = Lens.lens (\CreateEndpoint' {kmsKeyId} -> kmsKeyId) (\s@CreateEndpoint' {} a -> s {kmsKeyId = a} :: CreateEndpoint)

-- | Settings in JSON format for the source IBM Db2 LUW endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html Extra connection attributes when using Db2 LUW as a source for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
createEndpoint_iBMDb2Settings :: Lens.Lens' CreateEndpoint (Core.Maybe IBMDb2Settings)
createEndpoint_iBMDb2Settings = Lens.lens (\CreateEndpoint' {iBMDb2Settings} -> iBMDb2Settings) (\s@CreateEndpoint' {} a -> s {iBMDb2Settings = a} :: CreateEndpoint)

-- | Settings in JSON format for the source and target MySQL endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html Extra connection attributes when using MySQL as a source for AWS DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html Extra connection attributes when using a MySQL-compatible database as a target for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
createEndpoint_mySQLSettings :: Lens.Lens' CreateEndpoint (Core.Maybe MySQLSettings)
createEndpoint_mySQLSettings = Lens.lens (\CreateEndpoint' {mySQLSettings} -> mySQLSettings) (\s@CreateEndpoint' {} a -> s {mySQLSettings = a} :: CreateEndpoint)

-- | The password to be used to log in to the endpoint database.
createEndpoint_password :: Lens.Lens' CreateEndpoint (Core.Maybe Core.Text)
createEndpoint_password = Lens.lens (\CreateEndpoint' {password} -> password) (\s@CreateEndpoint' {} a -> s {password = a} :: CreateEndpoint) Core.. Lens.mapping Core._Sensitive

-- | The settings in JSON format for the DMS transfer type of source
-- endpoint.
--
-- Possible settings include the following:
--
-- -   @ServiceAccessRoleArn@ - The IAM role that has permission to access
--     the Amazon S3 bucket.
--
-- -   @BucketName@ - The name of the S3 bucket to use.
--
-- -   @CompressionType@ - An optional parameter to use GZIP to compress
--     the target files. To use GZIP, set this value to @NONE@ (the
--     default). To keep the files uncompressed, don\'t use this value.
--
-- Shorthand syntax for these settings is as follows:
-- @ServiceAccessRoleArn=string,BucketName=string,CompressionType=string@
--
-- JSON syntax for these settings is as follows:
-- @{ \"ServiceAccessRoleArn\": \"string\", \"BucketName\": \"string\", \"CompressionType\": \"none\"|\"gzip\" } @
createEndpoint_dmsTransferSettings :: Lens.Lens' CreateEndpoint (Core.Maybe DmsTransferSettings)
createEndpoint_dmsTransferSettings = Lens.lens (\CreateEndpoint' {dmsTransferSettings} -> dmsTransferSettings) (\s@CreateEndpoint' {} a -> s {dmsTransferSettings = a} :: CreateEndpoint)

-- | One or more tags to be assigned to the endpoint.
createEndpoint_tags :: Lens.Lens' CreateEndpoint (Core.Maybe [Tag])
createEndpoint_tags = Lens.lens (\CreateEndpoint' {tags} -> tags) (\s@CreateEndpoint' {} a -> s {tags = a} :: CreateEndpoint) Core.. Lens.mapping Lens._Coerce

-- | The port used by the endpoint database.
createEndpoint_port :: Lens.Lens' CreateEndpoint (Core.Maybe Core.Int)
createEndpoint_port = Lens.lens (\CreateEndpoint' {port} -> port) (\s@CreateEndpoint' {} a -> s {port = a} :: CreateEndpoint)

-- | A friendly name for the resource identifier at the end of the
-- @EndpointArn@ response parameter that is returned in the created
-- @Endpoint@ object. The value for this parameter can have up to 31
-- characters. It can contain only ASCII letters, digits, and hyphen
-- (\'-\'). Also, it can\'t end with a hyphen or contain two consecutive
-- hyphens, and can only begin with a letter, such as @Example-App-ARN1@.
-- For example, this value might result in the @EndpointArn@ value
-- @arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1@. If you don\'t
-- specify a @ResourceIdentifier@ value, AWS DMS generates a default
-- identifier value for the end of @EndpointArn@.
createEndpoint_resourceIdentifier :: Lens.Lens' CreateEndpoint (Core.Maybe Core.Text)
createEndpoint_resourceIdentifier = Lens.lens (\CreateEndpoint' {resourceIdentifier} -> resourceIdentifier) (\s@CreateEndpoint' {} a -> s {resourceIdentifier = a} :: CreateEndpoint)

-- | Undocumented member.
createEndpoint_redshiftSettings :: Lens.Lens' CreateEndpoint (Core.Maybe RedshiftSettings)
createEndpoint_redshiftSettings = Lens.lens (\CreateEndpoint' {redshiftSettings} -> redshiftSettings) (\s@CreateEndpoint' {} a -> s {redshiftSettings = a} :: CreateEndpoint)

-- | The user name to be used to log in to the endpoint database.
createEndpoint_username :: Lens.Lens' CreateEndpoint (Core.Maybe Core.Text)
createEndpoint_username = Lens.lens (\CreateEndpoint' {username} -> username) (\s@CreateEndpoint' {} a -> s {username = a} :: CreateEndpoint)

-- | Settings in JSON format for the target Apache Kafka endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html Using Apache Kafka as a Target for AWS Database Migration Service>
-- in the /AWS Database Migration Service User Guide./
createEndpoint_kafkaSettings :: Lens.Lens' CreateEndpoint (Core.Maybe KafkaSettings)
createEndpoint_kafkaSettings = Lens.lens (\CreateEndpoint' {kafkaSettings} -> kafkaSettings) (\s@CreateEndpoint' {} a -> s {kafkaSettings = a} :: CreateEndpoint)

-- | Undocumented member.
createEndpoint_docDbSettings :: Lens.Lens' CreateEndpoint (Core.Maybe DocDbSettings)
createEndpoint_docDbSettings = Lens.lens (\CreateEndpoint' {docDbSettings} -> docDbSettings) (\s@CreateEndpoint' {} a -> s {docDbSettings = a} :: CreateEndpoint)

-- | Settings in JSON format for the target Amazon DynamoDB endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html Using Object Mapping to Migrate Data to DynamoDB>
-- in the /AWS Database Migration Service User Guide./
createEndpoint_dynamoDbSettings :: Lens.Lens' CreateEndpoint (Core.Maybe DynamoDbSettings)
createEndpoint_dynamoDbSettings = Lens.lens (\CreateEndpoint' {dynamoDbSettings} -> dynamoDbSettings) (\s@CreateEndpoint' {} a -> s {dynamoDbSettings = a} :: CreateEndpoint)

-- | Additional attributes associated with the connection. Each attribute is
-- specified as a name-value pair associated by an equal sign (=). Multiple
-- attributes are separated by a semicolon (;) with no additional white
-- space. For information on the attributes available for connecting your
-- source or target endpoint, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Endpoints.html Working with AWS DMS Endpoints>
-- in the /AWS Database Migration Service User Guide./
createEndpoint_extraConnectionAttributes :: Lens.Lens' CreateEndpoint (Core.Maybe Core.Text)
createEndpoint_extraConnectionAttributes = Lens.lens (\CreateEndpoint' {extraConnectionAttributes} -> extraConnectionAttributes) (\s@CreateEndpoint' {} a -> s {extraConnectionAttributes = a} :: CreateEndpoint)

-- | Settings in JSON format for the target endpoint for Amazon Kinesis Data
-- Streams. For more information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html Using Amazon Kinesis Data Streams as a Target for AWS Database Migration Service>
-- in the /AWS Database Migration Service User Guide./
createEndpoint_kinesisSettings :: Lens.Lens' CreateEndpoint (Core.Maybe KinesisSettings)
createEndpoint_kinesisSettings = Lens.lens (\CreateEndpoint' {kinesisSettings} -> kinesisSettings) (\s@CreateEndpoint' {} a -> s {kinesisSettings = a} :: CreateEndpoint)

-- | Settings in JSON format for the source and target SAP ASE endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html Extra connection attributes when using SAP ASE as a source for AWS DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html Extra connection attributes when using SAP ASE as a target for AWS DMS>
-- in the /AWS Database Migration Service User Guide./
createEndpoint_sybaseSettings :: Lens.Lens' CreateEndpoint (Core.Maybe SybaseSettings)
createEndpoint_sybaseSettings = Lens.lens (\CreateEndpoint' {sybaseSettings} -> sybaseSettings) (\s@CreateEndpoint' {} a -> s {sybaseSettings = a} :: CreateEndpoint)

-- | The name of the endpoint database.
createEndpoint_databaseName :: Lens.Lens' CreateEndpoint (Core.Maybe Core.Text)
createEndpoint_databaseName = Lens.lens (\CreateEndpoint' {databaseName} -> databaseName) (\s@CreateEndpoint' {} a -> s {databaseName = a} :: CreateEndpoint)

-- | The database endpoint identifier. Identifiers must begin with a letter
-- and must contain only ASCII letters, digits, and hyphens. They can\'t
-- end with a hyphen, or contain two consecutive hyphens.
createEndpoint_endpointIdentifier :: Lens.Lens' CreateEndpoint Core.Text
createEndpoint_endpointIdentifier = Lens.lens (\CreateEndpoint' {endpointIdentifier} -> endpointIdentifier) (\s@CreateEndpoint' {} a -> s {endpointIdentifier = a} :: CreateEndpoint)

-- | The type of endpoint. Valid values are @source@ and @target@.
createEndpoint_endpointType :: Lens.Lens' CreateEndpoint ReplicationEndpointTypeValue
createEndpoint_endpointType = Lens.lens (\CreateEndpoint' {endpointType} -> endpointType) (\s@CreateEndpoint' {} a -> s {endpointType = a} :: CreateEndpoint)

-- | The type of engine for the endpoint. Valid values, depending on the
-- @EndpointType@ value, include @\"mysql\"@, @\"oracle\"@, @\"postgres\"@,
-- @\"mariadb\"@, @\"aurora\"@, @\"aurora-postgresql\"@, @\"redshift\"@,
-- @\"s3\"@, @\"db2\"@, @\"azuredb\"@, @\"sybase\"@, @\"dynamodb\"@,
-- @\"mongodb\"@, @\"kinesis\"@, @\"kafka\"@, @\"elasticsearch\"@,
-- @\"docdb\"@, @\"sqlserver\"@, and @\"neptune\"@.
createEndpoint_engineName :: Lens.Lens' CreateEndpoint Core.Text
createEndpoint_engineName = Lens.lens (\CreateEndpoint' {engineName} -> engineName) (\s@CreateEndpoint' {} a -> s {engineName = a} :: CreateEndpoint)

instance Core.AWSRequest CreateEndpoint where
  type
    AWSResponse CreateEndpoint =
      CreateEndpointResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateEndpointResponse'
            Core.<$> (x Core..?> "Endpoint")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

instance Core.Hashable CreateEndpoint

instance Core.NFData CreateEndpoint

instance Core.ToHeaders CreateEndpoint where
  toHeaders =
    Core.const
      ( Core.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonDMSv20160101.CreateEndpoint" ::
                          Core.ByteString
                      ),
            "Content-Type"
              Core.=# ("application/x-amz-json-1.1" :: Core.ByteString)
          ]
      )

instance Core.ToJSON CreateEndpoint where
  toJSON CreateEndpoint' {..} =
    Core.object
      ( Core.catMaybes
          [ ("SslMode" Core..=) Core.<$> sslMode,
            ("MongoDbSettings" Core..=) Core.<$> mongoDbSettings,
            ("NeptuneSettings" Core..=) Core.<$> neptuneSettings,
            ("ElasticsearchSettings" Core..=)
              Core.<$> elasticsearchSettings,
            ("ExternalTableDefinition" Core..=)
              Core.<$> externalTableDefinition,
            ("OracleSettings" Core..=) Core.<$> oracleSettings,
            ("PostgreSQLSettings" Core..=)
              Core.<$> postgreSQLSettings,
            ("ServiceAccessRoleArn" Core..=)
              Core.<$> serviceAccessRoleArn,
            ("CertificateArn" Core..=) Core.<$> certificateArn,
            ("S3Settings" Core..=) Core.<$> s3Settings,
            ("ServerName" Core..=) Core.<$> serverName,
            ("MicrosoftSQLServerSettings" Core..=)
              Core.<$> microsoftSQLServerSettings,
            ("KmsKeyId" Core..=) Core.<$> kmsKeyId,
            ("IBMDb2Settings" Core..=) Core.<$> iBMDb2Settings,
            ("MySQLSettings" Core..=) Core.<$> mySQLSettings,
            ("Password" Core..=) Core.<$> password,
            ("DmsTransferSettings" Core..=)
              Core.<$> dmsTransferSettings,
            ("Tags" Core..=) Core.<$> tags,
            ("Port" Core..=) Core.<$> port,
            ("ResourceIdentifier" Core..=)
              Core.<$> resourceIdentifier,
            ("RedshiftSettings" Core..=)
              Core.<$> redshiftSettings,
            ("Username" Core..=) Core.<$> username,
            ("KafkaSettings" Core..=) Core.<$> kafkaSettings,
            ("DocDbSettings" Core..=) Core.<$> docDbSettings,
            ("DynamoDbSettings" Core..=)
              Core.<$> dynamoDbSettings,
            ("ExtraConnectionAttributes" Core..=)
              Core.<$> extraConnectionAttributes,
            ("KinesisSettings" Core..=) Core.<$> kinesisSettings,
            ("SybaseSettings" Core..=) Core.<$> sybaseSettings,
            ("DatabaseName" Core..=) Core.<$> databaseName,
            Core.Just
              ("EndpointIdentifier" Core..= endpointIdentifier),
            Core.Just ("EndpointType" Core..= endpointType),
            Core.Just ("EngineName" Core..= engineName)
          ]
      )

instance Core.ToPath CreateEndpoint where
  toPath = Core.const "/"

instance Core.ToQuery CreateEndpoint where
  toQuery = Core.const Core.mempty

-- |
--
-- /See:/ 'newCreateEndpointResponse' smart constructor.
data CreateEndpointResponse = CreateEndpointResponse'
  { -- | The endpoint that was created.
    endpoint :: Core.Maybe Endpoint,
    -- | The response's http status code.
    httpStatus :: Core.Int
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- |
-- Create a value of 'CreateEndpointResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpoint', 'createEndpointResponse_endpoint' - The endpoint that was created.
--
-- 'httpStatus', 'createEndpointResponse_httpStatus' - The response's http status code.
newCreateEndpointResponse ::
  -- | 'httpStatus'
  Core.Int ->
  CreateEndpointResponse
newCreateEndpointResponse pHttpStatus_ =
  CreateEndpointResponse'
    { endpoint = Core.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The endpoint that was created.
createEndpointResponse_endpoint :: Lens.Lens' CreateEndpointResponse (Core.Maybe Endpoint)
createEndpointResponse_endpoint = Lens.lens (\CreateEndpointResponse' {endpoint} -> endpoint) (\s@CreateEndpointResponse' {} a -> s {endpoint = a} :: CreateEndpointResponse)

-- | The response's http status code.
createEndpointResponse_httpStatus :: Lens.Lens' CreateEndpointResponse Core.Int
createEndpointResponse_httpStatus = Lens.lens (\CreateEndpointResponse' {httpStatus} -> httpStatus) (\s@CreateEndpointResponse' {} a -> s {httpStatus = a} :: CreateEndpointResponse)

instance Core.NFData CreateEndpointResponse
