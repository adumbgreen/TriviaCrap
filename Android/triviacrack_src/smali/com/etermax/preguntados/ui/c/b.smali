.class public Lcom/etermax/preguntados/ui/c/b;
.super Lcom/etermax/gamescommon/promotion/BasePromotionFragment;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;-><init>()V

    return-void
.end method

.method public static a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/etermax/preguntados/ui/c/c;->c()Lcom/etermax/preguntados/ui/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/c/d;->a()Lcom/etermax/preguntados/ui/c/b;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/c/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 92
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/c/b;->c()V

    .line 88
    return-void
.end method

.method public getFragmentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 49
    sget v0, Lcom/etermax/k;->promotion_buy_fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 50
    sget v0, Lcom/etermax/i;->promo_ribbon_text:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 52
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, -0x3e10

    move v4, v1

    move v5, v3

    move v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 53
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    invoke-direct {v2, v1, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 54
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 56
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 57
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 58
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 59
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 61
    invoke-virtual {v8, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    iget-object v0, p0, Lcom/etermax/preguntados/ui/c/b;->mPromotionsManager:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->getCurrentPromotion()Lcom/etermax/gamescommon/promotion/BasePromotion;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/BasePromotion;->getId()Lcom/etermax/gamescommon/promotion/Promotion;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/c/e;->a(Lcom/etermax/gamescommon/promotion/Promotion;)Lcom/etermax/preguntados/ui/c/e;

    move-result-object v1

    .line 67
    sget v0, Lcom/etermax/i;->promo_subtitle:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/c/e;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 69
    sget v0, Lcom/etermax/i;->promo_image_container_top:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/c/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/c/e;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    sget v0, Lcom/etermax/i;->promo_product_top_title:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/c/e;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 71
    sget v0, Lcom/etermax/i;->promo_product_top_description:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/c/e;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 73
    sget v0, Lcom/etermax/i;->promo_image_container_bottom:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/c/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/c/e;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    sget v0, Lcom/etermax/i;->promo_product_bottom_title:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/c/e;->j()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 75
    sget v0, Lcom/etermax/i;->promo_product_bottom_description:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/c/e;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    :goto_0
    return-object v7

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/c/b;->c()V

    goto :goto_0
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->onAccept(Landroid/os/Bundle;)V

    .line 116
    if-eqz p1, :cond_1

    const-string v0, "billing_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "billing_dialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 118
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/c/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/c/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->o()V

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/c/b;->c()V

    .line 125
    :cond_1
    return-void
.end method

.method protected onProductsLoaded(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    iget-object v0, p0, Lcom/etermax/preguntados/ui/c/b;->mPromotionsManager:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->getCurrentPromotion()Lcom/etermax/gamescommon/promotion/BasePromotion;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductListDTO;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/BasePromotion;->getItemType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    move-result-object v0

    sget-object v2, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;->DESCENDING:Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;

    invoke-virtual {p0, v1, v0, v2}, Lcom/etermax/preguntados/ui/c/b;->getAppItems(Ljava/util/List;Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;Lcom/etermax/gamescommon/promotion/BasePromotionFragment$Sort;)Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/etermax/preguntados/ui/c/b;->a:Landroid/widget/Button;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/c/b;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    const-string v4, "USD "

    invoke-virtual {v3, v0, v4}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/etermax/preguntados/ui/c/b;->a:Landroid/widget/Button;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/c/b;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v3

    iget-object v4, p0, Lcom/etermax/preguntados/ui/c/b;->mAppUtils:Lcom/etermax/tools/j/a;

    invoke-virtual {v4}, Lcom/etermax/tools/j/a;->c()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/c/b;->getBuyListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v2, p0, Lcom/etermax/preguntados/ui/c/b;->b:Landroid/widget/Button;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/c/b;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    const-string v4, "USD "

    invoke-virtual {v3, v0, v4}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lcom/etermax/preguntados/ui/c/b;->b:Landroid/widget/Button;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/c/b;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/c/b;->mAppUtils:Lcom/etermax/tools/j/a;

    invoke-virtual {v3}, Lcom/etermax/tools/j/a;->c()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/c/b;->getBuyListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_0
    return-void
.end method

.method protected onTimerFinish()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected onTimerTick(J)V
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/etermax/preguntados/ui/c/b;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/etermax/preguntados/h/c;->a(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method
