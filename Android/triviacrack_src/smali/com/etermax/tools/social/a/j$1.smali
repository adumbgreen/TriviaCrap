.class Lcom/etermax/tools/social/a/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/a/j;->a(Lcom/facebook/Request;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/Request;

.field final synthetic b:Lcom/etermax/tools/social/a/j;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/a/j;Lcom/facebook/Request;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/etermax/tools/social/a/j$1;->b:Lcom/etermax/tools/social/a/j;

    iput-object p2, p0, Lcom/etermax/tools/social/a/j$1;->a:Lcom/facebook/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/tools/social/a/j$1;->b:Lcom/etermax/tools/social/a/j;

    iget-object v1, p0, Lcom/etermax/tools/social/a/j$1;->a:Lcom/facebook/Request;

    invoke-static {v0, v1}, Lcom/etermax/tools/social/a/j;->a(Lcom/etermax/tools/social/a/j;Lcom/facebook/Request;)V

    .line 51
    return-void
.end method
