// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.etermax.k;

// Referenced classes of package com.etermax.adsinterface:
//            a, e

public abstract class AdBannerDefaultView extends FrameLayout
    implements a
{

    private View a;
    private final Handler b = new Handler();

    public AdBannerDefaultView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    static View a(AdBannerDefaultView adbannerdefaultview)
    {
        return adbannerdefaultview.a;
    }

    static View a(AdBannerDefaultView adbannerdefaultview, Context context)
    {
        return adbannerdefaultview.b(context);
    }

    static View a(AdBannerDefaultView adbannerdefaultview, View view)
    {
        adbannerdefaultview.a = view;
        return view;
    }

    private View b(Context context)
    {
        View view = LayoutInflater.from(context).inflate(k.default_ad_layout, null);
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final AdBannerDefaultView a;

            public void onClick(View view1)
            {
                try
                {
                    Context context1 = view1.getContext().getApplicationContext();
                    ((Activity)view1.getContext()).startActivity(new Intent("android.intent.action.VIEW", ((e)context1).a()));
                    return;
                }
                catch (Exception exception)
                {
                    return;
                }
            }

            
            {
                a = AdBannerDefaultView.this;
                super();
            }
        });
        return view;
    }

    protected void a(Context context)
    {
        b.post(new Runnable(context) {

            final Context a;
            final AdBannerDefaultView b;

            public void run()
            {
                if (AdBannerDefaultView.a(b) == null)
                {
                    AdBannerDefaultView.a(b, AdBannerDefaultView.a(b, a));
                    b.addView(AdBannerDefaultView.a(b), -1, -2);
                }
                AdBannerDefaultView.a(b).setVisibility(0);
            }

            
            {
                b = AdBannerDefaultView.this;
                a = context;
                super();
            }
        });
    }

    protected void c()
    {
        if (a != null)
        {
            b.post(new Runnable() {

                final AdBannerDefaultView a;

                public void run()
                {
                    AdBannerDefaultView.a(a).setVisibility(8);
                }

            
            {
                a = AdBannerDefaultView.this;
                super();
            }
            });
        }
    }
}
