.class Lcom/mdotm/android/view/MdotMBannerView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMBannerView$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/MdotMBannerView$2;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMBannerView$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMBannerView$2$1;->a:Lcom/mdotm/android/view/MdotMBannerView$2;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMBannerView$2$1;->b:Ljava/lang/String;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$2$1;->a:Lcom/mdotm/android/view/MdotMBannerView$2;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMBannerView$2;->a(Lcom/mdotm/android/view/MdotMBannerView$2;)Lcom/mdotm/android/view/MdotMBannerView;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMBannerView;->a(Lcom/mdotm/android/view/MdotMBannerView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMBannerView$2$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 633
    return-void
.end method
