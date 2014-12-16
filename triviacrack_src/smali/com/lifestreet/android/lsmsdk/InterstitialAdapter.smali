.class public interface abstract Lcom/lifestreet/android/lsmsdk/InterstitialAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lifestreet/android/lsmsdk/Adapter",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getInterstitialAd(Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lifestreet/android/lsmsdk/InterstitialAdapterListener;",
            "Lcom/lifestreet/android/lsmsdk/SlotContext;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract showInterstitial()V
.end method
