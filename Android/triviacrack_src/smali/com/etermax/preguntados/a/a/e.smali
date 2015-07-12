.class public Lcom/etermax/preguntados/a/a/e;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 10
    const-string v0, "load_question_image_error"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/a/a/e;->e(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    const-string v0, "category"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method
