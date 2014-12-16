.class Lcom/etermax/gamescommon/user/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/user/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/user/a/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/user/a/b;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/user/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/etermax/gamescommon/user/a/b$1;->a:Lcom/etermax/gamescommon/user/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/j;)V
    .locals 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/b$1;->a:Lcom/etermax/gamescommon/user/a/b;

    invoke-static {v0}, Lcom/etermax/gamescommon/user/a/b;->a(Lcom/etermax/gamescommon/user/a/b;)Lcom/etermax/gamescommon/profile/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/user/a/b$1;->a:Lcom/etermax/gamescommon/user/a/b;

    invoke-interface {v0, p1, v1}, Lcom/etermax/gamescommon/profile/ui/d;->a(Lcom/etermax/gamescommon/j;Landroid/widget/BaseAdapter;)V

    .line 141
    return-void
.end method
