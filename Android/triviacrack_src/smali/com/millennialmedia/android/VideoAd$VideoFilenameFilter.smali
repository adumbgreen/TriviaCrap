.class Lcom/millennialmedia/android/VideoAd$VideoFilenameFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/VideoAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/VideoAd;)V
    .locals 1
    .parameter

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd$VideoFilenameFilter;->a:Ljava/lang/ref/WeakReference;

    .line 448
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd$VideoFilenameFilter;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 454
    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;

    move-result-object v0

    .line 456
    if-nez v0, :cond_0

    move v0, v1

    .line 460
    :goto_0
    return v0

    .line 458
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 460
    goto :goto_0
.end method
