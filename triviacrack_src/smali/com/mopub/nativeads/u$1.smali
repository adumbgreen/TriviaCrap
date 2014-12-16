.class Lcom/mopub/nativeads/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/u;-><init>(Ljava/util/List;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/u;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/u;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mopub/nativeads/u$1;->a:Lcom/mopub/nativeads/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mopub/nativeads/u$1;->a:Lcom/mopub/nativeads/u;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mopub/nativeads/u;->b:Z

    .line 76
    iget-object v0, p0, Lcom/mopub/nativeads/u$1;->a:Lcom/mopub/nativeads/u;

    invoke-virtual {v0}, Lcom/mopub/nativeads/u;->e()V

    .line 77
    return-void
.end method
