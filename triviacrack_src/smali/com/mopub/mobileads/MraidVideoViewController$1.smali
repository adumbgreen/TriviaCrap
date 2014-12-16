.class Lcom/mopub/mobileads/MraidVideoViewController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 33
    iput-object p1, p0, Lcom/mopub/mobileads/MraidVideoViewController$1;->a:Lcom/mopub/mobileads/MraidVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoViewController$1;->a:Lcom/mopub/mobileads/MraidVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/MraidVideoViewController;->a(Lcom/mopub/mobileads/MraidVideoViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoViewController$1;->a:Lcom/mopub/mobileads/MraidVideoViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidVideoViewController;->b(Z)V

    .line 38
    return-void
.end method
