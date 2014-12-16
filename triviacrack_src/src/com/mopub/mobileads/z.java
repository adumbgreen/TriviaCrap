// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.util.IntentUtils;
import com.mopub.mobileads.util.Utils;

// Referenced classes of package com.mopub.mobileads:
//            ae, MraidView

class z extends ae
{

    private Context a;

    z(MraidView mraidview)
    {
        super(mraidview);
        a = mraidview.getContext();
    }

    private boolean b(String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
        intent.addFlags(0x10000000);
        return Utils.executeIntent(getMraidView().getContext(), intent, "Unable to open intent.");
    }

    private boolean c(String s)
    {
        return s.startsWith("http://") || s.startsWith("https://");
    }

    protected void a(String s)
    {
        Log.d("MoPubBrowserController", (new StringBuilder()).append("Opening url: ").append(s).toString());
        MraidView mraidview = getMraidView();
        if (mraidview.getMraidListener() != null)
        {
            mraidview.getMraidListener().onOpen(mraidview);
        }
        if (!c(s) && IntentUtils.canHandleApplicationUrl(a, s))
        {
            b(s);
            return;
        } else
        {
            Intent intent = new Intent(a, com/mopub/common/MoPubBrowser);
            intent.putExtra("URL", s);
            intent.addFlags(0x10000000);
            a.startActivity(intent);
            return;
        }
    }
}
