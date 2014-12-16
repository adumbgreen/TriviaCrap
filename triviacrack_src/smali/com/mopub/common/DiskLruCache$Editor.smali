.class public final Lcom/mopub/common/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mopub/common/DiskLruCache;

.field private final b:Lcom/mopub/common/e;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/e;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/e;

    .line 729
    invoke-static {p2}, Lcom/mopub/common/e;->d(Lcom/mopub/common/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->c:[Z

    .line 730
    return-void

    .line 729
    :cond_0
    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->e(Lcom/mopub/common/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/e;Lcom/mopub/common/DiskLruCache$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 721
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/DiskLruCache$Editor;-><init>(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/e;)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/common/DiskLruCache$Editor;)Lcom/mopub/common/e;
    .locals 1
    .parameter

    .prologue
    .line 721
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/e;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/common/DiskLruCache$Editor;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/mopub/common/DiskLruCache$Editor;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/mopub/common/DiskLruCache$Editor;)[Z
    .locals 1
    .parameter

    .prologue
    .line 721
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->c:[Z

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/mopub/common/DiskLruCache;->a(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Editor;Z)V

    .line 825
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->e:Z

    if-nez v0, :cond_0

    .line 830
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/common/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 810
    iget-boolean v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->d:Z

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/mopub/common/DiskLruCache;->a(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Editor;Z)V

    .line 812
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/e;

    invoke-static {v1}, Lcom/mopub/common/e;->c(Lcom/mopub/common/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 816
    :goto_0
    iput-boolean v2, p0, Lcom/mopub/common/DiskLruCache$Editor;->e:Z

    .line 817
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    invoke-static {v0, p0, v2}, Lcom/mopub/common/DiskLruCache;->a(Lcom/mopub/common/DiskLruCache;Lcom/mopub/common/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 757
    invoke-virtual {p0, p1}, Lcom/mopub/common/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 758
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mopub/common/DiskLruCache;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 737
    iget-object v2, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    monitor-enter v2

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/e;

    invoke-static {v1}, Lcom/mopub/common/e;->a(Lcom/mopub/common/e;)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 739
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 741
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/e;

    invoke-static {v1}, Lcom/mopub/common/e;->d(Lcom/mopub/common/e;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 742
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
    :goto_0
    return-object v0

    .line 745
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/e;

    invoke-virtual {v3, p1}, Lcom/mopub/common/e;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 746
    :catch_0
    move-exception v1

    .line 747
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4
    .parameter

    .prologue
    .line 769
    iget-object v2, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    monitor-enter v2

    .line 770
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/e;

    invoke-static {v0}, Lcom/mopub/common/e;->a(Lcom/mopub/common/e;)Lcom/mopub/common/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 771
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 773
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/e;

    invoke-static {v0}, Lcom/mopub/common/e;->d(Lcom/mopub/common/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->b:Lcom/mopub/common/e;

    invoke-virtual {v0, p1}, Lcom/mopub/common/e;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 779
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    .line 790
    :goto_0
    :try_start_3
    new-instance v0, Lcom/mopub/common/d;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/mopub/common/d;-><init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/mopub/common/DiskLruCache$1;)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 780
    :catch_0
    move-exception v0

    .line 782
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor;->a:Lcom/mopub/common/DiskLruCache;

    invoke-static {v0}, Lcom/mopub/common/DiskLruCache;->f(Lcom/mopub/common/DiskLruCache;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 784
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v0

    .line 788
    goto :goto_0

    .line 785
    :catch_1
    move-exception v0

    .line 787
    :try_start_5
    invoke-static {}, Lcom/mopub/common/DiskLruCache;->a()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 796
    const/4 v2, 0x0

    .line 798
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/mopub/common/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    sget-object v3, Lcom/mopub/common/DiskLruCacheUtil;->b:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 801
    invoke-static {v1}, Lcom/mopub/common/DiskLruCacheUtil;->a(Ljava/io/Closeable;)V

    .line 803
    return-void

    .line 801
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/mopub/common/DiskLruCacheUtil;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
