.class Lcom/amazon/device/ads/ImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static executor:Lcom/amazon/device/ads/ImageUtils$GraphicsUtilsExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/amazon/device/ads/ImageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/ImageUtils;->LOGTAG:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/amazon/device/ads/ImageUtils$GraphicsUtilsExecutor;

    invoke-direct {v0}, Lcom/amazon/device/ads/ImageUtils$GraphicsUtilsExecutor;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/ImageUtils;->executor:Lcom/amazon/device/ads/ImageUtils$GraphicsUtilsExecutor;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/amazon/device/ads/ImageUtils;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createBitmapImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 26
    sget-object v0, Lcom/amazon/device/ads/ImageUtils;->executor:Lcom/amazon/device/ads/ImageUtils$GraphicsUtilsExecutor;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/ImageUtils$GraphicsUtilsExecutor;->createBitmapImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static insertImageInMediaStore(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    sget-object v0, Lcom/amazon/device/ads/ImageUtils;->executor:Lcom/amazon/device/ads/ImageUtils$GraphicsUtilsExecutor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/amazon/device/ads/ImageUtils$GraphicsUtilsExecutor;->insertImageInMediaStore(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
