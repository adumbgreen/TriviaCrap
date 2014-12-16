.class public Lcom/etermax/gamescommon/b/c;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/etermax/gamescommon/b/c;->a:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etermax/gamescommon/b/c;->a:Ljava/lang/String;

    return-object v0
.end method
