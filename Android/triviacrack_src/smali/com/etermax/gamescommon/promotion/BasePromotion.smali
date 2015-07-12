.class public abstract Lcom/etermax/gamescommon/promotion/BasePromotion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Lcom/etermax/gamescommon/promotion/Promotion;

.field private itemType:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

.field private receivedTime:J

.field private remainingTime:J


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/promotion/Promotion;Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/etermax/gamescommon/promotion/BasePromotion;->id:Lcom/etermax/gamescommon/promotion/Promotion;

    .line 18
    iput-object p2, p0, Lcom/etermax/gamescommon/promotion/BasePromotion;->itemType:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    .line 19
    iput-wide p3, p0, Lcom/etermax/gamescommon/promotion/BasePromotion;->receivedTime:J

    .line 20
    iput-wide p5, p0, Lcom/etermax/gamescommon/promotion/BasePromotion;->remainingTime:J

    .line 21
    return-void
.end method


# virtual methods
.method public abstract getDashboardView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public getId()Lcom/etermax/gamescommon/promotion/Promotion;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/BasePromotion;->id:Lcom/etermax/gamescommon/promotion/Promotion;

    return-object v0
.end method

.method public getItemType()Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/BasePromotion;->itemType:Lcom/etermax/gamescommon/shop/dto/ProductDTO$AppItemType;

    return-object v0
.end method

.method public abstract getPromoBuyFragment()Landroid/support/v4/app/Fragment;
.end method

.method public getRemainingTime()J
    .locals 6

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/etermax/gamescommon/promotion/BasePromotion;->remainingTime:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/etermax/gamescommon/promotion/BasePromotion;->receivedTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method
