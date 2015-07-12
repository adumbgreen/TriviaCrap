.class Lcom/etermax/gamescommon/profile/ui/a$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/a$6;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/a$6;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/a$6;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/a$6$1;->a:Lcom/etermax/gamescommon/profile/ui/a$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/a$6$1;->a:Lcom/etermax/gamescommon/profile/ui/a$6;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/a$6;->a:Lcom/etermax/gamescommon/profile/ui/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/a;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 222
    return-void
.end method
