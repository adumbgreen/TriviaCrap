.class public abstract Lcom/etermax/gamescommon/shop/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/i;
.implements Lcom/etermax/tools/widget/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/gamescommon/shop/b;",
        ">;",
        "Lcom/etermax/gamescommon/i;",
        "Lcom/etermax/tools/widget/b/d;"
    }
.end annotation


# instance fields
.field protected mAppUtils:Lcom/etermax/tools/j/a;

.field protected mCommonDataSource:Lcom/etermax/gamescommon/datasource/e;

.field private mDebugProductIds:[Ljava/lang/String;

.field private mDebugProducts:Z

.field protected mShopManager:Lcom/etermax/gamescommon/shop/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 34
    iput-boolean v2, p0, Lcom/etermax/gamescommon/shop/a;->mDebugProducts:Z

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.test.purchased"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "android.test.canceled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.test.refunded"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.test.item_unavailable"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/etermax/gamescommon/shop/a;->mDebugProductIds:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/etermax/gamescommon/shop/a;)Lcom/etermax/gamescommon/shop/dto/ProductListDTO;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/etermax/gamescommon/shop/a;->getProductList()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;

    move-result-object v0

    return-object v0
.end method

.method private getProductList()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;
    .locals 8

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/a;->getApiProductList()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;

    move-result-object v1

    .line 101
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/etermax/gamescommon/shop/a;->mDebugProducts:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v2, p0, Lcom/etermax/gamescommon/shop/a;->mDebugProductIds:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 103
    new-instance v5, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    invoke-direct {v5}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;-><init>()V

    .line 104
    iget-object v6, p0, Lcom/etermax/gamescommon/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v6}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v6

    iget-object v7, p0, Lcom/etermax/gamescommon/shop/a;->mAppUtils:Lcom/etermax/tools/j/a;

    invoke-virtual {v7}, Lcom/etermax/tools/j/a;->c()Z

    move-result v7

    invoke-virtual {v5, v6, v7, v4}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->setProductId(Lcom/etermax/gamescommon/a;ZLjava/lang/String;)V

    .line 105
    const/high16 v4, 0x4170

    invoke-virtual {v5, v4}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->setDiscount(F)V

    .line 106
    const/high16 v4, 0x4316

    invoke-virtual {v5, v4}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->setPrice(F)V

    .line 107
    invoke-virtual {v1}, Lcom/etermax/gamescommon/shop/dto/ProductListDTO;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V

    .line 113
    return-object v1
.end method

.method private getUnsupportedDialogBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string v1, "unsuported_dialog"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-object v0
.end method

.method private loadProductsTask()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/etermax/gamescommon/shop/a$2;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/gamescommon/shop/a$2;-><init>(Lcom/etermax/gamescommon/shop/a;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/a$2;->a(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method


# virtual methods
.method protected getApiProductList()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/a;->mCommonDataSource:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/e;->j()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;

    move-result-object v0

    return-object v0
.end method

.method public getDummyCallbacks()Lcom/etermax/gamescommon/shop/b;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/etermax/gamescommon/shop/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/shop/a$1;-><init>(Lcom/etermax/gamescommon/shop/a;)V

    return-object v0
.end method

.method public bridge synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/a;->getDummyCallbacks()Lcom/etermax/gamescommon/shop/b;

    move-result-object v0

    return-object v0
.end method

.method protected loadProducts()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/c;->e()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "BaseShopFragment"

    const-string v1, "Loading products from cache"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/c;->c()V

    .line 72
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/c;->e()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/shop/a;->onProductsLoaded(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v0, "BaseShopFragment"

    const-string v1, "Loading products from API"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/etermax/gamescommon/shop/a;->loadProductsTask()V

    goto :goto_0
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    if-eqz p1, :cond_0

    const-string v0, "unsuported_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/a;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/gamescommon/shop/b;

    invoke-interface {v0}, Lcom/etermax/gamescommon/shop/b;->h_()V

    .line 177
    :cond_0
    return-void
.end method

.method public onApiVerificationException(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_verification_error:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    return-void
.end method

.method public onBillingUnsupported()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/a;->showUnsupportedDialog()V

    .line 132
    return-void
.end method

.method protected onBuyClicked(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/shop/c;->a(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onPause()V

    .line 64
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/c;->b(Lcom/etermax/gamescommon/i;)V

    .line 65
    return-void
.end method

.method protected abstract onProductsLoaded(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V
.end method

.method public onPurchaseError(Lcom/etermax/gamescommon/g/i;)V
    .locals 3
    .parameter

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/a;->showUnsupportedDialog()V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->error_purchase:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPurchaseSucceded(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_success:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/i;)V

    .line 59
    return-void
.end method

.method protected showUnsupportedDialog()V
    .locals 4

    .prologue
    .line 157
    sget v0, Lcom/etermax/o;->shop:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->error_account_purchase:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/etermax/gamescommon/shop/a;->getUnsupportedDialogBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 163
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "unsuported_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 164
    return-void
.end method
