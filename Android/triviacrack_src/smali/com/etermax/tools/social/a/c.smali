.class public Lcom/etermax/tools/social/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/tools/social/a/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/etermax/tools/social/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lcom/etermax/tools/social/a/c;->a:Lcom/etermax/tools/social/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    iput-object p2, p0, Lcom/etermax/tools/social/a/c;->b:Ljava/lang/String;

    .line 998
    iput-object p3, p0, Lcom/etermax/tools/social/a/c;->c:Ljava/lang/String;

    .line 999
    return-void
.end method

.method public constructor <init>(Lcom/etermax/tools/social/a/b;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/etermax/tools/social/a/c;->a:Lcom/etermax/tools/social/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    iput-object p2, p0, Lcom/etermax/tools/social/a/c;->b:Ljava/lang/String;

    .line 992
    iput-object p3, p0, Lcom/etermax/tools/social/a/c;->c:Ljava/lang/String;

    .line 993
    iput-boolean p4, p0, Lcom/etermax/tools/social/a/c;->d:Z

    .line 994
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/etermax/tools/social/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/etermax/tools/social/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1010
    iget-boolean v0, p0, Lcom/etermax/tools/social/a/c;->d:Z

    return v0
.end method
