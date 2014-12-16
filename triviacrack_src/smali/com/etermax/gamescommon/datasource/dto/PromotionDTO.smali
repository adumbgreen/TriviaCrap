.class public Lcom/etermax/gamescommon/datasource/dto/PromotionDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private app_item_type:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

.field private id:Lcom/etermax/gamescommon/promotion/Promotion;

.field private remaining_time:J


# virtual methods
.method public getAppItemType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/PromotionDTO;->app_item_type:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    return-object v0
.end method

.method public getId()Lcom/etermax/gamescommon/promotion/Promotion;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/PromotionDTO;->id:Lcom/etermax/gamescommon/promotion/Promotion;

    return-object v0
.end method

.method public getRemainingTime()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/etermax/gamescommon/datasource/dto/PromotionDTO;->remaining_time:J

    return-wide v0
.end method
