.class public Lcom/etermax/gamescommon/b/u;
.super Lcom/etermax/tools/f/a/a;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "friends_panel_click"

    sput-object v0, Lcom/etermax/gamescommon/b/u;->a:Ljava/lang/String;

    .line 9
    const-string v0, "friends_panel_more"

    sput-object v0, Lcom/etermax/gamescommon/b/u;->b:Ljava/lang/String;

    .line 10
    const-string v0, "friends_panel_search"

    sput-object v0, Lcom/etermax/gamescommon/b/u;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/etermax/tools/f/a/a;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/b/u;->e(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    const-string v0, "section"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    const-string v0, "from"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public b()[Lcom/etermax/tools/f/c;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/b/u;->P:[Lcom/etermax/tools/f/c;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    const-string v0, "online_status"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    const-string v0, "results"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
