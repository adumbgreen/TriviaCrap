.class Lcom/etermax/gamescommon/profile/ui/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/a;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/a$6;->a:Lcom/etermax/gamescommon/profile/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a$6;->a:Lcom/etermax/gamescommon/profile/ui/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/a;->l:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 217
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a$6;->a:Lcom/etermax/gamescommon/profile/ui/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/a;->m:Lcom/etermax/gamescommon/profile/ui/l;

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/a$6;->a:Lcom/etermax/gamescommon/profile/ui/a;

    iget-object v1, v1, Lcom/etermax/gamescommon/profile/ui/a;->g:Lcom/etermax/gamescommon/profile/ui/h;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/l;->b(Lcom/etermax/gamescommon/profile/ui/h;)V

    .line 218
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a$6;->a:Lcom/etermax/gamescommon/profile/ui/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/a;->m:Lcom/etermax/gamescommon/profile/ui/l;

    new-instance v1, Lcom/etermax/gamescommon/profile/ui/a$6$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/profile/ui/a$6$1;-><init>(Lcom/etermax/gamescommon/profile/ui/a$6;)V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/profile/ui/l;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 224
    return-void
.end method
