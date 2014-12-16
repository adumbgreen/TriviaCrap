// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.IntentUtils;
import java.lang.ref.SoftReference;
import java.util.Iterator;

// Referenced classes of package com.mopub.nativeads:
//            al, ag, ak

class x
    implements al
{

    private final Context a;
    private final Iterator b;
    private final SoftReference c;

    public x(Context context, Iterator iterator, ag ag1)
    {
        a = context.getApplicationContext();
        b = iterator;
        c = new SoftReference(ag1);
    }

    private void a()
    {
        ag ag1 = (ag)c.get();
        if (ag1 != null)
        {
            ag1.a();
        }
    }

    public void onFailure()
    {
        MoPubLog.d("Failed to resolve URL for click.");
        a();
    }

    public void onSuccess(String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(s));
        intent.addFlags(0x10000000);
        if (IntentUtils.isDeepLink(s) && IntentUtils.deviceCanHandleIntent(a, intent))
        {
            a.startActivity(intent);
        } else
        {
            if (b.hasNext())
            {
                ak.getResolvedUrl((String)b.next(), this);
                return;
            }
            MoPubBrowser.open(a, s);
        }
        a();
    }
}
