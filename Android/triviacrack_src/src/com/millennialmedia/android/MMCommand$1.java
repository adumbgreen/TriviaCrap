// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


// Referenced classes of package com.millennialmedia.android:
//            MMCommand, MMWebView, MMJSResponse

class b
    implements Runnable
{

    final MMWebView a;
    final MMJSResponse b;
    final MMCommand c;

    public void run()
    {
        if (MMCommand.a(c).equals("expandWithProperties"))
        {
            a.b = true;
        }
        Object aobj[] = new Object[2];
        aobj[0] = MMCommand.b(c);
        aobj[1] = b.c();
        String s = String.format("javascript:%s(%s);", aobj);
        a.loadUrl(s);
    }

    (MMCommand mmcommand, MMWebView mmwebview, MMJSResponse mmjsresponse)
    {
        c = mmcommand;
        a = mmwebview;
        b = mmjsresponse;
        super();
    }
}
