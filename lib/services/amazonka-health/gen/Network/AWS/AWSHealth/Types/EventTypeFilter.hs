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
-- Module      : Amazonka.AWSHealth.Types.EventTypeFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AWSHealth.Types.EventTypeFilter where

import Amazonka.AWSHealth.Types.EventTypeCategory
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The values to use to filter results from the
-- <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventTypes.html DescribeEventTypes>
-- operation.
--
-- /See:/ 'newEventTypeFilter' smart constructor.
data EventTypeFilter = EventTypeFilter'
  { -- | A list of event type category codes (@issue@, @scheduledChange@, or
    -- @accountNotification@).
    eventTypeCategories :: Prelude.Maybe (Prelude.NonEmpty EventTypeCategory),
    -- | A list of event type codes.
    eventTypeCodes :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The AWS services associated with the event. For example, @EC2@, @RDS@.
    services :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EventTypeFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventTypeCategories', 'eventTypeFilter_eventTypeCategories' - A list of event type category codes (@issue@, @scheduledChange@, or
-- @accountNotification@).
--
-- 'eventTypeCodes', 'eventTypeFilter_eventTypeCodes' - A list of event type codes.
--
-- 'services', 'eventTypeFilter_services' - The AWS services associated with the event. For example, @EC2@, @RDS@.
newEventTypeFilter ::
  EventTypeFilter
newEventTypeFilter =
  EventTypeFilter'
    { eventTypeCategories =
        Prelude.Nothing,
      eventTypeCodes = Prelude.Nothing,
      services = Prelude.Nothing
    }

-- | A list of event type category codes (@issue@, @scheduledChange@, or
-- @accountNotification@).
eventTypeFilter_eventTypeCategories :: Lens.Lens' EventTypeFilter (Prelude.Maybe (Prelude.NonEmpty EventTypeCategory))
eventTypeFilter_eventTypeCategories = Lens.lens (\EventTypeFilter' {eventTypeCategories} -> eventTypeCategories) (\s@EventTypeFilter' {} a -> s {eventTypeCategories = a} :: EventTypeFilter) Prelude.. Lens.mapping Lens.coerced

-- | A list of event type codes.
eventTypeFilter_eventTypeCodes :: Lens.Lens' EventTypeFilter (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
eventTypeFilter_eventTypeCodes = Lens.lens (\EventTypeFilter' {eventTypeCodes} -> eventTypeCodes) (\s@EventTypeFilter' {} a -> s {eventTypeCodes = a} :: EventTypeFilter) Prelude.. Lens.mapping Lens.coerced

-- | The AWS services associated with the event. For example, @EC2@, @RDS@.
eventTypeFilter_services :: Lens.Lens' EventTypeFilter (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
eventTypeFilter_services = Lens.lens (\EventTypeFilter' {services} -> services) (\s@EventTypeFilter' {} a -> s {services = a} :: EventTypeFilter) Prelude.. Lens.mapping Lens.coerced

instance Prelude.Hashable EventTypeFilter

instance Prelude.NFData EventTypeFilter

instance Core.ToJSON EventTypeFilter where
  toJSON EventTypeFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("eventTypeCategories" Core..=)
              Prelude.<$> eventTypeCategories,
            ("eventTypeCodes" Core..=)
              Prelude.<$> eventTypeCodes,
            ("services" Core..=) Prelude.<$> services
          ]
      )
