// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource.dto;

import java.io.Serializable;
import java.util.Date;

public class MessageDTO
    implements Serializable
{

    Date date;
    String message;
    String reason;
    Application source_application;
    String type;
    Long user_id;
    Long user_to_mention;

    public MessageDTO()
    {
    }

    public String getMessage()
    {
        return message;
    }

    public Date getParsedDate()
    {
        if (date == null)
        {
            return new Date();
        } else
        {
            return date;
        }
    }

    public EndedReason getReason()
    {
        return EndedReason.get(reason);
    }

    public Application getSourceApplication()
    {
        return source_application;
    }

    public EventType getType()
    {
        return EventType.get(type);
    }

    public Long getUserId()
    {
        if (user_id == null)
        {
            return Long.valueOf(-1L);
        } else
        {
            return user_id;
        }
    }

    public Long getUser_to_mention()
    {
        return user_to_mention;
    }

    public void setMessage(String s)
    {
        message = s;
    }

    private class EndedReason extends Enum
    {

        private static final EndedReason $VALUES[];
        public static final EndedReason EXPIRED;
        public static final EndedReason NORMAL;
        public static final EndedReason REJECTED;
        public static final EndedReason RESIGNED;

        public static EndedReason get(String s)
        {
            if (s == null)
            {
                return null;
            }
            if (s.equals(EXPIRED.toString()))
            {
                return EXPIRED;
            }
            if (s.equals(REJECTED.toString()))
            {
                return REJECTED;
            }
            if (s.equals(RESIGNED.toString()))
            {
                return RESIGNED;
            }
            if (s.equals(EXPIRED.toString()))
            {
                return EXPIRED;
            } else
            {
                return NORMAL;
            }
        }

        public static EndedReason valueOf(String s)
        {
            return (EndedReason)Enum.valueOf(com/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason, s);
        }

        public static EndedReason[] values()
        {
            return (EndedReason[])$VALUES.clone();
        }

        static 
        {
            EXPIRED = new EndedReason("EXPIRED", 0);
            NORMAL = new EndedReason("NORMAL", 1);
            REJECTED = new EndedReason("REJECTED", 2);
            RESIGNED = new EndedReason("RESIGNED", 3);
            EndedReason aendedreason[] = new EndedReason[4];
            aendedreason[0] = EXPIRED;
            aendedreason[1] = NORMAL;
            aendedreason[2] = REJECTED;
            aendedreason[3] = RESIGNED;
            $VALUES = aendedreason;
        }

        private EndedReason(String s, int i)
        {
            super(s, i);
        }
    }


    private class EventType extends Enum
    {

        private static final EventType $VALUES[];
        public static final EventType CHAT;
        public static final EventType GAME_ENDED;
        public static final EventType GAME_STARTED;

        public static EventType get(String s)
        {
            if (s.equals(GAME_ENDED.toString()))
            {
                return GAME_ENDED;
            }
            if (s.equals(GAME_STARTED.toString()))
            {
                return GAME_STARTED;
            } else
            {
                return CHAT;
            }
        }

        public static EventType valueOf(String s)
        {
            return (EventType)Enum.valueOf(com/etermax/gamescommon/datasource/dto/MessageDTO$EventType, s);
        }

        public static EventType[] values()
        {
            return (EventType[])$VALUES.clone();
        }

        static 
        {
            CHAT = new EventType("CHAT", 0);
            GAME_STARTED = new EventType("GAME_STARTED", 1);
            GAME_ENDED = new EventType("GAME_ENDED", 2);
            EventType aeventtype[] = new EventType[3];
            aeventtype[0] = CHAT;
            aeventtype[1] = GAME_STARTED;
            aeventtype[2] = GAME_ENDED;
            $VALUES = aeventtype;
        }

        private EventType(String s, int i)
        {
            super(s, i);
        }
    }

}
