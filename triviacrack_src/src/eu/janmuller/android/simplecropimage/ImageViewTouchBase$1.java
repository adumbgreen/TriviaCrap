// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;


// Referenced classes of package eu.janmuller.android.simplecropimage:
//            ImageViewTouchBase, j

class b
    implements Runnable
{

    final j a;
    final boolean b;
    final ImageViewTouchBase c;

    public void run()
    {
        c.a(a, b);
    }

    (ImageViewTouchBase imageviewtouchbase, j j, boolean flag)
    {
        c = imageviewtouchbase;
        a = j;
        b = flag;
        super();
    }
}
