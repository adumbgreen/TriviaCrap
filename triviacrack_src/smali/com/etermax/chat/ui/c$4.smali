.class Lcom/etermax/chat/ui/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/chat/ui/c;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/chat/ui/c;


# direct methods
.method constructor <init>(Lcom/etermax/chat/ui/c;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/etermax/chat/ui/c$4;->a:Lcom/etermax/chat/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/etermax/chat/ui/c$4;->a:Lcom/etermax/chat/ui/c;

    invoke-static {v0}, Lcom/etermax/chat/ui/c;->c(Lcom/etermax/chat/ui/c;)V

    .line 115
    return-void
.end method
