// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


// Referenced classes of package com.millennialmedia.android:
//            NVASpeechKit

public class resultScore
{

    final NVASpeechKit a;
    public final int resultScore;
    public final String resultString;

    public int getResultScore()
    {
        return resultScore;
    }

    public String getResultString()
    {
        return resultString;
    }

    public (NVASpeechKit nvaspeechkit, String s, double d)
    {
        a = nvaspeechkit;
        super();
        resultString = s;
        resultScore = (int)d;
    }
}
