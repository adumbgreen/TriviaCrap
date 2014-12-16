// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.lifestreet.android.lsmsdk.ads.AdSize;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.commons.Utils;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            SlotViewPlaceholder, SlotController, SlotType, SlotListener, 
//            SlotTargeting, IntegrationType, TransitionAnimation

public final class SlotView extends RelativeLayout
{

    private final SlotController mSlotController;
    private AdSize mSlotSize;
    private final SlotViewPlaceholder mSlotViewPlaceholder;

    public SlotView(Context context)
    {
        super(context);
        if (isInEditMode())
        {
            mSlotController = null;
            mSlotViewPlaceholder = new SlotViewPlaceholder(getContext().getResources().getDisplayMetrics());
            setWillNotDraw(false);
            return;
        } else
        {
            mSlotController = new SlotController(SlotType.NORMAL, getContext());
            mSlotController.setSlotView(this);
            mSlotViewPlaceholder = null;
            return;
        }
    }

    public SlotView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        String s;
        String s1;
        if (isInEditMode())
        {
            mSlotController = null;
            mSlotViewPlaceholder = new SlotViewPlaceholder(getContext().getResources().getDisplayMetrics());
            setWillNotDraw(false);
        } else
        {
            mSlotController = new SlotController(SlotType.NORMAL, getContext());
            mSlotController.setSlotView(this);
            mSlotViewPlaceholder = null;
        }
        s = attributeset.getAttributeValue(null, "slot_slotTag");
        if (mSlotController != null && s != null && s.length() > 0)
        {
            mSlotController.setSlotTag(s);
        }
        s1 = attributeset.getAttributeValue(null, "slot_autoRefreshEnabled");
        if (s1 != null && s1.length() > 0)
        {
            setAutoRefreshEnabled(Boolean.parseBoolean(s1));
        }
    }

    public void cleanup()
    {
        removeAllViews();
    }

    public void destroy()
    {
        LSMLogger.LOGGER.info("Destroy");
        setAutoRefreshEnabled(false);
        cleanup();
        if (mSlotController != null)
        {
            mSlotController.destroy();
        }
    }

    public void fetchAd()
    {
        this;
        JVM INSTR monitorenter ;
        if (mSlotController != null)
        {
            mSlotController.loadSlot(false);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public int getHeightInDips()
    {
        if (mSlotSize != null)
        {
            return mSlotSize.getHeight();
        } else
        {
            android.util.DisplayMetrics displaymetrics = getContext().getResources().getDisplayMetrics();
            return (int)Utils.convertPixelsToDips(getHeight(), displaymetrics);
        }
    }

    public SlotListener getListener()
    {
        SlotController slotcontroller = mSlotController;
        SlotListener slotlistener = null;
        if (slotcontroller != null)
        {
            slotlistener = mSlotController.getSlotListener();
        }
        return slotlistener;
    }

    public String getSlotTag()
    {
        SlotController slotcontroller = mSlotController;
        String s = null;
        if (slotcontroller != null)
        {
            s = mSlotController.getSlotTag();
        }
        return s;
    }

    public SlotTargeting getTargeting()
    {
        SlotController slotcontroller = mSlotController;
        SlotTargeting slottargeting = null;
        if (slotcontroller != null)
        {
            slottargeting = mSlotController.getTargeting();
        }
        return slottargeting;
    }

    public int getWidthInDips()
    {
        if (mSlotSize != null)
        {
            return mSlotSize.getWidth();
        } else
        {
            android.util.DisplayMetrics displaymetrics = getContext().getResources().getDisplayMetrics();
            return (int)Utils.convertPixelsToDips(getWidth(), displaymetrics);
        }
    }

    public boolean isAdReady()
    {
        SlotController slotcontroller = mSlotController;
        boolean flag = false;
        if (slotcontroller != null)
        {
            SlotController.LoadingState loadingstate = mSlotController.getLoadingState();
            SlotController.LoadingState loadingstate1 = SlotController.LoadingState.LOADED;
            flag = false;
            if (loadingstate == loadingstate1)
            {
                flag = true;
            }
        }
        return flag;
    }

    public boolean isAutoRefreshEnabled()
    {
        SlotController slotcontroller = mSlotController;
        boolean flag = false;
        if (slotcontroller != null)
        {
            flag = mSlotController.isAutoRefreshEnabled();
        }
        return flag;
    }

    public void loadAd()
    {
        this;
        JVM INSTR monitorenter ;
        if (mSlotController != null)
        {
            mSlotController.loadSlot(true);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (mSlotViewPlaceholder != null)
        {
            mSlotViewPlaceholder.draw(canvas);
        }
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (mSlotViewPlaceholder != null)
        {
            mSlotViewPlaceholder.setSize(i, j);
        }
    }

    public void pause()
    {
        LSMLogger.LOGGER.info("Pause");
        if (mSlotController != null)
        {
            mSlotController.pauseSlot();
        }
    }

    public void resume()
    {
        LSMLogger.LOGGER.info("Resume");
        if (mSlotController != null)
        {
            mSlotController.resumeSlot();
        }
    }

    public void setAutoRefreshEnabled(boolean flag)
    {
        if (mSlotController != null)
        {
            mSlotController.setAutoRefreshEnabled(flag);
        }
    }

    public void setIntegrationType(IntegrationType integrationtype)
    {
        if (mSlotController != null)
        {
            mSlotController.setIntegrationType(integrationtype);
        }
    }

    public void setListener(SlotListener slotlistener)
    {
        if (mSlotController != null)
        {
            mSlotController.setSlotListener(slotlistener);
        }
    }

    public void setShowCloseButton(boolean flag)
    {
        if (mSlotController != null)
        {
            mSlotController.setShowCloseButton(flag);
        }
    }

    public void setSlotSize(AdSize adsize)
    {
        mSlotSize = adsize;
    }

    public void setSlotTag(String s)
    {
        if (mSlotController != null)
        {
            mSlotController.setSlotTag(s);
        }
    }

    public void setTargeting(SlotTargeting slottargeting)
    {
        if (mSlotController != null)
        {
            mSlotController.setTargeting(slottargeting);
        }
    }

    public void showAd()
    {
        if (mSlotController != null)
        {
            mSlotController.showSlot();
        }
    }

    public void transitionToView(View view, TransitionAnimation transitionanimation)
    {
        cleanup();
        if (view != null)
        {
            addView(view);
        }
    }
}
