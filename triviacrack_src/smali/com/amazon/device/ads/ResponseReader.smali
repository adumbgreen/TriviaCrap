.class Lcom/amazon/device/ads/ResponseReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private enableLog:Z

.field private logTag:Ljava/lang/String;

.field private final stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/amazon/device/ads/ResponseReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/ResponseReader;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/device/ads/ResponseReader;->enableLog:Z

    .line 23
    sget-object v0, Lcom/amazon/device/ads/ResponseReader;->LOGTAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/ResponseReader;->logTag:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/amazon/device/ads/ResponseReader;->stream:Ljava/io/InputStream;

    .line 28
    return-void
.end method


# virtual methods
.method public enableLog(Z)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/amazon/device/ads/ResponseReader;->enableLog:Z

    .line 36
    return-void
.end method

.method public readAsBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazon/device/ads/ResponseReader;->stream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/amazon/device/ads/ImageUtils;->createBitmapImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public readAsJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/amazon/device/ads/ResponseReader;->readAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/JSONUtils;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public readAsString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/device/ads/ResponseReader;->stream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->readStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-boolean v1, p0, Lcom/amazon/device/ads/ResponseReader;->enableLog:Z

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/amazon/device/ads/ResponseReader;->logTag:Ljava/lang/String;

    const-string v2, "Response Body: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_0
    return-object v0
.end method

.method public setExternalLogTag(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 45
    sget-object v0, Lcom/amazon/device/ads/ResponseReader;->LOGTAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/ResponseReader;->logTag:Ljava/lang/String;

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/ResponseReader;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ResponseReader;->logTag:Ljava/lang/String;

    goto :goto_0
.end method
