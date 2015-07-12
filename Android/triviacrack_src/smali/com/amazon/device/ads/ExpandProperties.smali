.class Lcom/amazon/device/ads/ExpandProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FORMAT:Ljava/lang/String; = "{\"width\":%d,\"height\":%d,\"useCustomClose\":%s,\"isModal\":%s}"


# instance fields
.field private height:I

.field private isModal:Ljava/lang/Boolean;

.field private useCustomClose:Ljava/lang/Boolean;

.field private width:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Ljava/lang/Boolean;

    .line 25
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->isModal:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    return v0
.end method

.method public getIsModal()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->isModal:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUseCustomClose()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    .line 41
    return-void
.end method

.method public setIsModal(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amazon/device/ads/ExpandProperties;->isModal:Ljava/lang/Boolean;

    .line 57
    return-void
.end method

.method public setUseCustomClose(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Ljava/lang/Boolean;

    .line 49
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "{\"width\":%d,\"height\":%d,\"useCustomClose\":%s,\"isModal\":%s}"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/amazon/device/ads/ExpandProperties;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/amazon/device/ads/ExpandProperties;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/amazon/device/ads/ExpandProperties;->useCustomClose:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/amazon/device/ads/ExpandProperties;->isModal:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
