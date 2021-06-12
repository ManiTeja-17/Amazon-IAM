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
-- Module      : Network.AWS.WAFRegional.Types.LoggingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAFRegional.Types.LoggingConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.WAFRegional.Types.FieldToMatch

-- | This is __AWS WAF Classic__ documentation. For more information, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html AWS WAF Classic>
-- in the developer guide.
--
-- __For the latest version of AWS WAF__, use the AWS WAFV2 API and see the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html AWS WAF Developer Guide>.
-- With the latest version, AWS WAF has a single set of endpoints for
-- regional and global use.
--
-- The Amazon Kinesis Data Firehose, @RedactedFields@ information, and the
-- web ACL Amazon Resource Name (ARN).
--
-- /See:/ 'newLoggingConfiguration' smart constructor.
data LoggingConfiguration = LoggingConfiguration'
  { -- | The parts of the request that you want redacted from the logs. For
    -- example, if you redact the cookie field, the cookie field in the
    -- firehose will be @xxx@.
    redactedFields :: Core.Maybe [FieldToMatch],
    -- | The Amazon Resource Name (ARN) of the web ACL that you want to associate
    -- with @LogDestinationConfigs@.
    resourceArn :: Core.Text,
    -- | An array of Amazon Kinesis Data Firehose ARNs.
    logDestinationConfigs :: Core.NonEmpty Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'LoggingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'redactedFields', 'loggingConfiguration_redactedFields' - The parts of the request that you want redacted from the logs. For
-- example, if you redact the cookie field, the cookie field in the
-- firehose will be @xxx@.
--
-- 'resourceArn', 'loggingConfiguration_resourceArn' - The Amazon Resource Name (ARN) of the web ACL that you want to associate
-- with @LogDestinationConfigs@.
--
-- 'logDestinationConfigs', 'loggingConfiguration_logDestinationConfigs' - An array of Amazon Kinesis Data Firehose ARNs.
newLoggingConfiguration ::
  -- | 'resourceArn'
  Core.Text ->
  -- | 'logDestinationConfigs'
  Core.NonEmpty Core.Text ->
  LoggingConfiguration
newLoggingConfiguration
  pResourceArn_
  pLogDestinationConfigs_ =
    LoggingConfiguration'
      { redactedFields =
          Core.Nothing,
        resourceArn = pResourceArn_,
        logDestinationConfigs =
          Lens._Coerce Lens.# pLogDestinationConfigs_
      }

-- | The parts of the request that you want redacted from the logs. For
-- example, if you redact the cookie field, the cookie field in the
-- firehose will be @xxx@.
loggingConfiguration_redactedFields :: Lens.Lens' LoggingConfiguration (Core.Maybe [FieldToMatch])
loggingConfiguration_redactedFields = Lens.lens (\LoggingConfiguration' {redactedFields} -> redactedFields) (\s@LoggingConfiguration' {} a -> s {redactedFields = a} :: LoggingConfiguration) Core.. Lens.mapping Lens._Coerce

-- | The Amazon Resource Name (ARN) of the web ACL that you want to associate
-- with @LogDestinationConfigs@.
loggingConfiguration_resourceArn :: Lens.Lens' LoggingConfiguration Core.Text
loggingConfiguration_resourceArn = Lens.lens (\LoggingConfiguration' {resourceArn} -> resourceArn) (\s@LoggingConfiguration' {} a -> s {resourceArn = a} :: LoggingConfiguration)

-- | An array of Amazon Kinesis Data Firehose ARNs.
loggingConfiguration_logDestinationConfigs :: Lens.Lens' LoggingConfiguration (Core.NonEmpty Core.Text)
loggingConfiguration_logDestinationConfigs = Lens.lens (\LoggingConfiguration' {logDestinationConfigs} -> logDestinationConfigs) (\s@LoggingConfiguration' {} a -> s {logDestinationConfigs = a} :: LoggingConfiguration) Core.. Lens._Coerce

instance Core.FromJSON LoggingConfiguration where
  parseJSON =
    Core.withObject
      "LoggingConfiguration"
      ( \x ->
          LoggingConfiguration'
            Core.<$> (x Core..:? "RedactedFields" Core..!= Core.mempty)
            Core.<*> (x Core..: "ResourceArn")
            Core.<*> (x Core..: "LogDestinationConfigs")
      )

instance Core.Hashable LoggingConfiguration

instance Core.NFData LoggingConfiguration

instance Core.ToJSON LoggingConfiguration where
  toJSON LoggingConfiguration' {..} =
    Core.object
      ( Core.catMaybes
          [ ("RedactedFields" Core..=) Core.<$> redactedFields,
            Core.Just ("ResourceArn" Core..= resourceArn),
            Core.Just
              ( "LogDestinationConfigs"
                  Core..= logDestinationConfigs
              )
          ]
      )
