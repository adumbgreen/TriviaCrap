.class Lcom/millennialmedia/android/BridgeMMMedia$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/BridgeMMMedia;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/millennialmedia/android/BridgeMMMedia;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMMedia;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMMedia$1;->b:Lcom/millennialmedia/android/BridgeMMMedia;

    iput-object p2, p0, Lcom/millennialmedia/android/BridgeMMMedia$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$1;->b:Lcom/millennialmedia/android/BridgeMMMedia;

    iget-object v0, v0, Lcom/millennialmedia/android/BridgeMMMedia;->a:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$1;->b:Lcom/millennialmedia/android/BridgeMMMedia;

    iget-object v0, v0, Lcom/millennialmedia/android/BridgeMMMedia;->a:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 583
    if-nez p2, :cond_0

    .line 584
    const-string v0, "BridgeMMMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_0
    return-void
.end method
