// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;
import com.mopub.mobileads.util.Interstitials;

// Referenced classes of package com.mopub.mobileads:
//            AdConfiguration

abstract class j extends Activity
{

    private android.view.View.OnClickListener a;
    private ImageView b;
    private RelativeLayout c;
    private int d;
    private int e;
    private long f;

    j()
    {
    }

    private void f()
    {
        b = new ImageButton(this);
        StateListDrawable statelistdrawable = new StateListDrawable();
        statelistdrawable.addState(new int[] {
            0xfefeff59
        }, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.decodeImage(this));
        statelistdrawable.addState(new int[] {
            0x10100a7
        }, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.decodeImage(this));
        b.setImageDrawable(statelistdrawable);
        b.setBackgroundDrawable(null);
        b.setOnClickListener(new android.view.View.OnClickListener() {

            final j a;

            public void onClick(View view)
            {
                a.finish();
            }

            
            {
                a = j.this;
                super();
            }
        });
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(d, d);
        layoutparams.addRule(11);
        layoutparams.setMargins(e, 0, e, 0);
        c.addView(b, layoutparams);
    }

    long a()
    {
        return f;
    }

    protected void b()
    {
        b.setVisibility(0);
    }

    protected void c()
    {
        b.setVisibility(4);
    }

    protected AdConfiguration d()
    {
        AdConfiguration adconfiguration;
        try
        {
            adconfiguration = (AdConfiguration)getIntent().getSerializableExtra("Ad-Configuration");
        }
        catch (ClassCastException classcastexception)
        {
            return null;
        }
        return adconfiguration;
    }

    void e()
    {
        int i = Dips.dipsToIntPixels(50F, this);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(i, i);
        layoutparams.addRule(11);
        layoutparams.addRule(10);
        Interstitials.addCloseEventRegion(c, layoutparams, a);
    }

    public abstract View getAdView();

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        d = Dips.asIntPixels(50F, this);
        e = Dips.asIntPixels(8F, this);
        a = new android.view.View.OnClickListener() {

            final j a;

            public void onClick(View view)
            {
                a.finish();
            }

            
            {
                a = j.this;
                super();
            }
        };
        c = new RelativeLayout(this);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        c.addView(getAdView(), layoutparams);
        setContentView(c);
        AdConfiguration adconfiguration = d();
        if (adconfiguration != null)
        {
            f = adconfiguration.d();
        }
        f();
    }

    protected void onDestroy()
    {
        c.removeAllViews();
        super.onDestroy();
    }
}
