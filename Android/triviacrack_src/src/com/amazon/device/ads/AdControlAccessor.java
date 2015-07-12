// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;

// Referenced classes of package com.amazon.device.ads:
//            AdController, Size, SDKEventListener, RelativePosition, 
//            AdEvent, AdState, PreloadCallback

class AdControlAccessor
{

    private final AdController adController;

    public AdControlAccessor(AdController adcontroller)
    {
        adController = adcontroller;
    }

    public void addJavascriptInterface(Object obj, boolean flag, String s)
    {
        adController.addJavascriptInterface(obj, flag, s);
    }

    public void addSDKEventListener(SDKEventListener sdkeventlistener)
    {
        adController.addSDKEventListener(sdkeventlistener);
    }

    public boolean closeAd()
    {
        return adController.closeAd();
    }

    public void enableCloseButton(boolean flag)
    {
        enableCloseButton(flag, null);
    }

    public void enableCloseButton(boolean flag, RelativePosition relativeposition)
    {
        adController.enableNativeCloseButton(flag, relativeposition);
    }

    public void fireAdEvent(AdEvent adevent)
    {
        adController.fireAdEvent(adevent);
    }

    public AdState getAdState()
    {
        return adController.getAdState();
    }

    public Context getContext()
    {
        return adController.getContext();
    }

    public Coordinates getCurrentPosition()
    {
        AdController.AdPosition adposition = adController.getAdPosition();
        Coordinates coordinates = new Coordinates();
        coordinates.width = adposition.getSize().getWidth();
        coordinates.height = adposition.getSize().getHeight();
        coordinates.x = adposition.getX();
        coordinates.y = adposition.getY();
        return coordinates;
    }

    public SizeDimensions getMaxSize(boolean flag)
    {
        Size size = adController.getMaxExpandableSize(flag);
        SizeDimensions sizedimensions = new SizeDimensions();
        sizedimensions.width = size.getWidth();
        sizedimensions.height = size.getHeight();
        return sizedimensions;
    }

    public int getOriginalOrientation()
    {
        return adController.getOriginalOrientation();
    }

    public int getViewHeight()
    {
        return adController.getViewHeight();
    }

    public ViewGroup getViewParentIfExpanded()
    {
        return adController.getViewParentIfExpanded();
    }

    public int getViewWidth()
    {
        return adController.getViewWidth();
    }

    public void hideCloseButtonImage()
    {
        adController.hideNativeCloseButtonImage();
    }

    public void injectJavascript(String s)
    {
        adController.injectJavascript(s, false);
    }

    public void injectJavascriptPreload(String s)
    {
        adController.injectJavascript(s, true);
    }

    public boolean isInterstitial()
    {
        return adController.isInterstitial();
    }

    public void loadHtml(String s, String s1)
    {
        adController.loadHtml(s, s1);
    }

    public void loadUrl(String s)
    {
        adController.loadUrl(s);
    }

    public void moveViewBackToParent(android.view.ViewGroup.LayoutParams layoutparams)
    {
        adController.moveViewBackToParent(layoutparams);
    }

    public void moveViewToViewGroup(ViewGroup viewgroup, android.view.ViewGroup.LayoutParams layoutparams, boolean flag)
    {
        adController.moveViewToViewGroup(viewgroup, layoutparams, flag);
    }

    public boolean popView()
    {
        return adController.popView();
    }

    public void preloadHtml(String s, String s1, PreloadCallback preloadcallback)
    {
        adController.preloadHtml(s, s1, preloadcallback);
    }

    public void preloadUrl(String s, PreloadCallback preloadcallback)
    {
        adController.preloadUrl(s, preloadcallback);
    }

    public void reload()
    {
        adController.reload();
    }

    public void removeCloseButton()
    {
        adController.removeNativeCloseButton();
    }

    public void setExpanded(boolean flag)
    {
        adController.setExpanded(flag);
    }

    public void setOriginalOrientation(Activity activity)
    {
        adController.setOriginalOrientation(activity);
    }

    public void stashView()
    {
        adController.stashView();
    }

    private class Coordinates
    {

        int height;
        final AdControlAccessor this$0;
        int width;
        int x;
        int y;

        public int getHeight()
        {
            return height;
        }

        public int getWidth()
        {
            return width;
        }

        public int getX()
        {
            return x;
        }

        public int getY()
        {
            return y;
        }

        public Coordinates()
        {
            this$0 = AdControlAccessor.this;
            super();
        }
    }


    private class SizeDimensions
    {

        int height;
        final AdControlAccessor this$0;
        int width;

        public int getHeight()
        {
            return height;
        }

        public int getWidth()
        {
            return width;
        }

        public SizeDimensions()
        {
            this$0 = AdControlAccessor.this;
            super();
        }
    }

}
