// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.lifestreet.android.lsmsdk.ads.AbstractAdActivity;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDWebView, MRAIDCloseButton

public final class MRAIDActivity extends AbstractAdActivity
    implements android.view.View.OnClickListener
{

    public static final String ACTION_CLOSE = "com.lifestreet.action.CLOSE";
    public static final String ACTION_HIDE_CLOSE_BUTTON = "com.lifestreet.action.HIDE_CLOSE_BUTTON";
    public static final String ACTION_SHOW_CLOSE_BUTTON = "com.lifestreet.action.SHOW_CLOSE_BUTTON";
    public static final String CATEGORY = "com.lifestreet.category.MRAIDActivity";
    public static final String EXTRA_VIEW_ID = "com.lifestreet.extra.VIEW_ID";
    public static final Map WEB_VIEWS = new HashMap();
    private BroadcastReceiver mBroadcastReceiver;
    private MRAIDCloseButton mCloseButton;
    private RelativeLayout mContainerView;
    private long mMraidViewId;

    public MRAIDActivity()
    {
        mMraidViewId = -1L;
        mBroadcastReceiver = new BroadcastReceiver() {

            final MRAIDActivity this$0;

            private void runAction(String s)
            {
                if ("com.lifestreet.action.CLOSE".equals(s))
                {
                    finish();
                } else
                {
                    if ("com.lifestreet.action.SHOW_CLOSE_BUTTON".equals(s))
                    {
                        showCloseButton();
                        return;
                    }
                    if ("com.lifestreet.action.HIDE_CLOSE_BUTTON".equals(s))
                    {
                        hideCloseButton();
                        return;
                    }
                }
            }

            public void onReceive(Context context, Intent intent)
            {
                if (intent != null)
                {
                    String s = intent.getAction();
                    if (intent.getCategories().contains("com.lifestreet.category.MRAIDActivity") && mMraidViewId == intent.getLongExtra("com.lifestreet.extra.VIEW_ID", -1L))
                    {
                        runAction(s);
                    }
                }
            }

            
            {
                this$0 = MRAIDActivity.this;
                super();
            }
        };
    }

    private void broadcastAction(String s)
    {
        Intent intent = new Intent();
        intent.setAction(s);
        intent.addCategory("com.lifestreet.category.MRAIDActivity");
        intent.putExtra("com.lifestreet.extra.VIEW_ID", mMraidViewId);
        sendBroadcast(intent);
    }

    public static MRAIDWebView getMraidWebView(long l)
    {
        WeakReference weakreference = (WeakReference)WEB_VIEWS.get(Long.valueOf(l));
        if (weakreference != null)
        {
            return (MRAIDWebView)weakreference.get();
        } else
        {
            return null;
        }
    }

    private void hideCloseButton()
    {
        if (mCloseButton != null)
        {
            mCloseButton.setVisibility(8);
        }
    }

    private void registerReceiver()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.lifestreet.action.CLOSE");
        intentfilter.addAction("com.lifestreet.action.SHOW_CLOSE_BUTTON");
        intentfilter.addAction("com.lifestreet.action.HIDE_CLOSE_BUTTON");
        intentfilter.addCategory("com.lifestreet.category.MRAIDActivity");
        registerReceiver(mBroadcastReceiver, intentfilter);
    }

    public static void show(Context context, long l, MRAIDWebView mraidwebview)
    {
        WEB_VIEWS.put(Long.valueOf(l), new WeakReference(mraidwebview));
        Intent intent = new Intent(context, com/lifestreet/android/lsmsdk/mraid/MRAIDActivity);
        intent.putExtra("com.lifestreet.WebViewId", l);
        context.startActivity(intent);
    }

    private void showCloseButton()
    {
        if (mCloseButton != null)
        {
            mCloseButton.setVisibility(0);
        }
    }

    public void onClick(View view)
    {
        finish();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mMraidViewId = getIntent().getLongExtra("com.lifestreet.WebViewId", -1L);
        mContainerView = new RelativeLayout(this);
        mContainerView.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        mContainerView.setBackgroundColor(0);
        mCloseButton = new MRAIDCloseButton(this);
        mCloseButton.setOnClickListener(this);
        if (mMraidViewId != -1L)
        {
            MRAIDWebView mraidwebview = getMraidWebView(mMraidViewId);
            if (mraidwebview != null)
            {
                mContainerView.addView(mraidwebview);
            }
        }
        mContainerView.addView(mCloseButton, mCloseButton.getLayout());
        setContentView(mContainerView);
        registerReceiver();
        broadcastAction("com.lifestreet.action.PRESENT_SCREEN");
    }

    protected void onDestroy()
    {
        unregisterReceiver(mBroadcastReceiver);
        mContainerView.removeAllViews();
        if (mMraidViewId != -1L)
        {
            WEB_VIEWS.remove(Long.valueOf(mMraidViewId));
        }
        broadcastAction("com.lifestreet.action.DISMISS_SCREEN");
        super.onDestroy();
    }




}
