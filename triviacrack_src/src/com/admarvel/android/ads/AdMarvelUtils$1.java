// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;


// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelUtils

class marvelOrientationInfo
{

    static final int a[];

    static 
    {
        a = new int[marvelOrientationInfo.values().length];
        try
        {
            a[marvelOrientationInfo.SCREEN_ORIENTATION_PORTRAIT.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[marvelOrientationInfo.SCREEN_ORIENTATION_LANDSCAPE.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[marvelOrientationInfo.SCREEN_ORIENTATION_REVERSE_LANDSCAPE.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[marvelOrientationInfo.SCREEN_ORIENTATION_REVERSE_PORTRAIT.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[marvelOrientationInfo.SCREEN_ORIENTATION_CURRENT_ACTIVITY.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4)
        {
            return;
        }
    }
}
