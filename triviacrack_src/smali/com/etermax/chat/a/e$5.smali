.class Lcom/etermax/chat/a/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/chat/a/e;->a(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/etermax/chat/a/e;


# direct methods
.method constructor <init>(Lcom/etermax/chat/a/e;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/etermax/chat/a/e$5;->b:Lcom/etermax/chat/a/e;

    iput p2, p0, Lcom/etermax/chat/a/e$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/etermax/chat/a/e$5;->b:Lcom/etermax/chat/a/e;

    iget v1, p0, Lcom/etermax/chat/a/e$5;->a:I

    invoke-static {v0, v1}, Lcom/etermax/chat/a/e;->a(Lcom/etermax/chat/a/e;I)V

    .line 110
    return-void
.end method
