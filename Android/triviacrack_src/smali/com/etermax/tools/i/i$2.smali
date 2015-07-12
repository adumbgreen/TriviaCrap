.class Lcom/etermax/tools/i/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/i/i;->a(Lcom/etermax/tools/i/h;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/i/h;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/etermax/tools/i/i;


# direct methods
.method constructor <init>(Lcom/etermax/tools/i/i;Lcom/etermax/tools/i/h;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/etermax/tools/i/i$2;->c:Lcom/etermax/tools/i/i;

    iput-object p2, p0, Lcom/etermax/tools/i/i$2;->a:Lcom/etermax/tools/i/h;

    iput-object p3, p0, Lcom/etermax/tools/i/i$2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/etermax/tools/i/i$2;->c:Lcom/etermax/tools/i/i;

    iget-object v1, p0, Lcom/etermax/tools/i/i$2;->a:Lcom/etermax/tools/i/h;

    iget-object v2, p0, Lcom/etermax/tools/i/i$2;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/etermax/tools/i/i;->a(Lcom/etermax/tools/i/i;Lcom/etermax/tools/i/h;Ljava/lang/Object;)V

    .line 62
    return-void
.end method
