.class public abstract Lcom/etermax/gamescommon/promotion/BasePromotionFragment;
.super Lcom/etermax/gamescommon/shop/a;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/d;


# instance fields
.field protected mCountDownTimer:Landroid/os/CountDownTimer;

.field protected mPromotionsManager:Lcom/etermax/gamescommon/promotion/PromotionsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/etermax/gamescommon/shop/a;-><init>()V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/etermax/gamescommon/promotion/BasePromotionFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->onBuyClicked(Ljava/lang/String;)V

    return-void
.end method

.method private getDialogBundle(I)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    const-string v1, "billing_dialog"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    return-object v0
.end method

.method private startCountDown()V
    .locals 6

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->stopCountDown()V

    .line 85
    new-instance v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$1;

    iget-object v1, p0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->mPromotionsManager:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->getRemainingMilliseconds()J

    move-result-wide v2

    const-wide/16 v4, 0xfa

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$1;-><init>(Lcom/etermax/gamescommon/promotion/BasePromotionFragment;JJ)V

    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 98
    return-void
.end method

.method private stopCountDown()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method protected getAppItems(Ljava/util/List;Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/shop/dto/ProductDTO;",
            ">;",
            "Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;",
            "Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/shop/dto/ProductDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    .line 123
    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    move-result-object v3

    sget-object v4, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->APP_ITEM:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getAppItemType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 124
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    sget-object v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;->NONE:Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    if-eq p3, v0, :cond_2

    .line 129
    sget-object v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;->ASCENDING:Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    if-ne p3, v0, :cond_3

    .line 130
    new-instance v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$PromotionProductComparator;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$PromotionProductComparator;-><init>(Lcom/etermax/gamescommon/promotion/BasePromotionFragment;)V

    .line 134
    :goto_1
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    :cond_2
    return-object v1

    .line 132
    :cond_3
    new-instance v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$PromotionProductComparator;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$PromotionProductComparator;-><init>(Lcom/etermax/gamescommon/promotion/BasePromotionFragment;)V

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_1
.end method

.method protected getBuyListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$2;-><init>(Lcom/etermax/gamescommon/promotion/BasePromotionFragment;Ljava/lang/String;)V

    .line 113
    return-object v0
.end method

.method public abstract getFragmentView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public onApiVerificationException(Ljava/lang/Exception;)V
    .locals 4
    .parameter

    .prologue
    .line 168
    sget v0, Lcom/etermax/o;->purchase_verification_error_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_verification_error:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getDialogBundle(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 173
    invoke-virtual {p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_verification_error_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/shop/a;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getFragmentView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->stopCountDown()V

    .line 77
    invoke-virtual {p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->x()V

    .line 80
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/shop/a;->onPause()V

    .line 81
    return-void
.end method

.method public onPurchaseError(Lcom/etermax/gamescommon/g/i;)V
    .locals 4
    .parameter

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->showUnsupportedDialog()V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 157
    sget v0, Lcom/etermax/o;->purchase_error_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_error:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getDialogBundle(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 162
    invoke-virtual {p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_error_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPurchaseSucceded(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 178
    sget v0, Lcom/etermax/o;->purchase_success_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_success:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getDialogBundle(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 183
    invoke-virtual {p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_success_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/etermax/gamescommon/shop/a;->onResume()V

    .line 68
    invoke-direct {p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->startCountDown()V

    .line 69
    invoke-virtual {p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->y()V

    .line 72
    :cond_0
    return-void
.end method

.method protected abstract onTimerFinish()V
.end method

.method protected abstract onTimerTick(J)V
.end method
