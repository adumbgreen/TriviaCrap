.class Lcom/etermax/gamescommon/gifting/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/gifting/a;->a(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/etermax/gamescommon/gifting/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/gifting/a;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/a$1;->b:Lcom/etermax/gamescommon/gifting/a;

    iput-object p2, p0, Lcom/etermax/gamescommon/gifting/a$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/etermax/tools/social/a/c;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/a$1;->b:Lcom/etermax/gamescommon/gifting/a;

    invoke-static {v0, p1}, Lcom/etermax/gamescommon/gifting/a;->a(Lcom/etermax/gamescommon/gifting/a;[Lcom/etermax/tools/social/a/c;)[Lcom/etermax/tools/social/a/c;

    .line 131
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/a$1;->b:Lcom/etermax/gamescommon/gifting/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/gifting/a;->b(Lcom/etermax/gamescommon/gifting/a;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/etermax/gamescommon/gifting/a$1$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/gifting/a$1$1;-><init>(Lcom/etermax/gamescommon/gifting/a$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method
