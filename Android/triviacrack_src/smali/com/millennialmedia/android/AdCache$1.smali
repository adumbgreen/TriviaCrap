.class final Lcom/millennialmedia/android/AdCache$1;
.super Lcom/millennialmedia/android/AdCache$Iterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;)Ljava/lang/String;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Set;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/millennialmedia/android/AdCache$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/millennialmedia/android/AdCache$1;->b:Ljava/util/Set;

    invoke-direct {p0}, Lcom/millennialmedia/android/AdCache$Iterator;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/millennialmedia/android/CachedAd;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 130
    iget-object v0, p1, Lcom/millennialmedia/android/CachedAd;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->c()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdCache$1;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/millennialmedia/android/CachedAd;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/millennialmedia/android/AdCache$1;->b:Ljava/util/Set;

    iget-object v1, p1, Lcom/millennialmedia/android/CachedAd;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    return v2
.end method
