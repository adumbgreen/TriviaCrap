.class public Lcom/mopub/mobileads/factories/MraidViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/mopub/mobileads/factories/MraidViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/mopub/mobileads/factories/MraidViewFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/MraidViewFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/MraidViewFactory;->a:Lcom/mopub/mobileads/factories/MraidViewFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;)Lcom/mopub/mobileads/MraidView;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    sget-object v0, Lcom/mopub/mobileads/factories/MraidViewFactory;->a:Lcom/mopub/mobileads/factories/MraidViewFactory;

    invoke-virtual {v0, p0, p1}, Lcom/mopub/mobileads/factories/MraidViewFactory;->a(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;)Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;Lcom/mopub/mobileads/MraidView$PlacementType;)Lcom/mopub/mobileads/MraidView;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    sget-object v0, Lcom/mopub/mobileads/factories/MraidViewFactory;->a:Lcom/mopub/mobileads/factories/MraidViewFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/factories/MraidViewFactory;->a(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;Lcom/mopub/mobileads/MraidView$PlacementType;)Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/MraidViewFactory;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14
    sput-object p0, Lcom/mopub/mobileads/factories/MraidViewFactory;->a:Lcom/mopub/mobileads/factories/MraidViewFactory;

    .line 15
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;)Lcom/mopub/mobileads/MraidView;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/mopub/mobileads/MraidView;

    invoke-direct {v0, p1, p2}, Lcom/mopub/mobileads/MraidView;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;Lcom/mopub/mobileads/MraidView$PlacementType;)Lcom/mopub/mobileads/MraidView;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/mopub/mobileads/MraidView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/MraidView;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/AdConfiguration;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;Lcom/mopub/mobileads/MraidView$PlacementType;)V

    return-object v0
.end method
