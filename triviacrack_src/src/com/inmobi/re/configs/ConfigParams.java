// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.re.configs;

import android.graphics.Color;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import java.util.Map;

public class ConfigParams
{

    String a;
    int b;
    int c;
    int d;
    int e;
    int f;

    public ConfigParams()
    {
        a = "#00000000";
        b = 320;
        c = 480;
        d = 100;
        e = 20;
        f = 5;
    }

    public int getMaxVibDuration()
    {
        return 1000 * f;
    }

    public int getMaxVibPatternLength()
    {
        return e;
    }

    public int getPicHeight()
    {
        return c;
    }

    public int getPicQuality()
    {
        return d;
    }

    public int getPicWidth()
    {
        return b;
    }

    public UID getUID()
    {
        return UID.getCommonsUid();
    }

    public int getWebviewBgColor()
    {
        int i;
        try
        {
            i = Color.parseColor(a);
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[RE]-4.3.0", "Invalid bg color. Reverting to default", exception);
            return Color.parseColor("#00000000");
        }
        return i;
    }

    public void setFromMap(Map map)
    {
        a = InternalSDKUtil.getStringFromMap(map, "wthc");
        c = InternalSDKUtil.getIntFromMap(map, "picH", 1, 0x7fffffffL);
        b = InternalSDKUtil.getIntFromMap(map, "picW", 1, 0x7fffffffL);
        d = InternalSDKUtil.getIntFromMap(map, "picA", 1, 100L);
        f = InternalSDKUtil.getIntFromMap(map, "mvd", 0, 0x7fffffffL);
        e = InternalSDKUtil.getIntFromMap(map, "mvp", 0, 0x7fffffffL);
    }
}
