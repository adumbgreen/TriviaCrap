// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;

// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDController, MRAIDWebView, MRAIDNativeInterface, MRAIDViewListener, 
//            MRAIDActivity

public final class MRAIDView extends FrameLayout
{

    private boolean mDestroyed;
    private MRAIDViewListener mListener;
    private final MRAIDController mMraidController;
    private MRAIDWebView mTwoPartWebView;
    private long mViewId;
    private MRAIDWebView mWebView;

    public MRAIDView(Activity activity, int i, int j, MRAIDController.MRAIDPlacementType mraidplacementtype)
    {
        super(activity);
        mDestroyed = false;
        mViewId = System.currentTimeMillis();
        mMraidController = new MRAIDController(activity, this);
        mMraidController.setPlacementType(mraidplacementtype);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(i, j);
        layoutparams.addRule(13);
        setLayoutParams(layoutparams);
        setBackgroundColor(0);
        mWebView = new MRAIDWebView(activity.getApplicationContext(), new CustomWebViewClient(false), new MRAIDNativeInterface(false, mMraidController));
        addView(mWebView);
    }

    public MRAIDView(Context context, AttributeSet attributeset)
    {
        this((Activity)context, -1, -1, MRAIDController.MRAIDPlacementType.INLINE);
    }

    private void addViewDelayed(final WeakReference viewGroupRef, final WeakReference viewRef, long l)
    {
        postDelayed(new Runnable() {

            final MRAIDView this$0;
            final WeakReference val$viewGroupRef;
            final WeakReference val$viewRef;

            public void run()
            {
                if (!mDestroyed && viewGroupRef != null && viewRef != null)
                {
                    View view = (View)viewRef.get();
                    ViewGroup viewgroup = (ViewGroup)viewGroupRef.get();
                    if (view != null && viewgroup != null)
                    {
                        viewgroup.addView(view);
                    }
                }
            }

            
            {
                this$0 = MRAIDView.this;
                viewGroupRef = weakreference;
                viewRef = weakreference1;
                super();
            }
        }, l);
    }

    private void onCloseExpandedView()
    {
        mMraidController.defaultState();
        if (mListener != null)
        {
            mListener.onClose(this);
        }
    }

    private void showViewDelayed(final WeakReference viewRef, long l)
    {
        postDelayed(new Runnable() {

            final MRAIDView this$0;
            final WeakReference val$viewRef;

            public void run()
            {
                if (!mDestroyed && viewRef != null)
                {
                    View view = (View)viewRef.get();
                    if (view != null)
                    {
                        view.setVisibility(0);
                    }
                }
            }

            
            {
                this$0 = MRAIDView.this;
                viewRef = weakreference;
                super();
            }
        }, l);
    }

    public void destroy()
    {
        if (!mDestroyed)
        {
            mDestroyed = true;
            mMraidController.destroy();
            mWebView = null;
            mTwoPartWebView = null;
            removeAllViews();
        }
        mListener = null;
    }

    public void evaluateJavaScriptString(final String script)
    {
        post(new Runnable() {

            final MRAIDView this$0;
            final String val$script;

            public void run()
            {
                MRAIDWebView mraidwebview;
                if (mTwoPartWebView == null)
                {
                    mraidwebview = mWebView;
                } else
                {
                    mraidwebview = mTwoPartWebView;
                }
                if (mraidwebview != null && !mDestroyed)
                {
                    mraidwebview.loadUrl((new StringBuilder()).append("javascript:").append(script).toString());
                }
            }

            
            {
                this$0 = MRAIDView.this;
                script = s;
                super();
            }
        });
    }

    public void expandToSize(int i, int j)
    {
        if (mWebView != null && !mMraidController.isInterstitial() && !mDestroyed)
        {
            removeView(mWebView);
            mTwoPartWebView = null;
            MRAIDActivity.show(getContext(), mViewId, mWebView);
        }
    }

    public void expandToSizeWithContent(String s, int i, int j)
    {
        if (mWebView != null && !mMraidController.isInterstitial() && !mDestroyed)
        {
            mWebView.setVisibility(4);
            mTwoPartWebView = new MRAIDWebView(getContext().getApplicationContext(), new CustomWebViewClient(true), new MRAIDNativeInterface(true, mMraidController));
            MRAIDActivity.show(getContext(), mViewId, mTwoPartWebView);
            mTwoPartWebView.loadDataWithBaseURL(null, s, "text/html", "UTF-8", null);
        }
    }

    public MRAIDViewListener getListener()
    {
        return mListener;
    }

    public long getViewId()
    {
        return mViewId;
    }

    public WebView getWebView()
    {
        return mWebView;
    }

    public void loadHTML(String s, String s1)
    {
        if (mWebView != null && !mDestroyed)
        {
            String s2 = mMraidController.prepareHtml(s1);
            mWebView.loadDataWithBaseURL(null, s2, "text/html", "UTF-8", null);
        }
    }

    public void onCloseMraidActivity()
    {
label0:
        {
            if (!mDestroyed)
            {
                if (mTwoPartWebView != null)
                {
                    break label0;
                }
                onCloseExpandedView();
                addViewDelayed(new WeakReference(this), new WeakReference(mWebView), 300L);
            }
            return;
        }
        mTwoPartWebView.destroy();
        mTwoPartWebView = null;
        onCloseExpandedView();
        showViewDelayed(new WeakReference(mWebView), 300L);
    }

    public void setListener(MRAIDViewListener mraidviewlistener)
    {
        mListener = mraidviewlistener;
    }






    private class CustomWebViewClient extends WebViewClient
    {

        private final boolean mTwoPartCreative;
        final MRAIDView this$0;

        public void onPageFinished(WebView webview, String s)
        {
            LSMLogger.LOGGER.info("onPageFinished");
            super.onPageFinished(webview, s);
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            super.onReceivedError(webview, i, s, s1);
            if (!mTwoPartCreative && mListener != null)
            {
                mListener.onFailedToReceiveAd(MRAIDView.this);
            }
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            LSMLogger.LOGGER.info(s);
            if (!s.contains("lfstmedia.com")) goto _L2; else goto _L1
_L1:
            (new SwallowRedirectTask(webview, this)).execute(new String[] {
                s
            });
_L4:
            return true;
_L2:
            if (mListener != null)
            {
                mListener.onClick(MRAIDView.this);
            }
            mMraidController.startActivityWithUrl(s);
            if (mListener == null) goto _L4; else goto _L3
_L3:
            mListener.onLeaveApplication(MRAIDView.this);
            return true;
            ActivityNotFoundException activitynotfoundexception;
            activitynotfoundexception;
            LSMLogger.LOGGER.log(Level.SEVERE, (new StringBuilder()).append("Activity not found for URL: ").append(s).toString(), activitynotfoundexception);
            return true;
        }

        public CustomWebViewClient(boolean flag)
        {
            this$0 = MRAIDView.this;
            super();
            mTwoPartCreative = flag;
        }
    }

}
