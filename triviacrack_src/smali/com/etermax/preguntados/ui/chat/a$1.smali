.class Lcom/etermax/preguntados/ui/chat/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/chat/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/chat/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/chat/a;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/etermax/preguntados/ui/chat/a$1;->a:Lcom/etermax/preguntados/ui/chat/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a$1;->a:Lcom/etermax/preguntados/ui/chat/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/chat/a;->k()V

    .line 66
    return-void
.end method
