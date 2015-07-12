.class Lcom/mopub/mobileads/aw$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/aw$4;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/aw$4;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/aw$4;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/mopub/mobileads/aw$4$1;->a:Lcom/mopub/mobileads/aw$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/mopub/mobileads/aw$4$1;->a:Lcom/mopub/mobileads/aw$4;

    iget-object v0, v0, Lcom/mopub/mobileads/aw$4;->c:Lcom/mopub/mobileads/aw;

    const-string v1, "Image failed to download."

    invoke-static {v0, v1}, Lcom/mopub/mobileads/aw;->a(Lcom/mopub/mobileads/aw;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/mopub/mobileads/aw$4$1;->a:Lcom/mopub/mobileads/aw$4;

    iget-object v0, v0, Lcom/mopub/mobileads/aw$4;->c:Lcom/mopub/mobileads/aw;

    invoke-virtual {v0}, Lcom/mopub/mobileads/aw;->getMraidView()Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/ak;->STORE_PICTURE:Lcom/mopub/mobileads/ak;

    const-string v2, "Error downloading and saving image file."

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/MraidView;->a(Lcom/mopub/mobileads/ak;Ljava/lang/String;)V

    .line 372
    const-string v0, "Error downloading and saving image file."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 373
    return-void
.end method
