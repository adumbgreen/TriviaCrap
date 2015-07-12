.class Lcom/amazon/device/ads/CurrentPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FORMAT:Ljava/lang/String; = "{\"width\":%d,\"height\":%d,\"x\":%d,\"y\":%d}"


# instance fields
.field private height:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/amazon/device/ads/CurrentPosition;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/amazon/device/ads/CurrentPosition;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/amazon/device/ads/CurrentPosition;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/amazon/device/ads/CurrentPosition;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/amazon/device/ads/CurrentPosition;->height:I

    .line 35
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/amazon/device/ads/CurrentPosition;->width:I

    .line 27
    return-void
.end method

.method public setX(I)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/amazon/device/ads/CurrentPosition;->x:I

    .line 43
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/amazon/device/ads/CurrentPosition;->y:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 57
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "{\"width\":%d,\"height\":%d,\"x\":%d,\"y\":%d}"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/amazon/device/ads/CurrentPosition;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/amazon/device/ads/CurrentPosition;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/amazon/device/ads/CurrentPosition;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/amazon/device/ads/CurrentPosition;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
