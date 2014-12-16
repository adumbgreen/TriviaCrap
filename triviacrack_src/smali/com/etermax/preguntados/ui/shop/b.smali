.class Lcom/etermax/preguntados/ui/shop/b;
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
.field final synthetic a:Lcom/etermax/preguntados/ui/shop/a;


# direct methods
.method private constructor <init>(Lcom/etermax/preguntados/ui/shop/a;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/etermax/preguntados/ui/shop/b;->a:Lcom/etermax/preguntados/ui/shop/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/preguntados/ui/shop/a;Lcom/etermax/preguntados/ui/shop/a$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/shop/b;-><init>(Lcom/etermax/preguntados/ui/shop/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Lcom/etermax/gamescommon/shop/dto/ProductDTO;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 230
    check-cast p1, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    check-cast p2, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/shop/b;->a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Lcom/etermax/gamescommon/shop/dto/ProductDTO;)I

    move-result v0

    return v0
.end method
