.class Lcom/mopub/mobileads/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/aw;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Landroid/media/MediaScannerConnection;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/aw;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/mopub/mobileads/ax;->a:Lcom/mopub/mobileads/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput-object p2, p0, Lcom/mopub/mobileads/ax;->b:Ljava/lang/String;

    .line 806
    iput-object p3, p0, Lcom/mopub/mobileads/ax;->c:Ljava/lang/String;

    .line 807
    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/aw;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/aw$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 799
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/mobileads/ax;-><init>(Lcom/mopub/mobileads/aw;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/media/MediaScannerConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 810
    iput-object p1, p0, Lcom/mopub/mobileads/ax;->d:Landroid/media/MediaScannerConnection;

    .line 811
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/ax;Landroid/media/MediaScannerConnection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 799
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/ax;->a(Landroid/media/MediaScannerConnection;)V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 815
    iget-object v0, p0, Lcom/mopub/mobileads/ax;->d:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/mopub/mobileads/ax;->d:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/mopub/mobileads/ax;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mobileads/ax;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 822
    iget-object v0, p0, Lcom/mopub/mobileads/ax;->d:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/mopub/mobileads/ax;->d:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 825
    :cond_0
    return-void
.end method
