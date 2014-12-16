.class public Lcom/etermax/preguntados/ui/withoutcoins/a;
.super Lcom/etermax/gamescommon/shop/a;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/withoutcoins/i;


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/tools/f/a;

.field c:Landroid/widget/LinearLayout;

.field protected d:Lcom/etermax/preguntados/ui/withoutcoins/d;

.field protected e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/etermax/gamescommon/shop/a;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/a;->e:I

    .line 135
    return-void
.end method

.method private a(Ljava/util/List;Lcom/etermax/preguntados/ui/withoutcoins/c;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/shop/dto/ProductDTO;",
            ">;",
            "Lcom/etermax/preguntados/ui/withoutcoins/c;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/shop/dto/ProductDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
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

    .line 127
    sget-object v3, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->COIN_ITEM:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Lcom/etermax/preguntados/ui/withoutcoins/b;

    invoke-direct {v0, p0, p2}, Lcom/etermax/preguntados/ui/withoutcoins/b;-><init>(Lcom/etermax/preguntados/ui/withoutcoins/a;Lcom/etermax/preguntados/ui/withoutcoins/c;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 132
    return-object v1
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 201
    new-instance v0, Lcom/etermax/preguntados/a/a;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/a;-><init>()V

    .line 202
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/a;->a(I)V

    .line 203
    iget-object v1, p0, Lcom/etermax/preguntados/ui/withoutcoins/a;->b:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 204
    return-void
.end method

.method public static b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/etermax/preguntados/ui/withoutcoins/e;->d()Lcom/etermax/preguntados/ui/withoutcoins/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/withoutcoins/f;->a()Lcom/etermax/preguntados/ui/withoutcoins/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/withoutcoins/d;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/etermax/preguntados/ui/withoutcoins/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/withoutcoins/a$1;-><init>(Lcom/etermax/preguntados/ui/withoutcoins/a;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput p2, p0, Lcom/etermax/preguntados/ui/withoutcoins/a;->e:I

    .line 156
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/withoutcoins/a;->onBuyClicked(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/a;->d:Lcom/etermax/preguntados/ui/withoutcoins/d;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/withoutcoins/d;->e()V

    .line 98
    :cond_0
    return-void
.end method

.method public synthetic getDummyCallbacks()Lcom/etermax/gamescommon/shop/b;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/a;->a()Lcom/etermax/preguntados/ui/withoutcoins/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/a;->a()Lcom/etermax/preguntados/ui/withoutcoins/d;

    move-result-object v0

    return-object v0
.end method

.method public onApiVerificationException(Ljava/lang/Exception;)V
    .locals 4
    .parameter

    .prologue
    .line 176
    sget v0, Lcom/etermax/o;->purchase_verification_error_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_verification_error:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 181
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_verification_error_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/shop/a;->onAttach(Landroid/app/Activity;)V

    .line 76
    :try_start_0
    check-cast p1, Lcom/etermax/preguntados/ui/withoutcoins/d;

    iput-object p1, p0, Lcom/etermax/preguntados/ui/withoutcoins/a;->d:Lcom/etermax/preguntados/ui/withoutcoins/d;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Activity must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/etermax/gamescommon/shop/a;->onDetach()V

    .line 85
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/a;->a()Lcom/etermax/preguntados/ui/withoutcoins/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/a;->d:Lcom/etermax/preguntados/ui/withoutcoins/d;

    .line 86
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/etermax/gamescommon/shop/a;->onLowMemory()V

    .line 104
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/etermax/gamescommon/shop/a;->onPause()V

    .line 91
    return-void
.end method

.method protected onProductsLoaded(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/a;->c:Landroid/widget/LinearLayout;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 109
    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductListDTO;->getList()Ljava/util/List;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    sget-object v1, Lcom/etermax/preguntados/ui/withoutcoins/c;->a:Lcom/etermax/preguntados/ui/withoutcoins/c;

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/withoutcoins/a;->a(Ljava/util/List;Lcom/etermax/preguntados/ui/withoutcoins/c;)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 112
    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 113
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    .line 114
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView_;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;

    move-result-object v4

    .line 115
    invoke-virtual {v4, v1}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->setItemNumber(I)V

    .line 116
    invoke-virtual {v4, p0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->setListener(Lcom/etermax/preguntados/ui/withoutcoins/i;)V

    .line 117
    invoke-virtual {v4, v0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;)V

    .line 118
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x3f80

    invoke-direct {v0, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v0}, Lcom/etermax/preguntados/ui/withoutcoins/WithoutCoinsItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/a;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public onPurchaseError(Lcom/etermax/gamescommon/g/i;)V
    .locals 4
    .parameter

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/a;->showUnsupportedDialog()V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 165
    sget v0, Lcom/etermax/o;->purchase_error_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_error:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 170
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_error_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPurchaseSucceded(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 186
    sget v0, Lcom/etermax/o;->purchase_success_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_success:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 191
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/withoutcoins/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_success_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/a;->a:Lcom/etermax/preguntados/datasource/d;

    iget v1, p0, Lcom/etermax/preguntados/ui/withoutcoins/a;->e:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->b(I)I

    .line 195
    iget v0, p0, Lcom/etermax/preguntados/ui/withoutcoins/a;->e:I

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/withoutcoins/a;->a(I)V

    .line 197
    :cond_0
    return-void
.end method
