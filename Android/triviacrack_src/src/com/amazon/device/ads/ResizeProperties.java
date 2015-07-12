// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import org.json.JSONObject;

// Referenced classes of package com.amazon.device.ads:
//            JSONUtils

class ResizeProperties
{

    private final Boolean allowOffscreenDefault;
    private final String customClosePositionDefault = "top-right";
    private final JSONObject json = new JSONObject();

    public ResizeProperties()
    {
        allowOffscreenDefault = Boolean.TRUE;
        JSONObject jsonobject = json;
        getClass();
        JSONUtils.put(jsonobject, "customClosePosition", "top-right");
        JSONUtils.put(json, "allowOffscreen", allowOffscreenDefault.booleanValue());
    }

    public Boolean getAllowOffscreen()
    {
        return Boolean.valueOf(JSONUtils.getBooleanFromJSON(json, "allowOffscreen", allowOffscreenDefault.booleanValue()));
    }

    public String getCustomClosePosition()
    {
        JSONObject jsonobject = json;
        getClass();
        return JSONUtils.getStringFromJSON(jsonobject, "customClosePosition", "top-right");
    }

    public int getHeight()
    {
        return JSONUtils.getIntegerFromJSON(json, "height", 0);
    }

    public int getOffsetX()
    {
        return JSONUtils.getIntegerFromJSON(json, "offsetX", 0);
    }

    public int getOffsetY()
    {
        return JSONUtils.getIntegerFromJSON(json, "offsetY", 0);
    }

    public int getWidth()
    {
        return JSONUtils.getIntegerFromJSON(json, "width", 0);
    }

    public void setAllowOffscreen(Boolean boolean1)
    {
        if (boolean1 != null)
        {
            JSONUtils.put(json, "allowOffscreen", boolean1.booleanValue());
        }
    }

    public void setCustomClosePosition(String s)
    {
        if (s != null)
        {
            JSONUtils.put(json, "customClosePosition", s);
        }
    }

    public void setHeight(int i)
    {
        JSONUtils.put(json, "height", i);
    }

    public void setOffsetX(int i)
    {
        JSONUtils.put(json, "offsetX", i);
    }

    public void setOffsetY(int i)
    {
        JSONUtils.put(json, "offsetY", i);
    }

    public void setWidth(int i)
    {
        JSONUtils.put(json, "width", i);
    }

    public String toString()
    {
        return json.toString();
    }
}
