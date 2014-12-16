.class Lcom/etermax/chat/ui/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 215
    iput-object p1, p0, Lcom/etermax/chat/ui/a$5;->a:Lcom/etermax/chat/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/etermax/chat/ui/a$5;->a:Lcom/etermax/chat/ui/a;

    invoke-static {v0}, Lcom/etermax/chat/ui/a;->a(Lcom/etermax/chat/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/etermax/chat/ui/a$5;->a:Lcom/etermax/chat/ui/a;

    invoke-virtual {v0}, Lcom/etermax/chat/ui/a;->b()V

    .line 221
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
