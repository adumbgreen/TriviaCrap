.class Landroid/support/v4/print/PrintHelperKitkat$2;
.super Landroid/print/PrintDocumentAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation


# instance fields
.field loadBitmap:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mAttributes:Landroid/print/PrintAttributes;

.field mBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;

.field final synthetic val$fittingMode:I

.field final synthetic val$imageFile:Landroid/net/Uri;

.field final synthetic val$jobName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$jobName:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$imageFile:Landroid/net/Uri;

    iput p4, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/print/PrintHelperKitkat$2;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelperKitkat$2;->cancelLoad()V

    return-void
.end method

.method private cancelLoad()V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #getter for: Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/support/v4/print/PrintHelperKitkat;->access$300(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 372
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 374
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 376
    :cond_0
    monitor-exit v1

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 381
    invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 382
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelperKitkat$2;->cancelLoad()V

    .line 383
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->loadBitmap:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 384
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 300
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 302
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;

    .line 368
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 307
    new-instance v1, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$jobName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v1

    .line 311
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    :goto_1
    invoke-virtual {p4, v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    goto :goto_0

    :cond_1
    move v0, v6

    .line 311
    goto :goto_1

    .line 316
    :cond_2
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$2$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$2$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat$2;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->loadBitmap:Landroid/os/AsyncTask;

    .line 365
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->loadBitmap:Landroid/os/AsyncTask;

    new-array v1, v6, [Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 367
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;

    goto :goto_0
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 390
    new-instance v1, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;

    invoke-direct {v1, v0, v2}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 394
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v0

    .line 395
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 398
    iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v4, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I

    #calls: Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    invoke-static {v3, v4, v5, v2, v6}, Landroid/support/v4/print/PrintHelperKitkat;->access$000(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v2

    .line 402
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 405
    invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 412
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/print/PageRange;

    const/4 v2, 0x0

    sget-object v3, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v3, v0, v2

    invoke-virtual {p4, v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 420
    :goto_0
    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {v1}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 423
    :cond_0
    if-eqz p2, :cond_1

    .line 425
    :try_start_2
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 431
    :cond_1
    :goto_1
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 416
    :try_start_3
    const-string v2, "PrintHelperKitkat"

    const-string v3, "Error writing printed content"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 421
    invoke-virtual {v1}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 423
    :cond_2
    if-eqz p2, :cond_3

    .line 425
    :try_start_4
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 428
    :cond_3
    :goto_2
    throw v0

    .line 426
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2
.end method
