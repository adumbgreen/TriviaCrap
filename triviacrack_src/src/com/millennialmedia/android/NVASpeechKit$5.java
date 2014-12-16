// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import org.json.JSONArray;

// Referenced classes of package com.millennialmedia.android:
//            NVASpeechKit

class a
    implements stener
{

    final NVASpeechKit a;

    public void onAudioLevelUpdate(double d)
    {
        a.a(d);
    }

    public void onAudioSampleUpdate(double d)
    {
        a.b(d);
    }

    public void onCustomWordsAdded()
    {
    }

    public void onCustomWordsDeleted()
    {
    }

    public void onError()
    {
    }

    public void onResults()
    {
        JSONArray jsonarray = NVASpeechKit.a(a, a.getResults());
        a.a(jsonarray.toString());
    }

    public void onStateChange(ate ate)
    {
        switch (a[ate.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            a.e();
            return;

        case 2: // '\002'
            a.c();
            return;

        case 3: // '\003'
            a.a();
            return;

        case 4: // '\004'
            a.b();
            return;

        case 5: // '\005'
            a.d();
            break;
        }
    }

    ate(NVASpeechKit nvaspeechkit)
    {
        a = nvaspeechkit;
        super();
    }
}
