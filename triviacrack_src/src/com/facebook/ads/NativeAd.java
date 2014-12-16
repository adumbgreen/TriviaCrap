// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.internal.AdClientEvent;
import com.facebook.ads.internal.AdClientEventManager;
import com.facebook.ads.internal.AdRequestController;
import com.facebook.ads.internal.AdResponse;
import com.facebook.ads.internal.AdType;
import com.facebook.ads.internal.DownloadImageTask;
import com.facebook.ads.internal.NativeAdDataModel;
import com.facebook.ads.internal.NativeAdHandler;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

// Referenced classes of package com.facebook.ads:
//            Ad, AdSize, AdListener, ImpressionListener, 
//            AdError

public class NativeAd
    implements Ad
{

    private static final String TAG = com/facebook/ads/NativeAd.getSimpleName();
    private static WeakHashMap viewMapping = new WeakHashMap();
    private NativeAdDataModel adDataModel;
    private AdListener adListener;
    private boolean adLoaded;
    private AdRequestController adRequestController;
    private View adView;
    private List clickListeners;
    private final Context context;
    private EventHandler eventHandler;
    private NativeAdHandler handler;
    private ImpressionListener impListener;
    private volatile boolean loadRequested;
    private int viewabilityThreshold;

    public NativeAd(Context context1, String s)
    {
        context = context1;
        clickListeners = new ArrayList();
        adRequestController = new AdRequestController(context, s, AdSize.INTERSTITIAL, false, AdType.NATIVE, new com.facebook.ads.internal.AdRequest.Callback() {

            final NativeAd this$0;

            public void onCompleted(AdResponse adresponse)
            {
                if (adresponse.getDataModel() == null || (adresponse.getDataModel() instanceof NativeAdDataModel)) goto _L2; else goto _L1
_L1:
                if (adListener != null)
                {
                    adListener.onError(NativeAd.this, AdError.INTERNAL_ERROR);
                }
_L4:
                return;
_L2:
                adDataModel = (NativeAdDataModel)adresponse.getDataModel();
                if (adDataModel != null && adDataModel.isValid())
                {
                    adLoaded = true;
                    if (adListener != null)
                    {
                        adListener.onAdLoaded(NativeAd.this);
                    }
                    viewabilityThreshold = adresponse.getViewabilityThreshold();
                    return;
                }
                if (adDataModel != null)
                {
                    break; /* Loop/switch isn't completed */
                }
                adLoaded = false;
                if (adListener != null)
                {
                    AdListener adlistener = adListener;
                    NativeAd nativead = NativeAd.this;
                    AdError aderror;
                    if (adresponse.getError() != null)
                    {
                        aderror = adresponse.getError();
                    } else
                    {
                        aderror = AdError.INTERNAL_ERROR;
                    }
                    adlistener.onError(nativead, aderror);
                    return;
                }
                if (true) goto _L4; else goto _L3
_L3:
                adLoaded = false;
                adDataModel = null;
                if (adListener != null)
                {
                    adListener.onError(NativeAd.this, AdError.MISSING_PROPERTIES);
                    return;
                }
                if (true) goto _L4; else goto _L5
_L5:
            }

            public void onError(AdError aderror)
            {
                adLoaded = false;
                if (adListener != null)
                {
                    adListener.onError(NativeAd.this, aderror);
                }
            }

            
            {
                this$0 = NativeAd.this;
                super();
            }
        });
    }

    private void addListener(View view)
    {
        clickListeners.add(view);
        view.setOnClickListener(eventHandler);
        view.setOnTouchListener(eventHandler);
    }

    private void collectAllSubviews(List list, View view)
    {
        list.add(view);
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            for (int i = 0; i < viewgroup.getChildCount(); i++)
            {
                collectAllSubviews(list, viewgroup.getChildAt(i));
            }

        }
    }

    private void detachListeners()
    {
        View view;
        for (Iterator iterator = clickListeners.iterator(); iterator.hasNext(); view.setOnTouchListener(null))
        {
            view = (View)iterator.next();
            view.setOnClickListener(null);
        }

        clickListeners.clear();
    }

    public static void downloadAndDisplayImage(Image image, ImageView imageview)
    {
        DownloadImageTask downloadimagetask = new DownloadImageTask(imageview);
        String as[] = new String[1];
        as[0] = image.getUrl();
        downloadimagetask.execute(as);
    }

    private void ensureAdRequestController()
    {
        if (adRequestController == null)
        {
            RuntimeException runtimeexception = new RuntimeException("No request controller available, has the NativeAd been destroyed?");
            AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(runtimeexception));
            throw runtimeexception;
        } else
        {
            return;
        }
    }

    private boolean isValidAlpha()
    {
        return android.os.Build.VERSION.SDK_INT < 11 || adView.getAlpha() > 0.9F;
    }

    private boolean isViewOnScreen()
    {
        Rect rect;
        if (adView != null && adLoaded && adView.getVisibility() == 0 && adView.getParent() != null && isValidAlpha())
        {
            if (adView.getGlobalVisibleRect(rect = new Rect()) && (double)(rect.width() * rect.height()) >= ((double)(adView.getWidth() * adView.getHeight()) * (double)viewabilityThreshold) / 100D)
            {
                return true;
            }
        }
        return false;
    }

    public void destroy()
    {
        if (adRequestController != null)
        {
            adRequestController.destroy();
            adRequestController = null;
        }
        detachListeners();
        if (handler != null)
        {
            handler.cancelImpressionRetry();
            handler = null;
        }
        if (adView != null)
        {
            viewMapping.remove(adView);
            adView = null;
        }
    }

    public String getAdBody()
    {
        if (!adLoaded)
        {
            return null;
        } else
        {
            return adDataModel.getBody();
        }
    }

    public String getAdCallToAction()
    {
        if (!adLoaded)
        {
            return null;
        } else
        {
            return adDataModel.getCallToAction();
        }
    }

    public Image getAdCoverImage()
    {
        if (!adLoaded)
        {
            return null;
        } else
        {
            return adDataModel.getImage();
        }
    }

    public Image getAdIcon()
    {
        if (!adLoaded)
        {
            return null;
        } else
        {
            return adDataModel.getIcon();
        }
    }

    public String getAdSocialContext()
    {
        if (!adLoaded)
        {
            return null;
        } else
        {
            return adDataModel.getSocialContext();
        }
    }

    public Rating getAdStarRating()
    {
        if (!adLoaded)
        {
            return null;
        } else
        {
            return adDataModel.getStarRating();
        }
    }

    public String getAdTitle()
    {
        if (!adLoaded)
        {
            return null;
        } else
        {
            return adDataModel.getTitle();
        }
    }

    public boolean isAdLoaded()
    {
        return adLoaded;
    }

    public void loadAd()
    {
        if (loadRequested)
        {
            IllegalStateException illegalstateexception = new IllegalStateException("Ad already loaded");
            AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(illegalstateexception));
            throw illegalstateexception;
        } else
        {
            loadRequested = true;
            ensureAdRequestController();
            adRequestController.loadAd();
            return;
        }
    }

    public void registerViewForInteraction(View view)
    {
        ArrayList arraylist = new ArrayList();
        collectAllSubviews(arraylist, view);
        registerViewForInteraction(view, ((List) (arraylist)));
    }

    public void registerViewForInteraction(View view, List list)
    {
        if (view == null)
        {
            IllegalArgumentException illegalargumentexception = new IllegalArgumentException("Must provide a View");
            AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(illegalargumentexception));
            throw illegalargumentexception;
        }
        if (list == null || list.size() == 0)
        {
            IllegalArgumentException illegalargumentexception1 = new IllegalArgumentException("Invalid set of clickable views");
            AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(illegalargumentexception1));
            throw illegalargumentexception1;
        }
        if (!adLoaded)
        {
            Log.e(TAG, "Ad not loaded");
            return;
        }
        if (adView != null)
        {
            Log.w(TAG, "Native Ad was already registered with a View. Auto unregistering and proceeding.");
            unregisterView();
        }
        if (viewMapping.containsKey(view))
        {
            Log.w(TAG, "View already registered with a NativeAd. Auto unregistering and proceeding.");
            ((NativeAd)((WeakReference)viewMapping.get(view)).get()).unregisterView();
        }
        eventHandler = new EventHandler();
        adView = view;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); addListener((View)iterator.next())) { }
        handler = new NativeAdHandler(new com.facebook.ads.internal.AdHandler.ImpressionHelper() {

            final NativeAd this$0;

            public void afterImpressionSent()
            {
            }

            public void onLoggingImpression()
            {
                if (impListener != null)
                {
                    impListener.onLoggingImpression(NativeAd.this);
                }
            }

            public boolean shouldSendImpression()
            {
                return isViewOnScreen();
            }

            
            {
                this$0 = NativeAd.this;
                super();
            }
        }, 1000L, adDataModel, context);
        handler.trySendImpression();
        viewMapping.put(view, new WeakReference(this));
    }

    public void setAdListener(AdListener adlistener)
    {
        adListener = adlistener;
    }

    public void setImpressionListener(ImpressionListener impressionlistener)
    {
        impListener = impressionlistener;
    }

    public void unregisterView()
    {
        if (adView == null)
        {
            return;
        }
        if (!viewMapping.containsKey(adView) || ((WeakReference)viewMapping.get(adView)).get() != this)
        {
            IllegalStateException illegalstateexception = new IllegalStateException("View not registered with this NativeAd");
            AdClientEventManager.addClientEvent(AdClientEvent.newErrorEvent(illegalstateexception));
            throw illegalstateexception;
        } else
        {
            viewMapping.remove(adView);
            detachListeners();
            handler.cancelImpressionRetry();
            handler = null;
            adView = null;
            return;
        }
    }





