.class Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;
.super Lcom/millennialmedia/android/MMAdImpl;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/MMInterstitial;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMInterstitial;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;->a:Lcom/millennialmedia/android/MMInterstitial;

    .line 168
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMAdImpl;-><init>(Landroid/content/Context;)V

    .line 169
    return-void
.end method


# virtual methods
.method synthetic d()Lcom/millennialmedia/android/MMAd;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;->r()Lcom/millennialmedia/android/MMInterstitial;

    move-result-object v0

    return-object v0
.end method

.method r()Lcom/millennialmedia/android/MMInterstitial;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;->a:Lcom/millennialmedia/android/MMInterstitial;

    return-object v0
.end method
