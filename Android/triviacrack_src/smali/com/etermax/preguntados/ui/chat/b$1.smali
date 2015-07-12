.class Lcom/etermax/preguntados/ui/chat/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/chat/b;->j()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/chat/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/chat/b;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/etermax/preguntados/ui/chat/b$1;->a:Lcom/etermax/preguntados/ui/chat/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/b$1;->a:Lcom/etermax/preguntados/ui/chat/b;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/chat/b;->a(Lcom/etermax/preguntados/ui/chat/b;)V

    .line 79
    return-void
.end method
