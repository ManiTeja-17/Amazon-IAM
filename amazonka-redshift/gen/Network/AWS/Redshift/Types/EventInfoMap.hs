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
-- Module      : Network.AWS.Redshift.Types.EventInfoMap
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.EventInfoMap where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Redshift.Internal

-- | Describes event information.
--
-- /See:/ 'newEventInfoMap' smart constructor.
data EventInfoMap = EventInfoMap'
  { -- | The identifier of an Amazon Redshift event.
    eventId :: Core.Maybe Core.Text,
    -- | The severity of the event.
    --
    -- Values: ERROR, INFO
    severity :: Core.Maybe Core.Text,
    -- | The description of an Amazon Redshift event.
    eventDescription :: Core.Maybe Core.Text,
    -- | The category of an Amazon Redshift event.
    eventCategories :: Core.Maybe [Core.Text]
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'EventInfoMap' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventId', 'eventInfoMap_eventId' - The identifier of an Amazon Redshift event.
--
-- 'severity', 'eventInfoMap_severity' - The severity of the event.
--
-- Values: ERROR, INFO
--
-- 'eventDescription', 'eventInfoMap_eventDescription' - The description of an Amazon Redshift event.
--
-- 'eventCategories', 'eventInfoMap_eventCategories' - The category of an Amazon Redshift event.
newEventInfoMap ::
  EventInfoMap
newEventInfoMap =
  EventInfoMap'
    { eventId = Core.Nothing,
      severity = Core.Nothing,
      eventDescription = Core.Nothing,
      eventCategories = Core.Nothing
    }

-- | The identifier of an Amazon Redshift event.
eventInfoMap_eventId :: Lens.Lens' EventInfoMap (Core.Maybe Core.Text)
eventInfoMap_eventId = Lens.lens (\EventInfoMap' {eventId} -> eventId) (\s@EventInfoMap' {} a -> s {eventId = a} :: EventInfoMap)

-- | The severity of the event.
--
-- Values: ERROR, INFO
eventInfoMap_severity :: Lens.Lens' EventInfoMap (Core.Maybe Core.Text)
eventInfoMap_severity = Lens.lens (\EventInfoMap' {severity} -> severity) (\s@EventInfoMap' {} a -> s {severity = a} :: EventInfoMap)

-- | The description of an Amazon Redshift event.
eventInfoMap_eventDescription :: Lens.Lens' EventInfoMap (Core.Maybe Core.Text)
eventInfoMap_eventDescription = Lens.lens (\EventInfoMap' {eventDescription} -> eventDescription) (\s@EventInfoMap' {} a -> s {eventDescription = a} :: EventInfoMap)

-- | The category of an Amazon Redshift event.
eventInfoMap_eventCategories :: Lens.Lens' EventInfoMap (Core.Maybe [Core.Text])
eventInfoMap_eventCategories = Lens.lens (\EventInfoMap' {eventCategories} -> eventCategories) (\s@EventInfoMap' {} a -> s {eventCategories = a} :: EventInfoMap) Core.. Lens.mapping Lens._Coerce

instance Core.FromXML EventInfoMap where
  parseXML x =
    EventInfoMap'
      Core.<$> (x Core..@? "EventId")
      Core.<*> (x Core..@? "Severity")
      Core.<*> (x Core..@? "EventDescription")
      Core.<*> ( x Core..@? "EventCategories" Core..!@ Core.mempty
                   Core.>>= Core.may (Core.parseXMLList "EventCategory")
               )

instance Core.Hashable EventInfoMap

instance Core.NFData EventInfoMap
