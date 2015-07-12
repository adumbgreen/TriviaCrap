.class Lcom/etermax/chat/a/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/chat/a/e;->a(Ljava/util/ArrayList;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/etermax/chat/a/e;


# direct methods
.method constructor <init>(Lcom/etermax/chat/a/e;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/etermax/chat/a/e$4;->b:Lcom/etermax/chat/a/e;

    iput-object p2, p0, Lcom/etermax/chat/a/e$4;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/etermax/chat/a/e$4;->b:Lcom/etermax/chat/a/e;

    iget-object v1, p0, Lcom/etermax/chat/a/e$4;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/etermax/chat/a/e;->a(Lcom/etermax/chat/a/e;Ljava/util/ArrayList;)V

    .line 96
    return-void
.end method
