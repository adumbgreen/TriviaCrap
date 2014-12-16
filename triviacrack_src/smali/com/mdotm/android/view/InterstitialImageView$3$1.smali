.class Lcom/mdotm/android/view/InterstitialImageView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/InterstitialImageView$3;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/InterstitialImageView$3;

.field private final synthetic b:Lcom/mdotm/android/d/b;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/InterstitialImageView$3;Lcom/mdotm/android/d/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/InterstitialImageView$3$1;->a:Lcom/mdotm/android/view/InterstitialImageView$3;

    iput-object p2, p0, Lcom/mdotm/android/view/InterstitialImageView$3$1;->b:Lcom/mdotm/android/d/b;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$3$1;->a:Lcom/mdotm/android/view/InterstitialImageView$3;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView$3;->a(Lcom/mdotm/android/view/InterstitialImageView$3;)Lcom/mdotm/android/view/InterstitialImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView$3$1;->b:Lcom/mdotm/android/d/b;

    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView$3$1;->a:Lcom/mdotm/android/view/InterstitialImageView$3;

    invoke-static {v2}, Lcom/mdotm/android/view/InterstitialImageView$3;->a(Lcom/mdotm/android/view/InterstitialImageView$3;)Lcom/mdotm/android/view/InterstitialImageView;

    move-result-object v2

    iget-object v2, v2, Lcom/mdotm/android/view/InterstitialImageView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/view/InterstitialImageView;->a(Lcom/mdotm/android/d/b;Landroid/graphics/Bitmap;)V

    .line 292
    return-void
.end method
