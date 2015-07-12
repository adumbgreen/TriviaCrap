.class Lcom/etermax/preguntados/ui/game/question/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/question/f;->a(J)V
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/etermax/preguntados/ui/game/question/f;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/question/f;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/question/f$5;->b:Lcom/etermax/preguntados/ui/game/question/f;

    iput-wide p2, p0, Lcom/etermax/preguntados/ui/game/question/f$5;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/question/f$5;->b:Lcom/etermax/preguntados/ui/game/question/f;

    iget-wide v1, p0, Lcom/etermax/preguntados/ui/game/question/f$5;->a:J

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/game/question/f;->a(Lcom/etermax/preguntados/ui/game/question/f;J)V

    .line 214
    return-void
.end method
