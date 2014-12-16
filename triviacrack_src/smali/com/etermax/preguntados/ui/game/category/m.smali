.class public Lcom/etermax/preguntados/ui/game/category/m;
.super Lcom/etermax/gamescommon/shop/a;
.source "SourceFile"


# static fields
.field private static final j:[I


# instance fields
.field a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field b:Lcom/etermax/preguntados/datasource/d;

.field c:Lcom/etermax/tools/f/a;

.field d:Lcom/etermax/gamescommon/login/datasource/a;

.field e:Lcom/etermax/gamescommon/social/h;

.field f:Lcom/etermax/gamescommon/social/a;

.field g:Lcom/etermax/preguntados/b/a;

.field h:Landroid/widget/ImageView;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/etermax/h;->shop_spins01:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/etermax/h;->shop_spins02:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/etermax/h;->shop_spins:I

    aput v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/ui/game/category/m;->j:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/etermax/gamescommon/shop/a;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/etermax/preguntados/ui/game/category/m;->i:I

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/m;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/etermax/preguntados/ui/game/category/m;->i:I

    return p1
.end method

.method public static a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-static {}, Lcom/etermax/preguntados/ui/game/category/o;->e()Lcom/etermax/preguntados/ui/game/category/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/game/category/p;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Lcom/etermax/preguntados/ui/game/category/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/p;->a()Lcom/etermax/preguntados/ui/game/category/m;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/m;)Lcom/etermax/gamescommon/shop/c;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/m;->mShopManager:Lcom/etermax/gamescommon/shop/c;

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
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
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
    if-eqz p3, :cond_2

    .line 128
    new-instance v0, Lcom/etermax/preguntados/ui/game/category/n;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/etermax/preguntados/ui/game/category/n;-><init>(Lcom/etermax/preguntados/ui/game/category/m;Lcom/etermax/preguntados/ui/game/category/m$1;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 130
    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/game/category/m;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/game/category/m;->onBuyClicked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/game/category/m;)Lcom/etermax/tools/j/a;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/m;->mAppUtils:Lcom/etermax/tools/j/a;

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/game/category/m;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/game/category/m;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 253
    new-instance v0, Lcom/etermax/gamescommon/b/p;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/p;-><init>()V

    .line 254
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/b/p;->a(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/m;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 256
    return-void
.end method

.method private c(I)V
    .locals 2
    .parameter

    .prologue
    .line 241
    new-instance v0, Lcom/etermax/preguntados/a/a/b;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/a/b;-><init>()V

    .line 242
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/a/b;->a(I)V

    .line 243
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/m;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 244
    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/game/category/m;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/game/category/m;->e()V

    return-void
.end method

.method private d(I)V
    .locals 2
    .parameter

    .prologue
    .line 247
    new-instance v0, Lcom/etermax/preguntados/a/b/a;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/b/a;-><init>()V

    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/a/b/a;->a(Ljava/lang/Integer;)V

    .line 249
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/m;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 250
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 263
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/m;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 264
    sget v0, Lcom/etermax/o;->user_request:I

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/m;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/category/m;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/m;->e:Lcom/etermax/gamescommon/social/h;

    sget-object v3, Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;->ASK:Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;

    sget-object v5, Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;->EXTRA_SHOT:Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;

    new-instance v6, Lcom/etermax/preguntados/ui/game/category/m$3;

    invoke-direct {v6, p0}, Lcom/etermax/preguntados/ui/game/category/m$3;-><init>(Lcom/etermax/preguntados/ui/game/category/m;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/gamescommon/social/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/etermax/gamescommon/gifting/dto/GiftActionDTO$Action;ILcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V

    .line 279
    return-void

    .line 266
    :cond_0
    sget v0, Lcom/etermax/o;->user_request:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/m;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/game/category/m;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/m;->i:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/m;->b(I)V

    .line 188
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/m;->i:I

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/category/m;->d(I)V

    .line 189
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/m;->b:Lcom/etermax/preguntados/datasource/d;

    iget v1, p0, Lcom/etermax/preguntados/ui/game/category/m;->i:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->c(I)I

    .line 190
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/m;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->h()V

    .line 192
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/m;->b()V

    .line 193
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 229
    new-instance v0, Lcom/etermax/preguntados/a/a/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/a/c;-><init>()V

    .line 230
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/a/c;->a(I)V

    .line 231
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/m;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 232
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 223
    new-instance v0, Lcom/etermax/preguntados/a/a/d;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/a/d;-><init>()V

    .line 224
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/a/d;->a(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/m;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 226
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 197
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 235
    new-instance v0, Lcom/etermax/preguntados/a/a/a;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/a/a;-><init>()V

    .line 236
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/a/a;->a(I)V

    .line 237
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/m;->c:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 238
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 202
    const-string v0, "close"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/m;->a(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 204
    return-void
.end method

.method d()V
    .locals 3

    .prologue
    .line 208
    const-string v0, "ask"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/m;->a(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/m;->f:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/etermax/preguntados/ui/game/category/m$2;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/ui/game/category/m$2;-><init>(Lcom/etermax/preguntados/ui/game/category/m;)V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V

    .line 219
    return-void
.end method

.method public onApiVerificationException(Ljava/lang/Exception;)V
    .locals 4
    .parameter

    .prologue
    .line 165
    sget v0, Lcom/etermax/o;->purchase_verification_error_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/m;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_verification_error:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/m;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/category/m;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 170
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/m;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_verification_error_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/etermax/gamescommon/shop/a;->onPause()V

    .line 83
    return-void
.end method

.method protected onProductsLoaded(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V
    .locals 12
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 86
    sget-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->EXTRA_SHOT:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    invoke-direct {p0, p1, v0, v11}, Lcom/etermax/preguntados/ui/game/category/m;->a(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;Z)Ljava/util/List;

    move-result-object v7

    .line 87
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/m;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->get_spins_buy_buttons_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 89
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f80

    invoke-direct {v8, v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 90
    invoke-virtual {v8, v3, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    move v3, v4

    .line 93
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    const/4 v1, 0x3

    if-ge v3, v1, :cond_2

    .line 95
    sget-object v1, Lcom/etermax/preguntados/ui/game/category/m;->j:[I

    array-length v1, v1

    if-ge v3, v1, :cond_0

    sget-object v1, Lcom/etermax/preguntados/ui/game/category/m;->j:[I

    aget v1, v1, v3

    move v5, v1

    .line 96
    :goto_1
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v1

    if-ne v1, v11, :cond_1

    sget v1, Lcom/etermax/o;->spin_02:I

    move v6, v1

    .line 98
    :goto_2
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/m;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/etermax/k;->get_spins_buy_item_layout:I

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 99
    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v1, Lcom/etermax/preguntados/ui/game/category/m$1;

    invoke-direct {v1, p0, v7, v3}, Lcom/etermax/preguntados/ui/game/category/m$1;-><init>(Lcom/etermax/preguntados/ui/game/category/m;Ljava/util/List;I)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget v1, Lcom/etermax/i;->get_spins_buy_item_description:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/etermax/preguntados/ui/game/category/m;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    sget v1, Lcom/etermax/i;->get_spins_buy_item_image:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    sget v1, Lcom/etermax/i;->get_spins_buy_item_button:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 113
    iget-object v5, p0, Lcom/etermax/preguntados/ui/game/category/m;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    const-string v6, "USD "

    invoke-virtual {v5, v2, v6}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 116
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 95
    :cond_0
    sget-object v1, Lcom/etermax/preguntados/ui/game/category/m;->j:[I

    sget-object v2, Lcom/etermax/preguntados/ui/game/category/m;->j:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    move v5, v1

    goto/16 :goto_1

    .line 96
    :cond_1
    sget v1, Lcom/etermax/o;->spin_02_plural:I

    move v6, v1

    goto/16 :goto_2

    .line 118
    :cond_2
    return-void
.end method

.method public onPurchaseError(Lcom/etermax/gamescommon/g/i;)V
    .locals 4
    .parameter

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/m;->showUnsupportedDialog()V

    .line 158
    :cond_0
    :goto_0
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/m;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 159
    iget v0, p0, Lcom/etermax/preguntados/ui/game/category/m;->i:I

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/game/category/m;->c(I)V

    .line 161
    :cond_1
    return-void

    .line 150
    :cond_2
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 151
    sget v0, Lcom/etermax/o;->purchase_error_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/m;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_error:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/m;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/category/m;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 156
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/m;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_error_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPurchaseSucceded(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 175
    sget v0, Lcom/etermax/o;->purchase_success_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/game/category/m;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_success:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/game/category/m;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/game/category/m;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 179
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 180
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/m;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_success_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/m;->a()V

    .line 183
    return-void
.end method
