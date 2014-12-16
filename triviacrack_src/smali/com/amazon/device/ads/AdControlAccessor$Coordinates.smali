.class public Lcom/amazon/device/ads/AdControlAccessor$Coordinates;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field height:I

.field final synthetic this$0:Lcom/amazon/device/ads/AdControlAccessor;

.field width:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->this$0:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->y:I

    return v0
.end method
