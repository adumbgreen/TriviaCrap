.class Lcom/millennialmedia/android/CachedAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/CachedAd;->c(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/CachedAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/CachedAd;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/millennialmedia/android/CachedAd$1;->a:Lcom/millennialmedia/android/CachedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .parameter

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/CachedAd$1;->a:Lcom/millennialmedia/android/CachedAd;

    invoke-static {v1}, Lcom/millennialmedia/android/CachedAd;->a(Lcom/millennialmedia/android/CachedAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
