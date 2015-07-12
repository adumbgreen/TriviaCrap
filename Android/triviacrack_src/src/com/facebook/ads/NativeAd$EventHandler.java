// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.internal.NativeAdDataModel;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.facebook.ads:
//            NativeAd, AdListener

class <init>
    implements android.view.ler, android.view.ler
{

    private float adPositionX;
    private float adPositionY;
    private int height;
    final NativeAd this$0;
    private boolean touchDataInitialized;
    private int visibleHeight;
    private int visibleWidth;
    private int width;
    private int xCoord;
    private int yCoord;

    public Map getData()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("clickX", Integer.valueOf(xCoord));
        hashmap.put("clickY", Integer.valueOf(yCoord));
        hashmap.put("width", Integer.valueOf(width));
        hashmap.put("height", Integer.valueOf(height));
        hashmap.put("adPositionX", Float.valueOf(adPositionX));
        hashmap.put("adPositionY", Float.valueOf(adPositionY));
        hashmap.put("visibleWidth", Integer.valueOf(visibleWidth));
        hashmap.put("visibleHeight", Integer.valueOf(visibleHeight));
        return hashmap;
    }

    public void onClick(View view)
    {
        if (NativeAd.access$000(NativeAd.this) != null)
        {
            NativeAd.access$000(NativeAd.this).onAdClicked(NativeAd.this);
        }
        if (!touchDataInitialized)
        {
            Log.e("FBAudienceNetworkLog", "No touch data recorded, please ensure touch events reach the ad View by returning false if you intercept the event.");
        }
        NativeAd.access$100(NativeAd.this).handleClick(NativeAd.access$700(NativeAd.this), getData());
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (!touchDataInitialized && motionevent.getAction() == 0 && NativeAd.access$800(NativeAd.this) != null)
        {
            width = NativeAd.access$800(NativeAd.this).getWidth();
            height = NativeAd.access$800(NativeAd.this).getHeight();
            int ai[] = new int[2];
            NativeAd.access$800(NativeAd.this).getLocationInWindow(ai);
            adPositionX = ai[0];
            adPositionY = ai[1];
            Rect rect = new Rect();
            NativeAd.access$800(NativeAd.this).getGlobalVisibleRect(rect);
            visibleWidth = rect.width();
            visibleHeight = rect.height();
            int ai1[] = new int[2];
            view.getLocationInWindow(ai1);
            xCoord = ((int)motionevent.getX() + ai1[0]) - ai[0];
            yCoord = ((int)motionevent.getY() + ai1[1]) - ai[1];
            touchDataInitialized = true;
        }
        return false;
    }

    private odel()
    {
        this$0 = NativeAd.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
