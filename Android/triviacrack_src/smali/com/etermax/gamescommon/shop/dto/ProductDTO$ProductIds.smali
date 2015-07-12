.class Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public AMAZON:Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;

.field public GOOGLEPLAY:Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;

.field final synthetic this$0:Lcom/etermax/gamescommon/shop/dto/ProductDTO;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/shop/dto/ProductDTO;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 13
    iput-object p1, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;->this$0:Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;

    invoke-direct {v0, p1, v1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;-><init>(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Lcom/etermax/gamescommon/shop/dto/ProductDTO$1;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;->GOOGLEPLAY:Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;

    .line 15
    new-instance v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;

    invoke-direct {v0, p1, v1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;-><init>(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Lcom/etermax/gamescommon/shop/dto/ProductDTO$1;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;->AMAZON:Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;

    .line 16
    return-void
.end method
