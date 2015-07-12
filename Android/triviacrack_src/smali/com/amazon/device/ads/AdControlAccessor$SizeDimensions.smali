.class public Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field height:I

.field final synthetic this$0:Lcom/amazon/device/ads/AdControlAccessor;

.field width:I


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;->this$0:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;->width:I

    return v0
.end method
