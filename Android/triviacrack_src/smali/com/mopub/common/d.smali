.class Lcom/mopub/common/d;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mopub/common/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/mopub/common/d;->a:Lcom/mopub/common/DiskLruCache$Editor;

    .line 838
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 839
    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/mopub/common/DiskLruCache$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 836
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/d;-><init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 859
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/d;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    iget-object v0, p0, Lcom/mopub/common/d;->a:Lcom/mopub/common/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/common/DiskLruCache$Editor;->a(Lcom/mopub/common/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/d;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :goto_0
    return-void

    .line 868
    :catch_0
    move-exception v0

    .line 869
    iget-object v0, p0, Lcom/mopub/common/d;->a:Lcom/mopub/common/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/common/DiskLruCache$Editor;->a(Lcom/mopub/common/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2
    .parameter

    .prologue
    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/d;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v0

    .line 845
    iget-object v0, p0, Lcom/mopub/common/d;->a:Lcom/mopub/common/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/common/DiskLruCache$Editor;->a(Lcom/mopub/common/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/d;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :goto_0
    return-void

    .line 852
    :catch_0
    move-exception v0

    .line 853
    iget-object v0, p0, Lcom/mopub/common/d;->a:Lcom/mopub/common/DiskLruCache$Editor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/common/DiskLruCache$Editor;->a(Lcom/mopub/common/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