/*
    static NativeAdDataModel access$102(NativeAd nativead, NativeAdDataModel nativeaddatamodel)
    {
        nativead.adDataModel = nativeaddatamodel;
        return nativeaddatamodel;
    }

*/


/*
    static boolean access$202(NativeAd nativead, boolean flag)
    {
        nativead.adLoaded = flag;
        return flag;
    }

*/


/*
    static int access$302(NativeAd nativead, int i)
    {
        nativead.viewabilityThreshold = i;
        return i;
    }

*/





    private class Image
    {

        private final int height;
        private final String url;
        private final int width;

        public static Image fromJSONObject(JSONObject jsonobject)
        {
            String s;
            if (jsonobject != null)
            {
                if ((s = jsonobject.optString("url")) != null)
                {
                    return new Image(s, jsonobject.optInt("width", 0), jsonobject.optInt("height", 0));
                }
            }
            return null;
        }

        public int getHeight()
        {
            return height;
        }

        public String getUrl()
        {
            return url;
        }

        public int getWidth()
        {
            return width;
        }

        private Image(String s, int i, int j)
        {
            url = s;
            width = i;
            height = j;
        }
    }


    private class EventHandler
        implements android.view.View.OnClickListener, android.view.View.OnTouchListener
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
            if (adListener != null)
            {
                adListener.onAdClicked(NativeAd.this);
            }
            if (!touchDataInitialized)
            {
                Log.e("FBAudienceNetworkLog", "No touch data recorded, please ensure touch events reach the ad View by returning false if you intercept the event.");
            }
            adDataModel.handleClick(context, getData());
        }

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            if (!touchDataInitialized && motionevent.getAction() == 0 && adView != null)
            {
                width = adView.getWidth();
                height = adView.getHeight();
                int ai[] = new int[2];
                adView.getLocationInWindow(ai);
                adPositionX = ai[0];
                adPositionY = ai[1];
                Rect rect = new Rect();
                adView.getGlobalVisibleRect(rect);
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

        private EventHandler()
        {
            this$0 = NativeAd.this;
            super();
        }

    }

}
