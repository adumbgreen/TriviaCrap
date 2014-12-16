.class Lcom/mopub/mobileads/MraidVideoViewController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidVideoViewController;-><init>(Landroid/content/Context;Landroid/os/Bundle;JLcom/mopub/mobileads/n;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MraidVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidVideoViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mopub/mobileads/MraidVideoViewController$2;->a:Lcom/mopub/mobileads/MraidVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoViewController$2;->a:Lcom/mopub/mobileads/MraidVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/MraidVideoViewController;->a(Lcom/mopub/mobileads/MraidVideoViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoViewController$2;->a:Lcom/mopub/mobileads/MraidVideoViewController;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidVideoViewController;->a(Z)V

    .line 47
    return v1
.end method
