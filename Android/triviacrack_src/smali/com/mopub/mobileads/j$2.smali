.class Lcom/mopub/mobileads/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/j;->f()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/j;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/j;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mopub/mobileads/j$2;->a:Lcom/mopub/mobileads/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mopub/mobileads/j$2;->a:Lcom/mopub/mobileads/j;

    invoke-virtual {v0}, Lcom/mopub/mobileads/j;->finish()V

    .line 128
    return-void
.end method
