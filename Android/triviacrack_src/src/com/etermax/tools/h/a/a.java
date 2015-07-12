// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.h.a;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import java.util.LinkedList;
import java.util.List;

public class a extends Fragment
{

    protected final Object a = new Object();
    protected Boolean b;
    protected List c;

    public a()
    {
        b = Boolean.valueOf(false);
        c = new LinkedList();
    }

    protected void a(Runnable runnable)
    {
        synchronized (a)
        {
            c.add(runnable);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean a()
    {
        boolean flag;
        synchronized (a)
        {
            flag = b.booleanValue();
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void b(Runnable runnable)
    {
        if (a())
        {
            c(runnable);
            return;
        } else
        {
            a(runnable);
            return;
        }
    }

    protected void c(Runnable runnable)
    {
        getActivity().runOnUiThread(runnable);
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        int i;
        b = Boolean.valueOf(true);
        i = c.size();
_L2:
        int j;
        j = i - 1;
        if (i <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        c((Runnable)c.remove(0));
        i = j;
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    public void onDetach()
    {
        super.onDetach();
        synchronized (a)
        {
            b = Boolean.valueOf(false);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onResume()
    {
        super.onResume();
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        int i;
        b = Boolean.valueOf(true);
        i = c.size();
_L2:
        int j;
        j = i - 1;
        if (i <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        c((Runnable)c.remove(0));
        i = j;
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        synchronized (a)
        {
            b = Boolean.valueOf(false);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
