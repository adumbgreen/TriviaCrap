.class public Lcom/etermax/chat/ui/BaseChatActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"


# static fields
.field static a:I


# instance fields
.field b:Landroid/widget/TextView;

.field c:Ljava/lang/Boolean;

.field protected d:Lcom/etermax/chat/ui/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/etermax/chat/ui/BaseChatActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseChatActivity;->c:Ljava/lang/Boolean;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 112
    sput p1, Lcom/etermax/chat/ui/BaseChatActivity;->a:I

    .line 113
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseChatActivity;->supportInvalidateOptionsMenu()V

    .line 114
    return-void
.end method

.method protected a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseChatActivity;->c:Ljava/lang/Boolean;

    .line 118
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseChatActivity;->supportInvalidateOptionsMenu()V

    .line 119
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    instance-of v0, p1, Lcom/etermax/chat/ui/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 45
    check-cast v0, Lcom/etermax/chat/ui/a;

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseChatActivity;->d:Lcom/etermax/chat/ui/a;

    .line 47
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/etermax/k;->activity_chat:I

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/BaseChatActivity;->setContentView(I)V

    .line 37
    if-nez p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseChatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/etermax/i;->container:I

    new-instance v2, Lcom/etermax/chat/ui/c;

    invoke-direct {v2}, Lcom/etermax/chat/ui/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 40
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseChatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/etermax/l;->chat:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 57
    sget v0, Lcom/etermax/i;->action_friends_pannel:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 59
    new-instance v2, Lcom/etermax/chat/ui/BaseChatActivity$1;

    invoke-direct {v2, p0}, Lcom/etermax/chat/ui/BaseChatActivity$1;-><init>(Lcom/etermax/chat/ui/BaseChatActivity;)V

    .line 66
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 67
    sget v1, Lcom/etermax/i;->actionbar_notifcation_textview:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/etermax/chat/ui/BaseChatActivity;->b:Landroid/widget/TextView;

    .line 68
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v1, Lcom/etermax/i;->badge_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 71
    iget-object v3, p0, Lcom/etermax/chat/ui/BaseChatActivity;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :goto_0
    sget v1, Lcom/etermax/i;->image_icon_friend:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/etermax/chat/ui/BaseChatActivity;->b:Landroid/widget/TextView;

    sget v3, Lcom/etermax/chat/ui/BaseChatActivity;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    sget v1, Lcom/etermax/i;->actionbar_notifcation_textview:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v1, Lcom/etermax/i;->container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 74
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 100
    sget v1, Lcom/etermax/i;->action_friends_pannel:I

    if-ne v0, v1, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
