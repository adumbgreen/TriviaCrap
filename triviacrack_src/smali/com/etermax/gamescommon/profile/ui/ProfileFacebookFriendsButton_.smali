.class public final Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton_;
.super Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private a:Z

.field private final b:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton_;->a:Z

    .line 30
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton_;->b:Lorg/a/a/b/c;

    .line 39
    invoke-direct {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton_;->c()V

    .line 40
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton_;->b:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 67
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 68
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton_;->a()V

    .line 80
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton_;->a:Z

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton_;->a:Z

    .line 59
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton_;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300f2

    invoke-static {v0, v1, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton_;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton_;->b:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->onFinishInflate()V

    .line 63
    return-void
.end method
