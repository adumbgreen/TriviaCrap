.class Lcom/etermax/chat/ui/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 130
    iput-object p1, p0, Lcom/etermax/chat/ui/a$2;->a:Lcom/etermax/chat/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/etermax/chat/ui/a$2;->a:Lcom/etermax/chat/ui/a;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/a;->d()V

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
