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
-- Module      : Network.AWS.AlexaBusiness.Types.PSTNDialIn
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.PSTNDialIn where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The information for public switched telephone network (PSTN)
-- conferencing.
--
-- /See:/ 'newPSTNDialIn' smart constructor.
data PSTNDialIn = PSTNDialIn'
  { -- | The zip code.
    countryCode :: Core.Text,
    -- | The phone number to call to join the conference.
    phoneNumber :: Core.Text,
    -- | The delay duration before Alexa enters the conference ID with dual-tone
    -- multi-frequency (DTMF). Each number on the dial pad corresponds to a
    -- DTMF tone, which is how we send data over the telephone network.
    oneClickIdDelay :: Core.Text,
    -- | The delay duration before Alexa enters the conference pin with dual-tone
    -- multi-frequency (DTMF). Each number on the dial pad corresponds to a
    -- DTMF tone, which is how we send data over the telephone network.
    oneClickPinDelay :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'PSTNDialIn' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'countryCode', 'pSTNDialIn_countryCode' - The zip code.
--
-- 'phoneNumber', 'pSTNDialIn_phoneNumber' - The phone number to call to join the conference.
--
-- 'oneClickIdDelay', 'pSTNDialIn_oneClickIdDelay' - The delay duration before Alexa enters the conference ID with dual-tone
-- multi-frequency (DTMF). Each number on the dial pad corresponds to a
-- DTMF tone, which is how we send data over the telephone network.
--
-- 'oneClickPinDelay', 'pSTNDialIn_oneClickPinDelay' - The delay duration before Alexa enters the conference pin with dual-tone
-- multi-frequency (DTMF). Each number on the dial pad corresponds to a
-- DTMF tone, which is how we send data over the telephone network.
newPSTNDialIn ::
  -- | 'countryCode'
  Core.Text ->
  -- | 'phoneNumber'
  Core.Text ->
  -- | 'oneClickIdDelay'
  Core.Text ->
  -- | 'oneClickPinDelay'
  Core.Text ->
  PSTNDialIn
newPSTNDialIn
  pCountryCode_
  pPhoneNumber_
  pOneClickIdDelay_
  pOneClickPinDelay_ =
    PSTNDialIn'
      { countryCode = pCountryCode_,
        phoneNumber = pPhoneNumber_,
        oneClickIdDelay = pOneClickIdDelay_,
        oneClickPinDelay = pOneClickPinDelay_
      }

-- | The zip code.
pSTNDialIn_countryCode :: Lens.Lens' PSTNDialIn Core.Text
pSTNDialIn_countryCode = Lens.lens (\PSTNDialIn' {countryCode} -> countryCode) (\s@PSTNDialIn' {} a -> s {countryCode = a} :: PSTNDialIn)

-- | The phone number to call to join the conference.
pSTNDialIn_phoneNumber :: Lens.Lens' PSTNDialIn Core.Text
pSTNDialIn_phoneNumber = Lens.lens (\PSTNDialIn' {phoneNumber} -> phoneNumber) (\s@PSTNDialIn' {} a -> s {phoneNumber = a} :: PSTNDialIn)

-- | The delay duration before Alexa enters the conference ID with dual-tone
-- multi-frequency (DTMF). Each number on the dial pad corresponds to a
-- DTMF tone, which is how we send data over the telephone network.
pSTNDialIn_oneClickIdDelay :: Lens.Lens' PSTNDialIn Core.Text
pSTNDialIn_oneClickIdDelay = Lens.lens (\PSTNDialIn' {oneClickIdDelay} -> oneClickIdDelay) (\s@PSTNDialIn' {} a -> s {oneClickIdDelay = a} :: PSTNDialIn)

-- | The delay duration before Alexa enters the conference pin with dual-tone
-- multi-frequency (DTMF). Each number on the dial pad corresponds to a
-- DTMF tone, which is how we send data over the telephone network.
pSTNDialIn_oneClickPinDelay :: Lens.Lens' PSTNDialIn Core.Text
pSTNDialIn_oneClickPinDelay = Lens.lens (\PSTNDialIn' {oneClickPinDelay} -> oneClickPinDelay) (\s@PSTNDialIn' {} a -> s {oneClickPinDelay = a} :: PSTNDialIn)

instance Core.FromJSON PSTNDialIn where
  parseJSON =
    Core.withObject
      "PSTNDialIn"
      ( \x ->
          PSTNDialIn'
            Core.<$> (x Core..: "CountryCode")
            Core.<*> (x Core..: "PhoneNumber")
            Core.<*> (x Core..: "OneClickIdDelay")
            Core.<*> (x Core..: "OneClickPinDelay")
      )

instance Core.Hashable PSTNDialIn

instance Core.NFData PSTNDialIn

instance Core.ToJSON PSTNDialIn where
  toJSON PSTNDialIn' {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("CountryCode" Core..= countryCode),
            Core.Just ("PhoneNumber" Core..= phoneNumber),
            Core.Just
              ("OneClickIdDelay" Core..= oneClickIdDelay),
            Core.Just
              ("OneClickPinDelay" Core..= oneClickPinDelay)
          ]
      )
