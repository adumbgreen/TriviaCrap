// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.os.Handler;
import com.nuance.nmdp.speechkit.Recognition;
import com.nuance.nmdp.speechkit.Recognizer;
import com.nuance.nmdp.speechkit.SpeechError;
import com.nuance.nmdp.speechkit.SpeechKit;

// Referenced classes of package com.millennialmedia.android:
//            NVASpeechKit, MMLog

class a
    implements com.nuance.nmdp.speechkit.ener
{

    final NVASpeechKit a;

    public void onError(Recognizer recognizer, SpeechError speecherror)
    {
        MMLog.b("NVASpeechKit", (new StringBuilder()).append("Speech Kit Error code:").append(speecherror.getErrorCode()).append(" detail:").append(speecherror.getErrorDetail()).append(" suggestions:").append(speecherror.getSuggestion()).toString());
        NVASpeechKit.k(a);
        NVASpeechKit.a(a, speecherror);
        NVASpeechKit.b(a, null);
        if (NVASpeechKit.l(a) != null)
        {
            MMLog.b("NVASpeechKit", (new StringBuilder()).append("Recognizer.Listener.onError: session id [").append(NVASpeechKit.l(a).getSessionId()).append("]").toString());
        }
    }

    public void onRecordingBegin(Recognizer recognizer)
    {
        MMLog.b("NVASpeechKit", "recording begins");
        a._results = null;
        if (!NVASpeechKit.b(a).isTrackingAudioSample())
        {
            NVASpeechKit.a(a, ate.RECORDING);
        }
        NVASpeechKit.a(a, recognizer);
        if (NVASpeechKit.b(a).isTrackingAudioSample())
        {
            NVASpeechKit.f(a).removeCallbacks(NVASpeechKit.j(a));
            NVASpeechKit.f(a).postDelayed(NVASpeechKit.j(a), 2000L);
        }
    }

    public void onRecordingDone(Recognizer recognizer)
    {
        MMLog.b("NVASpeechKit", "recording has ended");
        NVASpeechKit.k(a);
        if (!NVASpeechKit.b(a).isTrackingAudioSample())
        {
            NVASpeechKit.a(a, ate.PROCESSING);
        }
        if (NVASpeechKit.l(a) != null)
        {
            NVASpeechKit.a(a, NVASpeechKit.l(a).getSessionId());
        }
    }

    public void onResults(Recognizer recognizer, Recognition recognition)
    {
        MMLog.b("NVASpeechKit", "recording results returned.");
        NVASpeechKit.k(a);
        if (!NVASpeechKit.b(a).d)
        {
            NVASpeechKit.a(a, recognition.getDetailedResults());
            if (NVASpeechKit.m(a) != null)
            {
                MMLog.b("NVASpeechKit", (new StringBuilder()).append("Recognizer.Listener.onResults: session id [").append(NVASpeechKit.m(a)).append("]").toString());
            }
            a.logEvent();
            return;
        } else
        {
            a._results = new sult[0];
            NVASpeechKit.g(a);
            return;
        }
    }

    sult(NVASpeechKit nvaspeechkit)
    {
        a = nvaspeechkit;
        super();
    }
}
