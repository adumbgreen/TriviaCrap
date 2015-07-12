// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.mopub.common.DownloadResponse;
import com.mopub.common.HttpClient;
import com.mopub.common.util.ResponseHeader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.mopub.nativeads:
//            t, ag, x, ak, 
//            m, MoPubNative, y, z, 
//            b

public class NativeResponse
{

    private final Context a;
    private MoPubNative.MoPubNativeEventListener b;
    private final t c;
    private final Set d = new HashSet();
    private final String e;
    private final String f;
    private boolean g;
    private boolean h;
    private boolean i;

    public NativeResponse(Context context, DownloadResponse downloadresponse, String s, t t1, MoPubNative.MoPubNativeEventListener mopubnativeeventlistener)
    {
        a = context.getApplicationContext();
        f = s;
        b = mopubnativeeventlistener;
        c = t1;
        c.setNativeEventListener(new b() {

            final NativeResponse a;

            public void onAdClicked()
            {
                a.handleClick(null);
            }

            public void onAdImpressed()
            {
                a.recordImpression(null);
            }

            
            {
                a = NativeResponse.this;
                super();
            }
        });
        d.add(downloadresponse.getFirstHeader(ResponseHeader.IMPRESSION_URL));
        e = downloadresponse.getFirstHeader(ResponseHeader.CLICKTHROUGH_URL);
    }

    private void a(View view)
    {
        if (getClickDestinationUrl() == null)
        {
            return;
        }
        ag ag1 = null;
        if (view != null)
        {
            ag1 = new ag(a);
            ag1.a(view);
        }
        String as[] = new String[1];
        as[0] = getClickDestinationUrl();
        Iterator iterator = Arrays.asList(as).iterator();
        x x1 = new x(a, iterator, ag1);
        ak.getResolvedUrl((String)iterator.next(), x1);
    }

    private void a(View view, android.view.View.OnClickListener onclicklistener)
    {
        view.setOnClickListener(onclicklistener);
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            for (int j = 0; j < viewgroup.getChildCount(); j++)
            {
                a(viewgroup.getChildAt(j), onclicklistener);
            }

        }
    }

    private void a(String s, ImageView imageview)
    {
        m.a(s, imageview);
    }

    public void clear(View view)
    {
        a(view, ((android.view.View.OnClickListener) (null)));
        c.clear(view);
    }

    public void destroy()
    {
        if (isDestroyed())
        {
            return;
        } else
        {
            b = MoPubNative.b;
            c.destroy();
            i = true;
            return;
        }
    }

    public String getAdUnitId()
    {
        return f;
    }

    public String getCallToAction()
    {
        return c.getCallToAction();
    }

    public String getClickDestinationUrl()
    {
        return c.getClickDestinationUrl();
    }

    public String getClickTracker()
    {
        return e;
    }

    public Object getExtra(String s)
    {
        return c.getExtra(s);
    }

    public Map getExtras()
    {
        return c.getExtras();
    }

    public String getIconImageUrl()
    {
        return c.getIconImageUrl();
    }

    public int getImpressionMinPercentageViewed()
    {
        return c.getImpressionMinPercentageViewed();
    }

    public int getImpressionMinTimeViewed()
    {
        return c.getImpressionMinTimeViewed();
    }

    public List getImpressionTrackers()
    {
        HashSet hashset = new HashSet();
        hashset.addAll(d);
        hashset.addAll(c.getImpressionTrackers());
        return new ArrayList(hashset);
    }

    public String getMainImageUrl()
    {
        return c.getMainImageUrl();
    }

    public boolean getRecordedImpression()
    {
        return g;
    }

    public Double getStarRating()
    {
        return c.getStarRating();
    }

    public String getSubtitle()
    {
        return c.getText();
    }

    public String getText()
    {
        return c.getText();
    }

    public String getTitle()
    {
        return c.getTitle();
    }

    public void handleClick(View view)
    {
        if (isDestroyed())
        {
            return;
        }
        if (!isClicked())
        {
            HttpClient.makeTrackingHttpRequest(e, a);
        }
        a(view);
        c.handleClick(view);
        h = true;
        b.onNativeClick(view);
    }

    public boolean isClicked()
    {
        return h;
    }

    public boolean isDestroyed()
    {
        return i;
    }

    public boolean isOverridingClickTracker()
    {
        return c.isOverridingClickTracker();
    }

    public boolean isOverridingImpressionTracker()
    {
        return c.isOverridingImpressionTracker();
    }

    public void loadExtrasImage(String s, ImageView imageview)
    {
        Object obj = getExtra(s);
        if (obj != null && (obj instanceof String))
        {
            a((String)obj, imageview);
        }
    }

    public void loadIconImage(ImageView imageview)
    {
        a(getIconImageUrl(), imageview);
    }

    public void loadMainImage(ImageView imageview)
    {
        a(getMainImageUrl(), imageview);
    }

    public void prepare(View view)
    {
        if (isDestroyed())
        {
            return;
        }
        if (!isOverridingClickTracker())
        {
            a(view, new y(this));
        }
        c.prepare(view);
    }

    public void recordImpression(View view)
    {
        if (getRecordedImpression() || isDestroyed())
        {
            return;
        }
        for (Iterator iterator = getImpressionTrackers().iterator(); iterator.hasNext(); HttpClient.makeTrackingHttpRequest((String)iterator.next(), a)) { }
        c.recordImpression();
        g = true;
        b.onNativeImpression(view);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("\n");
        stringbuilder.append(z.TITLE.a).append(":").append(getTitle()).append("\n");
        stringbuilder.append(z.TEXT.a).append(":").append(getText()).append("\n");
        stringbuilder.append(z.ICON_IMAGE.a).append(":").append(getIconImageUrl()).append("\n");
        stringbuilder.append(z.MAIN_IMAGE.a).append(":").append(getMainImageUrl()).append("\n");
        stringbuilder.append(z.STAR_RATING.a).append(":").append(getStarRating()).append("\n");
        stringbuilder.append(z.IMPRESSION_TRACKER.a).append(":").append(getImpressionTrackers()).append("\n");
        stringbuilder.append(z.CLICK_TRACKER.a).append(":").append(e).append("\n");
        stringbuilder.append(z.CLICK_DESTINATION.a).append(":").append(getClickDestinationUrl()).append("\n");
        stringbuilder.append(z.CALL_TO_ACTION.a).append(":").append(getCallToAction()).append("\n");
        stringbuilder.append("recordedImpression").append(":").append(g).append("\n");
        stringbuilder.append("extras").append(":").append(getExtras());
        return stringbuilder.toString();
    }
}
