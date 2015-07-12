// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import android.app.Activity;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            i

public class MonitoredActivity extends Activity
{

    private final ArrayList a = new ArrayList();

    public MonitoredActivity()
    {
    }

    public void a(i j)
    {
        if (a.contains(j))
        {
            return;
        } else
        {
            a.add(j);
            return;
        }
    }

    public void b(i j)
    {
        a.remove(j);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((i)iterator.next()).a(this)) { }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((i)iterator.next()).b(this)) { }
    }

    protected void onStart()
    {
        super.onStart();
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((i)iterator.next()).c(this)) { }
    }

    protected void onStop()
    {
        super.onStop();
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((i)iterator.next()).d(this)) { }
    }
}
