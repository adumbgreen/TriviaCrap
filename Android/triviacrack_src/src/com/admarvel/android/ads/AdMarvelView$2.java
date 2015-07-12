// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelView, AdMarvelAd

class b
    implements android.view.animation.tionListener
{

    final View a;
    final AdMarvelAd b;
    final AdMarvelView c;

    public void onAnimationEnd(Animation animation)
    {
        c.post(new <init>(a, c, b));
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    onListener(AdMarvelView admarvelview, View view, AdMarvelAd admarvelad)
    {
        c = admarvelview;
        a = view;
        b = admarvelad;
        super();
    }
}
