// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import org.apache.http.Header;

// Referenced classes of package com.mopub.mobileads:
//            c, AdViewController, MoPubErrorCode, MoPubView

class e extends c
{

    private Header b;

    public e(AdViewController adviewcontroller, Header header)
    {
        super(adviewcontroller);
        b = header;
    }

    void a()
    {
        AdViewController adviewcontroller = (AdViewController)a.get();
        if (adviewcontroller == null || adviewcontroller.e())
        {
            return;
        }
        adviewcontroller.a();
        MoPubView mopubview = adviewcontroller.getMoPubView();
        if (b == null)
        {
            MoPubLog.i("Couldn't call custom method because the server did not specify one.");
            mopubview.b(MoPubErrorCode.ADAPTER_NOT_FOUND);
            return;
        }
        String s = b.getValue();
        MoPubLog.i((new StringBuilder()).append("Trying to call method named ").append(s).toString());
        android.app.Activity activity = mopubview.getActivity();
        try
        {
            activity.getClass().getMethod(s, new Class[] {
                com/mopub/mobileads/MoPubView
            }).invoke(activity, new Object[] {
                mopubview
            });
            return;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            MoPubLog.d((new StringBuilder()).append("Couldn't perform custom method named ").append(s).append("(MoPubView view) because your activity class has no such method").toString());
            mopubview.b(MoPubErrorCode.ADAPTER_NOT_FOUND);
            return;
        }
        catch (Exception exception)
        {
            MoPubLog.d((new StringBuilder()).append("Couldn't perform custom method named ").append(s).toString());
        }
        mopubview.b(MoPubErrorCode.ADAPTER_NOT_FOUND);
    }

    void b()
    {
        b = null;
    }
}
