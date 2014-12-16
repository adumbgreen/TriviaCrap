.class public Lcom/etermax/preguntados/ui/shop/a;
.super Lcom/etermax/gamescommon/shop/a;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/d;


# static fields
.field private static final g:[I

.field private static final h:[I


# instance fields
.field a:I

.field b:I

.field c:Lcom/etermax/preguntados/datasource/d;

.field d:Lcom/etermax/tools/f/a;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/etermax/h;->shop_tokens05:I

    aput v1, v0, v3

    sget v1, Lcom/etermax/h;->shop_tokens04:I

    aput v1, v0, v4

    sget v1, Lcom/etermax/h;->shop_tokens03:I

    aput v1, v0, v5

    sget v1, Lcom/etermax/h;->shop_tokens02:I

    aput v1, v0, v6

    const/4 v1, 0x4

    sget v2, Lcom/etermax/h;->shop_tokens01:I

    aput v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/ui/shop/a;->g:[I

    .line 57
    new-array v0, v6, [I

    sget v1, Lcom/etermax/h;->shop_spins:I

    aput v1, v0, v3

    sget v1, Lcom/etermax/h;->shop_spins02:I

    aput v1, v0, v4

    sget v1, Lcom/etermax/h;->shop_spins01:I

    aput v1, v0, v5

    sput-object v0, Lcom/etermax/preguntados/ui/shop/a;->h:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 45
    invoke-direct {p0}, Lcom/etermax/gamescommon/shop/a;-><init>()V

    .line 53
    iput v0, p0, Lcom/etermax/preguntados/ui/shop/a;->e:I

    .line 54
    iput v0, p0, Lcom/etermax/preguntados/ui/shop/a;->f:I

    .line 230
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/shop/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/etermax/preguntados/ui/shop/a;->e:I

    return p1
.end method

.method public static a(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-static {}, Lcom/etermax/preguntados/ui/shop/c;->b()Lcom/etermax/preguntados/ui/shop/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/shop/d;->a(I)Lcom/etermax/preguntados/ui/shop/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/shop/d;->a()Lcom/etermax/preguntados/ui/shop/a;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method private a(Ljava/lang/String;II)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    new-instance v0, Lcom/etermax/preguntados/ui/shop/a$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/shop/a$1;-><init>(Lcom/etermax/preguntados/ui/shop/a;Ljava/lang/String;II)V

    return-object v0
.end method

.method private a(ILcom/etermax/gamescommon/shop/dto/ProductDTO;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 163
    sget-object v0, Lcom/etermax/preguntados/ui/shop/a;->g:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/etermax/preguntados/ui/shop/a;->g:[I

    aget v3, v0, p1

    .line 165
    :goto_0
    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getCoins()I

    move-result v1

    sget v0, Lcom/etermax/o;->coin_plural:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    const-string v4, "USD "

    invoke-virtual {v0, p2, v4}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getDiscount()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/shop/a;->a(ILjava/lang/String;ILjava/lang/String;F)Landroid/view/View;

    move-result-object v1

    .line 166
    sget v0, Lcom/etermax/i;->item_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/shop/a;->mAppUtils:Lcom/etermax/tools/j/a;

    invoke-virtual {v3}, Lcom/etermax/tools/j/a;->c()Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getCoins()I

    move-result v3

    invoke-direct {p0, v2, v3, v6}, Lcom/etermax/preguntados/ui/shop/a;->a(Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    sget v0, Lcom/etermax/i;->item_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/shop/a;->mAppUtils:Lcom/etermax/tools/j/a;

    invoke-virtual {v3}, Lcom/etermax/tools/j/a;->c()Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getCoins()I

    move-result v3

    invoke-direct {p0, v2, v3, v6}, Lcom/etermax/preguntados/ui/shop/a;->a(Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    sget v0, Lcom/etermax/i;->item_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/shop/a;->mAppUtils:Lcom/etermax/tools/j/a;

    invoke-virtual {v3}, Lcom/etermax/tools/j/a;->c()Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v3

    invoke-direct {p0, v2, v6, v3}, Lcom/etermax/preguntados/ui/shop/a;->a(Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    sget v0, Lcom/etermax/i;->item_type:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/shop/a;->mAppUtils:Lcom/etermax/tools/j/a;

    invoke-virtual {v3}, Lcom/etermax/tools/j/a;->c()Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v3

    invoke-direct {p0, v2, v6, v3}, Lcom/etermax/preguntados/ui/shop/a;->a(Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-object v1

    .line 163
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/ui/shop/a;->g:[I

    sget-object v1, Lcom/etermax/preguntados/ui/shop/a;->g:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v3, v0, v1

    goto/16 :goto_0
.end method

.method private a(ILjava/lang/String;ILjava/lang/String;F)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->shop_item_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 191
    sget v0, Lcom/etermax/i;->item_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    sget v0, Lcom/etermax/i;->item_type:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    sget v0, Lcom/etermax/i;->item_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    sget v0, Lcom/etermax/i;->item_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_0

    .line 196
    sget v0, Lcom/etermax/i;->item_discount_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 197
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 198
    sget v2, Lcom/etermax/i;->item_discount_value:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v3, p5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_0
    return-object v1
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
    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 219
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

    .line 220
    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    move-result-object v3

    sget-object v4, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->APP_ITEM:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getAppItemType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 221
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_1
    if-eqz p3, :cond_2

    .line 225
    new-instance v0, Lcom/etermax/preguntados/ui/shop/b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/etermax/preguntados/ui/shop/b;-><init>(Lcom/etermax/preguntados/ui/shop/a;Lcom/etermax/preguntados/ui/shop/a$1;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 227
    :cond_2
    return-object v1
.end method

.method private a(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;Z)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/shop/dto/ProductListDTO;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/shop/dto/ProductDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
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

    .line 207
    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    move-result-object v3

    sget-object v4, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->COIN_ITEM:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    if-ne v3, v4, :cond_0

    .line 208
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_1
    if-eqz p2, :cond_2

    .line 212
    new-instance v0, Lcom/etermax/preguntados/ui/shop/b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/etermax/preguntados/ui/shop/b;-><init>(Lcom/etermax/preguntados/ui/shop/a;Lcom/etermax/preguntados/ui/shop/a$1;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 214
    :cond_2
    return-object v1
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/shop/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/shop/a;->onBuyClicked(Ljava/lang/String;)V

    return-void
.end method

.method private b(ILcom/etermax/gamescommon/shop/dto/ProductDTO;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 175
    sget-object v0, Lcom/etermax/preguntados/ui/shop/a;->h:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/etermax/preguntados/ui/shop/a;->h:[I

    aget v3, v0, p1

    .line 176
    :goto_0
    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v1

    .line 177
    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    sget v0, Lcom/etermax/o;->spin_02:I

    .line 179
    :goto_1
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    const-string v4, "USD "

    invoke-virtual {v0, p2, v4}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getDiscount()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/ui/shop/a;->a(ILjava/lang/String;ILjava/lang/String;F)Landroid/view/View;

    move-result-object v1

    .line 180
    sget v0, Lcom/etermax/i;->item_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/shop/a;->mAppUtils:Lcom/etermax/tools/j/a;

    invoke-virtual {v3}, Lcom/etermax/tools/j/a;->c()Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v3

    invoke-direct {p0, v2, v6, v3}, Lcom/etermax/preguntados/ui/shop/a;->a(Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    sget v0, Lcom/etermax/i;->item_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/shop/a;->mAppUtils:Lcom/etermax/tools/j/a;

    invoke-virtual {v3}, Lcom/etermax/tools/j/a;->c()Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v3

    invoke-direct {p0, v2, v6, v3}, Lcom/etermax/preguntados/ui/shop/a;->a(Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    sget v0, Lcom/etermax/i;->item_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/shop/a;->mAppUtils:Lcom/etermax/tools/j/a;

    invoke-virtual {v3}, Lcom/etermax/tools/j/a;->c()Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v3

    invoke-direct {p0, v2, v6, v3}, Lcom/etermax/preguntados/ui/shop/a;->a(Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    sget v0, Lcom/etermax/i;->item_type:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/shop/a;->mAppUtils:Lcom/etermax/tools/j/a;

    invoke-virtual {v3}, Lcom/etermax/tools/j/a;->c()Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v3

    invoke-direct {p0, v2, v6, v3}, Lcom/etermax/preguntados/ui/shop/a;->a(Ljava/lang/String;II)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-object v1

    .line 175
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/ui/shop/a;->h:[I

    sget-object v1, Lcom/etermax/preguntados/ui/shop/a;->h:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v3, v0, v1

    goto/16 :goto_0

    .line 177
    :cond_1
    sget v0, Lcom/etermax/o;->spin_02_plural:I

    goto/16 :goto_1
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 310
    new-instance v0, Lcom/etermax/preguntados/a/a;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/a;-><init>()V

    .line 311
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/a;->a(I)V

    .line 312
    iget-object v1, p0, Lcom/etermax/preguntados/ui/shop/a;->d:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 313
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/shop/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/shop/a;->c(I)V

    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/shop/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/etermax/preguntados/ui/shop/a;->f:I

    return p1
.end method

.method private c(I)V
    .locals 2
    .parameter

    .prologue
    .line 316
    new-instance v0, Lcom/etermax/preguntados/a/a/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/a/c;-><init>()V

    .line 317
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/a/c;->a(I)V

    .line 318
    iget-object v1, p0, Lcom/etermax/preguntados/ui/shop/a;->d:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 319
    return-void
.end method

.method private d(I)V
    .locals 2
    .parameter

    .prologue
    .line 322
    new-instance v0, Lcom/etermax/preguntados/a/a/a;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/a/a;-><init>()V

    .line 323
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/a/a;->a(I)V

    .line 324
    iget-object v1, p0, Lcom/etermax/preguntados/ui/shop/a;->d:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 325
    return-void
.end method

.method private e(I)V
    .locals 2
    .parameter

    .prologue
    .line 328
    new-instance v0, Lcom/etermax/preguntados/a/a/b;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/a/b;-><init>()V

    .line 329
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/a/b;->a(I)V

    .line 330
    iget-object v1, p0, Lcom/etermax/preguntados/ui/shop/a;->d:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 331
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-static {}, Lcom/etermax/preguntados/ui/shop/e;->b()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const-string v2, "shop_info_fragment"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 337
    return-void
.end method

.method protected getApiProductList()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/a;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->v()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;

    move-result-object v0

    return-object v0
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/shop/a;->onAccept(Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method public onApiVerificationException(Ljava/lang/Exception;)V
    .locals 4
    .parameter

    .prologue
    .line 274
    sget v0, Lcom/etermax/o;->purchase_verification_error_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_verification_error:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 279
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_verification_error_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    sget v0, Lcom/etermax/k;->shop_fragment_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 75
    sget v0, Lcom/etermax/i;->shop_user_coins:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/shop/a;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/d;->t()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget v0, Lcom/etermax/i;->shop_user_spins:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/etermax/preguntados/ui/shop/a;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-object v1
.end method

.method protected onProductsLoaded(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x1

    const/high16 v10, 0x4040

    const/4 v5, 0x0

    .line 89
    invoke-direct {p0, p1, v1}, Lcom/etermax/preguntados/ui/shop/a;->a(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;Z)Ljava/util/List;

    move-result-object v6

    .line 90
    sget-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;->EXTRA_SHOT:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    invoke-direct {p0, p1, v0, v1}, Lcom/etermax/preguntados/ui/shop/a;->a(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;Z)Ljava/util/List;

    move-result-object v7

    .line 91
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->shop_rows_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 95
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f80

    invoke-direct {v8, v5, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move v4, v5

    .line 98
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 99
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    .line 100
    rem-int/lit8 v2, v4, 0x3

    if-nez v2, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/etermax/k;->shop_item_row:I

    invoke-virtual {v2, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "coinRow"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v9, v4, 0x3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 103
    sget v3, Lcom/etermax/i;->shop_row:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 104
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 105
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    :goto_1
    invoke-direct {p0, v4, v1}, Lcom/etermax/preguntados/ui/shop/a;->a(ILcom/etermax/gamescommon/shop/dto/ProductDTO;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 112
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    rem-int/lit8 v9, v4, 0x3

    if-eqz v9, :cond_0

    .line 114
    sget v9, Lcom/etermax/i;->shop_item_divider:I

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    rem-int/lit8 v1, v4, 0x3

    if-nez v1, :cond_1

    .line 120
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lcom/etermax/h;->shop_row_background:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual {v2, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 98
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "coinRow"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v9, v4, 0x3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 109
    sget v3, Lcom/etermax/i;->shop_row:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_3
    move v4, v5

    .line 127
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_7

    .line 128
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    .line 129
    rem-int/lit8 v2, v4, 0x3

    if-nez v2, :cond_6

    .line 130
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/etermax/k;->shop_item_row:I

    invoke-virtual {v2, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extraShotsRow"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v6, v4, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 132
    sget v3, Lcom/etermax/i;->shop_row:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 133
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    :goto_3
    invoke-direct {p0, v4, v1}, Lcom/etermax/preguntados/ui/shop/a;->b(ILcom/etermax/gamescommon/shop/dto/ProductDTO;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 141
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    rem-int/lit8 v6, v4, 0x3

    if-eqz v6, :cond_4

    .line 143
    sget v6, Lcom/etermax/i;->shop_item_divider:I

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_4
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    rem-int/lit8 v1, v4, 0x3

    if-nez v1, :cond_5

    .line 149
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/etermax/h;->shop_row_background:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {v2, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 127
    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 137
    :cond_6
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extraShotsRow"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v6, v4, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 138
    sget v3, Lcom/etermax/i;->shop_row:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    goto :goto_3

    .line 155
    :cond_7
    return-void
.end method

.method public onPurchaseError(Lcom/etermax/gamescommon/g/i;)V
    .locals 4
    .parameter

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->showUnsupportedDialog()V

    .line 266
    :cond_0
    :goto_0
    iget v0, p0, Lcom/etermax/preguntados/ui/shop/a;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 267
    iget v0, p0, Lcom/etermax/preguntados/ui/shop/a;->f:I

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/shop/a;->e(I)V

    .line 270
    :cond_1
    return-void

    .line 257
    :cond_2
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 258
    sget v0, Lcom/etermax/o;->purchase_error_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_error:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 262
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 263
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_error_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPurchaseSucceded(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 284
    sget v0, Lcom/etermax/o;->purchase_success_title:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->purchase_success:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/shop/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 289
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_success_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 292
    iget v0, p0, Lcom/etermax/preguntados/ui/shop/a;->e:I

    if-eq v0, v4, :cond_0

    .line 293
    iget v0, p0, Lcom/etermax/preguntados/ui/shop/a;->e:I

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/shop/a;->b(I)V

    .line 294
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/a;->c:Lcom/etermax/preguntados/datasource/d;

    iget v1, p0, Lcom/etermax/preguntados/ui/shop/a;->e:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->b(I)I

    .line 295
    iput v4, p0, Lcom/etermax/preguntados/ui/shop/a;->e:I

    .line 296
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->shop_user_coins:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/shop/a;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->t()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :cond_0
    iget v0, p0, Lcom/etermax/preguntados/ui/shop/a;->f:I

    if-eq v0, v4, :cond_1

    .line 299
    iget v0, p0, Lcom/etermax/preguntados/ui/shop/a;->b:I

    iget v1, p0, Lcom/etermax/preguntados/ui/shop/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/etermax/preguntados/ui/shop/a;->b:I

    .line 300
    iget v0, p0, Lcom/etermax/preguntados/ui/shop/a;->f:I

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/shop/a;->d(I)V

    .line 301
    iget-object v0, p0, Lcom/etermax/preguntados/ui/shop/a;->c:Lcom/etermax/preguntados/datasource/d;

    iget v1, p0, Lcom/etermax/preguntados/ui/shop/a;->f:I

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->c(I)I

    .line 302
    iput v4, p0, Lcom/etermax/preguntados/ui/shop/a;->f:I

    .line 303
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/shop/a;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->shop_user_spins:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/etermax/preguntados/ui/shop/a;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :cond_1
    return-void
.end method
