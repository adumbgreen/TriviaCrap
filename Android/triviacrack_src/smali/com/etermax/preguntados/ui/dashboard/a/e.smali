.class public Lcom/etermax/preguntados/ui/dashboard/a/e;
.super Lcom/etermax/gamescommon/shop/a;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/tools/f/a;

.field b:Lcom/etermax/gamescommon/social/a;

.field c:Lcom/etermax/gamescommon/login/datasource/a;

.field d:Lcom/etermax/gamescommon/social/h;

.field e:Lcom/etermax/preguntados/datasource/d;

.field f:Lcom/etermax/preguntados/b/a;

.field g:Landroid/widget/ImageView;

.field private h:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/etermax/gamescommon/shop/a;-><init>()V

    .line 175
    return-void
.end method

.method public static a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/etermax/preguntados/ui/dashboard/a/g;->e()Lcom/etermax/preguntados/ui/dashboard/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/a/h;->a()Lcom/etermax/preguntados/ui/dashboard/a/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/dashboard/a/e;)Lcom/etermax/gamescommon/shop/c;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;Z)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/shop/dto/ProductListDTO;",
            "Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/shop/dto/ProductDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductListDTO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    .line 165
    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    move-result-object v3

    sget-object v4, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->APP_ITEM:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getAppItemType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 166
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_1
    if-eqz p3, :cond_2

    .line 170
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/a/f;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/etermax/preguntados/ui/dashboard/a/f;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/e;Lcom/etermax/preguntados/ui/dashboard/a/e$1;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/dashboard/a/e;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/a/e;->onBuyClicked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/dashboard/a/e;)Lcom/etermax/tools/j/a;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->mAppUtils:Lcom/etermax/tools/j/a;

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/dashboard/a/e;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/a/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 273
    new-instance v0, Lcom/etermax/gamescommon/b/p;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/p;-><init>()V

    .line 274
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/p;->a(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 276
    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/dashboard/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->g()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->h:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 139
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->x()V

    .line 192
    :cond_0
    return-void
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 282
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 283
    sget v0, Lcom/etermax/o;->user_request:I

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->d:Lcom/etermax/gamescommon/social/h;

    sget-object v3, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->ASK:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    sget-object v5, Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;->LIFE:Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;

    new-instance v6, Lcom/etermax/preguntados/ui/dashboard/a/e$4;

    invoke-direct {v6, p0}, Lcom/etermax/preguntados/ui/dashboard/a/e$4;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/e;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/gamescommon/social/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;ILcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V

    .line 298
    return-void

    .line 285
    :cond_0
    sget v0, Lcom/etermax/o;->user_request:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 267
    new-instance v0, Lcom/etermax/preguntados/a/c/b;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/c/b;-><init>()V

    .line 268
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/c/b;->a(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->a:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 270
    return-void
.end method

.method b()V
    .locals 6

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->e()V

    .line 143
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getNextIncrement()I

    move-result v1

    .line 144
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/a/e$2;

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0xfa

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/dashboard/a/e$2;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/e;JJ)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->h:Landroid/os/CountDownTimer;

    .line 159
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 160
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->f()V

    .line 237
    const-string v0, "close_popup"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->a(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 240
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 241
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 245
    const-string v0, "ask_live"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->a(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->b:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/etermax/preguntados/ui/dashboard/a/e$3;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/ui/dashboard/a/e$3;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V

    .line 263
    return-void
.end method

.method public onApiVerificationException(Ljava/lang/Exception;)V
    .locals 4
    .parameter

    .prologue
    .line 211
    sget v0, Lcom/etermax/o;->purchase_verification_error_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_verification_error:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 216
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_verification_error_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/shop/a;->onAttach(Landroid/app/Activity;)V

    .line 102
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->f()V

    .line 107
    invoke-super {p0}, Lcom/etermax/gamescommon/shop/a;->onDetach()V

    .line 108
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/etermax/gamescommon/shop/a;->onPause()V

    .line 83
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->e()V

    .line 84
    return-void
.end method

.method protected onProductsLoaded(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 112
    sget-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->LIFE:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    invoke-direct {p0, p1, v0, v5}, Lcom/etermax/preguntados/ui/dashboard/a/e;->a(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;Z)Ljava/util/List;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getView()Landroid/view/View;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->lives_buy_some_more_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    if-eqz v0, :cond_0

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    const-string v5, "USD "

    invoke-virtual {v4, v1, v5}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/etermax/o;->buy_more_with:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/a/e$1;

    invoke-direct {v1, p0, v2}, Lcom/etermax/preguntados/ui/dashboard/a/e$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/e;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onPurchaseError(Lcom/etermax/gamescommon/g/i;)V
    .locals 4
    .parameter

    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->showUnsupportedDialog()V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 200
    sget v0, Lcom/etermax/o;->purchase_error_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_error:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 205
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_error_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPurchaseSucceded(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 221
    sget v0, Lcom/etermax/o;->purchase_success_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_success:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 225
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 226
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_success_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 230
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->n()V

    .line 231
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 88
    invoke-super {p0}, Lcom/etermax/gamescommon/shop/a;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 92
    invoke-static {}, Lcom/etermax/preguntados/ui/dashboard/a/a;->a()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    const-string v2, "fragment_get_more_lives"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->b()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/etermax/gamescommon/shop/a;->onPause()V

    .line 75
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->h:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 78
    :cond_0
    return-void
.end method
