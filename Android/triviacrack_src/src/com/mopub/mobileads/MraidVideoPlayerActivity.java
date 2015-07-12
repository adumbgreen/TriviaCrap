// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.IntentUtils;

// Referenced classes of package com.mopub.mobileads:
//            l, n, AdConfiguration, VastVideoViewController, 
//            MraidVideoViewController, m, p

public class MraidVideoPlayerActivity extends l
    implements n
{

    private m a;
    private long b;

    public MraidVideoPlayerActivity()
    {
    }

    private AdConfiguration a()
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

    private m b()
    {
        String s = getIntent().getStringExtra("video_view_class_name");
        if ("vast".equals(s))
        {
            return new VastVideoViewController(this, getIntent().getExtras(), b, this);
        }
        if ("mraid".equals(s))
        {
            return new MraidVideoViewController(this, getIntent().getExtras(), b, this);
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Unsupported video type: ").append(s).toString());
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        a.a(i, j, intent);
    }

    public void onBackPressed()
    {
        if (a.f())
        {
            super.onBackPressed();
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        AdConfiguration adconfiguration = a();
        if (adconfiguration != null)
        {
            b = adconfiguration.d();
        } else
        {
            MoPubLog.d("Unable to obtain broadcast identifier. Video interactions cannot be tracked.");
        }
        try
        {
            a = b();
        }
        catch (IllegalStateException illegalstateexception)
        {
            p.a(this, b, "com.mopub.action.interstitial.fail");
            finish();
            return;
        }
        a.a();
    }

    protected void onDestroy()
    {
        a.e();
        super.onDestroy();
    }

    public void onFinish()
    {
        finish();
    }

    protected void onPause()
    {
        a.c();
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        a.d();
    }

    public void onSetContentView(View view)
    {
        setContentView(view);
    }

    public void onSetRequestedOrientation(int i)
    {
        setRequestedOrientation(i);
    }

    public void onStartActivityForResult(Class class1, int i, Bundle bundle)
    {
        if (class1 == null)
        {
            return;
        }
        Intent intent = IntentUtils.getStartActivityIntent(this, class1, bundle);
        try
        {
            startActivityForResult(intent, i);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            MoPubLog.d((new StringBuilder()).append("Activity ").append(class1.getName()).append(" not found. Did you declare it in your AndroidManifest.xml?").toString());
        }
    }
}
