.class Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->addViewDelayed(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;J)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

.field final synthetic val$viewGroupRef:Ljava/lang/ref/WeakReference;

.field final synthetic val$viewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$2;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$2;->val$viewGroupRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$2;->val$viewRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$2;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    #getter for: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->mDestroyed:Z
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->access$200(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$2;->val$viewGroupRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$2;->val$viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$2;->val$viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 164
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView$2;->val$viewGroupRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 166
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 170
    :cond_0
    return-void
.end method
