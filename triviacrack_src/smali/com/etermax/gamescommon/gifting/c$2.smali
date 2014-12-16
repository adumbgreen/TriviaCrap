.class Lcom/etermax/gamescommon/gifting/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/gifting/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/gifting/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/gifting/c;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/c$2;->a:Lcom/etermax/gamescommon/gifting/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c$2;->a:Lcom/etermax/gamescommon/gifting/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/gifting/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c$2;->a:Lcom/etermax/gamescommon/gifting/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/gifting/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c$2;->a:Lcom/etermax/gamescommon/gifting/c;

    invoke-static {v0}, Lcom/etermax/gamescommon/gifting/c;->a(Lcom/etermax/gamescommon/gifting/c;)V

    .line 81
    :cond_1
    return-void
.end method
