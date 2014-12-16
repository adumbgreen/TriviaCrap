// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.content.Context;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            SlotController, SlotType, SlotListener, SlotTargeting, 
//            IntegrationType

public final class InterstitialSlot
{

    private final SlotController mSlotController;

    public InterstitialSlot(Context context)
    {
        mSlotController = new SlotController(SlotType.INTERSTITIAL, context);
    }

    public void destroy()
    {
        LSMLogger.LOGGER.info("Destroy");
        setAutoRefreshEnabled(false);
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
}
