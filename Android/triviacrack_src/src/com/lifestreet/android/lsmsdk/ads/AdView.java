// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.ads;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.mraid.MRAIDCloseButton;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.ads:
//            AdWebView, AdListener

public final class AdView extends RelativeLayout
    implements android.view.View.OnClickListener
{

    private AdWebView mAdWebView;
    private MRAIDCloseButton mCloseButton;
    private AdListener mListener;

    public AdView(Context context)
    {
        super(context.getApplicationContext());
        setBackgroundColor(0);
        mAdWebView = new AdWebView(context, this);
        addView(mAdWebView);
        mCloseButton = new MRAIDCloseButton(context);
        mCloseButton.setVisibility(8);
        mCloseButton.setOnClickListener(this);
        addView(mCloseButton, mCloseButton.getLayout());
    }

    public void destroy()
    {
        LSMLogger.LOGGER.info("destroy");
        if (mAdWebView != null)
        {
            mAdWebView.destroy();
            mAdWebView = null;
        }
        removeAllViews();
        mListener = null;
        mCloseButton = null;
    }

    public AdListener getListener()
    {
        return mListener;
    }

    public void loadHtmlWithBaseURL(String s, String s1)
    {
        if (mAdWebView != null)
        {
            mAdWebView.loadDataWithBaseURL(s, s1, "text/html", "UTF-8", null);
        }
    }

    public void onClick(View view)
    {
        if (mListener != null)
        {
            mListener.onClose();
        }
    }

    public void setListener(AdListener adlistener)
    {
        mListener = adlistener;
    }

    public void showCloseButton(boolean flag)
    {
label0:
        {
            if (mCloseButton != null)
            {
                if (!flag)
                {
                    break label0;
                }
                mCloseButton.setVisibility(0);
            }
            return;
        }
        mCloseButton.setVisibility(8);
    }
}
