.class public Lcom/etermax/gamescommon/shop/dto/ProductDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private app_item_type:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

.field private coins:I

.field private discounts:Lcom/etermax/gamescommon/shop/dto/ProductDTO$Discounts;

.field private price:F

.field private product_ids:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;

.field private quantity:I

.field private type:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;-><init>(Lcom/etermax/gamescommon/shop/dto/ProductDTO;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->product_ids:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;

    .line 44
    new-instance v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$Discounts;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/etermax/gamescommon/shop/dto/ProductDTO$Discounts;-><init>(Lcom/etermax/gamescommon/shop/dto/ProductDTO;Lcom/etermax/gamescommon/shop/dto/ProductDTO$1;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->discounts:Lcom/etermax/gamescommon/shop/dto/ProductDTO$Discounts;

    .line 45
    return-void
.end method


# virtual methods
.method public getAppItemType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->app_item_type:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    return-object v0
.end method

.method public getCoins()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->coins:I

    return v0
.end method

.method public getDiscount()F
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->discounts:Lcom/etermax/gamescommon/shop/dto/ProductDTO$Discounts;

    iget v0, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$Discounts;->GOOGLEPLAY:F

    return v0
.end method

.method public getPrice()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->price:F

    return v0
.end method

.method public getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    sget-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$1;->$SwitchMap$com$etermax$gamescommon$BillingType:[I

    invoke-virtual {p1}, Lcom/etermax/gamescommon/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->product_ids:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;

    iget-object v0, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;->GOOGLEPLAY:Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;

    iget-object v0, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;->DEFAULT:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    if-eqz p2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->product_ids:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;

    iget-object v0, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;->AMAZON:Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;

    iget-object v0, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;->PRO:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->product_ids:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;

    iget-object v0, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;->AMAZON:Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;

    iget-object v0, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;->DEFAULT:Ljava/lang/String;

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->quantity:I

    return v0
.end method

.method public getType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->type:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ItemType;

    return-object v0
.end method

.method public setDiscount(F)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->discounts:Lcom/etermax/gamescommon/shop/dto/ProductDTO$Discounts;

    iput p1, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$Discounts;->GOOGLEPLAY:F

    .line 129
    return-void
.end method

.method public setPrice(F)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput p1, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->price:F

    .line 121
    return-void
.end method

.method public setProductId(Lcom/etermax/gamescommon/a;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    sget-object v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$1;->$SwitchMap$com$etermax$gamescommon$BillingType:[I

    invoke-virtual {p1}, Lcom/etermax/gamescommon/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->product_ids:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;

    iget-object v0, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;->GOOGLEPLAY:Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;

    iput-object p3, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;->DEFAULT:Ljava/lang/String;

    .line 97
    :goto_0
    return-void

    .line 87
    :pswitch_0
    if-eqz p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->product_ids:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;

    iget-object v0, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;->AMAZON:Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;

    iput-object p3, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;->PRO:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->product_ids:Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;

    iget-object v0, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$ProductIds;->AMAZON:Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;

    iput-object p3, v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO$MarketId;->DEFAULT:Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
