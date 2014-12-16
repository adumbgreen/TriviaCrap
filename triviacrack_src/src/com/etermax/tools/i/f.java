// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.i;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.etermax.tools.h.a.a;

// Referenced classes of package com.etermax.tools.i:
//            h, i, g

public abstract class f
    implements h
{

    private String a;
    private boolean b;
    private boolean c;
    protected a h;
    protected Integer i;

    public f()
    {
        b = false;
        c = false;
    }

    private void a(Object obj, FragmentActivity fragmentactivity)
    {
        if (obj instanceof Fragment)
        {
            a = ((Fragment)obj).getTag();
            i = Integer.valueOf(((Fragment)obj).getId());
        }
        FragmentManager fragmentmanager = fragmentactivity.getSupportFragmentManager();
        h = (a)fragmentmanager.findFragmentByTag("TaskManagerFragment");
        if (h == null)
        {
            h = new a();
            fragmentmanager.beginTransaction().add(h, "TaskManagerFragment").commitAllowingStateLoss();
        }
    }

    protected void a(Exception exception)
    {
    }

    protected void a(Object obj, Exception exception)
    {
    }

    protected void a(Object obj, Object obj1)
    {
        c = true;
    }

    public boolean a(Object obj)
    {
        FragmentActivity fragmentactivity = e(obj);
        if (fragmentactivity == null)
        {
            com.etermax.a.a.b("ManagedAsyncTask", "Host no attacheado a un activity");
            return false;
        } else
        {
            a(obj, fragmentactivity);
            return b(fragmentactivity);
        }
    }

    protected void a_(FragmentActivity fragmentactivity)
    {
    }

    public void b(Exception exception)
    {
        if (!b)
        {
            h.b(new Runnable(exception) {

                final Exception a;
                final f b;

                public void run()
                {
                    Object obj;
                    try
                    {
                        obj = b.i();
                    }
                    catch (ClassCastException classcastexception)
                    {
                        b.a(a);
                        return;
                    }
                    if (obj == null)
                    {
                        break MISSING_BLOCK_LABEL_24;
                    }
                    b.a(obj, a);
                }

            
            {
                b = f.this;
                a = exception;
                super();
            }
            });
        }
    }

    protected void b(Object obj)
    {
        c = true;
    }

    protected boolean b(FragmentActivity fragmentactivity)
    {
        a_(fragmentactivity);
        com.etermax.tools.i.i.a(fragmentactivity.getApplicationContext()).a(this);
        return true;
    }

    public void c(Object obj)
    {
        if (!b)
        {
            h.b(new Runnable(obj) {

                final Object a;
                final f b;

                public void run()
                {
                    Object obj1;
                    try
                    {
                        obj1 = b.i();
                    }
                    catch (ClassCastException classcastexception)
                    {
                        b.b(a);
                        return;
                    }
                    if (obj1 == null)
                    {
                        break MISSING_BLOCK_LABEL_24;
                    }
                    b.a(obj1, a);
                }

            
            {
                b = f.this;
                a = obj;
                super();
            }
            });
        }
    }

    protected FragmentManager d(Object obj)
    {
        if (obj instanceof Fragment)
        {
            return ((Fragment)obj).getFragmentManager();
        } else
        {
            return ((FragmentActivity)obj).getSupportFragmentManager();
        }
    }

    protected final FragmentActivity e(Object obj)
    {
        if (obj instanceof Fragment)
        {
            return ((Fragment)obj).getActivity();
        }
        if (obj instanceof FragmentActivity)
        {
            return (FragmentActivity)obj;
        } else
        {
            throw new IllegalArgumentException("Host debe ser un FragmentActivity o un Fragment");
        }
    }

    public final void h()
    {
        b = true;
    }

    protected Object i()
    {
        String s = a;
        Fragment fragment = null;
        if (s != null)
        {
            int k = a.length();
            fragment = null;
            if (k > 0)
            {
                fragment = h.getFragmentManager().findFragmentByTag(a);
            }
        }
        if (fragment == null && i != null)
        {
            fragment = h.getFragmentManager().findFragmentById(i.intValue());
        }
        if (fragment != null)
        {
            return fragment;
        } else
        {
            return j();
        }
    }

    protected final FragmentActivity j()
    {
        return h.getActivity();
    }
}
