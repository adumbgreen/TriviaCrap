.class Lcom/etermax/chat/ui/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/chat/ui/c;->a(Lcom/etermax/chat/a/f;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/chat/a/f;

.field final synthetic b:Lcom/etermax/chat/ui/c;


# direct methods
.method constructor <init>(Lcom/etermax/chat/ui/c;Lcom/etermax/chat/a/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/etermax/chat/ui/c$1;->b:Lcom/etermax/chat/ui/c;

    iput-object p2, p0, Lcom/etermax/chat/ui/c$1;->a:Lcom/etermax/chat/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/etermax/chat/ui/c$1;->b:Lcom/etermax/chat/ui/c;

    iget-object v1, p0, Lcom/etermax/chat/ui/c$1;->a:Lcom/etermax/chat/a/f;

    invoke-static {v0, v1}, Lcom/etermax/chat/ui/c;->a(Lcom/etermax/chat/ui/c;Lcom/etermax/chat/a/f;)V

    .line 73
    return-void
.end method
