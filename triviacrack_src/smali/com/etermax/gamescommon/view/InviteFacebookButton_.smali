.class public final Lcom/etermax/gamescommon/view/InviteFacebookButton_;
.super Lcom/etermax/gamescommon/view/InviteFacebookButton;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private a:Z

.field private final b:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/view/InviteFacebookButton;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->a:Z

    .line 29
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->b:Lorg/a/a/b/c;

    .line 43
    invoke-direct {p0}, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->a()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/view/InviteFacebookButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->a:Z

    .line 29
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->b:Lorg/a/a/b/c;

    .line 38
    invoke-direct {p0}, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/gamescommon/view/InviteFacebookButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->a:Z

    .line 29
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->b:Lorg/a/a/b/c;

    .line 33
    invoke-direct {p0}, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->a()V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/gamescommon/view/InviteFacebookButton;
    .locals 1
    .parameter

    .prologue
    .line 81
    new-instance v0, Lcom/etermax/gamescommon/view/InviteFacebookButton_;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/view/InviteFacebookButton_;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v0}, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->onFinishInflate()V

    .line 83
    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->b:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 72
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->a:Z

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->a:Z

    .line 63
    invoke-virtual {p0}, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030060

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/etermax/gamescommon/view/InviteFacebookButton_;->b:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/view/InviteFacebookButton;->onFinishInflate()V

    .line 67
    return-void
.end method
