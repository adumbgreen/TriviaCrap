.class Lcom/mopub/mobileads/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/j;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/j;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/j;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mopub/mobileads/j$1;->a:Lcom/mopub/mobileads/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/j$1;->a:Lcom/mopub/mobileads/j;

    invoke-virtual {v0}, Lcom/mopub/mobileads/j;->finish()V

    .line 64
    return-void
.end method
