.class Lcom/lifestreet/android/lsmsdk/AdNetworkQueue$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->enqueueNextNetwork()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;


# direct methods
.method constructor <init>(Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue$1;->this$0:Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue$1;->this$0:Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;

    #calls: Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->loadNextNetwork()V
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;->access$000(Lcom/lifestreet/android/lsmsdk/AdNetworkQueue;)V

    .line 46
    return-void
.end method
