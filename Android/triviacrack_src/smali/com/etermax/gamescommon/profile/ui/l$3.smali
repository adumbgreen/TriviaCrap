.class Lcom/etermax/gamescommon/profile/ui/l$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/l;->a(Lcom/etermax/gamescommon/profile/ui/h;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/l;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/l;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/l$3;->a:Lcom/etermax/gamescommon/profile/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$3;->a:Lcom/etermax/gamescommon/profile/ui/l;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/ui/l;->b()V

    .line 157
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$3;->a:Lcom/etermax/gamescommon/profile/ui/l;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/ui/l;->b(Lcom/etermax/gamescommon/profile/ui/l;)Lcom/etermax/gamescommon/profile/ui/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/m;->i()V

    .line 158
    return-void
.end method
