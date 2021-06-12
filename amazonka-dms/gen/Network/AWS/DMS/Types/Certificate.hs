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
-- Module      : Network.AWS.DMS.Types.Certificate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.Certificate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The SSL certificate that can be used to encrypt connections between the
-- endpoints and the replication instance.
--
-- /See:/ 'newCertificate' smart constructor.
data Certificate = Certificate'
  { -- | The owner of the certificate.
    certificateOwner :: Core.Maybe Core.Text,
    -- | The signing algorithm for the certificate.
    signingAlgorithm :: Core.Maybe Core.Text,
    -- | The final date that the certificate is valid.
    validToDate :: Core.Maybe Core.POSIX,
    -- | A customer-assigned name for the certificate. Identifiers must begin
    -- with a letter and must contain only ASCII letters, digits, and hyphens.
    -- They can\'t end with a hyphen or contain two consecutive hyphens.
    certificateIdentifier :: Core.Maybe Core.Text,
    -- | The key length of the cryptographic algorithm being used.
    keyLength :: Core.Maybe Core.Int,
    -- | The Amazon Resource Name (ARN) for the certificate.
    certificateArn :: Core.Maybe Core.Text,
    -- | The location of an imported Oracle Wallet certificate for use with SSL.
    certificateWallet :: Core.Maybe Core.Base64,
    -- | The beginning date that the certificate is valid.
    validFromDate :: Core.Maybe Core.POSIX,
    -- | The date that the certificate was created.
    certificateCreationDate :: Core.Maybe Core.POSIX,
    -- | The contents of a @.pem@ file, which contains an X.509 certificate.
    certificatePem :: Core.Maybe Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Certificate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificateOwner', 'certificate_certificateOwner' - The owner of the certificate.
--
-- 'signingAlgorithm', 'certificate_signingAlgorithm' - The signing algorithm for the certificate.
--
-- 'validToDate', 'certificate_validToDate' - The final date that the certificate is valid.
--
-- 'certificateIdentifier', 'certificate_certificateIdentifier' - A customer-assigned name for the certificate. Identifiers must begin
-- with a letter and must contain only ASCII letters, digits, and hyphens.
-- They can\'t end with a hyphen or contain two consecutive hyphens.
--
-- 'keyLength', 'certificate_keyLength' - The key length of the cryptographic algorithm being used.
--
-- 'certificateArn', 'certificate_certificateArn' - The Amazon Resource Name (ARN) for the certificate.
--
-- 'certificateWallet', 'certificate_certificateWallet' - The location of an imported Oracle Wallet certificate for use with SSL.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'validFromDate', 'certificate_validFromDate' - The beginning date that the certificate is valid.
--
-- 'certificateCreationDate', 'certificate_certificateCreationDate' - The date that the certificate was created.
--
-- 'certificatePem', 'certificate_certificatePem' - The contents of a @.pem@ file, which contains an X.509 certificate.
newCertificate ::
  Certificate
newCertificate =
  Certificate'
    { certificateOwner = Core.Nothing,
      signingAlgorithm = Core.Nothing,
      validToDate = Core.Nothing,
      certificateIdentifier = Core.Nothing,
      keyLength = Core.Nothing,
      certificateArn = Core.Nothing,
      certificateWallet = Core.Nothing,
      validFromDate = Core.Nothing,
      certificateCreationDate = Core.Nothing,
      certificatePem = Core.Nothing
    }

-- | The owner of the certificate.
certificate_certificateOwner :: Lens.Lens' Certificate (Core.Maybe Core.Text)
certificate_certificateOwner = Lens.lens (\Certificate' {certificateOwner} -> certificateOwner) (\s@Certificate' {} a -> s {certificateOwner = a} :: Certificate)

-- | The signing algorithm for the certificate.
certificate_signingAlgorithm :: Lens.Lens' Certificate (Core.Maybe Core.Text)
certificate_signingAlgorithm = Lens.lens (\Certificate' {signingAlgorithm} -> signingAlgorithm) (\s@Certificate' {} a -> s {signingAlgorithm = a} :: Certificate)

-- | The final date that the certificate is valid.
certificate_validToDate :: Lens.Lens' Certificate (Core.Maybe Core.UTCTime)
certificate_validToDate = Lens.lens (\Certificate' {validToDate} -> validToDate) (\s@Certificate' {} a -> s {validToDate = a} :: Certificate) Core.. Lens.mapping Core._Time

-- | A customer-assigned name for the certificate. Identifiers must begin
-- with a letter and must contain only ASCII letters, digits, and hyphens.
-- They can\'t end with a hyphen or contain two consecutive hyphens.
certificate_certificateIdentifier :: Lens.Lens' Certificate (Core.Maybe Core.Text)
certificate_certificateIdentifier = Lens.lens (\Certificate' {certificateIdentifier} -> certificateIdentifier) (\s@Certificate' {} a -> s {certificateIdentifier = a} :: Certificate)

-- | The key length of the cryptographic algorithm being used.
certificate_keyLength :: Lens.Lens' Certificate (Core.Maybe Core.Int)
certificate_keyLength = Lens.lens (\Certificate' {keyLength} -> keyLength) (\s@Certificate' {} a -> s {keyLength = a} :: Certificate)

-- | The Amazon Resource Name (ARN) for the certificate.
certificate_certificateArn :: Lens.Lens' Certificate (Core.Maybe Core.Text)
certificate_certificateArn = Lens.lens (\Certificate' {certificateArn} -> certificateArn) (\s@Certificate' {} a -> s {certificateArn = a} :: Certificate)

-- | The location of an imported Oracle Wallet certificate for use with SSL.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
certificate_certificateWallet :: Lens.Lens' Certificate (Core.Maybe Core.ByteString)
certificate_certificateWallet = Lens.lens (\Certificate' {certificateWallet} -> certificateWallet) (\s@Certificate' {} a -> s {certificateWallet = a} :: Certificate) Core.. Lens.mapping Core._Base64

-- | The beginning date that the certificate is valid.
certificate_validFromDate :: Lens.Lens' Certificate (Core.Maybe Core.UTCTime)
certificate_validFromDate = Lens.lens (\Certificate' {validFromDate} -> validFromDate) (\s@Certificate' {} a -> s {validFromDate = a} :: Certificate) Core.. Lens.mapping Core._Time

-- | The date that the certificate was created.
certificate_certificateCreationDate :: Lens.Lens' Certificate (Core.Maybe Core.UTCTime)
certificate_certificateCreationDate = Lens.lens (\Certificate' {certificateCreationDate} -> certificateCreationDate) (\s@Certificate' {} a -> s {certificateCreationDate = a} :: Certificate) Core.. Lens.mapping Core._Time

-- | The contents of a @.pem@ file, which contains an X.509 certificate.
certificate_certificatePem :: Lens.Lens' Certificate (Core.Maybe Core.Text)
certificate_certificatePem = Lens.lens (\Certificate' {certificatePem} -> certificatePem) (\s@Certificate' {} a -> s {certificatePem = a} :: Certificate)

instance Core.FromJSON Certificate where
  parseJSON =
    Core.withObject
      "Certificate"
      ( \x ->
          Certificate'
            Core.<$> (x Core..:? "CertificateOwner")
            Core.<*> (x Core..:? "SigningAlgorithm")
            Core.<*> (x Core..:? "ValidToDate")
            Core.<*> (x Core..:? "CertificateIdentifier")
            Core.<*> (x Core..:? "KeyLength")
            Core.<*> (x Core..:? "CertificateArn")
            Core.<*> (x Core..:? "CertificateWallet")
            Core.<*> (x Core..:? "ValidFromDate")
            Core.<*> (x Core..:? "CertificateCreationDate")
            Core.<*> (x Core..:? "CertificatePem")
      )

instance Core.Hashable Certificate

instance Core.NFData Certificate
