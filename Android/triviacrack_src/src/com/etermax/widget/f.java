// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.etermax.widget:
//            e

class f
    implements Filterable, WrapperListAdapter
{

    ArrayList a;
    boolean b;
    private final DataSetObservable c = new DataSetObservable();
    private final ListAdapter d;
    private int e;
    private final boolean f;

    public f(ArrayList arraylist, ListAdapter listadapter)
    {
        e = 1;
        d = listadapter;
        f = listadapter instanceof Filterable;
        if (arraylist == null)
        {
            throw new IllegalArgumentException("headerViewInfos cannot be null");
        } else
        {
            a = arraylist;
            b = a(a);
            return;
        }
    }

    private boolean a(ArrayList arraylist)
    {
label0:
        {
            if (arraylist == null)
            {
                break label0;
            }
            Iterator iterator = arraylist.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
            } while (((e)iterator.next()).c);
            return false;
        }
        return true;
    }

    public int a()
    {
        return a.size();
    }

    public void a(int i)
    {
        if (i < 1)
        {
            throw new IllegalArgumentException("Number of columns must be 1 or more");
        }
        if (e != i)
        {
            e = i;
            b();
        }
    }

    public boolean areAllItemsEnabled()
    {
        return d == null || b && d.areAllItemsEnabled();
    }

    public void b()
    {
        c.notifyChanged();
    }

    public int getCount()
    {
        if (d != null)
        {
            return a() * e + d.getCount();
        } else
        {
            return a() * e;
        }
    }

    public Filter getFilter()
    {
        if (f)
        {
            return ((Filterable)d).getFilter();
        } else
        {
            return null;
        }
    }

    public Object getItem(int i)
    {
        int j = a() * e;
        if (i < j)
        {
            if (i % e == 0)
            {
                return ((e)a.get(i / e)).b;
            } else
            {
                return null;
            }
        }
        int k = i - j;
        if (d != null && k < d.getCount())
        {
            return d.getItem(k);
        } else
        {
            throw new ArrayIndexOutOfBoundsException(i);
        }
    }

    public long getItemId(int i)
    {
        int j = a() * e;
        if (d != null && i >= j)
        {
            int k = i - j;
            if (k < d.getCount())
            {
                return d.getItemId(k);
            }
        }
        return -1L;
    }

    public int getItemViewType(int i)
    {
        int j = a() * e;
        if (i < j && i % e != 0)
        {
            if (d != null)
            {
                return d.getViewTypeCount();
            } else
            {
                return 1;
            }
        }
        if (d != null && i >= j)
        {
            int k = i - j;
            if (k < d.getCount())
            {
                return d.getItemViewType(k);
            }
        }
        return -2;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        int j = a() * e;
        if (i < j)
        {
            ViewGroup viewgroup1 = ((e)a.get(i / e)).a;
            if (i % e == 0)
            {
                return viewgroup1;
            }
            if (view == null)
            {
                view = new View(viewgroup.getContext());
            }
            view.setVisibility(4);
            view.setMinimumHeight(viewgroup1.getHeight());
            return view;
        }
        int k = i - j;
        if (d != null && k < d.getCount())
        {
            return d.getView(k, view, viewgroup);
        } else
        {
            throw new ArrayIndexOutOfBoundsException(i);
        }
    }

    public int getViewTypeCount()
    {
        if (d != null)
        {
            return 1 + d.getViewTypeCount();
        } else
        {
            return 2;
        }
    }

    public ListAdapter getWrappedAdapter()
    {
        return d;
    }

    public boolean hasStableIds()
    {
        if (d != null)
        {
            return d.hasStableIds();
        } else
        {
            return false;
        }
    }

    public boolean isEmpty()
    {
        return (d == null || d.isEmpty()) && a() == 0;
    }

    public boolean isEnabled(int i)
    {
        int j = a() * e;
        if (i < j)
        {
            return i % e == 0 && ((e)a.get(i / e)).c;
        }
        int k = i - j;
        if (d != null && k < d.getCount())
        {
            return d.isEnabled(k);
        } else
        {
            throw new ArrayIndexOutOfBoundsException(i);
        }
    }

    public void registerDataSetObserver(DataSetObserver datasetobserver)
    {
        c.registerObserver(datasetobserver);
        if (d != null)
        {
            d.registerDataSetObserver(datasetobserver);
        }
    }

    public void unregisterDataSetObserver(DataSetObserver datasetobserver)
    {
        c.unregisterObserver(datasetobserver);
        if (d != null)
        {
            d.unregisterDataSetObserver(datasetobserver);
        }
    }
}
