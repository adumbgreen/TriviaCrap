// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;

// Referenced classes of package com.amazon.device.ads:
//            AdContainer, AdController, RelativePosition

class this._cls1
    implements android.view.ener
{

    final seAd this$1;

    public void onClick(View view)
    {
        AdContainer.access$500(_fld0).closeAd();
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/amazon/device/ads/AdContainer$2

/* anonymous class */
    class AdContainer._cls2 extends AsyncTask
    {

        final AdContainer this$0;
        final int val$buttonSize;
        final BitmapDrawable val$closeNormal;
        final BitmapDrawable val$closePressed;
        final RelativePosition val$position;
        final boolean val$showImage;
        final int val$tapTargetSize;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected transient Void doInBackground(Void avoid[])
        {
            AdContainer adcontainer = AdContainer.this;
            adcontainer;
            JVM INSTR monitorenter ;
            RelativeLayout relativelayout = AdContainer.access$300(AdContainer.this);
            boolean flag;
            flag = false;
            if (relativelayout != null)
            {
                break MISSING_BLOCK_LABEL_95;
            }
            AdContainer.access$302(AdContainer.this, new RelativeLayout(getContext()));
            AdContainer.access$300(AdContainer.this).setContentDescription("nativeCloseButton");
            AdContainer.access$402(AdContainer.this, new ImageButton(getContext()));
            AdContainer.access$400(AdContainer.this).setContentDescription("nativeCloseButtonImage");
            flag = true;
            adcontainer;
            JVM INSTR monitorexit ;
            if (flag)
            {
                AdContainer.access$400(AdContainer.this).setImageDrawable(closeNormal);
                AdContainer.access$400(AdContainer.this).setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
                AdContainer.access$400(AdContainer.this).setBackgroundDrawable(null);
                AdContainer._cls2._cls1 _lcls1 = new AdContainer._cls2._cls1();
                AdContainer.access$400(AdContainer.this).setOnClickListener(_lcls1);
                AdContainer.access$300(AdContainer.this).setOnClickListener(_lcls1);
                android.view.View.OnTouchListener ontouchlistener = new AdContainer._cls2._cls2();
                AdContainer.access$300(AdContainer.this).setOnTouchListener(ontouchlistener);
                AdContainer.access$400(AdContainer.this).setOnTouchListener(ontouchlistener);
                android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(tapTargetSize, tapTargetSize);
                layoutparams.addRule(11);
                layoutparams.addRule(10);
                AdContainer.access$602(AdContainer.this, new RelativeLayout(getContext()));
                AdContainer.access$600(AdContainer.this).setContentDescription("nativeCloseButtonContainer");
                AdContainer.access$600(AdContainer.this).addView(AdContainer.access$300(AdContainer.this), layoutparams);
            }
            return null;
            Exception exception;
            exception;
            adcontainer;
            JVM INSTR monitorexit ;
            throw exception;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Void)obj);
        }

        protected void onPostExecute(Void void1)
        {
            android.widget.RelativeLayout.LayoutParams layoutparams;
            RelativePosition relativeposition;
            if (showImage && !AdContainer.access$300(AdContainer.this).equals(AdContainer.access$400(AdContainer.this).getParent()))
            {
                android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(buttonSize, buttonSize);
                layoutparams1.addRule(13);
                AdContainer.access$300(AdContainer.this).addView(AdContainer.access$400(AdContainer.this), layoutparams1);
            } else
            if (!showImage && AdContainer.access$300(AdContainer.this).equals(AdContainer.access$400(AdContainer.this).getParent()))
            {
                AdContainer.access$300(AdContainer.this).removeView(AdContainer.access$400(AdContainer.this));
            }
            if (!equals(AdContainer.access$600(AdContainer.this).getParent()))
            {
                addView(AdContainer.access$600(AdContainer.this), new android.widget.FrameLayout.LayoutParams(-1, -1));
            }
            layoutparams = new android.widget.RelativeLayout.LayoutParams(tapTargetSize, tapTargetSize);
            relativeposition = position;
            if (position == null)
            {
                relativeposition = RelativePosition.TOP_RIGHT;
            }
            AdContainer._cls5.$SwitchMap$com$amazon$device$ads$RelativePosition[relativeposition.ordinal()];
            JVM INSTR tableswitch 1 7: default 200
        //                       1 284
        //                       2 299
        //                       3 314
        //                       4 329
        //                       5 338
        //                       6 353
        //                       7 368;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
            layoutparams.addRule(10);
            layoutparams.addRule(11);
_L10:
            AdContainer.access$300(AdContainer.this).setLayoutParams(layoutparams);
            AdContainer.access$600(AdContainer.this).bringToFront();
            return;
_L2:
            layoutparams.addRule(12);
            layoutparams.addRule(14);
            continue; /* Loop/switch isn't completed */
_L3:
            layoutparams.addRule(12);
            layoutparams.addRule(9);
            continue; /* Loop/switch isn't completed */
_L4:
            layoutparams.addRule(12);
            layoutparams.addRule(11);
            continue; /* Loop/switch isn't completed */
_L5:
            layoutparams.addRule(13);
            continue; /* Loop/switch isn't completed */
_L6:
            layoutparams.addRule(10);
            layoutparams.addRule(14);
            continue; /* Loop/switch isn't completed */
_L7:
            layoutparams.addRule(10);
            layoutparams.addRule(9);
            continue; /* Loop/switch isn't completed */
_L8:
            layoutparams.addRule(10);
            layoutparams.addRule(11);
            if (true) goto _L10; else goto _L9
_L9:
        }

            
            {
                this$0 = final_adcontainer;
                closeNormal = bitmapdrawable;
                closePressed = bitmapdrawable1;
                tapTargetSize = i;
                showImage = flag;
                buttonSize = j;
                position = RelativePosition.this;
                super();
            }

        // Unreferenced inner class com/amazon/device/ads/AdContainer$2$2

/* anonymous class */
        class AdContainer._cls2._cls2
            implements android.view.View.OnTouchListener
        {

            final AdContainer._cls2 this$1;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                motionevent.getAction();
                JVM INSTR tableswitch 0 1: default 28
            //                           0 30
            //                           1 53;
                   goto _L1 _L2 _L3
_L1:
                return false;
_L2:
                AdContainer.access$400(this$0).setImageDrawable(closePressed);
                continue; /* Loop/switch isn't completed */
_L3:
                AdContainer.access$400(this$0).setImageDrawable(closeNormal);
                if (true) goto _L1; else goto _L4
_L4:
            }

                    
                    {
                        this$1 = AdContainer._cls2.this;
                        super();
                    }
        }

    }

}
