// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

class a
    implements Runnable
{

    final  a;

    public void run()
    {
        try
        {
            a.a = (new URL(a.a)).openStream();
            return;
        }
        catch (MalformedURLException malformedurlexception)
        {
            malformedurlexception.printStackTrace();
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    ( )
    {
        a = ;
        super();
    }
}
