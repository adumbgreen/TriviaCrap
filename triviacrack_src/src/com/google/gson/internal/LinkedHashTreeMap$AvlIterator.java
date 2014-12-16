// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal;


class 
{

    private stackTop stackTop;

    public  next()
    {
          = stackTop;
        if ( == null)
        {
            return null;
        }
         1 = .stackTop;
        .stackTop = null;
         3;
        for ( 2 = .stackTop; 2 != null; 2 = 3)
        {
            2.stackTop = 1;
            3 = 2.stackTop;
            1 = 2;
        }

        stackTop = 1;
        return ;
    }

    void reset(stackTop stacktop)
    {
        stackTop stacktop1 = null;
        stackTop stacktop2;
        for (; stacktop != null; stacktop = stacktop2)
        {
            stacktop.stackTop = stacktop1;
            stacktop2 = stacktop.stackTop;
            stacktop1 = stacktop;
        }

        stackTop = stacktop1;
    }

    ()
    {
    }
}
