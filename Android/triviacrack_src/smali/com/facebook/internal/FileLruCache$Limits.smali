.class public final Lcom/facebook/internal/FileLruCache$Limits;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private byteCount:I

.field private fileCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    .line 564
    const/high16 v0, 0x10

    iput v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    .line 565
    return-void
.end method


# virtual methods
.method getByteCount()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    return v0
.end method

.method getFileCount()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    return v0
.end method

.method setByteCount(I)V
    .locals 2
    .parameter

    .prologue
    .line 576
    if-gez p1, :cond_0

    .line 577
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Cache byte-count limit must be >= 0"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_0
    iput p1, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    .line 580
    return-void
.end method

.method setFileCount(I)V
    .locals 2
    .parameter

    .prologue
    .line 583
    if-gez p1, :cond_0

    .line 584
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Cache file count limit must be >= 0"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    iput p1, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    .line 587
    return-void
.end method
