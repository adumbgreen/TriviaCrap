.class final Lcom/millennialmedia/android/MMSDK$2;
.super Lcom/millennialmedia/android/AdCache$Iterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMSDK;->a(Lcom/millennialmedia/android/MMAdImpl;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/millennialmedia/android/MMSDK$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/millennialmedia/android/AdCache$Iterator;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/millennialmedia/android/CachedAd;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1238
    const-string v1, "MMSDK"

    const-string v2, "%s %s is %son disk. Is %sexpired."

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/millennialmedia/android/MMSDK$2;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/millennialmedia/android/CachedAd;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    return v5

    .line 1238
    :cond_0
    const-string v0, "not "

    goto :goto_0

    :cond_1
    const-string v0, "not "

    goto :goto_1
.end method
