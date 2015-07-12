// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.AdConfiguration;
import com.mopub.mobileads.MraidView;

public class MraidViewFactory
{

    protected static MraidViewFactory a = new MraidViewFactory();

    public MraidViewFactory()
    {
    }

    public static MraidView create(Context context, AdConfiguration adconfiguration)
    {
        return a.a(context, adconfiguration);
    }

    public static MraidView create(Context context, AdConfiguration adconfiguration, com.mopub.mobileads.MraidView.ExpansionStyle expansionstyle, com.mopub.mobileads.MraidView.NativeCloseButtonStyle nativeclosebuttonstyle, com.mopub.mobileads.MraidView.PlacementType placementtype)
    {
        return a.a(context, adconfiguration, expansionstyle, nativeclosebuttonstyle, placementtype);
    }

    public static void setInstance(MraidViewFactory mraidviewfactory)
    {
        a = mraidviewfactory;
    }

    protected MraidView a(Context context, AdConfiguration adconfiguration)
    {
        return new MraidView(context, adconfiguration);
    }

    protected MraidView a(Context context, AdConfiguration adconfiguration, com.mopub.mobileads.MraidView.ExpansionStyle expansionstyle, com.mopub.mobileads.MraidView.NativeCloseButtonStyle nativeclosebuttonstyle, com.mopub.mobileads.MraidView.PlacementType placementtype)
    {
        return new MraidView(context, adconfiguration, expansionstyle, nativeclosebuttonstyle, placementtype);
    }

}
