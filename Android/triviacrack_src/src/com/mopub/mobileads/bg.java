// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            ba

class bg extends ba
{

    private final boolean a;

    bg(boolean flag)
    {
        a = flag;
    }

    public static bg createWithViewable(boolean flag)
    {
        return new bg(flag);
    }

    public String toJsonPair()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("viewable: ");
        String s;
        if (a)
        {
            s = "true";
        } else
        {
            s = "false";
        }
        return stringbuilder.append(s).toString();
    }
}
