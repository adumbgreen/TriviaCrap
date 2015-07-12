.class Lcom/etermax/gamescommon/gifting/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/gifting/a$1;->a([Lcom/etermax/tools/social/a/c;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/gifting/a$1;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/gifting/a$1;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/a$1$1;->a:Lcom/etermax/gamescommon/gifting/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/a$1$1;->a:Lcom/etermax/gamescommon/gifting/a$1;

    iget-object v0, v0, Lcom/etermax/gamescommon/gifting/a$1;->b:Lcom/etermax/gamescommon/gifting/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/gifting/a;->b(Lcom/etermax/gamescommon/gifting/a;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/etermax/gamescommon/gifting/b;

    iget-object v2, p0, Lcom/etermax/gamescommon/gifting/a$1$1;->a:Lcom/etermax/gamescommon/gifting/a$1;

    iget-object v2, v2, Lcom/etermax/gamescommon/gifting/a$1;->b:Lcom/etermax/gamescommon/gifting/a;

    iget-object v3, p0, Lcom/etermax/gamescommon/gifting/a$1$1;->a:Lcom/etermax/gamescommon/gifting/a$1;

    iget-object v3, v3, Lcom/etermax/gamescommon/gifting/a$1;->b:Lcom/etermax/gamescommon/gifting/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/gifting/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/etermax/gamescommon/gifting/b;-><init>(Lcom/etermax/gamescommon/gifting/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/a$1$1;->a:Lcom/etermax/gamescommon/gifting/a$1;

    iget-object v0, v0, Lcom/etermax/gamescommon/gifting/a$1;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void
.end method
