.class Lcom/etermax/preguntados/ui/dashboard/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/etermax/gamescommon/shop/dto/ProductDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/a/e;


# direct methods
.method private constructor <init>(Lcom/etermax/preguntados/ui/dashboard/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/a/f;->a:Lcom/etermax/preguntados/ui/dashboard/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/dashboard/a/e;Lcom/etermax/preguntados/ui/dashboard/a/e$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/a/f;-><init>(Lcom/etermax/preguntados/ui/dashboard/a/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Lcom/etermax/gamescommon/shop/dto/ProductDTO;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 178
    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    move-result-object v3

    sget-object v4, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->APP_ITEM:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    if-ne v3, v4, :cond_3

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    move-result-object v3

    sget-object v4, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;->APP_ITEM:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    if-ne v3, v4, :cond_3

    .line 179
    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v3

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v3

    if-le v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v3

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 175
    check-cast p1, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    check-cast p2, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/a/f;->a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Lcom/etermax/gamescommon/shop/dto/ProductDTO;)I

    move-result v0

    return v0
.end method
