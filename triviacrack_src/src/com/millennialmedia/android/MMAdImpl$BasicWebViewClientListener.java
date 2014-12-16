// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            MMAdImpl, MMAdImplController, MMWebView

class a extends ner
{

    WeakReference a;

    void a(String s)
    {
        MMAdImpl mmadimpl = (MMAdImpl)a.get();
        if (mmadimpl != null)
        {
            mmadimpl.setClickable(false);
        }
    }

    public void onPageFinished(String s)
    {
        MMAdImpl mmadimpl;
        mmadimpl = (MMAdImpl)a.get();
        if (mmadimpl == null)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        mmadimpl.setClickable(true);
        if (mmadimpl.k == null || mmadimpl.k.b == null)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        MMWebView mmwebview = mmadimpl.k.b;
        mmwebview;
        JVM INSTR monitorenter ;
        if (!mmadimpl.k.b.hasWindowFocus())
        {
            break MISSING_BLOCK_LABEL_73;
        }
        mmadimpl.k.b.q();
_L2:
        return;
        mmadimpl.k.b.p();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        mmwebview;
        JVM INSTR monitorexit ;
        throw exception;
    }

    ner(MMAdImpl mmadimpl)
    {
        a = new WeakReference(mmadimpl);
    }
}
