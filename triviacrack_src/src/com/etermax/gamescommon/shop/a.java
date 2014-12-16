// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.shop;

import android.os.Bundle;
import android.widget.Toast;
import com.etermax.gamescommon.datasource.e;
import com.etermax.gamescommon.i;
import com.etermax.gamescommon.shop.dto.ProductDTO;
import com.etermax.gamescommon.shop.dto.ProductListDTO;
import com.etermax.o;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.b.c;
import com.etermax.tools.widget.b.d;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.shop:
//            c, b

public abstract class a extends b
    implements i, d
{

    protected com.etermax.tools.j.a mAppUtils;
    protected e mCommonDataSource;
    private String mDebugProductIds[] = {
        "android.test.purchased", "android.test.canceled", "android.test.refunded", "android.test.item_unavailable"
    };
    private boolean mDebugProducts;
    protected com.etermax.gamescommon.shop.c mShopManager;

    public a()
    {
        mDebugProducts = false;
    }

    private ProductListDTO getProductList()
    {
        ProductListDTO productlistdto = getApiProductList();
        if (com.etermax.tools.g.a.a() && mDebugProducts)
        {
            String as[] = mDebugProductIds;
            int j = as.length;
            for (int k = 0; k < j; k++)
            {
                String s = as[k];
                ProductDTO productdto = new ProductDTO();
                productdto.setProductId(mShopManager.b(), mAppUtils.c(), s);
                productdto.setDiscount(15F);
                productdto.setPrice(150F);
                productlistdto.getList().add(productdto);
            }

        }
        mShopManager.a(productlistdto);
        return productlistdto;
    }

    private Bundle getUnsupportedDialogBundle()
    {
        Bundle bundle = new Bundle();
        bundle.putString("unsuported_dialog", "");
        return bundle;
    }

    private void loadProductsTask()
    {
        (new com.etermax.tools.i.a(getString(o.loading)) {

            final a a;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, ProductListDTO productlistdto)
            {
                super.a(a1, productlistdto);
                a1.mShopManager.c();
                a1.onProductsLoaded(productlistdto);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (ProductListDTO)obj1);
            }

            public ProductListDTO b()
            {
                return a.getProductList();
            }

            
            {
                a = a.this;
                super(s);
            }
        }).a(this);
    }

    protected ProductListDTO getApiProductList()
    {
        return mCommonDataSource.j();
    }

    public com.etermax.gamescommon.shop.b getDummyCallbacks()
    {
        return new com.etermax.gamescommon.shop.b() {

            final a a;

            public void h_()
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    public volatile Object getDummyCallbacks()
    {
        return getDummyCallbacks();
    }

    protected void loadProducts()
    {
        if (mShopManager.e() != null)
        {
            com.etermax.a.a.c("BaseShopFragment", "Loading products from cache");
            mShopManager.c();
            onProductsLoaded(mShopManager.e());
            return;
        } else
        {
            com.etermax.a.a.c("BaseShopFragment", "Loading products from API");
            loadProductsTask();
            return;
        }
    }

    public void onAccept(Bundle bundle)
    {
        if (bundle != null && bundle.containsKey("unsuported_dialog"))
        {
            ((com.etermax.gamescommon.shop.b)mCallbacks).h_();
        }
    }

    public void onApiVerificationException(Exception exception)
    {
        Toast.makeText(getActivity(), getString(o.purchase_verification_error), 0).show();
    }

    public void onBillingUnsupported()
    {
        showUnsupportedDialog();
    }

    protected void onBuyClicked(String s)
    {
        mShopManager.a(s);
    }

    public void onPause()
    {
        super.onPause();
        mShopManager.b(this);
    }

    protected abstract void onProductsLoaded(ProductListDTO productlistdto);

    public void onPurchaseError(com.etermax.gamescommon.g.i j)
    {
        if (j.a() == 3)
        {
            showUnsupportedDialog();
        } else
        if (j.a() == 6)
        {
            Toast.makeText(getActivity(), getString(o.error_purchase), 0).show();
            return;
        }
    }

    public void onPurchaseSucceded(String s)
    {
        Toast.makeText(getActivity(), getString(o.purchase_success), 0).show();
    }

    public void onResume()
    {
        super.onResume();
        mShopManager.a(this);
    }

    protected void showUnsupportedDialog()
    {
        c c1 = c.c(getString(o.shop), getString(o.error_account_purchase), getString(o.accept), getUnsupportedDialogBundle());
        c1.setTargetFragment(this, 0);
        c1.show(getFragmentManager(), "unsuported_dialog");
    }

}
