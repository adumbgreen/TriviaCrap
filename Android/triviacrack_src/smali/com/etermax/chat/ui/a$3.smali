.class Lcom/etermax/chat/ui/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/chat/ui/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/chat/ui/a;


# direct methods
.method constructor <init>(Lcom/etermax/chat/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/etermax/chat/ui/a$3;->a:Lcom/etermax/chat/ui/a;

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
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 149
    iget-object v1, p0, Lcom/etermax/chat/ui/a$3;->a:Lcom/etermax/chat/ui/a;

    invoke-static {v1}, Lcom/etermax/chat/ui/a;->a(Lcom/etermax/chat/ui/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/etermax/chat/ui/a$3;->a:Lcom/etermax/chat/ui/a;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/a;->b()V

    .line 151
    const/4 v0, 0x1

    .line 156
    :cond_0
    return v0
.end method
