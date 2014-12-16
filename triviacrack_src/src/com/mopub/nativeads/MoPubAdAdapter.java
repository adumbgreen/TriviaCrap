// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.mopub.common.logging.MoPubLog;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

// Referenced classes of package com.mopub.nativeads:
//            MoPubNativeAdPositioning, MoPubStreamAdPlacer, am, MoPubNativeAdLoadedListener, 
//            RequestParameters, MoPubAdRenderer, aq

public class MoPubAdAdapter extends BaseAdapter
{

    private final WeakHashMap a;
    private final Adapter b;
    private final MoPubStreamAdPlacer c;
    private final am d;
    private MoPubNativeAdLoadedListener e;

    public MoPubAdAdapter(Context context, Adapter adapter)
    {
        this(context, adapter, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubAdAdapter(Context context, Adapter adapter, MoPubNativeAdPositioning.MoPubClientPositioning mopubclientpositioning)
    {
        this(new MoPubStreamAdPlacer(context, mopubclientpositioning), adapter, new am(context));
    }

    public MoPubAdAdapter(Context context, Adapter adapter, MoPubNativeAdPositioning.MoPubServerPositioning mopubserverpositioning)
    {
        this(new MoPubStreamAdPlacer(context, mopubserverpositioning), adapter, new am(context));
    }

    MoPubAdAdapter(MoPubStreamAdPlacer mopubstreamadplacer, Adapter adapter, am am1)
    {
        b = adapter;
        c = mopubstreamadplacer;
        a = new WeakHashMap();
        d = am1;
        d.a(new aq() {

            final MoPubAdAdapter a;

            public void onVisibilityChanged(List list, List list1)
            {
                MoPubAdAdapter.a(a, list);
            }

            
            {
                a = MoPubAdAdapter.this;
                super();
            }
        });
        b.registerDataSetObserver(new DataSetObserver() {

            final MoPubAdAdapter a;

            public void onChanged()
            {
                MoPubAdAdapter.b(a).setItemCount(MoPubAdAdapter.a(a).getCount());
                a.notifyDataSetChanged();
            }

            public void onInvalidated()
            {
                a.notifyDataSetInvalidated();
            }

            
            {
                a = MoPubAdAdapter.this;
                super();
            }
        });
        c.setAdLoadedListener(new MoPubNativeAdLoadedListener() {

            final MoPubAdAdapter a;

            public void onAdLoaded(int i)
            {
                a.a(i);
            }

            public void onAdRemoved(int i)
            {
                a.b(i);
            }

            
            {
                a = MoPubAdAdapter.this;
                super();
            }
        });
        c.setItemCount(b.getCount());
    }

    static Adapter a(MoPubAdAdapter mopubadadapter)
    {
        return mopubadadapter.b;
    }

    static void a(MoPubAdAdapter mopubadadapter, List list)
    {
        mopubadadapter.a(list);
    }

    private void a(List list)
    {
        Iterator iterator = list.iterator();
        int i = 0x7fffffff;
        int j = 0;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            View view = (View)iterator.next();
            Integer integer = (Integer)a.get(view);
            if (integer != null)
            {
                i = Math.min(integer.intValue(), i);
                j = Math.max(integer.intValue(), j);
            }
        } while (true);
        c.placeAdsInRange(i, j + 1);
    }

    static MoPubStreamAdPlacer b(MoPubAdAdapter mopubadadapter)
    {
        return mopubadadapter.c;
    }

    void a(int i)
    {
        if (e != null)
        {
            e.onAdLoaded(i);
        }
        notifyDataSetChanged();
    }

    public boolean areAllItemsEnabled()
    {
        return (b instanceof ListAdapter) && ((ListAdapter)b).areAllItemsEnabled();
    }

    void b(int i)
    {
        if (e != null)
        {
            e.onAdRemoved(i);
        }
        notifyDataSetChanged();
    }

    public void clearAds()
    {
        c.clearAds();
    }

    public void destroy()
    {
        c.destroy();
        d.b();
    }

    public int getAdjustedPosition(int i)
    {
        return c.getAdjustedPosition(i);
    }

    public int getCount()
    {
        return c.getAdjustedCount(b.getCount());
    }

    public Object getItem(int i)
    {
        Object obj = c.getAdData(i);
        if (obj != null)
        {
            return obj;
        } else
        {
            return b.getItem(c.getOriginalPosition(i));
        }
    }

    public long getItemId(int i)
    {
        Object obj = c.getAdData(i);
        if (obj != null)
        {
            return (long)(1 + (-1 ^ System.identityHashCode(obj)));
        } else
        {
            return b.getItemId(c.getOriginalPosition(i));
        }
    }

    public int getItemViewType(int i)
    {
        int j = c.getAdViewType(i);
        if (j != 0)
        {
            return -1 + (j + b.getViewTypeCount());
        } else
        {
            return b.getItemViewType(c.getOriginalPosition(i));
        }
    }

    public int getOriginalPosition(int i)
    {
        return c.getOriginalPosition(i);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1 = c.getAdView(i, view, viewgroup);
        if (view1 == null)
        {
            view1 = b.getView(c.getOriginalPosition(i), view, viewgroup);
        }
        a.put(view1, Integer.valueOf(i));
        d.a(view1, 0);
        return view1;
    }

    public int getViewTypeCount()
    {
        return b.getViewTypeCount() + c.getAdViewTypeCount();
    }

    public boolean hasStableIds()
    {
        return b.hasStableIds();
    }

    public void insertItem(int i)
    {
        c.insertItem(i);
    }

    public boolean isAd(int i)
    {
        return c.isAd(i);
    }

    public boolean isEmpty()
    {
        boolean flag = b.isEmpty();
        boolean flag1 = false;
        if (flag)
        {
            int i = c.getAdjustedCount(0);
            flag1 = false;
            if (i == 0)
            {
                flag1 = true;
            }
        }
        return flag1;
    }

    public boolean isEnabled(int i)
    {
        return isAd(i) || (b instanceof ListAdapter) && ((ListAdapter)b).isEnabled(c.getOriginalPosition(i));
    }

    public void loadAds(String s)
    {
        c.loadAds(s);
    }

    public void loadAds(String s, RequestParameters requestparameters)
    {
        c.loadAds(s, requestparameters);
    }

    public void refreshAds(ListView listview, String s)
    {
        refreshAds(listview, s, null);
    }

    public void refreshAds(ListView listview, String s, RequestParameters requestparameters)
    {
        if (listview.getAdapter() != this)
        {
            MoPubLog.w("You called refreshAds on a ListView whose adapter is not an ad placer");
            return;
        }
        View view = listview.getChildAt(0);
        int i;
        int j;
        int k;
        if (view == null)
        {
            i = 0;
        } else
        {
            i = view.getTop();
        }
        j = listview.getFirstVisiblePosition();
        for (k = Math.max(j - 1, 0); c.isAd(k) && k > 0; k--) { }
        int l;
        for (l = listview.getLastVisiblePosition(); c.isAd(l) && l < -1 + getCount(); l++) { }
        int i1 = c.getOriginalPosition(k);
        int j1 = c.getOriginalCount(l + 1);
        int k1 = c.getOriginalCount(getCount());
        c.removeAdsInRange(j1, k1);
        int l1 = c.removeAdsInRange(0, i1);
        if (l1 > 0)
        {
            listview.setSelectionFromTop(j - l1, i);
        }
        loadAds(s, requestparameters);
    }

    public final void registerAdRenderer(MoPubAdRenderer mopubadrenderer)
    {
        if (mopubadrenderer == null)
        {
            MoPubLog.w("Tried to set a null ad renderer on the placer.");
            return;
        } else
        {
            c.registerAdRenderer(mopubadrenderer);
            return;
        }
    }

    public void removeItem(int i)
    {
        c.removeItem(i);
    }

    public final void setAdLoadedListener(MoPubNativeAdLoadedListener mopubnativeadloadedlistener)
    {
        e = mopubnativeadloadedlistener;
    }

    public void setOnClickListener(ListView listview, android.widget.AdapterView.OnItemClickListener onitemclicklistener)
    {
        listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener(onitemclicklistener) {

            final android.widget.AdapterView.OnItemClickListener a;
            final MoPubAdAdapter b;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                if (!MoPubAdAdapter.b(b).isAd(i))
                {
                    a.onItemClick(adapterview, view, MoPubAdAdapter.b(b).getOriginalPosition(i), l);
                }
            }

            
            {
                b = MoPubAdAdapter.this;
                a = onitemclicklistener;
                super();
            }
        });
    }

    public void setOnItemLongClickListener(ListView listview, android.widget.AdapterView.OnItemLongClickListener onitemlongclicklistener)
    {
        listview.setOnItemLongClickListener(new android.widget.AdapterView.OnItemLongClickListener(onitemlongclicklistener) {

            final android.widget.AdapterView.OnItemLongClickListener a;
            final MoPubAdAdapter b;

            public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
            {
                return b.isAd(i) || a.onItemLongClick(adapterview, view, MoPubAdAdapter.b(b).getOriginalPosition(i), l);
            }

            
            {
                b = MoPubAdAdapter.this;
                a = onitemlongclicklistener;
                super();
            }
        });
    }

    public void setOnItemSelectedListener(ListView listview, android.widget.AdapterView.OnItemSelectedListener onitemselectedlistener)
    {
        listview.setOnItemSelectedListener(new android.widget.AdapterView.OnItemSelectedListener(onitemselectedlistener) {

            final android.widget.AdapterView.OnItemSelectedListener a;
            final MoPubAdAdapter b;

            public void onItemSelected(AdapterView adapterview, View view, int i, long l)
            {
                if (!b.isAd(i))
                {
                    a.onItemSelected(adapterview, view, MoPubAdAdapter.b(b).getOriginalPosition(i), l);
                }
            }

            public void onNothingSelected(AdapterView adapterview)
            {
                a.onNothingSelected(adapterview);
            }

            
            {
                b = MoPubAdAdapter.this;
                a = onitemselectedlistener;
                super();
            }
        });
    }

    public void setSelection(ListView listview, int i)
    {
        listview.setSelection(c.getAdjustedPosition(i));
    }

    public void smoothScrollToPosition(ListView listview, int i)
    {
        listview.smoothScrollToPosition(c.getAdjustedPosition(i));
    }
}
