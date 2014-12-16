.class Lcom/etermax/chat/ui/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 162
    iput-object p1, p0, Lcom/etermax/chat/ui/a$4;->a:Lcom/etermax/chat/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/etermax/chat/ui/a$4;->a:Lcom/etermax/chat/ui/a;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/a;->d()V

    .line 166
    return-void
.end method
