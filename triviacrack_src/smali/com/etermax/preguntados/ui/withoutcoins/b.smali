.class Lcom/etermax/preguntados/ui/withoutcoins/b;
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
.field final synthetic a:Lcom/etermax/preguntados/ui/withoutcoins/a;

.field private b:Lcom/etermax/preguntados/ui/withoutcoins/c;


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/ui/withoutcoins/a;Lcom/etermax/preguntados/ui/withoutcoins/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/etermax/preguntados/ui/withoutcoins/b;->a:Lcom/etermax/preguntados/ui/withoutcoins/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/etermax/preguntados/ui/withoutcoins/b;->b:Lcom/etermax/preguntados/ui/withoutcoins/c;

    .line 141
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

    .line 145
    sget-object v3, Lcom/etermax/preguntados/ui/withoutcoins/c;->b:Lcom/etermax/preguntados/ui/withoutcoins/c;

    iget-object v4, p0, Lcom/etermax/preguntados/ui/withoutcoins/b;->b:Lcom/etermax/preguntados/ui/withoutcoins/c;

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/ui/withoutcoins/c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v3

    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getPrice()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 148
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
    .line 135
    check-cast p1, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    check-cast p2, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/withoutcoins/b;->a(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Lcom/etermax/gamescommon/shop/dto/ProductDTO;)I

    move-result v0

    return v0
.end method
