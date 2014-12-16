.class Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter;->invokeActionDelayed(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$listener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;


# direct methods
.method constructor <init>(Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter;Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter$1;->this$0:Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter;

    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter$1;->val$listener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter$1;->val$listener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter$1;->this$0:Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter;

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter$1;->val$action:Ljava/lang/String;

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter$1;->val$listener:Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;

    invoke-virtual {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/adapters/AbstractInterstitialAdapter;->invokeAction(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;)V

    .line 48
    :cond_0
    return-void
.end method
