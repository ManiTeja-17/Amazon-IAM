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
-- Module      : Amazonka.Pinpoint.Types.TemplateConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Pinpoint.Types.TemplateConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.Pinpoint.Types.Template
import qualified Amazonka.Prelude as Prelude

-- | Specifies the message template to use for the message, for each type of
-- channel.
--
-- /See:/ 'newTemplateConfiguration' smart constructor.
data TemplateConfiguration = TemplateConfiguration'
  { -- | The SMS template to use for the message.
    sMSTemplate :: Prelude.Maybe Template,
    -- | The voice template to use for the message. This object isn\'t supported
    -- for campaigns.
    voiceTemplate :: Prelude.Maybe Template,
    -- | The push notification template to use for the message.
    pushTemplate :: Prelude.Maybe Template,
    -- | The email template to use for the message.
    emailTemplate :: Prelude.Maybe Template
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TemplateConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sMSTemplate', 'templateConfiguration_sMSTemplate' - The SMS template to use for the message.
--
-- 'voiceTemplate', 'templateConfiguration_voiceTemplate' - The voice template to use for the message. This object isn\'t supported
-- for campaigns.
--
-- 'pushTemplate', 'templateConfiguration_pushTemplate' - The push notification template to use for the message.
--
-- 'emailTemplate', 'templateConfiguration_emailTemplate' - The email template to use for the message.
newTemplateConfiguration ::
  TemplateConfiguration
newTemplateConfiguration =
  TemplateConfiguration'
    { sMSTemplate =
        Prelude.Nothing,
      voiceTemplate = Prelude.Nothing,
      pushTemplate = Prelude.Nothing,
      emailTemplate = Prelude.Nothing
    }

-- | The SMS template to use for the message.
templateConfiguration_sMSTemplate :: Lens.Lens' TemplateConfiguration (Prelude.Maybe Template)
templateConfiguration_sMSTemplate = Lens.lens (\TemplateConfiguration' {sMSTemplate} -> sMSTemplate) (\s@TemplateConfiguration' {} a -> s {sMSTemplate = a} :: TemplateConfiguration)

-- | The voice template to use for the message. This object isn\'t supported
-- for campaigns.
templateConfiguration_voiceTemplate :: Lens.Lens' TemplateConfiguration (Prelude.Maybe Template)
templateConfiguration_voiceTemplate = Lens.lens (\TemplateConfiguration' {voiceTemplate} -> voiceTemplate) (\s@TemplateConfiguration' {} a -> s {voiceTemplate = a} :: TemplateConfiguration)

-- | The push notification template to use for the message.
templateConfiguration_pushTemplate :: Lens.Lens' TemplateConfiguration (Prelude.Maybe Template)
templateConfiguration_pushTemplate = Lens.lens (\TemplateConfiguration' {pushTemplate} -> pushTemplate) (\s@TemplateConfiguration' {} a -> s {pushTemplate = a} :: TemplateConfiguration)

-- | The email template to use for the message.
templateConfiguration_emailTemplate :: Lens.Lens' TemplateConfiguration (Prelude.Maybe Template)
templateConfiguration_emailTemplate = Lens.lens (\TemplateConfiguration' {emailTemplate} -> emailTemplate) (\s@TemplateConfiguration' {} a -> s {emailTemplate = a} :: TemplateConfiguration)

instance Core.FromJSON TemplateConfiguration where
  parseJSON =
    Core.withObject
      "TemplateConfiguration"
      ( \x ->
          TemplateConfiguration'
            Prelude.<$> (x Core..:? "SMSTemplate")
            Prelude.<*> (x Core..:? "VoiceTemplate")
            Prelude.<*> (x Core..:? "PushTemplate")
            Prelude.<*> (x Core..:? "EmailTemplate")
      )

instance Prelude.Hashable TemplateConfiguration where
  hashWithSalt _salt TemplateConfiguration' {..} =
    _salt `Prelude.hashWithSalt` sMSTemplate
      `Prelude.hashWithSalt` voiceTemplate
      `Prelude.hashWithSalt` pushTemplate
      `Prelude.hashWithSalt` emailTemplate

instance Prelude.NFData TemplateConfiguration where
  rnf TemplateConfiguration' {..} =
    Prelude.rnf sMSTemplate
      `Prelude.seq` Prelude.rnf voiceTemplate
      `Prelude.seq` Prelude.rnf pushTemplate
      `Prelude.seq` Prelude.rnf emailTemplate

instance Core.ToJSON TemplateConfiguration where
  toJSON TemplateConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SMSTemplate" Core..=) Prelude.<$> sMSTemplate,
            ("VoiceTemplate" Core..=) Prelude.<$> voiceTemplate,
            ("PushTemplate" Core..=) Prelude.<$> pushTemplate,
            ("EmailTemplate" Core..=) Prelude.<$> emailTemplate
          ]
      )
