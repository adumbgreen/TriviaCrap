.class public Lorg/b/c/b/a/a;
.super Lorg/b/c/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/b/c/b/a",
        "<",
        "Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/b/c/b/a/a;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/b/c/k;

    const/4 v1, 0x0

    sget-object v2, Lorg/b/c/k;->c:Lorg/b/c/k;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/b/c/k;->b:Lorg/b/c/k;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/b/c/b/a;-><init>([Lorg/b/c/k;)V

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;Lorg/b/c/g;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-interface {p1}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lorg/b/d/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    sget-object v0, Lorg/b/c/b/a/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    invoke-interface {p2}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 105
    new-instance v3, Lorg/b/c/k;

    invoke-virtual {v1}, Lorg/b/c/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/b/c/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1, v2}, Lorg/b/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 106
    invoke-interface {p2}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/b/c/c;->a(Lorg/b/c/k;)V

    .line 109
    :cond_1
    new-instance v1, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedOutput;

    invoke-direct {v1}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedOutput;-><init>()V

    .line 112
    :try_start_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-interface {p2}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1, p1, v2}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedOutput;->output(Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;Ljava/io/Writer;)V
    :try_end_0
    .catch Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Lorg/b/c/b/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write SyndFeed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/b/c/b/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lorg/b/c/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    check-cast p1, Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;

    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/a/a;->a(Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;Lorg/b/c/g;)V

    return-void
.end method

.method protected a(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 75
    const-class v0, Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected synthetic b(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/a/a;->c(Ljava/lang/Class;Lorg/b/c/d;)Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/Class;Lorg/b/c/d;)Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;",
            ">;",
            "Lorg/b/c/d;",
            ")",
            "Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v1, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedInput;

    invoke-direct {v1}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedInput;-><init>()V

    .line 81
    invoke-interface {p2}, Lorg/b/c/d;->d()Lorg/b/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v0}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 89
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {p2}, Lorg/b/c/d;->e()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 90
    invoke-virtual {v1, v2}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedInput;->build(Ljava/io/Reader;)Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;
    :try_end_0
    .catch Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    sget-object v0, Lorg/b/c/b/a/a;->a:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lorg/b/c/b/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read SyndFeed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/b/c/b/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
