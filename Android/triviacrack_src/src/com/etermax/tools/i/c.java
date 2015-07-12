// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.i;

import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.etermax.tools.h.a.a;
import com.etermax.tools.widget.b.f;

// Referenced classes of package com.etermax.tools.i:
//            d

public abstract class c extends d
{

    private boolean a;
    protected String g;

    public c()
    {
        a = true;
    }

    public c(String s)
    {
        a = true;
        g = s;
    }

    protected void a(FragmentManager fragmentmanager)
    {
        if (g != null)
        {
            f f1 = f.a(g);
            f1.setCancelable(a);
            f1.show(fragmentmanager, (new StringBuilder()).append("dialog_error_managed_async_task").append(g).toString());
        }
    }

    protected void a(Exception exception)
    {
        b(h.getFragmentManager());
    }

    protected void a(Object obj, Exception exception)
    {
        super.a(obj, exception);
        b(h.getFragmentManager());
    }

    protected void a(Object obj, Object obj1)
    {
        b(h.getFragmentManager());
    }

    protected void a_(FragmentActivity fragmentactivity)
    {
        if (!fragmentactivity.isFinishing())
        {
            a(fragmentactivity.getSupportFragmentManager());
        }
    }

    protected void b(FragmentManager fragmentmanager)
    {
        DialogFragment dialogfragment;
        dialogfragment = (DialogFragment)fragmentmanager.findFragmentByTag((new StringBuilder()).append("dialog_error_managed_async_task").append(g).toString());
        if (dialogfragment == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        if (dialogfragment.isAdded())
        {
            dialogfragment.dismiss();
        }
        return;
        Exception exception;
        exception;
        com.etermax.a.a.b("DialogErrorMaganeAsyncTask", exception.getMessage());
        return;
    }

    protected void b(Object obj)
    {
        b(h.getFragmentManager());
    }
}
