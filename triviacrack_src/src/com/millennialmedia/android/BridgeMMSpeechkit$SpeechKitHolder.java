// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


// Referenced classes of package com.millennialmedia.android:
//            NVASpeechKit

class <init>
{

    private NVASpeechKit a;

    static NVASpeechKit a(<init> <init>1)
    {
        return <init>1.a;
    }

    static NVASpeechKit a(a a1, NVASpeechKit nvaspeechkit)
    {
        a1.a = nvaspeechkit;
        return nvaspeechkit;
    }

    public NVASpeechKit getSpeechKit()
    {
        return a;
    }

    public boolean release()
    {
        if (a == null)
        {
            return false;
        } else
        {
            a(new Runnable() {

                final BridgeMMSpeechkit.SpeechKitHolder a;

                public void run()
                {
                    synchronized (a)
                    {
                        if (BridgeMMSpeechkit.SpeechKitHolder.a(a) != null)
                        {
                            BridgeMMSpeechkit.SpeechKitHolder.a(a).cancelRecording();
                            BridgeMMSpeechkit.SpeechKitHolder.a(a).release();
                            BridgeMMSpeechkit.SpeechKitHolder.a(a, null);
                        }
                    }
                    return;
                    exception;
                    speechkitholder;
                    JVM INSTR monitorexit ;
                    throw exception;
                }

            
            {
                a = BridgeMMSpeechkit.SpeechKitHolder.this;
                super();
            }
            });
            return true;
        }
    }

    public void setSpeechKit(NVASpeechKit nvaspeechkit)
    {
        a = nvaspeechkit;
    }

    private _cls1.a()
    {
    }

    _cls1.a(_cls1.a a1)
    {
        this();
    }
}
