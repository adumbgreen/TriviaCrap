.class Lcom/mopub/nativeads/am$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/am;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/nativeads/ao;Landroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/am;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/am;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mopub/nativeads/am$1;->a:Lcom/mopub/nativeads/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mopub/nativeads/am$1;->a:Lcom/mopub/nativeads/am;

    invoke-virtual {v0}, Lcom/mopub/nativeads/am;->c()V

    .line 101
    const/4 v0, 0x1

    return v0
.end method
