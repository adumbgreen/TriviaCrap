// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.io.InputStream;

// Referenced classes of package com.amazon.device.ads:
//            WebRequest

class decoratedStream extends InputStream
{

    private final InputStream decoratedStream;
    final WebRequest this$0;

    public void close()
    {
        decoratedStream.close();
        if (WebRequest.access$000(WebRequest.this))
        {
            closeConnection();
        }
    }

    public int read()
    {
        return decoratedStream.read();
    }

    public (InputStream inputstream)
    {
        this$0 = WebRequest.this;
        super();
        decoratedStream = inputstream;
    }
}
