.class Lcom/mopub/mobileads/MraidVideoViewController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidVideoViewController;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MraidVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidVideoViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mopub/mobileads/MraidVideoViewController$3;->a:Lcom/mopub/mobileads/MraidVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mopub/mobileads/MraidVideoViewController$3;->a:Lcom/mopub/mobileads/MraidVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidVideoViewController;->g()Lcom/mopub/mobileads/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/mobileads/n;->onFinish()V

    .line 88
    return-void
.end method
