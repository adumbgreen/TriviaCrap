.class public Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADMARVEL_CUSTOM_BACK_BUTTON:Ljava/lang/String; = "rd2KvT4Zi0NK9A0CejrW35pciQ002l"

.field public static final ADMARVEL_CUSTOM_BACK_DISABLE_BUTTON:Ljava/lang/String; = "MKlWddpjgeIrBuZxnd37tVjz7OM7fu"

.field public static final ADMARVEL_CUSTOM_CLOSE_BUTTON:Ljava/lang/String; = "OCkD4Sjg8bN0h8bDad6gWa5t51Zy5I"

.field public static final ADMARVEL_CUSTOM_DONE_BUTTON:Ljava/lang/String; = "USuSmQSCwrDx1CXCp4oqplFBGTQAZM"

.field public static final ADMARVEL_CUSTOM_MUTE_BUTTON:Ljava/lang/String; = "u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S"

.field public static final ADMARVEL_CUSTOM_OPEN_URL_BUTTON:Ljava/lang/String; = "nRdOcYYrMLotmPFqlTcjFIf7isxM5t"

.field public static final ADMARVEL_CUSTOM_OPEN_URL_DISABLED_BUTTON:Ljava/lang/String; = "H2GFZHEOwlzVJk4cBatArzxlb2XOJH"

.field public static final ADMARVEL_CUSTOM_PAUSE_BUTTON:Ljava/lang/String; = "d2UpTWfkssmtbKnAqIR6WGdcMl4Gg8"

.field public static final ADMARVEL_CUSTOM_PLAY_BUTTON:Ljava/lang/String; = "aSrZSorTa7PztrNZ4FuMvViHEaGfDV"

.field public static final ADMARVEL_CUSTOM_REPLAY_BUTTON:Ljava/lang/String; = "ej5yqIooDTRYYsXEJuN4eJOh7buHJI"

.field public static final ADMARVEL_CUSTOM_RESUME_BUTTON:Ljava/lang/String; = "UPuOOqinUE2sqnnpe8MYG7PzHVVl5p"

.field public static final ADMARVEL_CUSTOM_RESUME_DISABLE_BUTTON:Ljava/lang/String; = "NCLuZlSXjDualh2uti1kSm8vWlELL9"

.field public static final ADMARVEL_CUSTOM_STOP_BUTTON:Ljava/lang/String; = "yz6T5xsau00Hqg556ez5NwTY2IsOW1"

.field public static final ADMARVEL_CUSTOM_TIME_BUTTON:Ljava/lang/String; = "I9Kg1IJB4gtPeHhlB0pvKW5yqcRf2o"

.field public static final ADMARVEL_CUSTOM_UNMUTE_BUTTON:Ljava/lang/String; = "kOy0RFIzirRqTweJUasQ2qaqYyPhm4"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBitmapTobyteArray(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    aget-byte v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\-"

    const-string v3, "-"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertBitmapTobyteArray(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    aget-byte v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\-"

    const-string v3, "-"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBackwardDisableDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "MKlWddpjgeIrBuZxnd37tVjz7OM7fu"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "MKlWddpjgeIrBuZxnd37tVjz7OM7fu"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for back_disable"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getBackwardDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "rd2KvT4Zi0NK9A0CejrW35pciQ002l"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->b:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "rd2KvT4Zi0NK9A0CejrW35pciQ002l"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for back "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->b:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->b:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    const-string v0, "backward_disable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBackwardDisableDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "backward"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBackwardDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "close"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getCloseDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "done"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getDoneDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "mute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getMuteDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "open_url_disabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getOpenUrlDisabledDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v0, "open_url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getOpenUrlDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, "pause"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getPauseDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v0, "play_movie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getPlayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_8
    const-string v0, "replay"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getReplayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_9
    const-string v0, "resume_disable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getResumeDisableDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v0, "resume"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getResumeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v0, "stop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getStopDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const-string v0, "time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getTimeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v0, "unmute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getUnmuteDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static getCloseDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "OCkD4Sjg8bN0h8bDad6gWa5t51Zy5I"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->c:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "OCkD4Sjg8bN0h8bDad6gWa5t51Zy5I"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for close "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->c:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->c:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDoneDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "USuSmQSCwrDx1CXCp4oqplFBGTQAZM"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->d:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "USuSmQSCwrDx1CXCp4oqplFBGTQAZM"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for done "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->d:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->d:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMuteDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->e:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for mute "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->e:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->e:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getOpenUrlDisabledDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "H2GFZHEOwlzVJk4cBatArzxlb2XOJH"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->n:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "H2GFZHEOwlzVJk4cBatArzxlb2XOJH"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for open_url_disabled "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->n:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->n:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getOpenUrlDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "nRdOcYYrMLotmPFqlTcjFIf7isxM5t"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->o:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "nRdOcYYrMLotmPFqlTcjFIf7isxM5t"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for open_url  "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->o:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->o:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPauseDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "d2UpTWfkssmtbKnAqIR6WGdcMl4Gg8"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->f:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "d2UpTWfkssmtbKnAqIR6WGdcMl4Gg8"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for pause  "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->f:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->f:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPlayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "aSrZSorTa7PztrNZ4FuMvViHEaGfDV"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->g:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "aSrZSorTa7PztrNZ4FuMvViHEaGfDV"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for play  "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->g:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->g:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getReplayDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ej5yqIooDTRYYsXEJuN4eJOh7buHJI"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->h:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "ej5yqIooDTRYYsXEJuN4eJOh7buHJI"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for replay  "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->h:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->h:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getResumeDisableDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "NCLuZlSXjDualh2uti1kSm8vWlELL9"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->i:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "NCLuZlSXjDualh2uti1kSm8vWlELL9"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for resume disable  "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->i:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->i:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getResumeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "UPuOOqinUE2sqnnpe8MYG7PzHVVl5p"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->j:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "UPuOOqinUE2sqnnpe8MYG7PzHVVl5p"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for resume  "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->j:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->j:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getStopDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "yz6T5xsau00Hqg556ez5NwTY2IsOW1"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->k:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "yz6T5xsau00Hqg556ez5NwTY2IsOW1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for resume  "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->k:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->k:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getTimeDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "I9Kg1IJB4gtPeHhlB0pvKW5yqcRf2o"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->l:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "I9Kg1IJB4gtPeHhlB0pvKW5yqcRf2o"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for resume  "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->l:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->l:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUnmuteDrawable(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v1, "kOy0RFIzirRqTweJUasQ2qaqYyPhm4"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->m:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdMarvelOptionalFlags()Ljava/util/Map;

    move-result-object v0

    const-string v2, "kOy0RFIzirRqTweJUasQ2qaqYyPhm4"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error in setting custom bitmap for unmute  "

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->m:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->m:Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils$a;->a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static writeByteArrayFromBitMap(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v5, "AdmBitmapTemp"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_2
    :try_start_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_4
    new-instance v1, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-direct {v1, v0, v5}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_1

    const-string v0, "{"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4
    array-length v1, v3

    if-ge v0, v1, :cond_3

    aget-byte v1, v3, v0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v3, v0

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    :cond_3
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto/16 :goto_2
.end method
