.class Lcom/etermax/gamescommon/profile/ui/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/c;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/c;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/c$4;->a:Lcom/etermax/gamescommon/profile/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 125
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/c$4;->a:Lcom/etermax/gamescommon/profile/ui/c;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/profile/ui/c;->a(Landroid/os/IBinder;)V

    .line 127
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/c$4;->a:Lcom/etermax/gamescommon/profile/ui/c;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/profile/ui/c;->a(Ljava/lang/CharSequence;)V

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
