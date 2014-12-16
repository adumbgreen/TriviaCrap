.class Lcom/etermax/chat/ui/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/chat/ui/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/chat/ui/a;


# direct methods
.method constructor <init>(Lcom/etermax/chat/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/etermax/chat/ui/a$7;->a:Lcom/etermax/chat/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;

    .line 388
    invoke-virtual {v0}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/chat/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/etermax/chat/ui/a$7;->a:Lcom/etermax/chat/ui/a;

    invoke-static {v1, v0, p3}, Lcom/etermax/chat/ui/a;->a(Lcom/etermax/chat/ui/a;Lcom/etermax/chat/a/f;I)V

    .line 393
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
