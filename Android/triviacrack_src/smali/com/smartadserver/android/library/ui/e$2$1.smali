.class Lcom/smartadserver/android/library/ui/e$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/e$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/e$2;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/e$2;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/e$2$1;->a:Lcom/smartadserver/android/library/ui/e$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/e$2$1;->a:Lcom/smartadserver/android/library/ui/e$2;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/e$2;->b:Lcom/smartadserver/android/library/ui/e;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/e;->b(Lcom/smartadserver/android/library/ui/e;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/e$2$1;->a:Lcom/smartadserver/android/library/ui/e$2;

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/e$2;->b:Lcom/smartadserver/android/library/ui/e;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/e;->a(Lcom/smartadserver/android/library/ui/e;)Landroid/view/animation/RotateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/e$2$1;->a:Lcom/smartadserver/android/library/ui/e$2;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/e$2;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 79
    return-void
.end method
