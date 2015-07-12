// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.media.MediaScannerConnection;
import android.net.Uri;

// Referenced classes of package com.mopub.mobileads:
//            aw

class ax
    implements android.media.MediaScannerConnection.MediaScannerConnectionClient
{

    final aw a;
    private final String b;
    private final String c;
    private MediaScannerConnection d;

    private ax(aw aw, String s, String s1)
    {
        a = aw;
        super();
        b = s;
        c = s1;
    }

    ax(aw aw, String s, String s1, aw._cls1 _pcls1)
    {
        this(aw, s, s1);
    }

    private void a(MediaScannerConnection mediascannerconnection)
    {
        d = mediascannerconnection;
    }

    static void a(ax ax1, MediaScannerConnection mediascannerconnection)
    {
        ax1.a(mediascannerconnection);
    }

    public void onMediaScannerConnected()
    {
        if (d != null)
        {
            d.scanFile(b, c);
        }
    }

    public void onScanCompleted(String s, Uri uri)
    {
        if (d != null)
        {
            d.disconnect();
        }
    }
}
