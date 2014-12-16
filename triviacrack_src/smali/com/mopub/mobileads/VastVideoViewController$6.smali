.class Lcom/mopub/mobileads/VastVideoViewController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->c(Landroid/content/Context;)Landroid/widget/VideoView;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/widget/VideoView;

.field final synthetic c:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/content/Context;Landroid/widget/VideoView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->c:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->b:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->p(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 321
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->l(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 323
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastVideoViewController;->b(Z)V

    .line 325
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->b(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getCompleteTrackers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/common/HttpClient;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 326
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->c:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->e(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 328
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->b:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->q(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$6;->c:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->q(Lcom/mopub/mobileads/VastVideoViewController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    :cond_0
    return-void
.end method
