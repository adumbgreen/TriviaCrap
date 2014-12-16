.class Lcom/mopub/nativeads/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/NativeResponse;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/mopub/nativeads/y;->a:Lcom/mopub/nativeads/NativeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lcom/mopub/nativeads/y;->a:Lcom/mopub/nativeads/NativeResponse;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeResponse;->handleClick(Landroid/view/View;)V

    .line 392
    return-void
.end method
