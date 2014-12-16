.class public Lcom/etermax/tools/f/a/b;
.super Lcom/etermax/tools/f/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/tools/f/a/a;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/etermax/tools/f/a/b;->e(Ljava/lang/String;)V

    .line 25
    const-string v0, "error_detail"

    invoke-virtual {p0, v0, p2}, Lcom/etermax/tools/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public b()[Lcom/etermax/tools/f/c;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/etermax/tools/f/a/b;->Q:[Lcom/etermax/tools/f/c;

    return-object v0
.end method
