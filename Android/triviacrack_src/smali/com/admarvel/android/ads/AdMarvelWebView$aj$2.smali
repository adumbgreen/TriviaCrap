.class Lcom/admarvel/android/ads/AdMarvelWebView$aj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelWebView$aj;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView$aj;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$aj;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$aj$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView$aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$aj$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView$aj;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$aj$2;->a:Lcom/admarvel/android/ads/AdMarvelWebView$aj;

    iget-object v1, v1, Lcom/admarvel/android/ads/AdMarvelWebView$aj;->c:Ljava/io/InputStream;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView$aj;->d:Landroid/graphics/Bitmap;

    return-void
.end method
