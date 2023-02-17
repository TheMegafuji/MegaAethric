.class abstract Lcom/koushikdutta/ion/ContextReference$NormalContextReference;
.super Lcom/koushikdutta/ion/ContextReference;
.source "ContextReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/ContextReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NormalContextReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ">",
        "Lcom/koushikdutta/ion/ContextReference<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/ContextReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static isAlive(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 29
    instance-of v0, p0, Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 30
    check-cast p0, Landroid/app/Service;

    invoke-static {p0}, Lcom/koushikdutta/ion/ContextReference$ServiceContextReference;->isAlive(Landroid/app/Service;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 32
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/koushikdutta/ion/ContextReference$ActivityContextReference;->isAlive(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/koushikdutta/ion/ContextReference$NormalContextReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method
