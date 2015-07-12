// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.promotion;

import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.g.i;
import com.etermax.gamescommon.shop.a;
import com.etermax.gamescommon.shop.dto.ProductDTO;
import com.etermax.o;
import com.etermax.tools.navigation.BaseFragmentActivity;
import com.etermax.tools.widget.b.c;
import com.etermax.tools.widget.b.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.promotion:
//            PromotionsManager

public abstract class BasePromotionFragment extends a
    implements d
{

    protected CountDownTimer mCountDownTimer;
    protected PromotionsManager mPromotionsManager;

    public BasePromotionFragment()
    {
    }

    private Bundle getDialogBundle(int j)
    {
        Bundle bundle = new Bundle();
        bundle.putInt("billing_dialog", j);
        return bundle;
    }

    private void startCountDown()
    {
        stopCountDown();
        mCountDownTimer = (new CountDownTimer(mPromotionsManager.getRemainingMilliseconds(), 250L) {

            final BasePromotionFragment this$0;

            public void onFinish()
            {
                onTimerFinish();
                getActivity().getSupportFragmentManager().beginTransaction().remove(BasePromotionFragment.this).commit();
            }

            public void onTick(long l)
            {
                onTimerTick(l);
            }

            
            {
                this$0 = BasePromotionFragment.this;
                super(l, l1);
            }
        }).start();
    }

    private void stopCountDown()
    {
        if (mCountDownTimer != null)
        {
            mCountDownTimer.cancel();
        }
    }

    protected List getAppItems(List list, com.etermax.gamescommon.shop.dto.ProductDTO.AppItemType appitemtype, Sort sort)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            ProductDTO productdto = (ProductDTO)iterator.next();
            if (productdto.getType() == com.etermax.gamescommon.shop.dto.ProductDTO.ItemType.APP_ITEM && productdto.getAppItemType() == appitemtype)
            {
                arraylist.add(productdto);
            }
        } while (true);
        if (sort != Sort.NONE)
        {
            Object obj;
            if (sort == Sort.ASCENDING)
            {
                obj = new PromotionProductComparator();
            } else
            {
                obj = Collections.reverseOrder(new PromotionProductComparator());
            }
            Collections.sort(arraylist, ((Comparator) (obj)));
        }
        return arraylist;
    }

    protected android.view.View.OnClickListener getBuyListener(final String itemId)
    {
        return new android.view.View.OnClickListener() {

            final BasePromotionFragment this$0;
            final String val$itemId;

            public void onClick(View view)
            {
                onBuyClicked(itemId);
            }

            
            {
                this$0 = BasePromotionFragment.this;
                itemId = s;
                super();
            }
        };
    }

    public abstract View getFragmentView(LayoutInflater layoutinflater);

    public void onApiVerificationException(Exception exception)
    {
        c c1 = c.c(getString(o.purchase_verification_error_title), getString(o.purchase_verification_error), getString(o.ok), getDialogBundle(2));
        c1.setTargetFragment(this, 0);
        c1.show(getFragmentManager(), "purchase_verification_error_dialog");
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return getFragmentView(layoutinflater);
    }

    public void onPause()
    {
        stopCountDown();
        if (getActivity() instanceof BaseFragmentActivity)
        {
            ((BaseFragmentActivity)getActivity()).x();
        }
        super.onPause();
    }

    public void onPurchaseError(i j)
    {
        if (j.a() == 3)
        {
            showUnsupportedDialog();
        } else
        if (j.a() == 6)
        {
            c c1 = c.c(getString(o.purchase_error_title), getString(o.purchase_error), getString(o.ok), getDialogBundle(1));
            c1.setTargetFragment(this, 0);
            c1.show(getFragmentManager(), "purchase_error_dialog");
            return;
        }
    }

    public void onPurchaseSucceded(String s)
    {
        c c1 = c.c(getString(o.purchase_success_title), getString(o.purchase_success), getString(o.ok), getDialogBundle(3));
        c1.setTargetFragment(this, 0);
        c1.show(getFragmentManager(), "purchase_success_dialog");
    }

    public void onResume()
    {
        super.onResume();
        startCountDown();
        if (getActivity() instanceof BaseFragmentActivity)
        {
            ((BaseFragmentActivity)getActivity()).y();
        }
    }

    protected abstract void onTimerFinish();

    protected abstract void onTimerTick(long l);


    private class Sort extends Enum
    {

        private static final Sort $VALUES[];
        public static final Sort ASCENDING;
        public static final Sort DESCENDING;
        public static final Sort NONE;

        public static Sort valueOf(String s)
        {
            return (Sort)Enum.valueOf(com/etermax/gamescommon/promotion/BasePromotionFragment$Sort, s);
        }

        public static Sort[] values()
        {
            return (Sort[])$VALUES.clone();
        }

        static 
        {
            NONE = new Sort("NONE", 0);
            ASCENDING = new Sort("ASCENDING", 1);
            DESCENDING = new Sort("DESCENDING", 2);
            Sort asort[] = new Sort[3];
            asort[0] = NONE;
            asort[1] = ASCENDING;
            asort[2] = DESCENDING;
            $VALUES = asort;
        }

        private Sort(String s, int j)
        {
            super(s, j);
        }
    }


    private class PromotionProductComparator
        implements Comparator
    {

        final BasePromotionFragment this$0;

        public int compare(ProductDTO productdto, ProductDTO productdto1)
        {
            if (productdto.getPrice() < productdto1.getPrice())
            {
                return -1;
            }
            return productdto.getPrice() <= productdto1.getPrice() ? 0 : 1;
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((ProductDTO)obj, (ProductDTO)obj1);
        }

        protected PromotionProductComparator()
        {
            this$0 = BasePromotionFragment.this;
            super();
        }
    }

}
