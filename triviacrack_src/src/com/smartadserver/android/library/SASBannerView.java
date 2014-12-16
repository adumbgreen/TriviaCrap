// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.smartadserver.android.library.ui.SASAdView;

public class SASBannerView extends SASAdView
{

    private static final String n = com/smartadserver/android/library/SASBannerView.getSimpleName();

    public SASBannerView(Context context)
    {
        super(context);
    }

    public SASBannerView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void a(View view)
    {
        if (view != null)
        {
            a(new Runnable(view) {

                final View a;
                final SASBannerView b;

                public void run()
                {
                    b.addView(a);
                }

            
            {
                b = SASBannerView.this;
                a = view;
                super();
            }
            });
        }
    }

    public void b(View view)
    {
        if (view != null)
        {
            a(new Runnable(view) {

                final View a;
                final SASBannerView b;

                public void run()
                {
                    if (b.indexOfChild(a) > -1)
                    {
                        b.removeView(a);
                    }
                }

            
            {
                b = SASBannerView.this;
                a = view;
                super();
            }
            });
        }
    }

}
