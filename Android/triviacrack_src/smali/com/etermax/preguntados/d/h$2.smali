.class Lcom/etermax/preguntados/d/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/d/h;->b(Lcom/etermax/preguntados/d/j;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

.field final synthetic b:Lcom/etermax/preguntados/d/j;

.field final synthetic c:Lcom/etermax/preguntados/d/h;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/d/h;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;Lcom/etermax/preguntados/d/j;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/etermax/preguntados/d/h$2;->c:Lcom/etermax/preguntados/d/h;

    iput-object p2, p0, Lcom/etermax/preguntados/d/h$2;->a:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    iput-object p3, p0, Lcom/etermax/preguntados/d/h$2;->b:Lcom/etermax/preguntados/d/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/etermax/preguntados/d/h$2;->a:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    sget-object v1, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;->READ:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->setState(Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;)V

    .line 201
    iget-object v0, p0, Lcom/etermax/preguntados/d/h$2;->c:Lcom/etermax/preguntados/d/h;

    iget-object v1, p0, Lcom/etermax/preguntados/d/h$2;->b:Lcom/etermax/preguntados/d/j;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/d/h;->a(Lcom/etermax/preguntados/d/h;Lcom/etermax/preguntados/d/j;)V

    .line 202
    iget-object v0, p0, Lcom/etermax/preguntados/d/h$2;->c:Lcom/etermax/preguntados/d/h;

    invoke-static {v0}, Lcom/etermax/preguntados/d/h;->g(Lcom/etermax/preguntados/d/h;)I

    .line 203
    iget-object v0, p0, Lcom/etermax/preguntados/d/h$2;->c:Lcom/etermax/preguntados/d/h;

    invoke-static {v0}, Lcom/etermax/preguntados/d/h;->e(Lcom/etermax/preguntados/d/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/etermax/preguntados/d/h$2;->c:Lcom/etermax/preguntados/d/h;

    invoke-static {v0}, Lcom/etermax/preguntados/d/h;->h(Lcom/etermax/preguntados/d/h;)V

    .line 206
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    return-void
.end method
