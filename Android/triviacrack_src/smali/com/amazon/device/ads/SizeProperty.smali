.class Lcom/amazon/device/ads/SizeProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FORMAT:Ljava/lang/String; = "{\"width\":%d,\"height\":%d}"


# instance fields
.field private height:I

.field private width:I


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
    .line 29
    iget v0, p0, Lcom/amazon/device/ads/SizeProperty;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/amazon/device/ads/SizeProperty;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/amazon/device/ads/SizeProperty;->height:I

    .line 34
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/amazon/device/ads/SizeProperty;->width:I

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 40
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "{\"width\":%d,\"height\":%d}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/amazon/device/ads/SizeProperty;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/amazon/device/ads/SizeProperty;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
