.class Lcom/mopub/mobileads/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/GpsHelper$GpsHelperListener;


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/AdViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/mopub/mobileads/g;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchAdInfoCompleted()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/mopub/mobileads/g;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->l()Ljava/lang/String;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/mopub/mobileads/g;->a:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/AdViewController;->a(Ljava/lang/String;)V

    .line 451
    return-void
.end method
