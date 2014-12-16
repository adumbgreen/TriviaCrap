.class public Lcom/etermax/preguntados/ui/c/a;
.super Lcom/etermax/gamescommon/promotion/BasePromotion;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/promotion/Promotion;Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct/range {p0 .. p6}, Lcom/etermax/gamescommon/promotion/BasePromotion;-><init>(Lcom/etermax/gamescommon/promotion/Promotion;Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;JJ)V

    .line 19
    return-void
.end method


# virtual methods
.method public getDashboardView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->dashboard_promo_popup_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/c/a;->getId()Lcom/etermax/gamescommon/promotion/Promotion;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/c/e;->a(Lcom/etermax/gamescommon/promotion/Promotion;)Lcom/etermax/preguntados/ui/c/e;

    move-result-object v2

    .line 27
    sget v0, Lcom/etermax/i;->dashboard_promo_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/c/e;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    sget v0, Lcom/etermax/i;->dashboard_promo_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/c/e;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 29
    sget v0, Lcom/etermax/i;->dashboard_promo_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/c/e;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 30
    sget v0, Lcom/etermax/i;->dashboard_promo_background:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, p1}, Lcom/etermax/preguntados/ui/c/e;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 32
    return-object v1
.end method

.method public getPromoBuyFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/etermax/preguntados/ui/c/b;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method
