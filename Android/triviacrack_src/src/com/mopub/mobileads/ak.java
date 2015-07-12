// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


final class ak extends Enum
{

    public static final ak CLOSE;
    public static final ak CREATE_CALENDAR_EVENT;
    public static final ak EXPAND;
    public static final ak GET_CURRENT_POSITION;
    public static final ak GET_DEFAULT_POSITION;
    public static final ak GET_MAX_SIZE;
    public static final ak GET_RESIZE_PROPERTIES;
    public static final ak GET_SCREEN_SIZE;
    public static final ak OPEN;
    public static final ak PLAY_VIDEO;
    public static final ak RESIZE;
    public static final ak SET_RESIZE_PROPERTIES;
    public static final ak STORE_PICTURE;
    public static final ak UNSPECIFIED;
    public static final ak USECUSTOMCLOSE;
    private static final ak b[];
    private String a;

    private ak(String s, int i, String s1)
    {
        super(s, i);
        a = s1;
    }

    static ak a(String s)
    {
        return b(s);
    }

    private static ak b(String s)
    {
        ak aak[] = values();
        int i = aak.length;
        for (int j = 0; j < i; j++)
        {
            ak ak1 = aak[j];
            if (ak1.a.equals(s))
            {
                return ak1;
            }
        }

        return UNSPECIFIED;
    }

    public static ak valueOf(String s)
    {
        return (ak)Enum.valueOf(com/mopub/mobileads/ak, s);
    }

    public static ak[] values()
    {
        return (ak[])b.clone();
    }

    String a()
    {
        return a;
    }

    static 
    {
        CLOSE = new ak("CLOSE", 0, "close");
        EXPAND = new ak("EXPAND", 1, "expand");
        USECUSTOMCLOSE = new ak("USECUSTOMCLOSE", 2, "usecustomclose");
        OPEN = new ak("OPEN", 3, "open");
        RESIZE = new ak("RESIZE", 4, "resize");
        GET_RESIZE_PROPERTIES = new ak("GET_RESIZE_PROPERTIES", 5, "getResizeProperties");
        SET_RESIZE_PROPERTIES = new ak("SET_RESIZE_PROPERTIES", 6, "setResizeProperties");
        PLAY_VIDEO = new ak("PLAY_VIDEO", 7, "playVideo");
        STORE_PICTURE = new ak("STORE_PICTURE", 8, "storePicture");
        GET_CURRENT_POSITION = new ak("GET_CURRENT_POSITION", 9, "getCurrentPosition");
        GET_DEFAULT_POSITION = new ak("GET_DEFAULT_POSITION", 10, "getDefaultPosition");
        GET_MAX_SIZE = new ak("GET_MAX_SIZE", 11, "getMaxSize");
        GET_SCREEN_SIZE = new ak("GET_SCREEN_SIZE", 12, "getScreenSize");
        CREATE_CALENDAR_EVENT = new ak("CREATE_CALENDAR_EVENT", 13, "createCalendarEvent");
        UNSPECIFIED = new ak("UNSPECIFIED", 14, "");
        ak aak[] = new ak[15];
        aak[0] = CLOSE;
        aak[1] = EXPAND;
        aak[2] = USECUSTOMCLOSE;
        aak[3] = OPEN;
        aak[4] = RESIZE;
        aak[5] = GET_RESIZE_PROPERTIES;
        aak[6] = SET_RESIZE_PROPERTIES;
        aak[7] = PLAY_VIDEO;
        aak[8] = STORE_PICTURE;
        aak[9] = GET_CURRENT_POSITION;
        aak[10] = GET_DEFAULT_POSITION;
        aak[11] = GET_MAX_SIZE;
        aak[12] = GET_SCREEN_SIZE;
        aak[13] = CREATE_CALENDAR_EVENT;
        aak[14] = UNSPECIFIED;
        b = aak;
    }
}
