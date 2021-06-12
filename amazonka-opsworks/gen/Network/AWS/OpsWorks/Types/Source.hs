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
-- Module      : Network.AWS.OpsWorks.Types.Source
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.Source where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpsWorks.Types.SourceType

-- | Contains the information required to retrieve an app or cookbook from a
-- repository. For more information, see
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html Creating Apps>
-- or
-- <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html Custom Recipes and Cookbooks>.
--
-- /See:/ 'newSource' smart constructor.
data Source = Source'
  { -- | In requests, the repository\'s SSH key.
    --
    -- In responses, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead
    -- of the actual value.
    sshKey :: Core.Maybe Core.Text,
    -- | When included in a request, the parameter depends on the repository
    -- type.
    --
    -- -   For Amazon S3 bundles, set @Password@ to the appropriate IAM secret
    --     access key.
    --
    -- -   For HTTP bundles and Subversion repositories, set @Password@ to the
    --     password.
    --
    -- For more information on how to safely handle IAM credentials, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html>.
    --
    -- In responses, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead
    -- of the actual value.
    password :: Core.Maybe Core.Text,
    -- | This parameter depends on the repository type.
    --
    -- -   For Amazon S3 bundles, set @Username@ to the appropriate IAM access
    --     key ID.
    --
    -- -   For HTTP bundles, Git repositories, and Subversion repositories, set
    --     @Username@ to the user name.
    username :: Core.Maybe Core.Text,
    -- | The source URL. The following is an example of an Amazon S3 source URL:
    -- @https:\/\/s3.amazonaws.com\/opsworks-demo-bucket\/opsworks_cookbook_demo.tar.gz@.
    url :: Core.Maybe Core.Text,
    -- | The application\'s version. AWS OpsWorks Stacks enables you to easily
    -- deploy new versions of an application. One of the simplest approaches is
    -- to have branches or revisions in your repository that represent
    -- different versions that can potentially be deployed.
    revision :: Core.Maybe Core.Text,
    -- | The repository type.
    type' :: Core.Maybe SourceType
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'Source' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sshKey', 'source_sshKey' - In requests, the repository\'s SSH key.
--
-- In responses, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead
-- of the actual value.
--
-- 'password', 'source_password' - When included in a request, the parameter depends on the repository
-- type.
--
-- -   For Amazon S3 bundles, set @Password@ to the appropriate IAM secret
--     access key.
--
-- -   For HTTP bundles and Subversion repositories, set @Password@ to the
--     password.
--
-- For more information on how to safely handle IAM credentials, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html>.
--
-- In responses, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead
-- of the actual value.
--
-- 'username', 'source_username' - This parameter depends on the repository type.
--
-- -   For Amazon S3 bundles, set @Username@ to the appropriate IAM access
--     key ID.
--
-- -   For HTTP bundles, Git repositories, and Subversion repositories, set
--     @Username@ to the user name.
--
-- 'url', 'source_url' - The source URL. The following is an example of an Amazon S3 source URL:
-- @https:\/\/s3.amazonaws.com\/opsworks-demo-bucket\/opsworks_cookbook_demo.tar.gz@.
--
-- 'revision', 'source_revision' - The application\'s version. AWS OpsWorks Stacks enables you to easily
-- deploy new versions of an application. One of the simplest approaches is
-- to have branches or revisions in your repository that represent
-- different versions that can potentially be deployed.
--
-- 'type'', 'source_type' - The repository type.
newSource ::
  Source
newSource =
  Source'
    { sshKey = Core.Nothing,
      password = Core.Nothing,
      username = Core.Nothing,
      url = Core.Nothing,
      revision = Core.Nothing,
      type' = Core.Nothing
    }

-- | In requests, the repository\'s SSH key.
--
-- In responses, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead
-- of the actual value.
source_sshKey :: Lens.Lens' Source (Core.Maybe Core.Text)
source_sshKey = Lens.lens (\Source' {sshKey} -> sshKey) (\s@Source' {} a -> s {sshKey = a} :: Source)

-- | When included in a request, the parameter depends on the repository
-- type.
--
-- -   For Amazon S3 bundles, set @Password@ to the appropriate IAM secret
--     access key.
--
-- -   For HTTP bundles and Subversion repositories, set @Password@ to the
--     password.
--
-- For more information on how to safely handle IAM credentials, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html>.
--
-- In responses, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead
-- of the actual value.
source_password :: Lens.Lens' Source (Core.Maybe Core.Text)
source_password = Lens.lens (\Source' {password} -> password) (\s@Source' {} a -> s {password = a} :: Source)

-- | This parameter depends on the repository type.
--
-- -   For Amazon S3 bundles, set @Username@ to the appropriate IAM access
--     key ID.
--
-- -   For HTTP bundles, Git repositories, and Subversion repositories, set
--     @Username@ to the user name.
source_username :: Lens.Lens' Source (Core.Maybe Core.Text)
source_username = Lens.lens (\Source' {username} -> username) (\s@Source' {} a -> s {username = a} :: Source)

-- | The source URL. The following is an example of an Amazon S3 source URL:
-- @https:\/\/s3.amazonaws.com\/opsworks-demo-bucket\/opsworks_cookbook_demo.tar.gz@.
source_url :: Lens.Lens' Source (Core.Maybe Core.Text)
source_url = Lens.lens (\Source' {url} -> url) (\s@Source' {} a -> s {url = a} :: Source)

-- | The application\'s version. AWS OpsWorks Stacks enables you to easily
-- deploy new versions of an application. One of the simplest approaches is
-- to have branches or revisions in your repository that represent
-- different versions that can potentially be deployed.
source_revision :: Lens.Lens' Source (Core.Maybe Core.Text)
source_revision = Lens.lens (\Source' {revision} -> revision) (\s@Source' {} a -> s {revision = a} :: Source)

-- | The repository type.
source_type :: Lens.Lens' Source (Core.Maybe SourceType)
source_type = Lens.lens (\Source' {type'} -> type') (\s@Source' {} a -> s {type' = a} :: Source)

instance Core.FromJSON Source where
  parseJSON =
    Core.withObject
      "Source"
      ( \x ->
          Source'
            Core.<$> (x Core..:? "SshKey")
            Core.<*> (x Core..:? "Password")
            Core.<*> (x Core..:? "Username")
            Core.<*> (x Core..:? "Url")
            Core.<*> (x Core..:? "Revision")
            Core.<*> (x Core..:? "Type")
      )

instance Core.Hashable Source

instance Core.NFData Source

instance Core.ToJSON Source where
  toJSON Source' {..} =
    Core.object
      ( Core.catMaybes
          [ ("SshKey" Core..=) Core.<$> sshKey,
            ("Password" Core..=) Core.<$> password,
            ("Username" Core..=) Core.<$> username,
            ("Url" Core..=) Core.<$> url,
            ("Revision" Core..=) Core.<$> revision,
            ("Type" Core..=) Core.<$> type'
          ]
      )
