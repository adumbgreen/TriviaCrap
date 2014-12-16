.class Lcom/etermax/chat/ui/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 397
    iput-object p1, p0, Lcom/etermax/chat/ui/a$8;->a:Lcom/etermax/chat/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/f;

    .line 402
    invoke-virtual {v0}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/chat/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/etermax/chat/a/f;->d()Lcom/etermax/chat/a/h;

    move-result-object v1

    sget-object v2, Lcom/etermax/chat/a/h;->b:Lcom/etermax/chat/a/h;

    if-ne v1, v2, :cond_0

    .line 403
    iget-object v1, p0, Lcom/etermax/chat/ui/a$8;->a:Lcom/etermax/chat/ui/a;

    invoke-static {v1, v0, p3}, Lcom/etermax/chat/ui/a;->a(Lcom/etermax/chat/ui/a;Lcom/etermax/chat/a/f;I)V

    .line 405
    :cond_0
    return-void
.end method
