// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.factories;

import android.content.Context;
import android.view.View;
import com.mopub.mobileads.AdConfiguration;
import com.mopub.mobileads.ViewGestureDetector;

public class ViewGestureDetectorFactory
{

    protected static ViewGestureDetectorFactory a = new ViewGestureDetectorFactory();

    public ViewGestureDetectorFactory()
    {
    }

    public static ViewGestureDetector create(Context context, View view, AdConfiguration adconfiguration)
    {
        return a.a(context, view, adconfiguration);
    }

    public static void setInstance(ViewGestureDetectorFactory viewgesturedetectorfactory)
    {
        a = viewgesturedetectorfactory;
    }

    protected ViewGestureDetector a(Context context, View view, AdConfiguration adconfiguration)
    {
        return new ViewGestureDetector(context, view, adconfiguration);
    }

}
