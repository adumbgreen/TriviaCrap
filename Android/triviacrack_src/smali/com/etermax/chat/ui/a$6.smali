.class Lcom/etermax/chat/ui/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 228
    iput-object p1, p0, Lcom/etermax/chat/ui/a$6;->a:Lcom/etermax/chat/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/etermax/chat/ui/a$6;->a:Lcom/etermax/chat/ui/a;

    invoke-static {v0}, Lcom/etermax/chat/ui/a;->a(Lcom/etermax/chat/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/etermax/chat/ui/a$6;->a:Lcom/etermax/chat/ui/a;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/a;->e_()V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/etermax/chat/ui/a$6;->a:Lcom/etermax/chat/ui/a;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/a;->b()V

    .line 236
    iget-object v0, p0, Lcom/etermax/chat/ui/a$6;->a:Lcom/etermax/chat/ui/a;

    iget-object v1, p0, Lcom/etermax/chat/ui/a$6;->a:Lcom/etermax/chat/ui/a;

    iget-object v1, v1, Lcom/etermax/chat/ui/a;->e:Lcom/etermax/tools/widget/CustomFontEditText;

    invoke-virtual {v0, v1}, Lcom/etermax/chat/ui/a;->b(Landroid/view/View;)V

    goto :goto_0
.end method
