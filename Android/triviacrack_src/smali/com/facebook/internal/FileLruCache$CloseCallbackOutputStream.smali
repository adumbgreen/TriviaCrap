.class Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final callback:Lcom/facebook/internal/FileLruCache$StreamCloseCallback;

.field final innerStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 431
    iput-object p1, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    .line 432
    iput-object p2, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->callback:Lcom/facebook/internal/FileLruCache$StreamCloseCallback;

    .line 433
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->callback:Lcom/facebook/internal/FileLruCache$StreamCloseCallback;

    invoke-interface {v0}, Lcom/facebook/internal/FileLruCache$StreamCloseCallback;->onClose()V

    .line 442
    return-void

    .line 440
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->callback:Lcom/facebook/internal/FileLruCache$StreamCloseCallback;

    invoke-interface {v1}, Lcom/facebook/internal/FileLruCache$StreamCloseCallback;->onClose()V

    throw v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 447
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 462
    return-void
.end method

.method public write([B)V
    .locals 1
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 457
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CloseCallbackOutputStream;->innerStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 452
    return-void
.end method
