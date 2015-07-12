.class Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->showViewDelayed(Ljava/lang/ref/WeakReference;J)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

.field final synthetic val$viewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$3;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$3;->val$viewRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$3;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mDestroyed:Z
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->access$200(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$3;->val$viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$3;->val$viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 180
    if-eqz v0, :cond_0

    .line 181
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    return-void
.end method
