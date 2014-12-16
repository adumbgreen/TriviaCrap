.class Lcom/millennialmedia/android/HandShake$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/HandShake;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/HandShake;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/HandShake;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/millennialmedia/android/HandShake$2;->a:Lcom/millennialmedia/android/HandShake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$2;->a:Lcom/millennialmedia/android/HandShake;

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->a(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 448
    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$2;->a:Lcom/millennialmedia/android/HandShake;

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->b(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 450
    :cond_0
    if-eqz v0, :cond_1

    .line 451
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    .line 452
    :cond_1
    return-void
.end method
